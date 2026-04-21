.class public final Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt;
.super Ljava/lang/Object;
.source "BottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomBar.kt\norg/ies/tierno/applicationamani/presentation/components/BottomBarKt\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,93:1\n85#2:94\n1915#3:95\n1916#3:102\n1128#4,6:96\n*S KotlinDebug\n*F\n+ 1 BottomBar.kt\norg/ies/tierno/applicationamani/presentation/components/BottomBarKt\n*L\n57#1:94\n68#1:95\n68#1:102\n73#1:96,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005\u00b2\u0006\u000c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u008a\u0084\u0002"
    }
    d2 = {
        "BottomBar",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V",
        "app",
        "currentRoute",
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
.method public static final BottomBar(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "navController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const v0, 0x1e9dbbe3

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string p1, "C(BottomBar)N(navController)56@2070L30,66@2548L1195,66@2534L1209:BottomBar.kt#ww28gq"

    invoke-static {v9, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move p1, p2

    .local p1, "$dirty":I
    and-int/lit8 v1, p2, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-nez v1, :cond_1

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/2addr p1, v1

    :cond_1
    and-int/lit8 v1, p1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    and-int/lit8 v6, p1, 0x1

    invoke-interface {v9, v1, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.components.BottomBar (BottomBar.kt:55)"

    invoke-static {v0, p1, v1, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 57
    :cond_3
    and-int/lit8 v0, p1, 0xe

    invoke-static {p0, v9, v0}, Landroidx/navigation/compose/NavHostControllerKt;->currentBackStackEntryAsState(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 60
    .local v0, "currentRoute$delegate":Landroidx/compose/runtime/State;
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    sget-object v7, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v7}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/material/icons/filled/HomeKt;->getHome(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v7

    const-string v8, "home"

    const-string v10, "Inicio"

    invoke-direct {v6, v8, v10, v7}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    aput-object v6, v1, v4

    .line 61
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    sget-object v6, Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;

    invoke-static {v6}, Landroidx/compose/material/icons/automirrored/filled/ChatKt;->getChat(Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    const-string v7, "chat"

    const-string v8, "Chat"

    invoke-direct {v4, v7, v8, v6}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    aput-object v4, v1, v5

    .line 60
    nop

    .line 62
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    sget-object v6, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v6}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/material/icons/filled/DateRangeKt;->getDateRange(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    const-string v7, "citas"

    const-string v8, "Citas"

    invoke-direct {v4, v7, v8, v6}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    aput-object v4, v1, v3

    .line 60
    nop

    .line 63
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    sget-object v4, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v4}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/material/icons/filled/BookKt;->getBook(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    const-string v6, "diario"

    const-string v7, "Diario"

    invoke-direct {v3, v6, v7, v4}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 60
    nop

    .line 64
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    sget-object v4, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v4}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/material/icons/filled/SettingsKt;->getSettings(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    const-string v6, "settings"

    const-string v7, "Ajustes"

    invoke-direct {v3, v6, v7, v4}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    aput-object v3, v1, v2

    .line 60
    nop

    .line 59
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 67
    .local v12, "destinations":Ljava/util/List;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, v12, p0, v0}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Landroidx/navigation/NavController;Landroidx/compose/runtime/State;)V

    const/16 v2, 0x36

    const v3, -0x27d6164

    invoke-static {v3, v5, v1, v9, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function3;

    const/high16 v10, 0x30000

    const/16 v11, 0x1f

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/material3/NavigationBarKt;->NavigationBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "currentRoute$delegate":Landroidx/compose/runtime/State;
    .end local v12    # "destinations":Ljava/util/List;
    goto :goto_2

    .line 55
    :cond_4
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 92
    :cond_5
    :goto_2
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda5;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method private static final BottomBar$lambda$0(Landroidx/compose/runtime/State;)Landroidx/navigation/NavBackStackEntry;
    .locals 4
    .param p0, "$currentRoute$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 94
    .local v3, "$i$f$getValue\\1\\57":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\57":I
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 57
    return-object v0
.end method

.method static final BottomBar$lambda$8(Ljava/util/List;Landroidx/navigation/NavController;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 31
    .param p0, "$destinations"    # Ljava/util/List;
    .param p1, "$navController"    # Landroidx/navigation/NavController;
    .param p2, "$currentRoute$delegate"    # Landroidx/compose/runtime/State;
    .param p3, "$this$NavigationBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v11, p4

    const-string v2, "$this$NavigationBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C*82@3332L11,83@3416L11,84@3504L11,85@3588L11,86@3667L11,81@3273L440,72@2879L341,69@2650L66,70@2742L27,68@2608L1119:BottomBar.kt#ww28gq"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p5

    .local v2, "$dirty":I
    and-int/lit8 v3, p5, 0x6

    if-nez v3, :cond_1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v11, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.components.BottomBar.<anonymous> (BottomBar.kt:67)"

    const v6, -0x27d6164

    invoke-static {v6, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 68
    :cond_3
    move-object/from16 v20, p0

    check-cast v20, Ljava/lang/Iterable;

    .local v20, "$this$forEach\\1":Ljava/lang/Iterable;
    const/16 v21, 0x0

    .line 95
    .local v21, "$i$f$forEach\\1\\68":I
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    .local v23, "element\\1":Ljava/lang/Object;
    move-object/from16 v3, v23

    check-cast v3, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    .local v3, "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    const/16 v24, 0x0

    .line 72
    .local v24, "$i$a$-forEach-BottomBarKt$BottomBar$1$1\\2\\95\\0":I
    invoke-static/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt;->BottomBar$lambda$0(Landroidx/compose/runtime/State;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;->getRoute()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v25

    .line 82
    move v4, v2

    .end local v2    # "$dirty":I
    .local v4, "$dirty":I
    sget-object v2, Landroidx/compose/material3/NavigationBarItemDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarItemDefaults;

    .line 83
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v11, v7}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v7

    .line 84
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v9, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v11, v9}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v9

    .line 85
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v12, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v11, v12}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v12

    .line 86
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v14, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v11, v14}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v14

    .line 87
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v11, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v5

    .line 82
    nop

    .line 84
    nop

    .line 86
    nop

    .line 83
    nop

    .line 85
    nop

    .line 87
    sget v17, Landroidx/compose/material3/NavigationBarItemDefaults;->$stable:I

    shl-int/lit8 v18, v17, 0x15

    .line 82
    move-wide/from16 v26, v5

    move-wide v5, v14

    move-object v15, v3

    move-wide/from16 v29, v12

    move v12, v4

    move-wide v3, v9

    move-wide/from16 v9, v29

    .end local v3    # "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    .end local v4    # "$dirty":I
    .local v12, "$dirty":I
    .local v15, "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    const-wide/16 v13, 0x0

    move-object/from16 v17, v15

    const/16 v19, 0x1

    .end local v15    # "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    .local v17, "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    const-wide/16 v15, 0x0

    move/from16 v28, v19

    const/16 v19, 0x60

    move-object/from16 v1, v17

    move-object/from16 v17, v11

    move-wide/from16 v29, v26

    move/from16 v26, v12

    move-wide/from16 v11, v29

    .end local v12    # "$dirty":I
    .end local v17    # "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    .local v1, "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    .local v26, "$dirty":I
    invoke-virtual/range {v2 .. v19}, Landroidx/compose/material3/NavigationBarItemDefaults;->colors-69fazGs(JJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/NavigationBarItemColors;

    move-result-object v9

    .line 69
    move-object/from16 v11, v17

    .line 72
    nop

    .line 73
    const v2, -0x6fc38ef4

    const-string v3, "CC(remember):BottomBar.kt#9igjgp"

    invoke-static {v11, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .local v2, "invalid\\3":Z
    move-object/from16 v3, p4

    .local v3, "$this$cache\\3":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 96
    .local v4, "$i$f$cache\\3\\73":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it\\3":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 97
    .local v6, "$i$a$-let-ComposerKt$cache$1\\4\\96\\3":I
    if-nez v2, :cond_6

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_5

    goto :goto_4

    .line 101
    :cond_5
    goto :goto_5

    .line 98
    :cond_6
    :goto_4
    const/4 v7, 0x0

    .line 73
    .local v7, "$i$a$-cache-BottomBarKt$BottomBar$1$1$1\\5\\98\\2":I
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;)V

    .line 98
    .end local v7    # "$i$a$-cache-BottomBarKt$BottomBar$1$1$1\\5\\98\\2":I
    nop

    .line 99
    .local v8, "value\\4":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    move-object v5, v8

    .line 96
    .end local v5    # "it\\3":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1\\4\\96\\3":I
    .end local v8    # "value\\4":Ljava/lang/Object;
    :goto_5
    nop

    .line 73
    .end local v2    # "invalid\\3":Z
    .end local v3    # "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache\\3\\73":I
    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 70
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda2;-><init>(Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;)V

    const v4, -0x638013e4

    const/16 v5, 0x36

    const/4 v14, 0x1

    invoke-static {v4, v14, v2, v11, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 71
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda3;-><init>(Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;)V

    const v6, -0x7bd2e9c7

    invoke-static {v6, v14, v2, v11, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 82
    and-int/lit8 v2, v26, 0xe

    const v5, 0x180c00

    or-int v12, v2, v5

    .line 69
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v13, 0x158

    move-object v15, v1

    move/from16 v2, v25

    move-object/from16 v1, p3

    .end local v1    # "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    .restart local v15    # "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 90
    nop

    .line 95
    .end local v15    # "destination\\2":Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    .end local v24    # "$i$a$-forEach-BottomBarKt$BottomBar$1$1\\2\\95\\0":I
    move-object/from16 v11, p4

    move/from16 v2, v26

    .end local v23    # "element\\1":Ljava/lang/Object;
    goto/16 :goto_2

    .line 102
    .end local v26    # "$dirty":I
    .local v2, "$dirty":I
    :cond_7
    move/from16 v26, v2

    .end local v2    # "$dirty":I
    .end local v20    # "$this$forEach\\1":Ljava/lang/Iterable;
    .end local v21    # "$i$f$forEach\\1\\68":I
    .restart local v26    # "$dirty":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 67
    .end local v26    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_8
    move/from16 v26, v2

    .end local v2    # "$dirty":I
    .restart local v26    # "$dirty":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 91
    :cond_9
    :goto_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final BottomBar$lambda$8$lambda$7$lambda$4$lambda$3(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;)Lkotlin/Unit;
    .locals 2
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$destination"    # Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    .line 74
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;->getRoute()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 81
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2(Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;
    .locals 2
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$this$navigate"    # Landroidx/navigation/NavOptionsBuilder;

    const-string v0, "$this$navigate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo(ILkotlin/jvm/functions/Function1;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setLaunchSingleTop(Z)V

    .line 79
    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setRestoreState(Z)V

    .line 80
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2$lambda$1(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$popUpTo"    # Landroidx/navigation/PopUpToBuilder;

    const-string v0, "$this$popUpTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/PopUpToBuilder;->setSaveState(Z)V

    .line 77
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BottomBar$lambda$8$lambda$7$lambda$5(Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11
    .param p0, "$destination"    # Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C69@2652L62:BottomBar.kt#ww28gq"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.components.BottomBar.<anonymous>.<anonymous>.<anonymous> (BottomBar.kt:69)"

    const v2, -0x638013e4

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;->getIcon()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;->getLabel()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v8, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v8, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final BottomBar$lambda$8$lambda$7$lambda$6(Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$destination"    # Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C70@2744L23:BottomBar.kt#ww28gq"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.components.BottomBar.<anonymous>.<anonymous>.<anonymous> (BottomBar.kt:70)"

    const v4, -0x7bd2e9c7

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 71
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;->getLabel()Ljava/lang/String;

    move-result-object v0

    const/16 v23, 0x0

    const v24, 0x1fffe

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BottomBar$lambda$9(Landroidx/navigation/NavController;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt;->BottomBar(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
