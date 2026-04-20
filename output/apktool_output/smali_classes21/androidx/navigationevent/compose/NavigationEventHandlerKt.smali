.class public final Landroidx/navigationevent/compose/NavigationEventHandlerKt;
.super Ljava/lang/Object;
.source "NavigationEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationEventHandler.kt\nandroidx/navigationevent/compose/NavigationEventHandlerKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,258:1\n1282#2,6:259\n1282#2,6:265\n1282#2,6:271\n1282#2,6:277\n1282#2,6:283\n1282#2,6:289\n1282#2,6:295\n1282#2,6:301\n1282#2,6:307\n1282#2,6:313\n1282#2,6:319\n1282#2,6:325\n1282#2,6:331\n66#3,5:337\n*S KotlinDebug\n*F\n+ 1 NavigationEventHandler.kt\nandroidx/navigationevent/compose/NavigationEventHandlerKt\n*L\n74#1:259,6\n75#1:265,6\n78#1:271,6\n79#1:277,6\n94#1:283,6\n103#1:289,6\n115#1:295,6\n151#1:301,6\n156#1:307,6\n157#1:313,6\n186#1:319,6\n194#1:325,6\n195#1:331,6\n123#1:337,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u001aq\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00082\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\r\u001aE\u0010\u000e\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\u000f\u001aE\u0010\u0010\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "NavigationEventHandler",
        "",
        "state",
        "Landroidx/navigationevent/compose/NavigationEventState;",
        "Landroidx/navigationevent/NavigationEventInfo;",
        "isForwardEnabled",
        "",
        "onForwardCancelled",
        "Lkotlin/Function0;",
        "onForwardCompleted",
        "isBackEnabled",
        "onBackCancelled",
        "onBackCompleted",
        "(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "NavigationBackHandler",
        "(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "NavigationForwardHandler",
        "navigationevent-compose"
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
.method public static final NavigationBackHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p0, "state"    # Landroidx/navigationevent/compose/NavigationEventState;
    .param p1, "isBackEnabled"    # Z
    .param p2, "onBackCancelled"    # Lkotlin/jvm/functions/Function0;
    .param p3, "onBackCompleted"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/compose/NavigationEventState<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 153
    move/from16 v5, p5

    const v0, 0x48bee1a3

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavigationBackHandler)N(state,isBackEnabled,onBackCancelled,onBackCompleted)150@6741L2,155@6862L2,156@6895L2,153@6786L296:NavigationEventHandler.kt#wc8b4r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v5, 0x6

    if-nez v2, :cond_1

    move-object/from16 v6, p0

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p0

    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x30

    move/from16 v3, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v3, v5, 0x30

    if-nez v3, :cond_4

    move/from16 v3, p1

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_4
    move/from16 v3, p1

    :goto_3
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_5

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v7, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_7

    move-object/from16 v7, p2

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_7
    move-object/from16 v7, p2

    :goto_5
    and-int/lit16 v8, v5, 0xc00

    if-nez v8, :cond_9

    move-object/from16 v12, p3

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_6

    :cond_8
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_9
    move-object/from16 v12, p3

    :goto_7
    and-int/lit16 v8, v1, 0x493

    const/16 v9, 0x492

    if-eq v8, v9, :cond_a

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    and-int/lit8 v9, v1, 0x1

    invoke-interface {v13, v8, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_12

    if-eqz v2, :cond_b

    .line 150
    const/4 v2, 0x1

    move v10, v2

    .end local p1    # "isBackEnabled":Z
    .local v2, "isBackEnabled":Z
    goto :goto_9

    .line 153
    .end local v2    # "isBackEnabled":Z
    .restart local p1    # "isBackEnabled":Z
    :cond_b
    move v10, v3

    .line 150
    .end local p1    # "isBackEnabled":Z
    .local v10, "isBackEnabled":Z
    :goto_9
    const-string v2, "CC(remember):NavigationEventHandler.kt#9igjgp"

    if-eqz v4, :cond_d

    .line 151
    const v3, 0x148d1a85

    invoke-static {v13, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    move-object v4, v13

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 301
    .local v8, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 302
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v9, v14, :cond_c

    .line 303
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-NavigationEventHandlerKt$NavigationBackHandler$1":I
    new-instance v15, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda4;

    invoke-direct {v15}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda4;-><init>()V

    .line 304
    .end local v14    # "$i$a$-cache-NavigationEventHandlerKt$NavigationBackHandler$1":I
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 305
    move-object v9, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_a

    .line 306
    :cond_c
    nop

    .line 301
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_a
    nop

    .line 151
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .end local p2    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .local v3, "onBackCancelled":Lkotlin/jvm/functions/Function0;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v11, v3

    goto :goto_b

    .line 150
    .end local v3    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .restart local p2    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    :cond_d
    move-object v11, v7

    .line 151
    .end local p2    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .local v11, "onBackCancelled":Lkotlin/jvm/functions/Function0;
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, -0x1

    const-string v4, "androidx.navigationevent.compose.NavigationBackHandler (NavigationEventHandler.kt:152)"

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 155
    :cond_e
    nop

    .line 158
    nop

    .line 156
    const v0, 0x148d29a5

    invoke-static {v13, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v3, v13

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 307
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 308
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_f

    .line 309
    const/4 v9, 0x0

    .local v9, "$i$a$-cache-NavigationEventHandlerKt$NavigationBackHandler$2":I
    new-instance v14, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda5;

    invoke-direct {v14}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda5;-><init>()V

    .line 310
    .end local v9    # "$i$a$-cache-NavigationEventHandlerKt$NavigationBackHandler$2":I
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 311
    move-object v7, v14

    .end local v14    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 312
    :cond_f
    nop

    .line 307
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_c
    nop

    .line 156
    .end local v0    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 157
    const v0, 0x148d2dc5

    invoke-static {v13, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .restart local v0    # "invalid$iv":Z
    move-object v2, v13

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 313
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 314
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v4, v9, :cond_10

    .line 315
    const/4 v9, 0x0

    .local v9, "$i$a$-cache-NavigationEventHandlerKt$NavigationBackHandler$3":I
    new-instance v14, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda6;

    invoke-direct {v14}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda6;-><init>()V

    .line 316
    .end local v9    # "$i$a$-cache-NavigationEventHandlerKt$NavigationBackHandler$3":I
    .restart local v14    # "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 317
    move-object v4, v14

    .end local v14    # "value$iv":Ljava/lang/Object;
    goto :goto_d

    .line 318
    :cond_10
    nop

    .line 313
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_d
    nop

    .line 157
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 161
    nop

    .line 159
    nop

    .line 160
    and-int/lit8 v0, v1, 0xe

    or-int/lit16 v0, v0, 0xdb0

    shl-int/lit8 v2, v1, 0x9

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x9

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    shl-int/lit8 v3, v1, 0x9

    and-int/2addr v2, v3

    or-int v14, v0, v2

    .line 154
    const/4 v7, 0x0

    const/4 v15, 0x0

    invoke-static/range {v6 .. v15}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 163
    :cond_11
    move v2, v10

    move-object v3, v11

    goto :goto_e

    .line 147
    .end local v10    # "isBackEnabled":Z
    .end local v11    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "isBackEnabled":Z
    .restart local p2    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    :cond_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v2, v3

    move-object v3, v7

    .line 163
    .end local p1    # "isBackEnabled":Z
    .end local p2    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .local v2, "isBackEnabled":Z
    .local v3, "onBackCancelled":Lkotlin/jvm/functions/Function0;
    :goto_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_13

    new-instance v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda7;

    move-object/from16 v4, p3

    move/from16 v6, p6

    move v8, v1

    move-object/from16 v1, p0

    .end local v1    # "$dirty":I
    .local v8, "$dirty":I
    invoke-direct/range {v0 .. v6}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda7;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_f

    .end local v8    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_13
    move v8, v1

    .end local v1    # "$dirty":I
    .restart local v8    # "$dirty":I
    :goto_f
    return-void
.end method

.method static final NavigationBackHandler$lambda$20$lambda$19()Lkotlin/Unit;
    .locals 1

    .line 151
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationBackHandler$lambda$22$lambda$21()Lkotlin/Unit;
    .locals 1

    .line 156
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationBackHandler$lambda$24$lambda$23()Lkotlin/Unit;
    .locals 1

    .line 157
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationBackHandler$lambda$25(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    or-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p5

    move-object v5, p6

    invoke-static/range {v1 .. v7}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationBackHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0, "state"    # Landroidx/navigationevent/compose/NavigationEventState;
    .param p1, "isForwardEnabled"    # Z
    .param p2, "onForwardCancelled"    # Lkotlin/jvm/functions/Function0;
    .param p3, "onForwardCompleted"    # Lkotlin/jvm/functions/Function0;
    .param p4, "isBackEnabled"    # Z
    .param p5, "onBackCancelled"    # Lkotlin/jvm/functions/Function0;
    .param p6, "onBackCompleted"    # Lkotlin/jvm/functions/Function0;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/compose/NavigationEventState<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 80
    move-object/from16 v1, p0

    move/from16 v8, p8

    const v0, 0x358b6fe0

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(NavigationEventHandler)N(state,isForwardEnabled,onForwardCancelled,onForwardCompleted,isBackEnabled,onBackCancelled,onBackCompleted)73@3839L2,74@3880L2,77@3982L2,78@4020L2,80@4036L18,87@4356L7,93@4553L276,102@4846L467,102@4835L478,114@5343L373,114@5319L397:NavigationEventHandler.kt#wc8b4r"

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p8

    .local v2, "$dirty":I
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move/from16 v5, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_4

    move/from16 v5, p1

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v5, p1

    :goto_2
    and-int/lit8 v6, p9, 0x4

    if-eqz v6, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v11, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v11, v8, 0x180

    if-nez v11, :cond_7

    move-object/from16 v11, p2

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x100

    goto :goto_3

    :cond_6
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v2, v12

    goto :goto_4

    :cond_7
    move-object/from16 v11, p2

    :goto_4
    and-int/lit8 v12, p9, 0x8

    if-eqz v12, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v14, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v14, v8, 0xc00

    if-nez v14, :cond_a

    move-object/from16 v14, p3

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/16 v15, 0x800

    goto :goto_5

    :cond_9
    const/16 v15, 0x400

    :goto_5
    or-int/2addr v2, v15

    goto :goto_6

    :cond_a
    move-object/from16 v14, p3

    :goto_6
    and-int/lit8 v15, p9, 0x10

    if-eqz v15, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v13, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v13, v8, 0x6000

    if-nez v13, :cond_d

    move/from16 v13, p4

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x4000

    goto :goto_7

    :cond_c
    const/16 v17, 0x2000

    :goto_7
    or-int v2, v2, v17

    goto :goto_8

    :cond_d
    move/from16 v13, p4

    :goto_8
    and-int/lit8 v17, p9, 0x20

    const/high16 v19, 0x30000

    if-eqz v17, :cond_e

    or-int v2, v2, v19

    move-object/from16 v7, p5

    goto :goto_a

    :cond_e
    and-int v19, v8, v19

    if-nez v19, :cond_10

    move-object/from16 v7, p5

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/high16 v20, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v20, 0x10000

    :goto_9
    or-int v2, v2, v20

    goto :goto_a

    :cond_10
    move-object/from16 v7, p5

    :goto_a
    and-int/lit8 v20, p9, 0x40

    const/high16 v21, 0x180000

    if-eqz v20, :cond_11

    or-int v2, v2, v21

    move-object/from16 v4, p6

    goto :goto_c

    :cond_11
    and-int v21, v8, v21

    if-nez v21, :cond_13

    move-object/from16 v4, p6

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v22, 0x80000

    :goto_b
    or-int v2, v2, v22

    goto :goto_c

    :cond_13
    move-object/from16 v4, p6

    :goto_c
    const v22, 0x92493

    and-int v9, v2, v22

    const v0, 0x92492

    const/16 v23, 0x1

    if-eq v9, v0, :cond_14

    move/from16 v0, v23

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    :goto_d
    and-int/lit8 v9, v2, 0x1

    invoke-interface {v10, v0, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz v3, :cond_15

    .line 73
    const/4 v0, 0x1

    .end local p1    # "isForwardEnabled":Z
    .local v0, "isForwardEnabled":Z
    goto :goto_e

    .line 80
    .end local v0    # "isForwardEnabled":Z
    .restart local p1    # "isForwardEnabled":Z
    :cond_15
    move v0, v5

    .line 73
    .end local p1    # "isForwardEnabled":Z
    .restart local v0    # "isForwardEnabled":Z
    :goto_e
    const-string v9, "CC(remember):NavigationEventHandler.kt#9igjgp"

    if-eqz v6, :cond_17

    .line 74
    const v3, 0x6f1262

    invoke-static {v10, v3, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    move-object v5, v10

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 259
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 260
    .local v24, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v0

    .end local v0    # "isForwardEnabled":Z
    .restart local p1    # "isForwardEnabled":Z
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v11, v0, :cond_16

    .line 261
    const/4 v0, 0x0

    .local v0, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$1":I
    new-instance v25, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda8;

    invoke-direct/range {v25 .. v25}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda8;-><init>()V

    .end local v0    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$1":I
    move-object/from16 v0, v25

    .line 262
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 263
    move-object v11, v0

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_f

    .line 264
    :cond_16
    nop

    .line 259
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_f
    nop

    .line 74
    .end local v3    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    move-object v0, v11

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .end local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local v0, "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v3, v0

    goto :goto_10

    .line 73
    .end local p1    # "isForwardEnabled":Z
    .local v0, "isForwardEnabled":Z
    .restart local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    :cond_17
    move/from16 p1, v0

    .end local v0    # "isForwardEnabled":Z
    .restart local p1    # "isForwardEnabled":Z
    move-object/from16 v3, p2

    .line 74
    .end local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local v3, "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    :goto_10
    if-eqz v12, :cond_19

    .line 75
    const v0, 0x6f1782

    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v5, v10

    .restart local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 265
    .restart local v6    # "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 266
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v24, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v11, v0, :cond_18

    .line 267
    const/4 v0, 0x0

    .local v0, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$2":I
    new-instance v24, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda9;

    invoke-direct/range {v24 .. v24}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda9;-><init>()V

    .end local v0    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$2":I
    move-object/from16 v0, v24

    .line 268
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 269
    move-object v11, v0

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_11

    .line 270
    :cond_18
    nop

    .line 265
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_11
    nop

    .line 75
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    move-object v0, v11

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .end local p3    # "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    .local v0, "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v4, v0

    goto :goto_12

    .line 74
    .end local v0    # "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    :cond_19
    move-object v4, v14

    .line 75
    .end local p3    # "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    .local v4, "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    :goto_12
    if-eqz v15, :cond_1a

    .line 77
    const/4 v0, 0x1

    move v5, v0

    .end local p4    # "isBackEnabled":Z
    .local v0, "isBackEnabled":Z
    goto :goto_13

    .line 75
    .end local v0    # "isBackEnabled":Z
    .restart local p4    # "isBackEnabled":Z
    :cond_1a
    move v5, v13

    .line 77
    .end local p4    # "isBackEnabled":Z
    .local v5, "isBackEnabled":Z
    :goto_13
    if-eqz v17, :cond_1c

    .line 78
    const v0, 0x6f2442

    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v6, v10

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 271
    .local v11, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 272
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_1b

    .line 273
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$3":I
    new-instance v15, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda10;

    invoke-direct {v15}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda10;-><init>()V

    .line 274
    .end local v14    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$3":I
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 275
    move-object v12, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_14

    .line 276
    :cond_1b
    nop

    .line 271
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_14
    nop

    .line 78
    .end local v0    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    move-object v0, v12

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .end local p5    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .local v0, "onBackCancelled":Lkotlin/jvm/functions/Function0;
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v6, v0

    goto :goto_15

    .line 77
    .end local v0    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .restart local p5    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    :cond_1c
    move-object v6, v7

    .line 78
    .end local p5    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .local v6, "onBackCancelled":Lkotlin/jvm/functions/Function0;
    :goto_15
    if-eqz v20, :cond_1e

    .line 79
    const v0, 0x6f2902

    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v7, v10

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 277
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 278
    .restart local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_1d

    .line 279
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$4":I
    new-instance v15, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda11;

    invoke-direct {v15}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda11;-><init>()V

    .line 280
    .end local v14    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$4":I
    .restart local v15    # "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 281
    move-object v12, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_16

    .line 282
    :cond_1d
    nop

    .line 277
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_16
    nop

    .line 79
    .end local v0    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    move-object v0, v12

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .end local p6    # "onBackCompleted":Lkotlin/jvm/functions/Function0;
    .local v0, "onBackCompleted":Lkotlin/jvm/functions/Function0;
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v7, v0

    goto :goto_17

    .line 78
    .end local v0    # "onBackCompleted":Lkotlin/jvm/functions/Function0;
    .restart local p6    # "onBackCompleted":Lkotlin/jvm/functions/Function0;
    :cond_1e
    move-object/from16 v7, p6

    .line 79
    .end local p6    # "onBackCompleted":Lkotlin/jvm/functions/Function0;
    .local v7, "onBackCompleted":Lkotlin/jvm/functions/Function0;
    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, -0x1

    const-string v11, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)"

    const v12, 0x358b6fe0

    invoke-static {v12, v2, v0, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 81
    :cond_1f
    const/4 v0, 0x0

    invoke-static {v10, v0}, Landroidx/navigationevent/compose/NavigationEventHandler_androidKt;->isInspectionMode(Landroidx/compose/runtime/Composer;I)Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 128
    :cond_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_21

    new-instance v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda12;

    move/from16 v9, p9

    move v12, v2

    move/from16 v2, p1

    .end local p1    # "isForwardEnabled":Z
    .local v2, "isForwardEnabled":Z
    .local v12, "$dirty":I
    invoke-direct/range {v0 .. v9}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda12;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_18

    .end local v12    # "$dirty":I
    .local v2, "$dirty":I
    .restart local p1    # "isForwardEnabled":Z
    :cond_21
    move v12, v2

    move/from16 v2, p1

    .line 84
    .end local p1    # "isForwardEnabled":Z
    .local v2, "isForwardEnabled":Z
    .restart local v12    # "$dirty":I
    :goto_18
    return-void

    .line 88
    .end local v12    # "$dirty":I
    .local v2, "$dirty":I
    .restart local p1    # "isForwardEnabled":Z
    :cond_22
    move v12, v2

    move/from16 v2, p1

    .end local p1    # "isForwardEnabled":Z
    .local v2, "isForwardEnabled":Z
    .restart local v12    # "$dirty":I
    sget-object v0, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->INSTANCE:Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;

    const/4 v8, 0x6

    invoke-virtual {v0, v10, v8}, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/navigationevent/NavigationEventDispatcherOwner;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 91
    invoke-interface {v0}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v0

    .line 87
    move-object v11, v0

    .line 94
    .local v11, "dispatcher":Landroidx/navigationevent/NavigationEventDispatcher;
    const v0, 0x6f6cb4

    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v12, 0xe

    const/4 v8, 0x4

    if-ne v0, v8, :cond_23

    move/from16 v0, v23

    goto :goto_19

    :cond_23
    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    :goto_19
    move-object v8, v10

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 283
    .local v13, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 284
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_25

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v0

    .end local v0    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_24

    goto :goto_1a

    .line 288
    :cond_24
    move/from16 p3, v2

    move-object/from16 p4, v3

    goto :goto_1b

    .line 284
    .end local p1    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_25
    move/from16 p1, v0

    .line 285
    .end local v0    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_1a
    const/4 v0, 0x0

    .line 95
    .local v0, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$sourceHandler$1":I
    move/from16 p2, v0

    .end local v0    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$sourceHandler$1":I
    .local p2, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$sourceHandler$1":I
    new-instance v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    .line 96
    move/from16 p3, v2

    .end local v2    # "isForwardEnabled":Z
    .local p3, "isForwardEnabled":Z
    invoke-virtual {v1}, Landroidx/navigationevent/compose/NavigationEventState;->getCurrentInfo()Landroidx/navigationevent/NavigationEventInfo;

    move-result-object v2

    .line 97
    move-object/from16 p4, v3

    .end local v3    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local p4, "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    new-instance v3, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda13;-><init>(Landroidx/navigationevent/compose/NavigationEventState;)V

    .line 95
    invoke-direct {v0, v2, v3}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V

    .line 100
    nop

    .line 285
    .end local p2    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$sourceHandler$1":I
    nop

    .line 286
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 287
    move-object v14, v0

    .line 283
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_1b
    nop

    .line 94
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v14, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 93
    nop

    .line 103
    .local v14, "sourceHandler":Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
    const v0, 0x6f9213

    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v2, v12, 0x70

    const/16 v3, 0x20

    if-ne v2, v3, :cond_26

    move/from16 v2, v23

    goto :goto_1c

    :cond_26
    const/4 v2, 0x0

    :goto_1c
    or-int/2addr v0, v2

    and-int/lit16 v2, v12, 0x380

    const/16 v3, 0x100

    if-ne v2, v3, :cond_27

    move/from16 v2, v23

    goto :goto_1d

    :cond_27
    const/4 v2, 0x0

    :goto_1d
    or-int/2addr v0, v2

    and-int/lit16 v2, v12, 0x1c00

    const/16 v3, 0x800

    if-ne v2, v3, :cond_28

    move/from16 v2, v23

    goto :goto_1e

    :cond_28
    const/4 v2, 0x0

    :goto_1e
    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v12

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_29

    move/from16 v2, v23

    goto :goto_1f

    :cond_29
    const/4 v2, 0x0

    :goto_1f
    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v12

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_2a

    move/from16 v2, v23

    goto :goto_20

    :cond_2a
    const/4 v2, 0x0

    :goto_20
    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v12

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_2b

    move/from16 v2, v23

    goto :goto_21

    :cond_2b
    const/4 v2, 0x0

    :goto_21
    or-int/2addr v0, v2

    and-int/lit8 v2, v12, 0xe

    const/4 v8, 0x4

    if-ne v2, v8, :cond_2c

    move/from16 v2, v23

    goto :goto_22

    :cond_2c
    const/4 v2, 0x0

    :goto_22
    or-int v13, v0, v2

    .local v13, "invalid$iv":Z
    move-object v15, v10

    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 289
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 290
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v13, :cond_2e

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2d

    goto :goto_23

    .line 294
    :cond_2d
    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object v8, v0

    move-object v0, v14

    goto :goto_24

    .line 291
    :cond_2e
    :goto_23
    const/16 v18, 0x0

    .line 103
    .local v18, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$6":I
    move-object v2, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local v2, "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda14;

    move-object/from16 v3, p4

    move-object v8, v1

    move-object v1, v14

    move-object v14, v2

    move/from16 v2, p3

    .end local p3    # "isForwardEnabled":Z
    .end local p4    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local v1, "sourceHandler":Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
    .local v2, "isForwardEnabled":Z
    .restart local v3    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local v14, "it$iv":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda14;-><init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigationevent/compose/NavigationEventState;)V

    .line 291
    move-object/from16 v26, v8

    move-object v8, v0

    move-object v0, v1

    move-object/from16 v1, v26

    .line 292
    .end local v1    # "sourceHandler":Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
    .end local v18    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$6":I
    .local v0, "sourceHandler":Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 293
    nop

    .line 289
    .end local v8    # "value$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_24
    nop

    .line 103
    .end local v13    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v13, 0x0

    invoke-static {v8, v10, v13}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 115
    const v8, 0x6fcfd5

    invoke-static {v10, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v8, v12, 0xe

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2f

    goto :goto_25

    :cond_2f
    move/from16 v23, v13

    :goto_25
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int v8, v23, v8

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    .local v8, "invalid$iv":Z
    move-object v9, v10

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 295
    .local v13, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 296
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_31

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v2

    .end local v2    # "isForwardEnabled":Z
    .local p1, "isForwardEnabled":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_30

    goto :goto_26

    .line 300
    :cond_30
    goto :goto_27

    .line 296
    .end local p1    # "isForwardEnabled":Z
    .restart local v2    # "isForwardEnabled":Z
    :cond_31
    move/from16 p1, v2

    .line 297
    .end local v2    # "isForwardEnabled":Z
    .restart local p1    # "isForwardEnabled":Z
    :goto_26
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$7":I
    move/from16 p2, v2

    .end local v2    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$7":I
    .local p2, "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$7":I
    new-instance v2, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1, v0, v11}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda15;-><init>(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/NavigationEventDispatcher;)V

    .line 297
    .end local p2    # "$i$a$-cache-NavigationEventHandlerKt$NavigationEventHandler$7":I
    nop

    .line 298
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 299
    move-object v14, v2

    .line 295
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_27
    nop

    .line 115
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v2, v12, 0xe

    invoke-static {v1, v14, v10, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 128
    .end local v0    # "sourceHandler":Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
    .end local v11    # "dispatcher":Landroidx/navigationevent/NavigationEventDispatcher;
    :cond_32
    move/from16 v2, p1

    goto :goto_28

    .line 88
    .end local p1    # "isForwardEnabled":Z
    .local v2, "isForwardEnabled":Z
    :cond_33
    move/from16 p1, v2

    .end local v2    # "isForwardEnabled":Z
    .restart local p1    # "isForwardEnabled":Z
    const/4 v0, 0x0

    .line 89
    .local v0, "$i$a$-checkNotNull-NavigationEventHandlerKt$NavigationEventHandler$dispatcher$1":I
    nop

    .line 88
    .end local v0    # "$i$a$-checkNotNull-NavigationEventHandlerKt$NavigationEventHandler$dispatcher$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    .end local v3    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .end local v4    # "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    .end local v5    # "isBackEnabled":Z
    .end local v6    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .end local v7    # "onBackCompleted":Lkotlin/jvm/functions/Function0;
    .end local v12    # "$dirty":I
    .local v2, "$dirty":I
    .local p2, "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local p3, "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    .local p4, "isBackEnabled":Z
    .restart local p5    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .restart local p6    # "onBackCompleted":Lkotlin/jvm/functions/Function0;
    :cond_34
    move v12, v2

    .end local v2    # "$dirty":I
    .restart local v12    # "$dirty":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move v2, v5

    move-object v6, v7

    move v5, v13

    move-object v4, v14

    move-object/from16 v7, p6

    .line 128
    .end local p1    # "isForwardEnabled":Z
    .end local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .end local p3    # "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    .end local p4    # "isBackEnabled":Z
    .end local p5    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .end local p6    # "onBackCompleted":Lkotlin/jvm/functions/Function0;
    .local v2, "isForwardEnabled":Z
    .restart local v3    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "onForwardCompleted":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "isBackEnabled":Z
    .restart local v6    # "onBackCancelled":Lkotlin/jvm/functions/Function0;
    .restart local v7    # "onBackCompleted":Lkotlin/jvm/functions/Function0;
    :goto_28
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_35

    new-instance v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda16;

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda16;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_35
    return-void
.end method

.method static final NavigationEventHandler$lambda$1$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationEventHandler$lambda$11$lambda$10(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventTransitionState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$state"    # Landroidx/navigationevent/compose/NavigationEventState;
    .param p1, "transitionState"    # Landroidx/navigationevent/NavigationEventTransitionState;

    .line 98
    invoke-virtual {p0, p1}, Landroidx/navigationevent/compose/NavigationEventState;->setTransitionState$navigationevent_compose(Landroidx/navigationevent/NavigationEventTransitionState;)V

    .line 99
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationEventHandler$lambda$13$lambda$12(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigationevent/compose/NavigationEventState;)Lkotlin/Unit;
    .locals 3
    .param p0, "$sourceHandler"    # Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
    .param p1, "$isForwardEnabled"    # Z
    .param p2, "$onForwardCancelled"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$onForwardCompleted"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$isBackEnabled"    # Z
    .param p5, "$onBackCancelled"    # Lkotlin/jvm/functions/Function0;
    .param p6, "$onBackCompleted"    # Lkotlin/jvm/functions/Function0;
    .param p7, "$state"    # Landroidx/navigationevent/compose/NavigationEventState;

    .line 104
    invoke-virtual {p0, p1}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setForwardEnabled(Z)V

    .line 105
    invoke-virtual {p0, p2}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setCurrentOnForwardCancelled(Lkotlin/jvm/functions/Function0;)V

    .line 106
    invoke-virtual {p0, p3}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setCurrentOnForwardCompleted(Lkotlin/jvm/functions/Function0;)V

    .line 108
    invoke-virtual {p0, p4}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setBackEnabled(Z)V

    .line 109
    invoke-virtual {p0, p5}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setCurrentOnBackCancelled(Lkotlin/jvm/functions/Function0;)V

    .line 110
    invoke-virtual {p0, p6}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setCurrentOnBackCompleted(Lkotlin/jvm/functions/Function0;)V

    .line 112
    invoke-virtual {p7}, Landroidx/navigationevent/compose/NavigationEventState;->getCurrentInfo()Landroidx/navigationevent/NavigationEventInfo;

    move-result-object v0

    invoke-virtual {p7}, Landroidx/navigationevent/compose/NavigationEventState;->getBackInfo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p7}, Landroidx/navigationevent/compose/NavigationEventState;->getForwardInfo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->setInfo(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V

    .line 113
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationEventHandler$lambda$17$lambda$16(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 4
    .param p0, "$state"    # Landroidx/navigationevent/compose/NavigationEventState;
    .param p1, "$sourceHandler"    # Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
    .param p2, "$dispatcher"    # Landroidx/navigationevent/NavigationEventDispatcher;
    .param p3, "$this$DisposableEffect"    # Landroidx/compose/runtime/DisposableEffectScope;

    .line 116
    invoke-virtual {p0}, Landroidx/navigationevent/compose/NavigationEventState;->getSourceHandler$navigationevent_compose()Landroidx/navigationevent/NavigationEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 120
    move-object v0, p1

    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {p0, v0}, Landroidx/navigationevent/compose/NavigationEventState;->setSourceHandler$navigationevent_compose(Landroidx/navigationevent/NavigationEventHandler;)V

    .line 121
    move-object v0, p1

    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/navigationevent/NavigationEventDispatcher;->addHandler$default(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V

    .line 123
    move-object v0, p3

    .local v0, "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    const/4 v1, 0x0

    .line 337
    .local v1, "$i$f$onDispose":I
    new-instance v2, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;

    invoke-direct {v2, p1, p0}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;-><init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/compose/NavigationEventState;)V

    check-cast v2, Landroidx/compose/runtime/DisposableEffectResult;

    .line 341
    nop

    .line 126
    .end local v0    # "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    .end local v1    # "$i$f$onDispose":I
    return-object v2

    .line 116
    :cond_1
    const/4 v0, 0x0

    .line 117
    .local v0, "$i$a$-require-NavigationEventHandlerKt$NavigationEventHandler$7$1$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavigationEventState \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is already registered with a NavigationEventHandler \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .end local v0    # "$i$a$-require-NavigationEventHandlerKt$NavigationEventHandler$7$1$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static final NavigationEventHandler$lambda$18(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationEventHandler$lambda$3$lambda$2()Lkotlin/Unit;
    .locals 1

    .line 75
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationEventHandler$lambda$5$lambda$4()Lkotlin/Unit;
    .locals 1

    .line 78
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationEventHandler$lambda$7$lambda$6()Lkotlin/Unit;
    .locals 1

    .line 79
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationEventHandler$lambda$8(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final NavigationForwardHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p0, "state"    # Landroidx/navigationevent/compose/NavigationEventState;
    .param p1, "isForwardEnabled"    # Z
    .param p2, "onForwardCancelled"    # Lkotlin/jvm/functions/Function0;
    .param p3, "onForwardCompleted"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/compose/NavigationEventState<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 188
    move/from16 v5, p5

    const v0, -0x679238f7

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavigationForwardHandler)N(state,isForwardEnabled,onForwardCancelled,onForwardCompleted)185@8106L2,193@8370L2,194@8400L2,188@8154L302:NavigationEventHandler.kt#wc8b4r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v5, 0x6

    if-nez v2, :cond_1

    move-object/from16 v6, p0

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p0

    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x30

    move/from16 v3, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v3, v5, 0x30

    if-nez v3, :cond_4

    move/from16 v3, p1

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_4
    move/from16 v3, p1

    :goto_3
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_5

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v7, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_7

    move-object/from16 v7, p2

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_7
    move-object/from16 v7, p2

    :goto_5
    and-int/lit16 v8, v5, 0xc00

    if-nez v8, :cond_9

    move-object/from16 v9, p3

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_6

    :cond_8
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_9
    move-object/from16 v9, p3

    :goto_7
    and-int/lit16 v8, v1, 0x493

    const/16 v10, 0x492

    if-eq v8, v10, :cond_a

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    and-int/lit8 v10, v1, 0x1

    invoke-interface {v13, v8, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_12

    if-eqz v2, :cond_b

    .line 185
    const/4 v2, 0x1

    move v7, v2

    .end local p1    # "isForwardEnabled":Z
    .local v2, "isForwardEnabled":Z
    goto :goto_9

    .line 188
    .end local v2    # "isForwardEnabled":Z
    .restart local p1    # "isForwardEnabled":Z
    :cond_b
    move v7, v3

    .line 185
    .end local p1    # "isForwardEnabled":Z
    .local v7, "isForwardEnabled":Z
    :goto_9
    const-string v2, "CC(remember):NavigationEventHandler.kt#9igjgp"

    if-eqz v4, :cond_d

    .line 186
    const v3, 0x34183f8b

    invoke-static {v13, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    move-object v4, v13

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 319
    .local v8, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 320
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_c

    .line 321
    const/4 v12, 0x0

    .local v12, "$i$a$-cache-NavigationEventHandlerKt$NavigationForwardHandler$1":I
    new-instance v14, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda0;-><init>()V

    .line 322
    .end local v12    # "$i$a$-cache-NavigationEventHandlerKt$NavigationForwardHandler$1":I
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 323
    move-object v10, v14

    .end local v14    # "value$iv":Ljava/lang/Object;
    goto :goto_a

    .line 324
    :cond_c
    nop

    .line 319
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_a
    nop

    .line 186
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    move-object v3, v10

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .end local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local v3, "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v8, v3

    goto :goto_b

    .line 185
    .end local v3    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .restart local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    :cond_d
    move-object/from16 v8, p2

    .line 186
    .end local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local v8, "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, -0x1

    const-string v4, "androidx.navigationevent.compose.NavigationForwardHandler (NavigationEventHandler.kt:187)"

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 190
    :cond_e
    nop

    .line 193
    nop

    .line 191
    nop

    .line 192
    nop

    .line 196
    nop

    .line 194
    const v0, 0x3418608b

    invoke-static {v13, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v3, v13

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 325
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 326
    .restart local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_f

    .line 327
    const/4 v12, 0x0

    .local v12, "$i$a$-cache-NavigationEventHandlerKt$NavigationForwardHandler$2":I
    new-instance v14, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;

    invoke-direct {v14}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;-><init>()V

    .line 328
    .end local v12    # "$i$a$-cache-NavigationEventHandlerKt$NavigationForwardHandler$2":I
    .restart local v14    # "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 329
    move-object v10, v14

    .end local v14    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 330
    :cond_f
    nop

    .line 325
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_c
    nop

    .line 194
    .end local v0    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v11, v10

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 195
    const v0, 0x3418644b

    invoke-static {v13, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .restart local v0    # "invalid$iv":Z
    move-object v2, v13

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 331
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 332
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v4, v12, :cond_10

    .line 333
    const/4 v12, 0x0

    .local v12, "$i$a$-cache-NavigationEventHandlerKt$NavigationForwardHandler$3":I
    new-instance v14, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda2;

    invoke-direct {v14}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda2;-><init>()V

    .line 334
    .end local v12    # "$i$a$-cache-NavigationEventHandlerKt$NavigationForwardHandler$3":I
    .restart local v14    # "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 335
    move-object v4, v14

    .end local v14    # "value$iv":Ljava/lang/Object;
    goto :goto_d

    .line 336
    :cond_10
    nop

    .line 331
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_d
    nop

    .line 195
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v0, v1, 0xe

    const v2, 0x1b6000

    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int v14, v0, v2

    .line 189
    const/4 v10, 0x0

    const/4 v15, 0x0

    invoke-static/range {v6 .. v15}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 198
    :cond_11
    move v2, v7

    move-object v3, v8

    goto :goto_e

    .line 182
    .end local v7    # "isForwardEnabled":Z
    .end local v8    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "isForwardEnabled":Z
    .restart local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    :cond_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v2, v3

    move-object/from16 v3, p2

    .line 198
    .end local p1    # "isForwardEnabled":Z
    .end local p2    # "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    .local v2, "isForwardEnabled":Z
    .local v3, "onForwardCancelled":Lkotlin/jvm/functions/Function0;
    :goto_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_13

    new-instance v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda3;

    move-object/from16 v4, p3

    move/from16 v6, p6

    move v8, v1

    move-object/from16 v1, p0

    .end local v1    # "$dirty":I
    .local v8, "$dirty":I
    invoke-direct/range {v0 .. v6}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda3;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_f

    .end local v8    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_13
    move v8, v1

    .end local v1    # "$dirty":I
    .restart local v8    # "$dirty":I
    :goto_f
    return-void
.end method

.method static final NavigationForwardHandler$lambda$27$lambda$26()Lkotlin/Unit;
    .locals 1

    .line 186
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationForwardHandler$lambda$29$lambda$28()Lkotlin/Unit;
    .locals 1

    .line 194
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationForwardHandler$lambda$31$lambda$30()Lkotlin/Unit;
    .locals 1

    .line 195
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavigationForwardHandler$lambda$32(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    or-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p5

    move-object v5, p6

    invoke-static/range {v1 .. v7}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationForwardHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
