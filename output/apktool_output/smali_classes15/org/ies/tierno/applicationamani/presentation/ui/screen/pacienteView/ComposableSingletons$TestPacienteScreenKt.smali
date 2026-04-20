.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;
.super Ljava/lang/Object;
.source "TestPacienteScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestPacienteScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestPacienteScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,33:1\n87#2:34\n84#2,9:35\n94#2:69\n81#3,6:44\n88#3,6:59\n96#3:68\n391#4,9:50\n400#4,3:65\n*S KotlinDebug\n*F\n+ 1 TestPacienteScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt\n*L\n24#1:34\n24#1:35,9\n24#1:69\n24#1:44,6\n24#1:59,6\n24#1:68\n24#1:50,9\n24#1:65,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;

.field private static lambda$1778796981:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;

    .line 22
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt$$ExternalSyntheticLambda0;-><init>()V

    const v1, 0x6a0649b5

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;->lambda$1778796981:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final lambda_1778796981$lambda$1(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 30
    .param p0, "innerPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "innerPadding"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CN(innerPadding)23@681L178:TestPacienteScreen.kt#yd4c32"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p2

    .local v2, "$dirty":I
    and-int/lit8 v3, p2, 0x6

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$TestPacienteScreenKt.lambda$1778796981.<anonymous> (TestPacienteScreen.kt:23)"

    const v7, 0x6a0649b5

    invoke-static {v7, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 25
    :cond_3
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 26
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 27
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v4

    .line 24
    nop

    .local v3, "modifier\\1":Landroidx/compose/ui/Modifier;
    .local v4, "horizontalAlignment\\1":Landroidx/compose/ui/Alignment$Horizontal;
    const/16 v6, 0x180

    .local v6, "$changed\\1":I
    move-object/from16 v7, p1

    .local v7, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 34
    .local v8, "$i$f$Column\\1\\24":I
    const v9, 0x4ff7456f

    const-string v10, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v7, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 35
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v9

    .line 39
    .local v9, "verticalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v10, v6, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v9, v4, v7, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .line 43
    .local v10, "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 42
    shl-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 40
    nop

    .local v11, "$changed\\2":I
    move-object v12, v10

    .local v12, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v13, v7

    .local v13, "$composer\\2":Landroidx/compose/runtime/Composer;
    move-object v14, v3

    .local v14, "modifier\\2":Landroidx/compose/ui/Modifier;
    const/4 v15, 0x0

    .line 44
    .local v15, "$i$f$Layout\\2\\40":I
    const v5, -0x451e1427

    const-string v0, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v13, v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 46
    .local v0, "compositeKeyHash\\2":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 47
    .local v5, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v16, v0

    .end local v0    # "compositeKeyHash\\2":I
    .local v16, "compositeKeyHash\\2":I
    invoke-static {v13, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 49
    .local v0, "materialized\\2":Landroidx/compose/ui/Modifier;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    shl-int/lit8 v1, v11, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 48
    move-object/from16 v18, v17

    .local v1, "$changed\\3":I
    .local v18, "factory\\3":Lkotlin/jvm/functions/Function0;
    move-object/from16 v17, v13

    .local v17, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 50
    .local v19, "$i$f$ReusableComposeNode\\3\\48":I
    move/from16 v20, v1

    .end local v1    # "$changed\\3":I
    .local v20, "$changed\\3":I
    const v1, -0x20f7d59c

    move/from16 v21, v2

    .end local v2    # "$dirty":I
    .local v21, "$dirty":I
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v22, v3

    move-object/from16 v3, v17

    .end local v17    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v22, "modifier\\1":Landroidx/compose/ui/Modifier;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 51
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 52
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 53
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    move-object/from16 v1, v18

    .end local v18    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v1, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 56
    .end local v1    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "factory\\3":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v1, v18

    .end local v18    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 58
    :goto_2
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 59
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\58\\2":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v23, v1

    .end local v1    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v23, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 60
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 61
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v3

    .end local v3    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v24, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 62
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 63
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 64
    nop

    .line 58
    .end local v2    # "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\58\\2":I
    nop

    .line 65
    shr-int/lit8 v1, v20, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\5":I
    move-object/from16 v2, v24

    .local v2, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 41
    .local v3, "$i$a$-Layout-ColumnKt$Column$1\\5\\65\\1":I
    move-object/from16 v17, v0

    .end local v0    # "materialized\\2":Landroidx/compose/ui/Modifier;
    .local v17, "materialized\\2":Landroidx/compose/ui/Modifier;
    const v0, 0x7cc0ae6e

    move/from16 v18, v1

    .end local v1    # "$changed\\5":I
    .local v18, "$changed\\5":I
    const-string v1, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v6, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed\\6":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$lambda_1778796981_u24lambda_u241_u24lambda_u240\\6":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v25, v2

    .local v25, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 30
    .local v26, "$i$a$-Column-ComposableSingletons$TestPacienteScreenKt$lambda$1778796981$1$1\\6\\41\\0":I
    move-object/from16 v27, v0

    .end local v0    # "$this$lambda_1778796981_u24lambda_u241_u24lambda_u240\\6":Landroidx/compose/foundation/layout/ColumnScope;
    .local v27, "$this$lambda_1778796981_u24lambda_u241_u24lambda_u240\\6":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x5a10f5bc

    move/from16 v28, v1

    .end local v1    # "$changed\\6":I
    .local v28, "$changed\\6":I
    const-string v1, "C:TestPacienteScreen.kt#yd4c32"

    move-object/from16 v29, v2

    .end local v25    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v29, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 41
    .end local v2    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-Column-ComposableSingletons$TestPacienteScreenKt$lambda$1778796981$1$1\\6\\41\\0":I
    .end local v27    # "$this$lambda_1778796981_u24lambda_u241_u24lambda_u240\\6":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v28    # "$changed\\6":I
    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 65
    .end local v3    # "$i$a$-Layout-ColumnKt$Column$1\\5\\65\\1":I
    .end local v18    # "$changed\\5":I
    .end local v29    # "$composer\\5":Landroidx/compose/runtime/Composer;
    nop

    .line 66
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 50
    invoke-static/range {v24 .. v24}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 67
    nop

    .line 44
    .end local v19    # "$i$f$ReusableComposeNode\\3\\48":I
    .end local v20    # "$changed\\3":I
    .end local v23    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 68
    nop

    .line 34
    .end local v5    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "$changed\\2":I
    .end local v12    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v13    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v14    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v15    # "$i$f$Layout\\2\\40":I
    .end local v16    # "compositeKeyHash\\2":I
    .end local v17    # "materialized\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 69
    nop

    .end local v4    # "horizontalAlignment\\1":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v6    # "$changed\\1":I
    .end local v7    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$Column\\1\\24":I
    .end local v9    # "verticalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v10    # "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v22    # "modifier\\1":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 22
    .end local v21    # "$dirty":I
    .local v2, "$dirty":I
    :cond_6
    move/from16 v21, v2

    .end local v2    # "$dirty":I
    .restart local v21    # "$dirty":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 31
    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getLambda$1778796981$app()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;->lambda$1778796981:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
