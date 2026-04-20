.class public final Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt;
.super Ljava/lang/Object;
.source "BarraNavegationInferiorAdmin.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBarraNavegationInferiorAdmin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BarraNavegationInferiorAdmin.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,86:1\n122#2:87\n1#3:88\n1915#4:89\n1916#4:96\n1128#5,6:90\n*S KotlinDebug\n*F\n+ 1 BarraNavegationInferiorAdmin.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt\n*L\n62#1:87\n65#1:89\n65#1:96\n68#1:90,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "BarraNavegationInferiorAdmin",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "selectedItem",
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;",
        "onItemSelected",
        "Lkotlin/Function1;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "app"
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
.method public static final BarraNavegationInferiorAdmin(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 23
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "selectedItem"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;
    .param p2, "onItemSelected"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavController;",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "navController"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "selectedItem"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onItemSelected"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const v4, 0x6e0a6d04

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(BarraNavegationInferiorAdmin)N(navController,selectedItem,onItemSelected)62@2180L11,63@2206L1012,60@2095L1123:BarraNavegationInferiorAdmin.kt#a8gqcz"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p4

    .local v5, "$dirty":I
    and-int/lit8 v6, v3, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-nez v6, :cond_1

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    move-object v6, v1

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v3, 0x180

    if-nez v6, :cond_5

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_2

    :cond_4
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    and-int/lit16 v6, v5, 0x93

    const/16 v9, 0x92

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v6, v9, :cond_6

    move v6, v11

    goto :goto_3

    :cond_6
    move v6, v10

    :goto_3
    and-int/lit8 v9, v5, 0x1

    invoke-interface {v13, v6, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    const-string v9, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdmin (BarraNavegationInferiorAdmin.kt:34)"

    invoke-static {v4, v5, v6, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 44
    :cond_7
    const/4 v4, 0x5

    new-array v4, v4, [Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;

    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;

    .line 45
    sget-object v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->DOCUMENTOS:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    .line 46
    nop

    .line 47
    sget-object v12, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v12}, Landroidx/compose/material/icons/outlined/DescriptionKt;->getDescription(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v12

    .line 48
    sget-object v14, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;

    invoke-virtual {v14}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;->getRoute()Ljava/lang/String;

    move-result-object v14

    .line 44
    const-string v15, "Inicio"

    invoke-direct {v6, v9, v15, v12, v14}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V

    aput-object v6, v4, v10

    .line 50
    new-instance v16, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;

    sget-object v17, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->MENSAJES:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    sget-object v6, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v6}, Landroidx/compose/material/icons/outlined/ChatBubbleOutlineKt;->getChatBubbleOutline(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v19

    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v18, "Mensajes"

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v22}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v16, v4, v11

    .line 44
    nop

    .line 51
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;

    .line 52
    sget-object v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->CALENDARIO:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    .line 53
    nop

    .line 54
    sget-object v10, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v10}, Landroidx/compose/material/icons/outlined/CalendarTodayKt;->getCalendarToday(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v10

    .line 55
    sget-object v12, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;

    invoke-virtual {v12}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;->getRoute()Ljava/lang/String;

    move-result-object v12

    .line 51
    const-string v14, "Calendario"

    invoke-direct {v6, v9, v14, v10, v12}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V

    aput-object v6, v4, v8

    .line 44
    nop

    .line 57
    new-instance v15, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;

    sget-object v16, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->ESTADISTICAS:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    sget-object v6, Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;

    invoke-static {v6}, Landroidx/compose/material/icons/automirrored/outlined/ShowChartKt;->getShowChart(Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v18

    const/16 v20, 0x8

    const/16 v21, 0x0

    const-string v17, "Estad\u00edsticas"

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x3

    aput-object v15, v4, v6

    .line 44
    nop

    .line 58
    new-instance v16, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;

    sget-object v17, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->CONFIGURACION:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    sget-object v6, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    invoke-static {v6}, Landroidx/compose/material/icons/outlined/SettingsKt;->getSettings(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v19

    const/16 v21, 0x8

    const-string v18, "Ajustes"

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v22}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v16, v4, v7

    .line 44
    nop

    .line 43
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 62
    .local v4, "destinations":Ljava/util/List;
    const/4 v6, 0x3

    .local v6, "$this$dp\\1":I
    const/4 v7, 0x0

    .line 87
    .local v7, "$i$f$getDp\\1\\62":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 62
    .end local v6    # "$this$dp\\1":I
    .end local v7    # "$i$f$getDp\\1\\62":I
    nop

    .line 63
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v13, v7}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v6

    .line 62
    nop

    .line 64
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda3;

    invoke-direct {v8, v4, v1, v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Lkotlin/jvm/functions/Function1;Landroidx/navigation/NavController;)V

    const/16 v9, 0x36

    const v12, 0x30c258fd

    invoke-static {v12, v11, v8, v13, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 61
    move v8, v5

    .end local v5    # "$dirty":I
    .local v8, "$dirty":I
    const/4 v5, 0x0

    move v11, v8

    .end local v8    # "$dirty":I
    .local v11, "$dirty":I
    const-wide/16 v8, 0x0

    move v14, v11

    .end local v11    # "$dirty":I
    .local v14, "$dirty":I
    const/4 v11, 0x0

    move v15, v14

    .end local v14    # "$dirty":I
    .local v15, "$dirty":I
    const v14, 0x30c00

    move/from16 v16, v15

    .end local v15    # "$dirty":I
    .local v16, "$dirty":I
    const/16 v15, 0x15

    invoke-static/range {v5 .. v15}, Landroidx/compose/material3/NavigationBarKt;->NavigationBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v4    # "destinations":Ljava/util/List;
    goto :goto_4

    .line 30
    .end local v16    # "$dirty":I
    .restart local v5    # "$dirty":I
    :cond_8
    move/from16 v16, v5

    .end local v5    # "$dirty":I
    .restart local v16    # "$dirty":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 86
    :cond_9
    :goto_4
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_a
    return-void
.end method

.method static final BarraNavegationInferiorAdmin$lambda$6(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Lkotlin/jvm/functions/Function1;Landroidx/navigation/NavController;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 36
    .param p0, "$destinations"    # Ljava/util/List;
    .param p1, "$selectedItem"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;
    .param p2, "$onItemSelected"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$navController"    # Landroidx/navigation/NavController;
    .param p4, "$this$NavigationBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v12, p5

    const-string v3, "$this$NavigationBar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C*67@2358L132,71@2515L52,72@2593L104,76@2809L11,77@2893L11,78@2979L11,79@3056L11,80@3142L11,75@2750L438,65@2259L943:BarraNavegationInferiorAdmin.kt#a8gqcz"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p6

    .local v3, "$dirty":I
    and-int/lit8 v4, p6, 0x6

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

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move/from16 v4, v21

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v12, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdmin.<anonymous> (BarraNavegationInferiorAdmin.kt:64)"

    const v7, 0x30c258fd

    invoke-static {v7, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 65
    :cond_3
    move-object/from16 v22, p0

    check-cast v22, Ljava/lang/Iterable;

    .local v22, "$this$forEach\\1":Ljava/lang/Iterable;
    const/16 v23, 0x0

    .line 89
    .local v23, "$i$f$forEach\\1\\65":I
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .local v25, "element\\1":Ljava/lang/Object;
    move-object/from16 v4, v25

    check-cast v4, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;

    .local v4, "dest\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    const/16 v26, 0x0

    .line 66
    .local v26, "$i$a$-forEach-BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$1$1\\2\\89\\0":I
    nop

    .line 67
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;->getItem()Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    move-result-object v5

    move-object/from16 v7, p1

    if-ne v7, v5, :cond_4

    move/from16 v27, v6

    goto :goto_3

    :cond_4
    move/from16 v27, v21

    .line 68
    :goto_3
    const v5, 0x3dcd3493

    const-string v8, "CC(remember):BarraNavegationInferiorAdmin.kt#9igjgp"

    invoke-static {v12, v5, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    .local v5, "invalid\\3":Z
    move-object/from16 v8, p5

    .local v8, "$this$cache\\3":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 90
    .local v9, "$i$f$cache\\3\\68":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it\\3":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 91
    .local v11, "$i$a$-let-ComposerKt$cache$1\\4\\90\\3":I
    if-nez v5, :cond_6

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v10, v13, :cond_5

    goto :goto_4

    .line 95
    :cond_5
    goto :goto_5

    .line 92
    :cond_6
    :goto_4
    const/4 v13, 0x0

    .line 68
    .local v13, "$i$a$-cache-BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$1$1$1\\5\\92\\2":I
    new-instance v14, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0, v4, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;Landroidx/navigation/NavController;)V

    .line 92
    .end local v13    # "$i$a$-cache-BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$1$1$1\\5\\92\\2":I
    nop

    .line 93
    .local v14, "value\\4":Ljava/lang/Object;
    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 94
    move-object v10, v14

    .line 90
    .end local v10    # "it\\3":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1\\4\\90\\3":I
    .end local v14    # "value\\4":Ljava/lang/Object;
    :goto_5
    nop

    .line 68
    .end local v5    # "invalid\\3":Z
    .end local v8    # "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache\\3\\68":I
    move-object/from16 v28, v10

    check-cast v28, Lkotlin/jvm/functions/Function0;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 72
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda1;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;)V

    const v8, 0x1c1b6c2a

    const/16 v9, 0x36

    invoke-static {v8, v6, v5, v12, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v29, v5

    check-cast v29, Lkotlin/jvm/functions/Function2;

    .line 73
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda2;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;)V

    const v8, -0x6e4adf53

    invoke-static {v8, v6, v5, v12, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v30, v5

    check-cast v30, Lkotlin/jvm/functions/Function2;

    .line 76
    move v5, v3

    .end local v3    # "$dirty":I
    .local v5, "$dirty":I
    sget-object v3, Landroidx/compose/material3/NavigationBarItemDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarItemDefaults;

    .line 77
    sget-object v8, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v9, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v8, v12, v9}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v8

    .line 78
    sget-object v10, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v11, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v10, v12, v11}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v10

    .line 79
    sget-object v13, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v14, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v13, v12, v14}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v13

    .line 80
    sget-object v15, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v15, v12, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v17

    .line 81
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v15, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v12, v15}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v19

    .line 76
    nop

    .line 78
    nop

    .line 79
    nop

    .line 77
    nop

    .line 80
    nop

    .line 81
    sget v6, Landroidx/compose/material3/NavigationBarItemDefaults;->$stable:I

    shl-int/lit8 v6, v6, 0x15

    .line 76
    move-wide/from16 v34, v19

    move/from16 v19, v6

    move-wide v6, v13

    move-wide/from16 v12, v34

    const-wide/16 v14, 0x0

    move-object/from16 v20, v4

    const/16 v31, 0x1

    move-wide/from16 v34, v17

    move/from16 v18, v5

    move-wide v4, v10

    move-wide/from16 v10, v34

    .end local v4    # "dest\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    .end local v5    # "$dirty":I
    .local v18, "$dirty":I
    .local v20, "dest\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    const-wide/16 v16, 0x0

    move-object/from16 v32, v20

    .end local v20    # "dest\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    .local v32, "dest\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    const/16 v20, 0x60

    move/from16 v33, v31

    move/from16 v31, v18

    move-object/from16 v18, p5

    .end local v18    # "$dirty":I
    .local v31, "$dirty":I
    invoke-virtual/range {v3 .. v20}, Landroidx/compose/material3/NavigationBarItemDefaults;->colors-69fazGs(JJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/NavigationBarItemColors;

    move-result-object v10

    and-int/lit8 v3, v31, 0xe

    const v4, 0x180c00

    or-int v13, v3, v4

    .line 66
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x158

    move-object/from16 v12, p5

    move/from16 v3, v27

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move-object/from16 v8, v30

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 84
    nop

    .line 89
    .end local v26    # "$i$a$-forEach-BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$1$1\\2\\89\\0":I
    .end local v32    # "dest\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    move-object/from16 v2, p4

    move/from16 v3, v31

    move/from16 v6, v33

    .end local v25    # "element\\1":Ljava/lang/Object;
    goto/16 :goto_2

    .line 96
    .end local v31    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_7
    move/from16 v31, v3

    .end local v3    # "$dirty":I
    .end local v22    # "$this$forEach\\1":Ljava/lang/Iterable;
    .end local v23    # "$i$f$forEach\\1\\65":I
    .restart local v31    # "$dirty":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 64
    .end local v31    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_8
    move/from16 v31, v3

    .end local v3    # "$dirty":I
    .restart local v31    # "$dirty":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 85
    :cond_9
    :goto_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$2$lambda$1(Lkotlin/jvm/functions/Function1;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 7
    .param p0, "$onItemSelected"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$dest"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    .param p2, "$navController"    # Landroidx/navigation/NavController;

    .line 69
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;->getItem()Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;->getRoute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 88
    .local v2, "it\\1":Ljava/lang/String;
    const/4 v0, 0x0

    .line 70
    .local v0, "$i$a$-let-BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$1$1$1$1$1\\1\\70\\0":I
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    .end local p2    # "$navController":Landroidx/navigation/NavController;
    .local v1, "$navController":Landroidx/navigation/NavController;
    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .end local v0    # "$i$a$-let-BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$1$1$1$1$1\\1\\70\\0":I
    .end local v2    # "it\\1":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "$navController":Landroidx/navigation/NavController;
    .restart local p2    # "$navController":Landroidx/navigation/NavController;
    :cond_0
    move-object v1, p2

    .line 71
    .end local p2    # "$navController":Landroidx/navigation/NavController;
    .restart local v1    # "$navController":Landroidx/navigation/NavController;
    :goto_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method

.method static final BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$3(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11
    .param p0, "$dest"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C71@2517L48:BarraNavegationInferiorAdmin.kt#a8gqcz"

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdmin.<anonymous>.<anonymous>.<anonymous> (BarraNavegationInferiorAdmin.kt:71)"

    const v2, 0x1c1b6c2a

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;->getIcon()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;->getLabel()Ljava/lang/String;

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

.method static final BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$4(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$dest"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C73@2615L64:BarraNavegationInferiorAdmin.kt#a8gqcz"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdmin.<anonymous>.<anonymous>.<anonymous> (BarraNavegationInferiorAdmin.kt:73)"

    const v4, -0x6e4adf53

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 74
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;->getLabel()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v15

    const/16 v23, 0xc30

    const v24, 0x1d7fe

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

    const/16 v16, 0x0

    const/16 v17, 0x1

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

    .line 73
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 75
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BarraNavegationInferiorAdmin$lambda$7(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p2, p4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt;->BarraNavegationInferiorAdmin(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
