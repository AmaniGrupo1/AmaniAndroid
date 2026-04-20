.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 ListadoPsicologosScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,523:1\n98#2,2:524\n100#2,3:527\n183#2:530\n122#3:526\n*S KotlinDebug\n*F\n+ 1 ListadoPsicologosScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt\n*L\n99#1:526\n*E\n"
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
.field final synthetic $cardColor$inlined:J

.field final synthetic $deleteColor$inlined:J

.field final synthetic $items:Ljava/util/List;

.field final synthetic $loginViewModel$inlined:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field final synthetic $mostrarDialogoBaja$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $pacienteId$inlined:J

.field final synthetic $primaryColor$inlined:J

.field final synthetic $psicologoSeleccionado$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $roboto$inlined:Landroidx/compose/ui/text/font/FontFamily;

.field final synthetic $scope$inlined:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $snackbarHostState$inlined:Landroidx/compose/material3/SnackbarHostState;


# direct methods
.method public constructor <init>(Ljava/util/List;JLandroidx/compose/ui/text/font/FontFamily;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLkotlinx/coroutines/CoroutineScope;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;)V
    .locals 0

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$cardColor$inlined:J

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$roboto$inlined:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$loginViewModel$inlined:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput-wide p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$primaryColor$inlined:J

    iput-object p8, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$scope$inlined:Lkotlinx/coroutines/CoroutineScope;

    iput-wide p9, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$pacienteId$inlined:J

    iput-wide p11, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$deleteColor$inlined:J

    iput-object p13, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$psicologoSeleccionado$delegate$inlined:Landroidx/compose/runtime/MutableState;

    iput-object p14, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$mostrarDialogoBaja$delegate$inlined:Landroidx/compose/runtime/MutableState;

    iput-object p15, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$snackbarHostState$inlined:Landroidx/compose/material3/SnackbarHostState;

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

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 28
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

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v6, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)"

    const v8, 0x2fd4df92

    invoke-static {v8, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 179
    :cond_5
    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    and-int/lit8 v6, v3, 0xe

    .local v6, "$changed\\1":I
    move-object v9, v5

    check-cast v9, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    .local v9, "psicologo\\1":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;
    move-object/from16 v5, p1

    .local v5, "$this$ListadoPsicologosScreen_u24lambda_u2428_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object/from16 v8, p3

    .local v8, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 524
    .local v22, "$i$a$-items$default-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1\\1\\179\\0":I
    const v10, -0x6ceec3c1

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v10, "CN(psicologo)*100@4275L38,101@4332L4043,97@4116L4259:ListadoPsicologosScreen.kt#6w2cjo"

    invoke-static {v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 525
    const/16 v10, 0xc

    .local v10, "$this$dp\\2":I
    const/4 v11, 0x0

    .line 526
    .local v11, "$i$f$getDp\\2\\525":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 525
    .end local v10    # "$this$dp\\2":I
    .end local v11    # "$i$f$getDp\\2\\525":I
    invoke-static {v10}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v23

    .line 527
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v10, Landroidx/compose/ui/Modifier;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v7, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    .line 528
    sget-object v10, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    iget-wide v11, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$cardColor$inlined:J

    sget v13, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v13, v13, 0xc

    or-int/lit8 v20, v13, 0x6

    const/16 v21, 0xe

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v19, v8

    .end local v8    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v19, "$composer\\1":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v10 .. v21}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v25

    .line 527
    move-object/from16 v16, v19

    .line 525
    .end local v19    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v16, "$composer\\1":Landroidx/compose/runtime/Composer;
    check-cast v23, Landroidx/compose/ui/graphics/Shape;

    .line 528
    nop

    .line 529
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;

    iget-object v10, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$roboto$inlined:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v11, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$loginViewModel$inlined:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-wide v12, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$primaryColor$inlined:J

    iget-object v14, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$scope$inlined:Lkotlinx/coroutines/CoroutineScope;

    move-object v15, v8

    iget-wide v7, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$pacienteId$inlined:J

    iget-wide v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$deleteColor$inlined:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$psicologoSeleccionado$delegate$inlined:Landroidx/compose/runtime/MutableState;

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$mostrarDialogoBaja$delegate$inlined:Landroidx/compose/runtime/MutableState;

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;->$snackbarHostState$inlined:Landroidx/compose/material3/SnackbarHostState;

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    move-wide/from16 v26, v7

    move-object v8, v15

    move-wide/from16 v15, v26

    .end local v16    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\1":Landroidx/compose/runtime/Composer;
    invoke-direct/range {v8 .. v21}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;-><init>(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;Landroidx/compose/ui/text/font/FontFamily;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLkotlinx/coroutines/CoroutineScope;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;)V

    move-object v15, v8

    const/16 v1, 0x36

    const v7, 0x77ac2d4f

    const/4 v8, 0x1

    invoke-static {v7, v8, v15, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function3;

    .line 524
    const/4 v13, 0x0

    const/4 v14, 0x0

    const v17, 0x30006

    const/16 v18, 0x18

    move-object/from16 v16, v2

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    .end local v2    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$composer\\1":Landroidx/compose/runtime/Composer;
    invoke-static/range {v10 .. v18}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 530
    nop

    .line 179
    .end local v5    # "$this$ListadoPsicologosScreen_u24lambda_u2428_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v6    # "$changed\\1":I
    .end local v9    # "psicologo\\1":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;
    .end local v16    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-items$default-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1\\1\\179\\0":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    .line 178
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 180
    :cond_7
    :goto_4
    return-void
.end method
