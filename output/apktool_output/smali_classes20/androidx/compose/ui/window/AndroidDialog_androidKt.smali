.class public final Landroidx/compose/ui/window/AndroidDialog_androidKt;
.super Ljava/lang/Object;
.source "AndroidDialog.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/AndroidDialog_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,766:1\n75#2:767\n75#2:768\n75#2:769\n1128#3,6:770\n1128#3,6:776\n1128#3,6:782\n1128#3,6:788\n1128#3,6:794\n81#4,6:800\n88#4,6:815\n96#4:824\n391#5,9:806\n400#5,3:821\n85#6:825\n*S KotlinDebug\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/AndroidDialog_androidKt\n*L\n203#1:767\n204#1:768\n205#1:769\n208#1:770,6\n210#1:776,6\n219#1:782,6\n228#1:788,6\n689#1:794,6\n689#1:800,6\n689#1:815,6\n689#1:824\n689#1:806,9\n689#1:821,3\n207#1:825\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a8\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0011\u0010\u0006\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a*\u0010\t\u001a\u00020\u00012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0011\u0010\u0006\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0007H\u0003\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r\u00b2\u0006\u0015\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0007X\u008a\u0084\u0002"
    }
    d2 = {
        "Dialog",
        "",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "properties",
        "Landroidx/compose/ui/window/DialogProperties;",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "DialogLayout",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
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


# direct methods
.method public static final Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p1, "properties"    # Landroidx/compose/ui/window/DialogProperties;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
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

    .line 202
    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    const v0, 0x3145f7ad

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(Dialog)P(1,2)202@8819L7,203@8858L7,204@8913L7,205@8943L28,206@8998L29,207@9064L21,207@9047L38,209@9111L330,218@9472L129,218@9447L154,227@9618L183,227@9607L194:AndroidDialog.android.kt#2oxthz"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p4

    .local v2, "$dirty":I
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_1

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, p5, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_1

    :cond_3
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    goto :goto_2

    :cond_4
    move-object/from16 v4, p1

    :goto_2
    and-int/lit16 v5, v8, 0x180

    if-nez v5, :cond_6

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_3

    :cond_5
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v2, v5

    :cond_6
    move v12, v2

    .end local v2    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit16 v2, v12, 0x93

    const/16 v5, 0x92

    const/4 v14, 0x0

    if-eq v2, v5, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    move v2, v14

    :goto_4
    and-int/lit8 v5, v12, 0x1

    invoke-interface {v9, v2, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v3, :cond_8

    .line 66
    new-instance v15, Landroidx/compose/ui/window/DialogProperties;

    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v20}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v15

    .end local p1    # "properties":Landroidx/compose/ui/window/DialogProperties;
    .local v15, "properties":Landroidx/compose/ui/window/DialogProperties;
    goto :goto_5

    .line 202
    .end local v15    # "properties":Landroidx/compose/ui/window/DialogProperties;
    .restart local p1    # "properties":Landroidx/compose/ui/window/DialogProperties;
    :cond_8
    move-object v2, v4

    .line 66
    .end local p1    # "properties":Landroidx/compose/ui/window/DialogProperties;
    .local v2, "properties":Landroidx/compose/ui/window/DialogProperties;
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, -0x1

    const-string v4, "androidx.compose.ui.window.Dialog (AndroidDialog.android.kt:201)"

    invoke-static {v0, v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 203
    :cond_9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x6

    .local v3, "$changed$iv":I
    move-object v4, v9

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 767
    .local v5, "$i$f$getCurrent":I
    const v6, 0x789c5f52

    const-string v15, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v4, v6, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 203
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$getCurrent":I
    move-object/from16 v3, v16

    check-cast v3, Landroid/view/View;

    .line 204
    .local v3, "view":Landroid/view/View;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x6

    .local v4, "$changed$iv":I
    move-object v5, v9

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 768
    .local v16, "$i$f$getCurrent":I
    invoke-static {v5, v6, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v17

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 204
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$getCurrent":I
    move-object/from16 v5, v17

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 205
    .local v5, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x6

    .restart local v4    # "$changed$iv":I
    move-object/from16 p1, v9

    .local p1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 769
    .restart local v16    # "$i$f$getCurrent":I
    move-object/from16 v11, p1

    .end local p1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v11, v6, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 205
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$getCurrent":I
    move-object v4, v6

    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 206
    .local v4, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-static {v9, v14}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v11

    .line 207
    .local v11, "composition":Landroidx/compose/runtime/CompositionContext;
    shr-int/lit8 v0, v12, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v7, v9, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v15

    .local v15, "currentContent$delegate":Landroidx/compose/runtime/State;
    new-array v0, v14, [Ljava/lang/Object;

    .line 208
    const v6, -0x8590e9e

    const-string v10, "CC(remember):AndroidDialog.android.kt#9igjgp"

    invoke-static {v9, v6, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "invalid$iv":Z
    .local p1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 770
    .local v17, "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 771
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v14, v13, :cond_a

    .line 772
    const/4 v13, 0x0

    .line 208
    .local v13, "$i$a$-cache-AndroidDialog_androidKt$Dialog$dialogId$1":I
    sget-object v20, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialogId$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialogId$1$1;

    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 772
    .end local v13    # "$i$a$-cache-AndroidDialog_androidKt$Dialog$dialogId$1":I
    move-object/from16 v13, v20

    .line 773
    .local v13, "value$iv":Ljava/lang/Object;
    move-object/from16 v1, p1

    .end local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 774
    move-object v14, v13

    .end local v13    # "value$iv":Ljava/lang/Object;
    goto :goto_6

    .line 775
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_a
    move-object/from16 v1, p1

    .line 770
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :goto_6
    nop

    .line 208
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "invalid$iv":Z
    .end local v17    # "$i$f$cache":I
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v1, 0x30

    invoke-static {v0, v14, v9, v1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/UUID;

    .line 210
    .local v6, "dialogId":Ljava/util/UUID;
    const v0, -0x8590789

    invoke-static {v9, v0, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v13, v9

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v14, v0

    .end local v0    # "invalid$iv":Z
    .local v14, "invalid$iv":Z
    const/16 v17, 0x0

    .line 776
    .restart local v17    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 777
    .restart local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_c

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_b

    goto :goto_7

    .line 781
    :cond_b
    move-object/from16 v1, p0

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    const/4 v5, 0x1

    goto :goto_8

    .line 778
    :cond_c
    :goto_7
    const/16 v20, 0x0

    .line 211
    .local v20, "$i$a$-cache-AndroidDialog_androidKt$Dialog$dialog$1":I
    move-object v1, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/ui/window/DialogWrapper;

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v21, "it$iv":Ljava/lang/Object;
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/DialogWrapper;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V

    .line 212
    move-object/from16 p1, v0

    .local p1, "$this$Dialog_u24lambda_u242_u240":Landroidx/compose/ui/window/DialogWrapper;
    const/16 v22, 0x0

    .line 213
    .local v22, "$i$a$-apply-AndroidDialog_androidKt$Dialog$dialog$1$1":I
    move-object/from16 v23, v0

    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;

    invoke-direct {v0, v15}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    move-object/from16 v24, v3

    .end local v3    # "view":Landroid/view/View;
    .local v24, "view":Landroid/view/View;
    const v3, 0x14ae31cc

    move-object/from16 v25, v5

    const/4 v5, 0x1

    .end local v5    # "density":Landroidx/compose/ui/unit/Density;
    .local v25, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {v3, v5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v3, p1

    .end local p1    # "$this$Dialog_u24lambda_u242_u240":Landroidx/compose/ui/window/DialogWrapper;
    .local v3, "$this$Dialog_u24lambda_u242_u240":Landroidx/compose/ui/window/DialogWrapper;
    invoke-virtual {v3, v11, v0}, Landroidx/compose/ui/window/DialogWrapper;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 216
    nop

    .line 212
    .end local v3    # "$this$Dialog_u24lambda_u242_u240":Landroidx/compose/ui/window/DialogWrapper;
    .end local v22    # "$i$a$-apply-AndroidDialog_androidKt$Dialog$dialog$1$1":I
    nop

    .line 216
    nop

    .line 778
    .end local v20    # "$i$a$-cache-AndroidDialog_androidKt$Dialog$dialog$1":I
    move-object/from16 v0, v23

    .line 779
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 780
    nop

    .line 776
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v21    # "it$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 210
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "invalid$iv":Z
    .end local v17    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 209
    nop

    .line 219
    .local v0, "dialog":Landroidx/compose/ui/window/DialogWrapper;
    const v3, -0x858db32

    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv":Z
    move-object v13, v9

    .restart local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 782
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 783
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_e

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v3

    .end local v3    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_d

    goto :goto_9

    .line 787
    :cond_d
    goto :goto_a

    .line 783
    .end local p1    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_e
    move/from16 p1, v3

    .line 784
    .end local v3    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_9
    const/4 v3, 0x0

    .line 219
    .local v3, "$i$a$-cache-AndroidDialog_androidKt$Dialog$1":I
    move/from16 v19, v3

    .end local v3    # "$i$a$-cache-AndroidDialog_androidKt$Dialog$1":I
    .local v19, "$i$a$-cache-AndroidDialog_androidKt$Dialog$1":I
    new-instance v3, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1;

    invoke-direct {v3, v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 784
    .end local v19    # "$i$a$-cache-AndroidDialog_androidKt$Dialog$1":I
    nop

    .line 785
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 786
    move-object v5, v3

    .line 782
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_a
    nop

    .line 219
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v3, 0x0

    invoke-static {v0, v5, v9, v3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 228
    const v3, -0x858c8bc

    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v5, v12, 0xe

    const/4 v10, 0x4

    if-ne v5, v10, :cond_f

    const/4 v5, 0x1

    goto :goto_b

    :cond_f
    const/4 v5, 0x0

    :goto_b
    or-int/2addr v3, v5

    and-int/lit8 v5, v12, 0x70

    const/16 v10, 0x20

    if-ne v5, v10, :cond_10

    const/4 v13, 0x1

    goto :goto_c

    :cond_10
    const/4 v13, 0x0

    :goto_c
    or-int/2addr v3, v13

    move-object v5, v4

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    or-int/2addr v3, v5

    .local v3, "invalid$iv":Z
    move-object v5, v9

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 788
    .local v10, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 789
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_12

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v3

    .end local v3    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v13, v3, :cond_11

    goto :goto_d

    .line 793
    :cond_11
    goto :goto_e

    .line 789
    .end local p1    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_12
    move/from16 p1, v3

    .line 790
    .end local v3    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_d
    const/4 v3, 0x0

    .line 228
    .local v3, "$i$a$-cache-AndroidDialog_androidKt$Dialog$2":I
    move/from16 p3, v3

    .end local v3    # "$i$a$-cache-AndroidDialog_androidKt$Dialog$2":I
    .local p3, "$i$a$-cache-AndroidDialog_androidKt$Dialog$2":I
    new-instance v3, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;

    invoke-direct {v3, v0, v1, v2, v4}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 790
    .end local p3    # "$i$a$-cache-AndroidDialog_androidKt$Dialog$2":I
    nop

    .line 791
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 792
    move-object v13, v3

    .line 788
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_e
    nop

    .line 228
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v3, 0x0

    invoke-static {v13, v9, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "dialog":Landroidx/compose/ui/window/DialogWrapper;
    .end local v4    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v6    # "dialogId":Ljava/util/UUID;
    .end local v11    # "composition":Landroidx/compose/runtime/CompositionContext;
    .end local v15    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .end local v24    # "view":Landroid/view/View;
    .end local v25    # "density":Landroidx/compose/ui/unit/Density;
    goto :goto_f

    .line 198
    .end local v2    # "properties":Landroidx/compose/ui/window/DialogProperties;
    .local p1, "properties":Landroidx/compose/ui/window/DialogProperties;
    :cond_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v4

    .line 235
    .end local p1    # "properties":Landroidx/compose/ui/window/DialogProperties;
    .restart local v2    # "properties":Landroidx/compose/ui/window/DialogProperties;
    :cond_14
    :goto_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_15

    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;

    move/from16 v5, p5

    move-object v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_15
    return-void
.end method

.method private static final Dialog$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
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

    .line 207
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 825
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 207
    return-object v0
.end method

.method private static final DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 21
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
            "II)V"
        }
    .end annotation

    .line 688
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const v3, 0x4100086b

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(DialogLayout)P(1)688@28193L559,688@28146L606:AndroidDialog.android.kt#2oxthz"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v5, v5, 0x6

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v1, 0x6

    if-nez v7, :cond_2

    move-object/from16 v7, p0

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v5, v8

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    :goto_1
    and-int/lit8 v8, v1, 0x30

    if-nez v8, :cond_4

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :cond_4
    and-int/lit8 v8, v5, 0x13

    const/16 v9, 0x12

    const/4 v10, 0x0

    if-eq v8, v9, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    move v8, v10

    :goto_3
    and-int/lit8 v9, v5, 0x1

    invoke-interface {v4, v8, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v6, :cond_6

    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v6, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_4

    .end local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_6
    move-object v6, v7

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v6    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    const-string v8, "androidx.compose.ui.window.DialogLayout (AndroidDialog.android.kt:687)"

    invoke-static {v3, v5, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 689
    :cond_7
    const v3, 0x11fac9a

    const-string v7, "CC(remember):AndroidDialog.android.kt#9igjgp"

    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    move-object v7, v4

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 794
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 795
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v9, v12, :cond_8

    .line 796
    const/4 v12, 0x0

    .line 689
    .local v12, "$i$a$-cache-AndroidDialog_androidKt$DialogLayout$1":I
    sget-object v13, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;

    check-cast v13, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 796
    .end local v12    # "$i$a$-cache-AndroidDialog_androidKt$DialogLayout$1":I
    nop

    .line 797
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 798
    move-object v9, v13

    .end local v13    # "value$iv":Ljava/lang/Object;
    goto :goto_5

    .line 799
    :cond_8
    nop

    .line 794
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_5
    nop

    .line 689
    .end local v3    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    move-object v3, v9

    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .local v3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v7, v5, 0x3

    and-int/lit8 v7, v7, 0xe

    or-int/lit16 v7, v7, 0x180

    shl-int/lit8 v8, v5, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v7, v8

    .local v7, "$changed$iv":I
    move-object v8, v6

    .local v8, "modifier$iv":Landroidx/compose/ui/Modifier;
    move-object v9, v4

    .local v9, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 800
    .local v11, "$i$f$Layout":I
    const v12, -0x451e1427

    const-string v13, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v9, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 801
    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    .line 802
    .local v10, "compositeKeyHash$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 803
    .local v12, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v9, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 805
    .local v13, "materialized$iv":Landroidx/compose/ui/Modifier;
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    shl-int/lit8 v15, v7, 0x6

    and-int/lit16 v15, v15, 0x380

    or-int/lit8 v15, v15, 0x6

    .line 804
    move-object/from16 p0, v9

    .local v14, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v15, "$changed$iv$iv":I
    .local p0, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 806
    .local v16, "$i$f$ReusableComposeNode":I
    move-object/from16 p2, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p2    # "$composer":Landroidx/compose/runtime/Composer;
    const v4, -0x20f7d59c

    move/from16 v17, v5

    .end local v5    # "$dirty":I
    .local v17, "$dirty":I
    const-string v5, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v18, v6

    move-object/from16 v6, p0

    .end local p0    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 807
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 808
    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 809
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 810
    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 812
    :cond_a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 814
    :goto_6
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 815
    .local v5, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 p0, v5

    .end local v5    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    .local p0, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 816
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v12, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 817
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v20, v3

    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v20, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 818
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 819
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v4, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 820
    nop

    .line 814
    .end local v4    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local p0    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 821
    shr-int/lit8 v3, v15, 0x6

    and-int/lit8 v3, v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 806
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 823
    nop

    .line 800
    .end local v6    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$changed$iv$iv":I
    .end local v16    # "$i$f$ReusableComposeNode":I
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 824
    nop

    .end local v7    # "$changed$iv":I
    .end local v8    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v9    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "compositeKeyHash$iv":I
    .end local v11    # "$i$f$Layout":I
    .end local v12    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v13    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local v20    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 705
    :cond_b
    move-object/from16 v7, v18

    goto :goto_7

    .line 688
    .end local v17    # "$dirty":I
    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$dirty":I
    .local p0, "modifier":Landroidx/compose/ui/Modifier;
    :cond_c
    move-object/from16 p2, v4

    move/from16 v17, v5

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v5    # "$dirty":I
    .restart local v17    # "$dirty":I
    .restart local p2    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 705
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    :goto_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_d

    new-instance v4, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;

    invoke-direct {v4, v7, v0, v1, v2}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_d
    return-void
.end method

.method public static final synthetic access$Dialog$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$currentContent$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->Dialog$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .param p4, "$default"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
