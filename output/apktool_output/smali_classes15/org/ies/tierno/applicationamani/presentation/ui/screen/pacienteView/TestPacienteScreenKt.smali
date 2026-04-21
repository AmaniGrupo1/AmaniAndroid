.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/TestPacienteScreenKt;
.super Ljava/lang/Object;
.source "TestPacienteScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "TestPacienteScreen",
        "",
        "(Landroidx/compose/runtime/Composer;I)V",
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
.method public static final TestPacienteScreen(Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    .line 21
    move/from16 v0, p1

    const v1, -0x7d34819a

    move-object/from16 v2, p0

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p0    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(TestPacienteScreen)21@639L226:TestPacienteScreen.kt#yd4c32"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v0, 0x1

    invoke-interface {v14, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.TestPacienteScreen (TestPacienteScreen.kt:20)"

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ComposableSingletons$TestPacienteScreenKt;->getLambda$1778796981$app()Lkotlin/jvm/functions/Function3;

    move-result-object v13

    .line 22
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/high16 v15, 0x30000000

    const/16 v16, 0x1ff

    invoke-static/range {v2 .. v16}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 32
    :cond_3
    :goto_1
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/TestPacienteScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/TestPacienteScreenKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method static final TestPacienteScreen$lambda$0(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/TestPacienteScreenKt;->TestPacienteScreen(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
