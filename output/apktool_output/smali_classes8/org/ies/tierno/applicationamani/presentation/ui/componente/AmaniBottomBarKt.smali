.class public final Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt;
.super Ljava/lang/Object;
.source "AmaniBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmaniBottomBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmaniBottomBar.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,242:1\n122#2:243\n85#3:244\n1915#4:245\n1916#4:252\n1128#5,6:246\n*S KotlinDebug\n*F\n+ 1 AmaniBottomBar.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt\n*L\n196#1:243\n184#1:244\n198#1:245\n198#1:252\n205#1:246,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u001a\u000e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\'\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e\u00b2\u0006\u000c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u008a\u0084\u0002"
    }
    d2 = {
        "pacienteItems",
        "",
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;",
        "adminItems",
        "psicologoItems",
        "AmaniBottomBar",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "config",
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "app",
        "backStackEntry",
        "Landroidx/navigation/NavBackStackEntry;"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final AmaniBottomBar(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "config"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p4

    const-string v0, "navController"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    const v0, -0x20dbf200

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(AmaniBottomBar)N(navController,config,modifier)183@6551L30,194@6946L11,196@7003L2035,192@6839L2199:AmaniBottomBar.kt#ef1jou"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p4

    .local v3, "$dirty":I
    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v3, v5

    :cond_1
    and-int/lit8 v5, v4, 0x30

    if-nez v5, :cond_4

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_2

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_2
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_4
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v3, v3, 0x180

    move-object/from16 v6, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v6, v4, 0x180

    if-nez v6, :cond_7

    move-object/from16 v6, p2

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_3

    :cond_6
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v3, v7

    goto :goto_4

    :cond_7
    move-object/from16 v6, p2

    :goto_4
    and-int/lit16 v7, v3, 0x93

    const/16 v8, 0x92

    const/4 v9, 0x1

    if-eq v7, v8, :cond_8

    move v7, v9

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    and-int/lit8 v8, v3, 0x1

    invoke-interface {v13, v7, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_f

    if-eqz v5, :cond_9

    .line 182
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    move-object/from16 v16, v5

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v5, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_6

    .line 183
    .end local v5    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_9
    move-object/from16 v16, v6

    .line 182
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar (AmaniBottomBar.kt:182)"

    invoke-static {v0, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 184
    :cond_a
    and-int/lit8 v0, v3, 0xe

    invoke-static {v1, v13, v0}, Landroidx/navigation/compose/NavHostControllerKt;->currentBackStackEntryAsState(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 185
    .local v0, "backStackEntry$delegate":Landroidx/compose/runtime/State;
    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt;->AmaniBottomBar$lambda$0(Landroidx/compose/runtime/State;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    .line 187
    .local v5, "currentRoute":Ljava/lang/String;
    :goto_7
    nop

    .line 188
    sget-object v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Paciente;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Paciente;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt;->pacienteItems()Ljava/util/List;

    move-result-object v6

    goto :goto_8

    .line 189
    :cond_c
    sget-object v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Admin;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Admin;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt;->adminItems()Ljava/util/List;

    move-result-object v6

    goto :goto_8

    .line 190
    :cond_d
    sget-object v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Psicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Psicologo;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt;->psicologoItems()Ljava/util/List;

    move-result-object v6

    .line 187
    :goto_8
    nop

    .line 194
    .local v6, "items":Ljava/util/List;
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->navigationBarsPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 195
    sget-object v8, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v10, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v8, v13, v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v10

    .line 196
    const/4 v8, 0x0

    .local v8, "$this$dp\\1":I
    const/4 v12, 0x0

    .line 243
    .local v12, "$i$f$getDp\\1\\196":I
    int-to-float v14, v8

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 197
    .end local v8    # "$this$dp\\1":I
    .end local v12    # "$i$f$getDp\\1\\196":I
    new-instance v12, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda2;

    invoke-direct {v12, v6, v5, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Ljava/lang/String;Landroidx/navigation/NavController;)V

    const/16 v14, 0x36

    const v15, -0x70fde207

    invoke-static {v15, v9, v12, v13, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 193
    move-object v14, v5

    move-object v5, v7

    move-wide/from16 v19, v10

    move-object v11, v6

    move v10, v8

    move-wide/from16 v6, v19

    .end local v5    # "currentRoute":Ljava/lang/String;
    .end local v6    # "items":Ljava/util/List;
    .local v11, "items":Ljava/util/List;
    .local v14, "currentRoute":Ljava/lang/String;
    const-wide/16 v8, 0x0

    move-object v15, v11

    .end local v11    # "items":Ljava/util/List;
    .local v15, "items":Ljava/util/List;
    const/4 v11, 0x0

    move-object/from16 v17, v14

    .end local v14    # "currentRoute":Ljava/lang/String;
    .local v17, "currentRoute":Ljava/lang/String;
    const v14, 0x30c00

    move-object/from16 v18, v15

    .end local v15    # "items":Ljava/util/List;
    .local v18, "items":Ljava/util/List;
    const/16 v15, 0x14

    invoke-static/range {v5 .. v15}, Landroidx/compose/material3/NavigationBarKt;->NavigationBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "backStackEntry$delegate":Landroidx/compose/runtime/State;
    .end local v17    # "currentRoute":Ljava/lang/String;
    .end local v18    # "items":Ljava/util/List;
    goto :goto_9

    .line 187
    .restart local v0    # "backStackEntry$delegate":Landroidx/compose/runtime/State;
    .restart local v5    # "currentRoute":Ljava/lang/String;
    :cond_e
    move-object/from16 v17, v5

    .end local v5    # "currentRoute":Ljava/lang/String;
    .restart local v17    # "currentRoute":Ljava/lang/String;
    new-instance v5, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v5}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v5

    .line 178
    .end local v0    # "backStackEntry$delegate":Landroidx/compose/runtime/State;
    .end local v16    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v17    # "currentRoute":Ljava/lang/String;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, v6

    .line 242
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v16    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_10
    :goto_9
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_11

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda3;

    move/from16 v5, p5

    move v7, v3

    move-object/from16 v3, v16

    .end local v16    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    .local v7, "$dirty":I
    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda3;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/ui/Modifier;II)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_a

    .end local v7    # "$dirty":I
    .local v3, "$dirty":I
    .restart local v16    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_11
    move v7, v3

    move-object/from16 v3, v16

    .end local v16    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    .restart local v7    # "$dirty":I
    :goto_a
    return-void
.end method

.method private static final AmaniBottomBar$lambda$0(Landroidx/compose/runtime/State;)Landroidx/navigation/NavBackStackEntry;
    .locals 4
    .param p0, "$backStackEntry$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 244
    .local v3, "$i$f$getValue\\1\\184":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\184":I
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 184
    return-object v0
.end method

.method static final AmaniBottomBar$lambda$8(Ljava/util/List;Ljava/lang/String;Landroidx/navigation/NavController;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 43
    .param p0, "$items"    # Ljava/util/List;
    .param p1, "$currentRoute"    # Ljava/lang/String;
    .param p2, "$navController"    # Landroidx/navigation/NavController;
    .param p3, "$this$NavigationBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    const-string v3, "$this$NavigationBar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C*230@8432L11,231@8519L11,232@8597L11,233@8675L11,234@8762L11,235@8849L11,236@8949L11,229@8367L641,204@7296L472,215@7793L221,221@8040L274,201@7175L1847:AmaniBottomBar.kt#ef1jou"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p5

    .local v3, "$dirty":I
    and-int/lit8 v4, p5, 0x6

    if-nez v4, :cond_1

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/16 v21, 0x0

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move/from16 v4, v21

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v12, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar.<anonymous> (AmaniBottomBar.kt:197)"

    const v7, -0x70fde207

    invoke-static {v7, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 198
    :cond_3
    move-object/from16 v22, p0

    check-cast v22, Ljava/lang/Iterable;

    .local v22, "$this$forEach\\1":Ljava/lang/Iterable;
    const/16 v23, 0x0

    .line 245
    .local v23, "$i$f$forEach\\1\\198":I
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .local v25, "element\\1":Ljava/lang/Object;
    move-object/from16 v4, v25

    check-cast v4, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .local v4, "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    const/16 v26, 0x0

    .line 199
    .local v26, "$i$a$-forEach-AmaniBottomBarKt$AmaniBottomBar$1$1\\2\\245\\0":I
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->getRoute()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->getRoute()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    move/from16 v5, v21

    .line 200
    .local v5, "isSelected\\2":Z
    :goto_3
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->getRoute()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    move/from16 v7, v21

    :goto_4
    move/from16 v27, v7

    .line 230
    .local v27, "isEnabled\\2":Z
    move v7, v3

    .end local v3    # "$dirty":I
    .local v7, "$dirty":I
    sget-object v3, Landroidx/compose/material3/NavigationBarItemDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarItemDefaults;

    .line 231
    sget-object v8, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v9, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v8, v12, v9}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v8

    .line 232
    sget-object v10, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v11, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v10, v12, v11}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v10

    .line 233
    sget-object v13, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v14, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v13, v12, v14}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v13

    .line 234
    sget-object v15, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v15, v12, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v17

    .line 235
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v15, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v12, v15}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v19

    .line 236
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v15, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v12, v15}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v28

    const/16 v34, 0xe

    const/16 v35, 0x0

    const v30, 0x3ec28f5c    # 0.38f

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v28 .. v35}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v28

    .line 237
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v15, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v12, v15}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v30

    const/16 v36, 0xe

    const/16 v37, 0x0

    const v32, 0x3ec28f5c    # 0.38f

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v30 .. v37}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v30

    .line 230
    nop

    .line 232
    nop

    .line 233
    nop

    .line 231
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    sget v6, Landroidx/compose/material3/NavigationBarItemDefaults;->$stable:I

    shl-int/lit8 v6, v6, 0x15

    .line 230
    move-wide/from16 v39, v19

    move/from16 v19, v6

    move-wide/from16 v41, v13

    move v14, v7

    move-wide/from16 v6, v41

    move-wide/from16 v12, v39

    .end local v7    # "$dirty":I
    .local v14, "$dirty":I
    const/16 v20, 0x0

    move-wide/from16 v39, v28

    move/from16 v28, v14

    move-wide/from16 v14, v39

    move-object v2, v4

    move/from16 v38, v5

    move-wide v4, v10

    move-wide/from16 v10, v17

    move-wide/from16 v16, v30

    move-object/from16 v18, p4

    .end local v4    # "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .end local v5    # "isSelected\\2":Z
    .end local v14    # "$dirty":I
    .local v2, "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .local v28, "$dirty":I
    .local v38, "isSelected\\2":Z
    invoke-virtual/range {v3 .. v20}, Landroidx/compose/material3/NavigationBarItemDefaults;->colors-69fazGs(JJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/NavigationBarItemColors;

    move-result-object v10

    .line 202
    move-object/from16 v12, v18

    .line 203
    nop

    .line 205
    const v3, -0x61484499

    const-string v4, "CC(remember):AmaniBottomBar.kt#9igjgp"

    invoke-static {v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .local v3, "invalid\\3":Z
    move-object/from16 v4, p4

    .local v4, "$this$cache\\3":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 246
    .local v5, "$i$f$cache\\3\\205":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it\\3":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 247
    .local v7, "$i$a$-let-ComposerKt$cache$1\\4\\246\\3":I
    if-nez v3, :cond_7

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_6

    goto :goto_5

    .line 251
    :cond_6
    goto :goto_6

    .line 248
    :cond_7
    :goto_5
    const/4 v8, 0x0

    .line 205
    .local v8, "$i$a$-cache-AmaniBottomBarKt$AmaniBottomBar$1$1$1\\5\\248\\2":I
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda4;

    invoke-direct {v9, v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda4;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;Ljava/lang/String;Landroidx/navigation/NavController;)V

    .line 248
    .end local v8    # "$i$a$-cache-AmaniBottomBarKt$AmaniBottomBar$1$1$1\\5\\248\\2":I
    nop

    .line 249
    .local v9, "value\\4":Ljava/lang/Object;
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 250
    move-object v6, v9

    .line 246
    .end local v6    # "it\\3":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1\\4\\246\\3":I
    .end local v9    # "value\\4":Ljava/lang/Object;
    :goto_6
    nop

    .line 205
    .end local v3    # "invalid\\3":Z
    .end local v4    # "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\3\\205":I
    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 216
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda5;

    move/from16 v5, v38

    .end local v38    # "isSelected\\2":Z
    .local v5, "isSelected\\2":Z
    invoke-direct {v3, v5, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda5;-><init>(ZLorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;)V

    const v6, 0x2b64d954

    const/16 v7, 0x36

    const/4 v15, 0x1

    invoke-static {v6, v15, v3, v12, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 204
    nop

    .line 222
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda6;

    invoke-direct {v6, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda6;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;)V

    const v8, 0x4347f8f1    # 199.97243f

    invoke-static {v8, v15, v6, v12, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 230
    and-int/lit8 v6, v28, 0xe

    const v7, 0x180c00

    or-int v13, v6, v7

    .line 202
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x148

    move v7, v5

    move-object v5, v3

    move v3, v7

    move-object/from16 v16, v2

    move/from16 v7, v27

    move-object/from16 v2, p3

    .end local v2    # "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .end local v5    # "isSelected\\2":Z
    .end local v27    # "isEnabled\\2":Z
    .local v3, "isSelected\\2":Z
    .local v7, "isEnabled\\2":Z
    .local v16, "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 240
    nop

    .line 245
    .end local v3    # "isSelected\\2":Z
    .end local v7    # "isEnabled\\2":Z
    .end local v16    # "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .end local v26    # "$i$a$-forEach-AmaniBottomBarKt$AmaniBottomBar$1$1\\2\\245\\0":I
    move-object/from16 v12, p4

    move/from16 v3, v28

    .end local v25    # "element\\1":Ljava/lang/Object;
    goto/16 :goto_2

    .line 252
    .end local v28    # "$dirty":I
    .local v3, "$dirty":I
    :cond_8
    move/from16 v28, v3

    .end local v3    # "$dirty":I
    .end local v22    # "$this$forEach\\1":Ljava/lang/Iterable;
    .end local v23    # "$i$f$forEach\\1\\198":I
    .restart local v28    # "$dirty":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_7

    .line 197
    .end local v28    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_9
    move/from16 v28, v3

    .end local v3    # "$dirty":I
    .restart local v28    # "$dirty":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 241
    :cond_a
    :goto_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3(Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;Ljava/lang/String;Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 2
    .param p0, "$item"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .param p1, "$currentRoute"    # Ljava/lang/String;
    .param p2, "$navController"    # Landroidx/navigation/NavController;

    .line 206
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->getRoute()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 207
    .local v0, "route":Ljava/lang/String;
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 208
    :cond_1
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    invoke-virtual {p2, v0, v1}, Landroidx/navigation/NavController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 215
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2(Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;
    .locals 2
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$this$navigate"    # Landroidx/navigation/NavOptionsBuilder;

    const-string v0, "$this$navigate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo(ILkotlin/jvm/functions/Function1;)V

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setLaunchSingleTop(Z)V

    .line 213
    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setRestoreState(Z)V

    .line 214
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2$lambda$1(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$popUpTo"    # Landroidx/navigation/PopUpToBuilder;

    const-string v0, "$this$popUpTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/PopUpToBuilder;->setSaveState(Z)V

    .line 211
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AmaniBottomBar$lambda$8$lambda$7$lambda$5(ZLorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$isSelected"    # Z
    .param p1, "$item"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C216@7815L181:AmaniBottomBar.kt#ef1jou"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar.<anonymous>.<anonymous>.<anonymous> (AmaniBottomBar.kt:216)"

    const v2, 0x2b64d954

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 218
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->getSelectedIcon()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->getUnselectedIcon()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 219
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 217
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v6, p2

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 216
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p2    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_3
    move-object v6, p2

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 221
    :cond_4
    :goto_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method

.method static final AmaniBottomBar$lambda$8$lambda$7$lambda$6(Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$item"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C226@8253L10,222@8062L234:AmaniBottomBar.kt#ef1jou"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar.<anonymous>.<anonymous>.<anonymous> (AmaniBottomBar.kt:222)"

    const v4, 0x4347f8f1    # 199.97243f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 224
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 226
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v15

    .line 227
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/Typography;->getLabelSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 224
    nop

    .line 226
    nop

    .line 225
    nop

    .line 227
    nop

    .line 223
    const/4 v1, 0x0

    move-object v0, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xc30

    const v24, 0xd7fe

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 222
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 229
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AmaniBottomBar$lambda$9(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p4

    move-object v4, p5

    invoke-static/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt;->AmaniBottomBar(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final adminItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;",
            ">;"
        }
    .end annotation

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 104
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 105
    nop

    .line 106
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/HomeKt;->getHome(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 107
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/HomeKt;->getHome(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 103
    const-string v5, "Inicio"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 109
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 110
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacientes;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacientes;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacientes;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 111
    nop

    .line 112
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/PeopleKt;->getPeople(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 113
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/PeopleKt;->getPeople(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 109
    const-string v5, "Pacientes"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 103
    nop

    .line 115
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 116
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPsicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPsicologo;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPsicologo;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 117
    nop

    .line 118
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/PsychologyKt;->getPsychology(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 119
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/PsychologyKt;->getPsychology(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 115
    const-string v5, "Psic\u00f3logos"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 103
    nop

    .line 121
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 122
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$test;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$test;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$test;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 123
    nop

    .line 124
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/QuizKt;->getQuiz(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 125
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/QuizKt;->getQuiz(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 121
    const-string v5, "Tests"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 103
    nop

    .line 127
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 128
    nop

    .line 129
    nop

    .line 130
    sget-object v1, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v1}, Landroidx/compose/material/icons/filled/MoreVertKt;->getMoreVert(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    .line 127
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v5, "M\u00e1s"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x4

    aput-object v3, v0, v1

    .line 103
    nop

    .line 102
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 132
    return-object v0
.end method

.method private static final pacienteItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;",
            ">;"
        }
    .end annotation

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 70
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principalCliente;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principalCliente;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principalCliente;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 71
    nop

    .line 72
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/HomeKt;->getHome(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 73
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/HomeKt;->getHome(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 69
    const-string v5, "Inicio"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 78
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$citas;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$citas;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$citas;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 79
    nop

    .line 80
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/DateRangeKt;->getDateRange(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 81
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/DateRangeKt;->getDateRange(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 77
    const-string v5, "Citas"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 69
    nop

    .line 83
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 84
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;->getRoute()Ljava/lang/String;

    move-result-object v4

    .line 85
    nop

    .line 86
    sget-object v1, Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;

    invoke-static {v1}, Landroidx/compose/material/icons/automirrored/filled/ChatKt;->getChat(Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    .line 83
    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v5, "Chat"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 69
    nop

    .line 88
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 89
    nop

    .line 90
    nop

    .line 91
    sget-object v2, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v2}, Landroidx/compose/material/icons/filled/BookKt;->getBook(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    .line 92
    sget-object v3, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v3}, Landroidx/compose/material/icons/outlined/BookKt;->getBook(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 88
    const/4 v4, 0x0

    const-string v5, "Diario"

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 69
    nop

    .line 94
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 95
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 96
    nop

    .line 97
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/SettingsKt;->getSettings(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 98
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/SettingsKt;->getSettings(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 94
    const-string v5, "Ajustes"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 69
    nop

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method private static final psicologoItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;",
            ">;"
        }
    .end annotation

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 136
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 137
    nop

    .line 138
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/CalendarMonthKt;->getCalendarMonth(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 139
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/CalendarMonthKt;->getCalendarMonth(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 135
    const-string v5, "Agenda"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 141
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 142
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 143
    nop

    .line 144
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/PeopleKt;->getPeople(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 145
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/PeopleKt;->getPeople(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 141
    const-string v5, "Pacientes"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 135
    nop

    .line 147
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 148
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;->getRoute()Ljava/lang/String;

    move-result-object v4

    .line 149
    nop

    .line 150
    sget-object v1, Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;

    invoke-static {v1}, Landroidx/compose/material/icons/automirrored/filled/ChatKt;->getChat(Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    .line 147
    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v5, "Chat"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 135
    nop

    .line 152
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    .line 153
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 154
    nop

    .line 155
    sget-object v3, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v3}, Landroidx/compose/material/icons/filled/SettingsKt;->getSettings(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    .line 156
    sget-object v4, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v4}, Landroidx/compose/material/icons/outlined/SettingsKt;->getSettings(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    .line 152
    const-string v5, "Ajustes"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 135
    nop

    .line 134
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 158
    return-object v0
.end method
