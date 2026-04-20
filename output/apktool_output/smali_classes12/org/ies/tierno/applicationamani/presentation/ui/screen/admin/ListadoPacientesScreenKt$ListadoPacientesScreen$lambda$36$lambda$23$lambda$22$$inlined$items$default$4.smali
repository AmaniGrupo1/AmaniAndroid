.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->ListadoPacientesScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 ListadoPacientesScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,523:1\n158#2,4:524\n165#2:534\n168#2:541\n171#2,7:548\n1128#3,6:528\n1128#3,6:535\n1128#3,6:542\n*S KotlinDebug\n*F\n+ 1 ListadoPacientesScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt\n*L\n161#1:528,6\n165#1:535,6\n168#1:542,6\n*E\n"
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


# instance fields
.field final synthetic $inactiveColor$inlined:J

.field final synthetic $items:Ljava/util/List;

.field final synthetic $mostrarDialogoBaja$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $navController$inlined:Landroidx/navigation/NavController;

.field final synthetic $pacienteSeleccionado$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $paidColor$inlined:J

.field final synthetic $pendingColor$inlined:J

.field final synthetic $primaryColor$inlined:J

.field final synthetic $roboto$inlined:Landroidx/compose/ui/text/font/FontFamily;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/navigation/NavController;JJJJLandroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$navController$inlined:Landroidx/navigation/NavController;

    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$primaryColor$inlined:J

    iput-wide p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$pendingColor$inlined:J

    iput-wide p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$paidColor$inlined:J

    iput-wide p9, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$inactiveColor$inlined:J

    iput-object p11, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$roboto$inlined:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p12, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$pacienteSeleccionado$delegate$inlined:Landroidx/compose/runtime/MutableState;

    iput-object p13, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$mostrarDialogoBaja$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 178
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 25
    .param p1, "$this$items"    # Landroidx/compose/foundation/lazy/LazyItemScope;
    .param p2, "it"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "CN(it)178@8834L22:LazyDsl.kt#428nma"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p4

    .local v3, "$dirty":I
    and-int/lit8 v4, p4, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p1

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v3, v5

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    :goto_1
    and-int/lit8 v5, p4, 0x30

    if-nez v5, :cond_3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit16 v5, v3, 0x93

    const/16 v6, 0x92

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v6, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)"

    const v7, 0x2fd4df92

    invoke-static {v7, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 179
    :cond_5
    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    and-int/lit8 v6, v3, 0xe

    .local v6, "$changed\\1":I
    move-object v8, v5

    check-cast v8, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    .local v8, "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    move-object/from16 v5, p1

    .local v5, "$this$ListadoPacientesScreen_u24lambda_u2436_u24lambda_u2423_u24lambda_u2422_u24lambda_u2421\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object/from16 v7, p3

    .local v7, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 524
    .local v23, "$i$a$-items$default-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1\\1\\179\\0":I
    const v9, -0x52015019

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "CN(paciente)*160@6979L141,164@7157L119,167@7323L140,157@6845L889:ListadoPacientesScreen.kt#t64v6f"

    invoke-static {v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 525
    iget-object v9, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$navController$inlined:Landroidx/navigation/NavController;

    .line 526
    nop

    .line 527
    const v10, 0x7939d170    # 6.0301426E34f

    const-string v11, "CC(remember):ListadoPacientesScreen.kt#9igjgp"

    invoke-static {v7, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    .local v10, "invalid\\2":Z
    move-object v12, v7

    .local v12, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 528
    .local v13, "$i$f$cache\\2\\527":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it\\2":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 529
    .local v15, "$i$a$-let-ComposerKt$cache$1\\3\\528\\2":I
    if-nez v10, :cond_7

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_6

    goto :goto_4

    .line 533
    :cond_6
    move/from16 v24, v3

    goto :goto_5

    .line 530
    :cond_7
    :goto_4
    const/4 v1, 0x0

    .line 527
    .local v1, "$i$a$-cache-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$1\\4\\530\\1":I
    move/from16 v16, v1

    .end local v1    # "$i$a$-cache-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$1\\4\\530\\1":I
    .local v16, "$i$a$-cache-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$1\\4\\530\\1":I
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$1$1;

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$pacienteSeleccionado$delegate$inlined:Landroidx/compose/runtime/MutableState;

    move/from16 v24, v3

    .end local v3    # "$dirty":I
    .local v24, "$dirty":I
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$mostrarDialogoBaja$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v8, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$1$1;-><init>(Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 530
    .end local v16    # "$i$a$-cache-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$1\\4\\530\\1":I
    nop

    .line 531
    .local v1, "value\\3":Ljava/lang/Object;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 532
    move-object v14, v1

    .line 528
    .end local v1    # "value\\3":Ljava/lang/Object;
    .end local v14    # "it\\2":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1\\3\\528\\2":I
    :goto_5
    nop

    .line 527
    .end local v10    # "invalid\\2":Z
    .end local v12    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache\\2\\527":I
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 534
    const v1, 0x7939e79a

    invoke-static {v7, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$navController$inlined:Landroidx/navigation/NavController;

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .local v1, "invalid\\5":Z
    move-object v2, v7

    .local v2, "$this$cache\\5":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 535
    .local v3, "$i$f$cache\\5\\534":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it\\5":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 536
    .local v12, "$i$a$-let-ComposerKt$cache$1\\6\\535\\5":I
    if-nez v1, :cond_9

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v10, v13, :cond_8

    goto :goto_6

    .line 540
    :cond_8
    move/from16 v16, v1

    goto :goto_7

    .line 537
    :cond_9
    :goto_6
    const/4 v13, 0x0

    .line 534
    .local v13, "$i$a$-cache-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$2\\7\\537\\1":I
    new-instance v15, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$2$1;

    move/from16 v16, v1

    .end local v1    # "invalid\\5":Z
    .local v16, "invalid\\5":Z
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$navController$inlined:Landroidx/navigation/NavController;

    invoke-direct {v15, v1, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$2$1;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;)V

    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 537
    .end local v13    # "$i$a$-cache-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$2\\7\\537\\1":I
    nop

    .line 538
    .local v15, "value\\6":Ljava/lang/Object;
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 539
    move-object v10, v15

    .line 535
    .end local v10    # "it\\5":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1\\6\\535\\5":I
    .end local v15    # "value\\6":Ljava/lang/Object;
    :goto_7
    nop

    .line 534
    .end local v2    # "$this$cache\\5":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\5\\534":I
    .end local v16    # "invalid\\5":Z
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 541
    const v1, 0x7939fc6f

    invoke-static {v7, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\8":Z
    move-object v2, v7

    .local v2, "$this$cache\\8":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 542
    .local v3, "$i$f$cache\\8\\541":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it\\8":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 543
    .local v12, "$i$a$-let-ComposerKt$cache$1\\9\\542\\8":I
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_a

    .line 544
    const/4 v13, 0x0

    .line 541
    .local v13, "$i$a$-cache-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$3\\10\\544\\1":I
    sget-object v15, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$3$1;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$3$1;

    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 544
    .end local v13    # "$i$a$-cache-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$3\\10\\544\\1":I
    nop

    .line 545
    .local v15, "value\\9":Ljava/lang/Object;
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 546
    move-object v11, v15

    .end local v15    # "value\\9":Ljava/lang/Object;
    goto :goto_8

    .line 547
    :cond_a
    nop

    .line 542
    .end local v11    # "it\\8":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1\\9\\542\\8":I
    :goto_8
    nop

    .line 541
    .end local v1    # "invalid\\8":Z
    .end local v2    # "$this$cache\\8":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\8\\541":I
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 548
    iget-wide v12, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$primaryColor$inlined:J

    .line 549
    move-object/from16 v21, v7

    move-object v7, v9

    move-object v9, v14

    .end local v7    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v21, "$composer\\1":Landroidx/compose/runtime/Composer;
    iget-wide v14, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$pendingColor$inlined:J

    .line 550
    iget-wide v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$paidColor$inlined:J

    .line 551
    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$inactiveColor$inlined:J

    .line 552
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4;->$roboto$inlined:Landroidx/compose/ui/text/font/FontFamily;

    and-int/lit8 v18, v6, 0x70

    const v19, 0x36db6000

    or-int v22, v18, v19

    .line 524
    move-wide/from16 v18, v1

    move-object/from16 v20, v3

    invoke-static/range {v7 .. v22}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->PacienteCard-zTql3dQ(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJJJLandroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 554
    nop

    .line 179
    .end local v5    # "$this$ListadoPacientesScreen_u24lambda_u2436_u24lambda_u2423_u24lambda_u2422_u24lambda_u2421\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v6    # "$changed\\1":I
    .end local v8    # "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    .end local v21    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-items$default-ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1\\1\\179\\0":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_9

    .line 178
    .end local v24    # "$dirty":I
    .local v3, "$dirty":I
    :cond_b
    move/from16 v24, v3

    .end local v3    # "$dirty":I
    .restart local v24    # "$dirty":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 180
    :cond_c
    :goto_9
    return-void
.end method
