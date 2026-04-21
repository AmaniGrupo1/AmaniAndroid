.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;
.super Ljava/lang/Object;
.source "RegistrarPacienteDesdeAdminScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegistrarPacienteDesdeAdminScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegistrarPacienteDesdeAdminScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,172:1\n1128#2,6:173\n1128#2,6:179\n1128#2,6:185\n1128#2,6:191\n1128#2,6:214\n1128#2,6:253\n1128#2,6:259\n1128#2,6:265\n1128#2,6:271\n1128#2,6:277\n1128#2,6:283\n1128#2,6:290\n1128#2,6:297\n1128#2,6:305\n122#3:197\n122#3:220\n122#3:221\n122#3:289\n122#3:296\n122#3:303\n122#3:304\n122#3:311\n122#3:312\n85#4:198\n85#4:199\n85#4:200\n85#4:201\n85#4:202\n117#4,2:203\n85#4:205\n117#4,2:206\n85#4:208\n117#4,2:209\n85#4:211\n117#4,2:212\n87#5:222\n85#5,8:223\n94#5:316\n81#6,6:231\n88#6,6:246\n96#6:315\n391#7,9:237\n400#7:252\n401#7,2:313\n*S KotlinDebug\n*F\n+ 1 RegistrarPacienteDesdeAdminScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt\n*L\n67#1:173,6\n68#1:179,6\n69#1:185,6\n71#1:191,6\n101#1:214,6\n88#1:253,6\n89#1:259,6\n90#1:265,6\n91#1:271,6\n92#1:277,6\n93#1:283,6\n97#1:290,6\n120#1:297,6\n138#1:305,6\n166#1:197\n84#1:220\n85#1:221\n109#1:289\n116#1:296\n129#1:303\n130#1:304\n141#1:311\n142#1:312\n61#1:198\n62#1:199\n63#1:200\n64#1:201\n67#1:202\n67#1:203,2\n68#1:205\n68#1:206,2\n69#1:208\n69#1:209,2\n71#1:211\n71#1:212,2\n80#1:222\n80#1:223,8\n80#1:316\n80#1:231,6\n80#1:246,6\n80#1:315\n80#1:237,9\n80#1:252\n80#1:313,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a1\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u000cH\u0007\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e\u00b2\u0006\n\u0010\u000f\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0010\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0011\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0012\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0013\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u0014\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u0015\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u0016\u001a\u00020\u0017X\u008a\u008e\u0002"
    }
    d2 = {
        "RegistrarPacienteDesdeAdminScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "loginViewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V",
        "CustomTextFields",
        "value",
        "",
        "placeholder",
        "onChange",
        "Lkotlin/Function1;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "app",
        "nombre",
        "apellido",
        "email",
        "password",
        "telefono",
        "genero",
        "fechaNacimiento",
        "passwordVisible",
        ""
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
.method public static final CustomTextFields(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 102
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "placeholder"    # Ljava/lang/String;
    .param p2, "onChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
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

    const-string v4, "value"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "placeholder"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onChange"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const v4, 0x4be23508    # 2.9649424E7f

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v6, "C(CustomTextFields)N(value,placeholder,onChange)166@7364L128,163@7207L21,160@7105L397:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v6, p4

    .local v6, "$dirty":I
    and-int/lit8 v7, v3, 0x6

    if-nez v7, :cond_1

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v6, v7

    :cond_1
    and-int/lit8 v7, v3, 0x30

    if-nez v7, :cond_3

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_1

    :cond_2
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v3, 0x180

    if-nez v7, :cond_5

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_2

    :cond_4
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v6, 0x93

    const/16 v8, 0x92

    const/4 v9, 0x1

    if-eq v7, v8, :cond_6

    move v7, v9

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    and-int/lit8 v8, v6, 0x1

    invoke-interface {v5, v7, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    const-string v8, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CustomTextFields (RegistrarPacienteDesdeAdminScreen.kt:159)"

    invoke-static {v4, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 165
    :cond_7
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v9, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 166
    const/16 v7, 0xc

    .local v7, "$this$dp\\1":I
    const/4 v8, 0x0

    .line 197
    .local v8, "$i$f$getDp\\1\\166":I
    int-to-float v10, v7

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 166
    .end local v7    # "$this$dp\\1":I
    .end local v8    # "$i$f$getDp\\1\\166":I
    invoke-static {v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v99

    .line 167
    move-object/from16 v91, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v91, "$composer":Landroidx/compose/runtime/Composer;
    sget-object v5, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 168
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v14

    .line 169
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v16

    .line 167
    move v8, v6

    .end local v6    # "$dirty":I
    .local v8, "$dirty":I
    const-wide/16 v6, 0x0

    move v10, v8

    move v11, v9

    .end local v8    # "$dirty":I
    .local v10, "$dirty":I
    const-wide/16 v8, 0x0

    move v12, v10

    move v13, v11

    .end local v10    # "$dirty":I
    .local v12, "$dirty":I
    const-wide/16 v10, 0x0

    move/from16 v18, v12

    move/from16 v19, v13

    .end local v12    # "$dirty":I
    .local v18, "$dirty":I
    const-wide/16 v12, 0x0

    move/from16 v20, v18

    move/from16 v21, v19

    .end local v18    # "$dirty":I
    .local v20, "$dirty":I
    const-wide/16 v18, 0x0

    move/from16 v22, v20

    move/from16 v23, v21

    .end local v20    # "$dirty":I
    .local v22, "$dirty":I
    const-wide/16 v20, 0x0

    move/from16 v24, v22

    move/from16 v25, v23

    .end local v22    # "$dirty":I
    .local v24, "$dirty":I
    const-wide/16 v22, 0x0

    move/from16 v26, v24

    move/from16 v27, v25

    .end local v24    # "$dirty":I
    .local v26, "$dirty":I
    const-wide/16 v24, 0x0

    move/from16 v28, v26

    .end local v26    # "$dirty":I
    .local v28, "$dirty":I
    const/16 v26, 0x0

    move/from16 v30, v27

    move/from16 v29, v28

    .end local v28    # "$dirty":I
    .local v29, "$dirty":I
    const-wide/16 v27, 0x0

    move/from16 v31, v29

    move/from16 v32, v30

    .end local v29    # "$dirty":I
    .local v31, "$dirty":I
    const-wide/16 v29, 0x0

    move/from16 v33, v31

    move/from16 v34, v32

    .end local v31    # "$dirty":I
    .local v33, "$dirty":I
    const-wide/16 v31, 0x0

    move/from16 v35, v33

    move/from16 v36, v34

    .end local v33    # "$dirty":I
    .local v35, "$dirty":I
    const-wide/16 v33, 0x0

    move/from16 v37, v35

    move/from16 v38, v36

    .end local v35    # "$dirty":I
    .local v37, "$dirty":I
    const-wide/16 v35, 0x0

    move/from16 v39, v37

    move/from16 v40, v38

    .end local v37    # "$dirty":I
    .local v39, "$dirty":I
    const-wide/16 v37, 0x0

    move/from16 v41, v39

    move/from16 v42, v40

    .end local v39    # "$dirty":I
    .local v41, "$dirty":I
    const-wide/16 v39, 0x0

    move/from16 v43, v41

    move/from16 v44, v42

    .end local v41    # "$dirty":I
    .local v43, "$dirty":I
    const-wide/16 v41, 0x0

    move/from16 v45, v43

    move/from16 v46, v44

    .end local v43    # "$dirty":I
    .local v45, "$dirty":I
    const-wide/16 v43, 0x0

    move/from16 v47, v45

    move/from16 v48, v46

    .end local v45    # "$dirty":I
    .local v47, "$dirty":I
    const-wide/16 v45, 0x0

    move/from16 v49, v47

    move/from16 v50, v48

    .end local v47    # "$dirty":I
    .local v49, "$dirty":I
    const-wide/16 v47, 0x0

    move/from16 v51, v49

    move/from16 v52, v50

    .end local v49    # "$dirty":I
    .local v51, "$dirty":I
    const-wide/16 v49, 0x0

    move/from16 v53, v51

    move/from16 v54, v52

    .end local v51    # "$dirty":I
    .local v53, "$dirty":I
    const-wide/16 v51, 0x0

    move/from16 v55, v53

    move/from16 v56, v54

    .end local v53    # "$dirty":I
    .local v55, "$dirty":I
    const-wide/16 v53, 0x0

    move/from16 v57, v55

    move/from16 v58, v56

    .end local v55    # "$dirty":I
    .local v57, "$dirty":I
    const-wide/16 v55, 0x0

    move/from16 v59, v57

    move/from16 v60, v58

    .end local v57    # "$dirty":I
    .local v59, "$dirty":I
    const-wide/16 v57, 0x0

    move/from16 v61, v59

    move/from16 v62, v60

    .end local v59    # "$dirty":I
    .local v61, "$dirty":I
    const-wide/16 v59, 0x0

    move/from16 v63, v61

    move/from16 v64, v62

    .end local v61    # "$dirty":I
    .local v63, "$dirty":I
    const-wide/16 v61, 0x0

    move/from16 v65, v63

    move/from16 v66, v64

    .end local v63    # "$dirty":I
    .local v65, "$dirty":I
    const-wide/16 v63, 0x0

    move/from16 v67, v65

    move/from16 v68, v66

    .end local v65    # "$dirty":I
    .local v67, "$dirty":I
    const-wide/16 v65, 0x0

    move/from16 v69, v67

    move/from16 v70, v68

    .end local v67    # "$dirty":I
    .local v69, "$dirty":I
    const-wide/16 v67, 0x0

    move/from16 v71, v69

    move/from16 v72, v70

    .end local v69    # "$dirty":I
    .local v71, "$dirty":I
    const-wide/16 v69, 0x0

    move/from16 v73, v71

    move/from16 v74, v72

    .end local v71    # "$dirty":I
    .local v73, "$dirty":I
    const-wide/16 v71, 0x0

    move/from16 v75, v73

    move/from16 v76, v74

    .end local v73    # "$dirty":I
    .local v75, "$dirty":I
    const-wide/16 v73, 0x0

    move/from16 v77, v75

    move/from16 v78, v76

    .end local v75    # "$dirty":I
    .local v77, "$dirty":I
    const-wide/16 v75, 0x0

    move/from16 v79, v77

    move/from16 v80, v78

    .end local v77    # "$dirty":I
    .local v79, "$dirty":I
    const-wide/16 v77, 0x0

    move/from16 v81, v79

    move/from16 v82, v80

    .end local v79    # "$dirty":I
    .local v81, "$dirty":I
    const-wide/16 v79, 0x0

    move/from16 v83, v81

    move/from16 v84, v82

    .end local v81    # "$dirty":I
    .local v83, "$dirty":I
    const-wide/16 v81, 0x0

    move/from16 v85, v83

    move/from16 v86, v84

    .end local v83    # "$dirty":I
    .local v85, "$dirty":I
    const-wide/16 v83, 0x0

    move/from16 v87, v85

    move/from16 v88, v86

    .end local v85    # "$dirty":I
    .local v87, "$dirty":I
    const-wide/16 v85, 0x0

    move/from16 v89, v87

    move/from16 v90, v88

    .end local v87    # "$dirty":I
    .local v89, "$dirty":I
    const-wide/16 v87, 0x0

    move/from16 v92, v89

    move/from16 v93, v90

    .end local v89    # "$dirty":I
    .local v92, "$dirty":I
    const-wide/16 v89, 0x0

    move/from16 v94, v92

    .end local v92    # "$dirty":I
    .local v94, "$dirty":I
    const v92, 0x36000

    move/from16 v95, v93

    const/16 v93, 0x0

    move/from16 v96, v94

    .end local v94    # "$dirty":I
    .local v96, "$dirty":I
    const/16 v94, 0x0

    move/from16 v97, v95

    const/16 v95, 0x0

    move/from16 v98, v96

    .end local v96    # "$dirty":I
    .local v98, "$dirty":I
    const/16 v96, 0xc00

    move/from16 v100, v97

    const v97, 0x7fffffcf

    move/from16 v101, v98

    .end local v98    # "$dirty":I
    .local v101, "$dirty":I
    const/16 v98, 0xfff

    move/from16 v0, v100

    invoke-virtual/range {v5 .. v98}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v22

    .line 162
    move-object/from16 v5, v91

    .line 163
    .end local v91    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    nop

    .line 165
    nop

    .line 164
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x36

    const v8, -0x63413c53

    invoke-static {v8, v0, v6, v5, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 166
    move-object/from16 v21, v99

    check-cast v21, Landroidx/compose/ui/graphics/Shape;

    .line 167
    and-int/lit8 v0, v101, 0xe

    const v6, 0xc00180

    or-int/2addr v0, v6

    shr-int/lit8 v6, v101, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int v24, v0, v6

    .line 161
    const/4 v3, 0x0

    move-object v2, v4

    const/4 v4, 0x0

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v91    # "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x1fff78

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v23, v91

    .end local v91    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v0 .. v27}, Landroidx/compose/material3/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v91    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    .line 159
    .end local v91    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v101    # "$dirty":I
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$dirty":I
    :cond_8
    move-object v1, v2

    move-object/from16 v91, v5

    move/from16 v101, v6

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "$dirty":I
    .restart local v91    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v101    # "$dirty":I
    invoke-interface/range {v91 .. v91}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 172
    :cond_9
    :goto_4
    invoke-interface/range {v91 .. v91}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda1;

    move-object/from16 v4, p1

    move/from16 v5, p4

    invoke-direct {v3, v0, v4, v1, v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_5

    :cond_a
    move-object/from16 v4, p1

    move/from16 v5, p4

    :goto_5
    return-void
.end method

.method static final CustomTextFields$lambda$45(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$placeholder"    # Ljava/lang/String;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C163@7209L17:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CustomTextFields.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:163)"

    const v4, -0x63413c53

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 164
    :cond_1
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

    move-object/from16 v21, v0

    move-object/from16 v0, p0

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

.method static final CustomTextFields$lambda$46(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p2, p4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->CustomTextFields(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final RegistrarPacienteDesdeAdminScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 33
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    const-string v0, "navController"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginViewModel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const v0, 0x71bc5dca

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(RegistrarPacienteDesdeAdminScreen)N(navController,loginViewModel)60@2795L16,61@2860L16,62@2919L16,63@2987L16,66@3055L31,67@3109L31,68@3172L31,70@3236L34,74@3357L87,77@3455L3199,72@3280L3374:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p3

    .local v3, "$dirty":I
    and-int/lit8 v4, p3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, p3, 0x30

    if-nez v4, :cond_3

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_1

    :cond_2
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v4, v3, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v6, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    and-int/lit8 v6, v3, 0x1

    invoke-interface {v15, v4, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen (RegistrarPacienteDesdeAdminScreen.kt:53)"

    invoke-static {v0, v3, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 55
    :cond_5
    const-wide v9, 0xffccc0e4L

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v21

    .line 56
    .local v21, "backgroundColor":J
    const-wide v9, 0xff6c63ffL

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v9

    .line 58
    .local v9, "primaryColor":J
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->getRoboto()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v13

    .line 61
    .local v13, "roboto":Landroidx/compose/ui/text/font/FontFamily;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getNombre()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    const/4 v4, 0x0

    invoke-static {v0, v4, v15, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 62
    .local v0, "nombre$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getApellido()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v6, v4, v15, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 63
    .local v6, "apellido$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getEmail()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    check-cast v11, Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v11, v4, v15, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v11

    .line 64
    .local v11, "email$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getRegPassword()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v12, v4, v15, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v12

    .line 67
    .local v12, "password$delegate":Landroidx/compose/runtime/State;
    move/from16 p2, v7

    const v7, -0xbe3a1b7

    const-string v8, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp"

    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid\\1":Z
    move-object/from16 v17, v15

    .local v17, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 173
    .local v18, "$i$f$cache\\1\\67":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\1":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 174
    .local v20, "$i$a$-let-ComposerKt$cache$1\\2\\173\\1":I
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v23, v0

    .end local v0    # "nombre$delegate":Landroidx/compose/runtime/State;
    .local v23, "nombre$delegate":Landroidx/compose/runtime/State;
    const-string v0, ""

    if-ne v4, v5, :cond_6

    .line 175
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$telefono$2\\3\\175\\0":I
    move/from16 v25, v3

    const/4 v1, 0x2

    const/4 v3, 0x0

    .end local v3    # "$dirty":I
    .local v25, "$dirty":I
    invoke-static {v0, v3, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 175
    .end local v5    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$telefono$2\\3\\175\\0":I
    nop

    .line 176
    .local v5, "value\\2":Ljava/lang/Object;
    move-object/from16 v1, v17

    .end local v17    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    move-object v4, v5

    .end local v5    # "value\\2":Ljava/lang/Object;
    goto :goto_3

    .line 178
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v25    # "$dirty":I
    .restart local v3    # "$dirty":I
    .restart local v17    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    :cond_6
    move/from16 v25, v3

    move-object/from16 v1, v17

    .line 173
    .end local v3    # "$dirty":I
    .end local v4    # "it\\1":Ljava/lang/Object;
    .end local v17    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1\\2\\173\\1":I
    .restart local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$dirty":I
    :goto_3
    nop

    .line 67
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v7    # "invalid\\1":Z
    .end local v18    # "$i$f$cache\\1\\67":I
    move-object v1, v4

    check-cast v1, Landroidx/compose/runtime/MutableState;

    .local v1, "telefono$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 68
    const v3, -0xbe39af7

    invoke-static {v15, v3, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid\\4":Z
    move-object v4, v15

    .local v4, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 179
    .local v5, "$i$f$cache\\4\\68":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it\\4":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 180
    .local v17, "$i$a$-let-ComposerKt$cache$1\\5\\179\\4":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v20, v1

    .end local v1    # "telefono$delegate":Landroidx/compose/runtime/MutableState;
    .local v20, "telefono$delegate":Landroidx/compose/runtime/MutableState;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v7, v1, :cond_7

    .line 181
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$genero$2\\6\\181\\0":I
    move/from16 v18, v1

    move/from16 v26, v3

    const/4 v1, 0x2

    const/4 v3, 0x0

    .end local v1    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$genero$2\\6\\181\\0":I
    .end local v3    # "invalid\\4":Z
    .local v18, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$genero$2\\6\\181\\0":I
    .local v26, "invalid\\4":Z
    invoke-static {v0, v3, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v18

    .line 181
    .end local v18    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$genero$2\\6\\181\\0":I
    move-object/from16 v1, v18

    .line 182
    .local v1, "value\\5":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    move-object v7, v1

    .end local v1    # "value\\5":Ljava/lang/Object;
    goto :goto_4

    .line 184
    .end local v26    # "invalid\\4":Z
    .restart local v3    # "invalid\\4":Z
    :cond_7
    move/from16 v26, v3

    .line 179
    .end local v3    # "invalid\\4":Z
    .end local v7    # "it\\4":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1\\5\\179\\4":I
    .restart local v26    # "invalid\\4":Z
    :goto_4
    nop

    .line 68
    .end local v4    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\4\\68":I
    .end local v26    # "invalid\\4":Z
    move-object v1, v7

    check-cast v1, Landroidx/compose/runtime/MutableState;

    .local v1, "genero$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 69
    const v3, -0xbe39317

    invoke-static {v15, v3, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid\\7":Z
    move-object v4, v15

    .local v4, "$this$cache\\7":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 185
    .local v5, "$i$f$cache\\7\\69":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it\\7":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 186
    .local v17, "$i$a$-let-ComposerKt$cache$1\\8\\185\\7":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v26, v1

    .end local v1    # "genero$delegate":Landroidx/compose/runtime/MutableState;
    .local v26, "genero$delegate":Landroidx/compose/runtime/MutableState;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v7, v1, :cond_8

    .line 187
    const/4 v1, 0x0

    .line 69
    .local v1, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$fechaNacimiento$2\\9\\187\\0":I
    move/from16 v18, v1

    move/from16 v27, v3

    const/4 v1, 0x2

    const/4 v3, 0x0

    .end local v1    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$fechaNacimiento$2\\9\\187\\0":I
    .end local v3    # "invalid\\7":Z
    .local v18, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$fechaNacimiento$2\\9\\187\\0":I
    .local v27, "invalid\\7":Z
    invoke-static {v0, v3, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 187
    .end local v18    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$fechaNacimiento$2\\9\\187\\0":I
    nop

    .line 188
    .local v0, "value\\8":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    move-object v7, v0

    .end local v0    # "value\\8":Ljava/lang/Object;
    goto :goto_5

    .line 190
    .end local v27    # "invalid\\7":Z
    .restart local v3    # "invalid\\7":Z
    :cond_8
    move/from16 v27, v3

    .line 185
    .end local v3    # "invalid\\7":Z
    .end local v7    # "it\\7":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1\\8\\185\\7":I
    .restart local v27    # "invalid\\7":Z
    :goto_5
    nop

    .line 69
    .end local v4    # "$this$cache\\7":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\7\\69":I
    .end local v27    # "invalid\\7":Z
    move-object v0, v7

    check-cast v0, Landroidx/compose/runtime/MutableState;

    .local v0, "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 71
    const v1, -0xbe38b14

    invoke-static {v15, v1, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\10":Z
    move-object v3, v15

    .local v3, "$this$cache\\10":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 191
    .local v4, "$i$f$cache\\10\\71":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it\\10":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 192
    .local v7, "$i$a$-let-ComposerKt$cache$1\\11\\191\\10":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_9

    .line 193
    const/4 v8, 0x0

    .line 71
    .local v8, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$passwordVisible$2\\12\\193\\0":I
    move-object/from16 v17, v0

    .end local v0    # "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    .local v17, "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move/from16 p2, v1

    move/from16 v18, v4

    const/4 v1, 0x2

    const/4 v4, 0x0

    .end local v1    # "invalid\\10":Z
    .end local v4    # "$i$f$cache\\10\\71":I
    .local v18, "$i$f$cache\\10\\71":I
    .local p2, "invalid\\10":Z
    invoke-static {v0, v4, v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 193
    .end local v8    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$passwordVisible$2\\12\\193\\0":I
    nop

    .line 194
    .local v0, "value\\11":Ljava/lang/Object;
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 195
    move-object v5, v0

    .end local v0    # "value\\11":Ljava/lang/Object;
    goto :goto_6

    .line 196
    .end local v17    # "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    .end local v18    # "$i$f$cache\\10\\71":I
    .end local p2    # "invalid\\10":Z
    .local v0, "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v1    # "invalid\\10":Z
    .restart local v4    # "$i$f$cache\\10\\71":I
    :cond_9
    move-object/from16 v17, v0

    move/from16 p2, v1

    move/from16 v18, v4

    .line 191
    .end local v0    # "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    .end local v1    # "invalid\\10":Z
    .end local v4    # "$i$f$cache\\10\\71":I
    .end local v5    # "it\\10":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1\\11\\191\\10":I
    .restart local v17    # "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v18    # "$i$f$cache\\10\\71":I
    .restart local p2    # "invalid\\10":Z
    :goto_6
    nop

    .line 71
    .end local v3    # "$this$cache\\10":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache\\10\\71":I
    .end local p2    # "invalid\\10":Z
    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/MutableState;

    .local v0, "passwordVisible$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 75
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/NavController;)V

    const v3, -0x6494847a

    const/16 v4, 0x36

    const/4 v5, 0x1

    invoke-static {v3, v5, v1, v15, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .line 74
    nop

    .line 78
    move-object v7, v11

    move-object v11, v12

    move-object v12, v0

    .end local v0    # "passwordVisible$delegate":Landroidx/compose/runtime/MutableState;
    .local v7, "email$delegate":Landroidx/compose/runtime/State;
    .local v11, "password$delegate":Landroidx/compose/runtime/State;
    .local v12, "passwordVisible$delegate":Landroidx/compose/runtime/MutableState;
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda5;

    move-object/from16 v1, p1

    move v14, v4

    move-wide v3, v9

    move-object/from16 v10, v17

    move-object/from16 v8, v20

    move-object/from16 v5, v23

    move/from16 v30, v25

    move-object/from16 v9, v26

    .end local v17    # "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    .end local v20    # "telefono$delegate":Landroidx/compose/runtime/MutableState;
    .end local v23    # "nombre$delegate":Landroidx/compose/runtime/State;
    .end local v25    # "$dirty":I
    .end local v26    # "genero$delegate":Landroidx/compose/runtime/MutableState;
    .local v3, "primaryColor":J
    .local v5, "nombre$delegate":Landroidx/compose/runtime/State;
    .local v8, "telefono$delegate":Landroidx/compose/runtime/MutableState;
    .local v9, "genero$delegate":Landroidx/compose/runtime/MutableState;
    .local v10, "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    .local v30, "$dirty":I
    invoke-direct/range {v0 .. v13}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda5;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/navigation/NavController;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;)V

    move-wide/from16 v31, v3

    .end local v3    # "primaryColor":J
    .local v31, "primaryColor":J
    const v3, -0x1b433a65

    const/4 v4, 0x1

    invoke-static {v3, v4, v0, v15, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lkotlin/jvm/functions/Function3;

    .line 73
    move-object/from16 v27, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v27, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const v28, 0x30180030

    const/16 v29, 0x1bd

    invoke-static/range {v15 .. v29}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v5    # "nombre$delegate":Landroidx/compose/runtime/State;
    .end local v6    # "apellido$delegate":Landroidx/compose/runtime/State;
    .end local v7    # "email$delegate":Landroidx/compose/runtime/State;
    .end local v8    # "telefono$delegate":Landroidx/compose/runtime/MutableState;
    .end local v9    # "genero$delegate":Landroidx/compose/runtime/MutableState;
    .end local v10    # "fechaNacimiento$delegate":Landroidx/compose/runtime/MutableState;
    .end local v11    # "password$delegate":Landroidx/compose/runtime/State;
    .end local v12    # "passwordVisible$delegate":Landroidx/compose/runtime/MutableState;
    .end local v13    # "roboto":Landroidx/compose/ui/text/font/FontFamily;
    .end local v21    # "backgroundColor":J
    .end local v31    # "primaryColor":J
    goto :goto_7

    .line 50
    .end local v27    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v30    # "$dirty":I
    .local v3, "$dirty":I
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_a
    move/from16 v30, v3

    move-object/from16 v27, v15

    .end local v3    # "$dirty":I
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v27    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v30    # "$dirty":I
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 148
    :cond_b
    :goto_7
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;

    move/from16 v14, p3

    invoke-direct {v3, v2, v1, v14}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_8

    :cond_c
    move/from16 v14, p3

    :goto_8
    return-void
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$nombre$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 198
    .local v3, "$i$f$getValue\\1\\61":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\61":I
    check-cast v0, Ljava/lang/String;

    .line 61
    return-object v0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$apellido$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 199
    .local v3, "$i$f$getValue\\1\\62":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\62":I
    check-cast v0, Ljava/lang/String;

    .line 62
    return-object v0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 4
    .param p0, "$fechaNacimiento$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 69
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 208
    .local v3, "$i$f$getValue\\1\\69":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\69":I
    check-cast v0, Ljava/lang/String;

    .line 69
    return-object v0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$12(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 5
    .param p0, "$fechaNacimiento$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 209
    .local v4, "$i$f$setValue\\1\\69":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 210
    nop

    .line 69
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\69":I
    return-void
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$14(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$passwordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 71
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 211
    .local v3, "$i$f$getValue\\1\\71":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\71":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 71
    return v0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$15(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$passwordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 212
    .local v4, "$i$f$setValue\\1\\71":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 213
    nop

    .line 71
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\71":I
    return-void
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$16(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C75@3375L55:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:75)"

    const v2, -0x6494847a

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 76
    :cond_1
    const/4 v10, 0x6

    const/16 v11, 0x3c

    const-string v3, "Registrar Psic\u00f3logo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, p1

    .end local p0    # "$navController":Landroidx/navigation/NavController;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$navController":Landroidx/navigation/NavController;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v11}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt;->MenuAdministrador(Ljava/lang/String;Landroidx/navigation/NavController;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 75
    .end local v4    # "$navController":Landroidx/navigation/NavController;
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "$navController":Landroidx/navigation/NavController;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v4, p0

    move-object v9, p1

    .end local p0    # "$navController":Landroidx/navigation/NavController;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$navController":Landroidx/navigation/NavController;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 77
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$email$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 200
    .local v3, "$i$f$getValue\\1\\63":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\63":I
    check-cast v0, Ljava/lang/String;

    .line 63
    return-object v0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$password$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 201
    .local v3, "$i$f$getValue\\1\\64":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\64":I
    check-cast v0, Ljava/lang/String;

    .line 64
    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/navigation/NavController;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 132
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "$navController"    # Landroidx/navigation/NavController;
    .param p2, "$primaryColor"    # J
    .param p4, "$nombre$delegate"    # Landroidx/compose/runtime/State;
    .param p5, "$apellido$delegate"    # Landroidx/compose/runtime/State;
    .param p6, "$email$delegate"    # Landroidx/compose/runtime/State;
    .param p7, "$telefono$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p8, "$genero$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p9, "$fechaNacimiento$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p10, "$password$delegate"    # Landroidx/compose/runtime/State;
    .param p11, "$passwordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p12, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p13, "padding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p14, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p15, "$changed"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    const-string v0, "padding"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(padding)79@3481L3163:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p15

    .local v0, "$dirty":I
    and-int/lit8 v3, p15, 0x6

    if-nez v3, :cond_1

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v0, v3

    :cond_1
    move v9, v0

    .end local v0    # "$dirty":I
    .local v9, "$dirty":I
    and-int/lit8 v0, v9, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v10, 0x1

    if-eq v0, v3, :cond_2

    move v0, v10

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    and-int/lit8 v3, v9, 0x1

    invoke-interface {v8, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:79)"

    const v5, -0x1b433a65

    invoke-static {v5, v9, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 81
    :cond_3
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 82
    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 83
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v11, v10, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 84
    const/16 v3, 0x14

    .local v3, "$this$dp\\1":I
    const/4 v5, 0x0

    .line 220
    .local v5, "$i$f$getDp\\1\\84":I
    int-to-float v13, v3

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 84
    .end local v3    # "$this$dp\\1":I
    .end local v5    # "$i$f$getDp\\1\\84":I
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 85
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v5, 0x10

    .local v5, "$this$dp\\2":I
    const/4 v13, 0x0

    .line 221
    .local v13, "$i$f$getDp\\2\\85":I
    int-to-float v14, v5

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 85
    .end local v5    # "$this$dp\\2":I
    .end local v13    # "$i$f$getDp\\2\\85":I
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 80
    move-object v13, v0

    .local v13, "modifier\\3":Landroidx/compose/ui/Modifier;
    move-object v14, v3

    .local v14, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/16 v0, 0x30

    move v15, v0

    .local v15, "$changed\\3":I
    move-object/from16 v3, p14

    .local v3, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 222
    .local v16, "$i$f$Column\\3\\80":I
    const v5, 0x4ff7456f

    const-string v11, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v3, v5, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 223
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v11

    .line 226
    .local v11, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v5, v15, 0x3

    and-int/lit8 v5, v5, 0xe

    shr-int/lit8 v17, v15, 0x3

    and-int/lit8 v17, v17, 0x70

    or-int v5, v5, v17

    invoke-static {v14, v11, v3, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v17

    .line 230
    .local v17, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 229
    shl-int/lit8 v5, v15, 0x3

    and-int/lit8 v5, v5, 0x70

    .line 227
    move-object/from16 v18, v17

    .local v18, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v19, v13

    .local v19, "modifier\\4":Landroidx/compose/ui/Modifier;
    move-object/from16 v20, v3

    .local v20, "$composer\\4":Landroidx/compose/runtime/Composer;
    move/from16 v21, v5

    .local v21, "$changed\\4":I
    const/16 v22, 0x0

    .line 231
    .local v22, "$i$f$Layout\\4\\227":I
    const v5, -0x451e1427

    const-string v10, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v12, v20

    .end local v20    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v12, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v12, v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 232
    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    .line 233
    .local v10, "compositeKeyHash\\4":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 234
    .local v5, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v4, v19

    .end local v19    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v4, "modifier\\4":Landroidx/compose/ui/Modifier;
    invoke-static {v12, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 236
    .local v0, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v23

    move-object/from16 v24, v3

    .end local v3    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v24, "$composer\\3":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v3, v21, 0x6

    and-int/lit16 v3, v3, 0x380

    const/4 v7, 0x6

    or-int/2addr v3, v7

    .line 235
    move-object/from16 v25, v12

    .local v25, "$composer\\5":Landroidx/compose/runtime/Composer;
    move-object/from16 v26, v23

    .local v26, "factory\\5":Lkotlin/jvm/functions/Function0;
    move/from16 v23, v3

    .local v23, "$changed\\5":I
    const/16 v27, 0x0

    .line 237
    .local v27, "$i$f$ReusableComposeNode\\5\\235":I
    const v3, -0x20f7d59c

    move/from16 v28, v7

    const-string v7, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v8, v25

    .end local v25    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v8, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v8, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 238
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 239
    :cond_4
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 240
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    move-object/from16 v7, v26

    .end local v26    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v7, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 243
    .end local v7    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v26    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v7, v26

    .end local v26    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v7    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 245
    :goto_2
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 246
    .local v25, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\245\\4":I
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v4

    .end local v4    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v29, "modifier\\4":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    move-object/from16 v26, v7

    move-object/from16 v7, v18

    .end local v18    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v7, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v26    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-static {v3, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 247
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 248
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v5

    .end local v5    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .local v30, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 250
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    nop

    .line 245
    .end local v3    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\245\\4":I
    nop

    .line 252
    shr-int/lit8 v3, v23, 0x6

    and-int/lit8 v18, v3, 0xe

    .local v18, "$changed\\7":I
    move-object v3, v8

    .local v3, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 228
    .local v25, "$i$a$-Layout-ColumnKt$Column$1\\7\\252\\3":I
    const v4, 0x7cc0ae6e

    const-string v5, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v31, v5, 0x6

    .local v31, "$changed\\8":I
    check-cast v4, Landroidx/compose/foundation/layout/ColumnScope;

    .local v4, "$this$RegistrarPacienteDesdeAdminScreen_u24lambda_u2443_u24lambda_u2442\\8":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v5, v3

    .local v5, "$composer\\8":Landroidx/compose/runtime/Composer;
    move-object/from16 v126, v4

    .end local v4    # "$this$RegistrarPacienteDesdeAdminScreen_u24lambda_u2443_u24lambda_u2442\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .local v126, "$this$RegistrarPacienteDesdeAdminScreen_u24lambda_u2443_u24lambda_u2442\\8":Landroidx/compose/foundation/layout/ColumnScope;
    const/16 v127, 0x0

    .line 88
    .local v127, "$i$a$-Column-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1\\8\\228\\0":I
    const v4, -0x172d355e

    move-object/from16 v128, v0

    .end local v0    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v128, "materialized\\4":Landroidx/compose/ui/Modifier;
    const-string v0, "C87@3769L32,87@3734L67,88@3857L34,88@3818L73,89@3941L31,89@3908L64,90@4028L17,90@3989L56,91@4103L15,91@4062L56,92@4202L24,92@4135L91,109@5192L152,96@4356L37,97@4429L43,99@4636L396,94@4271L1091,115@5380L41,119@5512L335,130@6068L43,131@6130L99,118@5474L755,137@6327L32,142@6553L77,136@6281L349:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

    invoke-static {v5, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v0

    const v4, -0x5b96214f

    move-object/from16 v129, v7

    .end local v7    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v129, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    const-string v7, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp"

    invoke-static {v5, v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid\\9":Z
    move-object/from16 v32, v5

    .local v32, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 253
    .local v33, "$i$f$cache\\9\\88":I
    move-object/from16 v130, v3

    .end local v3    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v130, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\9":Ljava/lang/Object;
    const/16 v34, 0x0

    .line 254
    .local v34, "$i$a$-let-ComposerKt$cache$1\\10\\253\\9":I
    if-nez v4, :cond_7

    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v36, v4

    .end local v4    # "invalid\\9":Z
    .local v36, "invalid\\9":Z
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_6

    goto :goto_3

    .line 258
    :cond_6
    move-object/from16 v4, v32

    goto :goto_4

    .line 254
    .end local v36    # "invalid\\9":Z
    .restart local v4    # "invalid\\9":Z
    :cond_7
    move/from16 v36, v4

    .line 255
    .end local v4    # "invalid\\9":Z
    .restart local v36    # "invalid\\9":Z
    :goto_3
    const/4 v4, 0x0

    .line 88
    .local v4, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$1\\11\\255\\8":I
    move-object/from16 v35, v3

    .end local v3    # "it\\9":Ljava/lang/Object;
    .local v35, "it\\9":Ljava/lang/Object;
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda7;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 255
    .end local v4    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$1\\11\\255\\8":I
    nop

    .line 256
    .local v3, "value\\10":Ljava/lang/Object;
    move-object/from16 v4, v32

    .end local v32    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 257
    nop

    .line 253
    .end local v3    # "value\\10":Ljava/lang/Object;
    .end local v34    # "$i$a$-let-ComposerKt$cache$1\\10\\253\\9":I
    .end local v35    # "it\\9":Ljava/lang/Object;
    :goto_4
    nop

    .line 88
    .end local v4    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$f$cache\\9\\88":I
    .end local v36    # "invalid\\9":Z
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const-string v4, "Nombre"

    move-object/from16 v131, v8

    const/16 v8, 0x30

    .end local v8    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v131, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v0, v4, v3, v5, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->CustomTextFields(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 89
    invoke-static/range {p5 .. p5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v0

    const v3, -0x5b96164d

    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid\\12":Z
    move-object v4, v5

    .local v4, "$this$cache\\12":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 259
    .local v8, "$i$f$cache\\12\\89":I
    move/from16 v32, v3

    .end local v3    # "invalid\\12":Z
    .local v32, "invalid\\12":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\12":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 260
    .local v33, "$i$a$-let-ComposerKt$cache$1\\13\\259\\12":I
    if-nez v32, :cond_9

    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v35, v8

    .end local v8    # "$i$f$cache\\12\\89":I
    .local v35, "$i$f$cache\\12\\89":I
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v3, v8, :cond_8

    goto :goto_5

    .line 264
    :cond_8
    goto :goto_6

    .line 260
    .end local v35    # "$i$f$cache\\12\\89":I
    .restart local v8    # "$i$f$cache\\12\\89":I
    :cond_9
    move/from16 v35, v8

    .line 261
    .end local v8    # "$i$f$cache\\12\\89":I
    .restart local v35    # "$i$f$cache\\12\\89":I
    :goto_5
    const/4 v8, 0x0

    .line 89
    .local v8, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$2\\14\\261\\8":I
    move-object/from16 v34, v3

    .end local v3    # "it\\12":Ljava/lang/Object;
    .local v34, "it\\12":Ljava/lang/Object;
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda11;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 261
    .end local v8    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$2\\14\\261\\8":I
    nop

    .line 262
    .local v3, "value\\13":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 263
    nop

    .line 259
    .end local v3    # "value\\13":Ljava/lang/Object;
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\13\\259\\12":I
    .end local v34    # "it\\12":Ljava/lang/Object;
    :goto_6
    nop

    .line 89
    .end local v4    # "$this$cache\\12":Landroidx/compose/runtime/Composer;
    .end local v32    # "invalid\\12":Z
    .end local v35    # "$i$f$cache\\12\\89":I
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const-string v4, "Apellido"

    const/16 v8, 0x30

    invoke-static {v0, v4, v3, v5, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->CustomTextFields(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 90
    invoke-static/range {p6 .. p6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v0

    const v3, -0x5b960bd0

    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid\\15":Z
    move-object v4, v5

    .local v4, "$this$cache\\15":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 265
    .local v8, "$i$f$cache\\15\\90":I
    move/from16 v32, v3

    .end local v3    # "invalid\\15":Z
    .local v32, "invalid\\15":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\15":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 266
    .local v33, "$i$a$-let-ComposerKt$cache$1\\16\\265\\15":I
    if-nez v32, :cond_b

    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v35, v8

    .end local v8    # "$i$f$cache\\15\\90":I
    .local v35, "$i$f$cache\\15\\90":I
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v3, v8, :cond_a

    goto :goto_7

    .line 270
    :cond_a
    goto :goto_8

    .line 266
    .end local v35    # "$i$f$cache\\15\\90":I
    .restart local v8    # "$i$f$cache\\15\\90":I
    :cond_b
    move/from16 v35, v8

    .line 267
    .end local v8    # "$i$f$cache\\15\\90":I
    .restart local v35    # "$i$f$cache\\15\\90":I
    :goto_7
    const/4 v8, 0x0

    .line 90
    .local v8, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$3\\17\\267\\8":I
    move-object/from16 v34, v3

    .end local v3    # "it\\15":Ljava/lang/Object;
    .local v34, "it\\15":Ljava/lang/Object;
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda12;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 267
    .end local v8    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$3\\17\\267\\8":I
    nop

    .line 268
    .local v3, "value\\16":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 269
    nop

    .line 265
    .end local v3    # "value\\16":Ljava/lang/Object;
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\16\\265\\15":I
    .end local v34    # "it\\15":Ljava/lang/Object;
    :goto_8
    nop

    .line 90
    .end local v4    # "$this$cache\\15":Landroidx/compose/runtime/Composer;
    .end local v32    # "invalid\\15":Z
    .end local v35    # "$i$f$cache\\15\\90":I
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const-string v4, "Email"

    const/16 v8, 0x30

    invoke-static {v0, v4, v3, v5, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->CustomTextFields(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 91
    invoke-static/range {p7 .. p7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    const v3, -0x5b9600fe

    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid\\18":Z
    move-object v4, v5

    .local v4, "$this$cache\\18":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 271
    .local v8, "$i$f$cache\\18\\91":I
    move/from16 v19, v3

    .end local v3    # "invalid\\18":Z
    .local v19, "invalid\\18":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\18":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 272
    .local v32, "$i$a$-let-ComposerKt$cache$1\\19\\271\\18":I
    sget-object v33, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v34, v8

    .end local v8    # "$i$f$cache\\18\\91":I
    .local v34, "$i$f$cache\\18\\91":I
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v3, v8, :cond_c

    .line 273
    const/4 v8, 0x0

    .line 91
    .local v8, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$4\\20\\273\\8":I
    move-object/from16 v33, v3

    .end local v3    # "it\\18":Ljava/lang/Object;
    .local v33, "it\\18":Ljava/lang/Object;
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda13;

    move/from16 v35, v8

    move-object/from16 v8, p7

    .end local v8    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$4\\20\\273\\8":I
    .local v35, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$4\\20\\273\\8":I
    invoke-direct {v3, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda13;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 273
    .end local v35    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$4\\20\\273\\8":I
    nop

    .line 274
    .local v3, "value\\19":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 275
    nop

    .end local v3    # "value\\19":Ljava/lang/Object;
    goto :goto_9

    .line 276
    .end local v33    # "it\\18":Ljava/lang/Object;
    .local v3, "it\\18":Ljava/lang/Object;
    :cond_c
    move-object/from16 v8, p7

    move-object/from16 v33, v3

    .line 271
    .end local v3    # "it\\18":Ljava/lang/Object;
    .end local v32    # "$i$a$-let-ComposerKt$cache$1\\19\\271\\18":I
    :goto_9
    nop

    .line 91
    .end local v4    # "$this$cache\\18":Landroidx/compose/runtime/Composer;
    .end local v19    # "invalid\\18":Z
    .end local v34    # "$i$f$cache\\18\\91":I
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const-string v4, "Tel\u00e9fono"

    const/16 v8, 0x1b0

    invoke-static {v0, v4, v3, v5, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->CustomTextFields(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 92
    invoke-static/range {p8 .. p8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$8(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    const v3, -0x5b95f7a0

    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid\\21":Z
    move-object v4, v5

    .local v4, "$this$cache\\21":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 277
    .local v19, "$i$f$cache\\21\\92":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\21":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 278
    .local v33, "$i$a$-let-ComposerKt$cache$1\\22\\277\\21":I
    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v35, v3

    .end local v3    # "invalid\\21":Z
    .local v35, "invalid\\21":Z
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v8, v3, :cond_d

    .line 279
    const/4 v3, 0x0

    .line 92
    .local v3, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$5\\23\\279\\8":I
    move/from16 v34, v3

    .end local v3    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$5\\23\\279\\8":I
    .local v34, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$5\\23\\279\\8":I
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda14;

    move-object/from16 v36, v8

    move-object/from16 v8, p8

    .end local v8    # "it\\21":Ljava/lang/Object;
    .local v36, "it\\21":Ljava/lang/Object;
    invoke-direct {v3, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda14;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 279
    .end local v34    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$5\\23\\279\\8":I
    nop

    .line 280
    .local v3, "value\\22":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 281
    nop

    .end local v3    # "value\\22":Ljava/lang/Object;
    goto :goto_a

    .line 282
    .end local v36    # "it\\21":Ljava/lang/Object;
    .restart local v8    # "it\\21":Ljava/lang/Object;
    :cond_d
    move-object/from16 v36, v8

    move-object/from16 v8, p8

    .end local v8    # "it\\21":Ljava/lang/Object;
    .restart local v36    # "it\\21":Ljava/lang/Object;
    move-object/from16 v3, v36

    .line 277
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\22\\277\\21":I
    .end local v36    # "it\\21":Ljava/lang/Object;
    :goto_a
    nop

    .line 92
    .end local v4    # "$this$cache\\21":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache\\21\\92":I
    .end local v35    # "invalid\\21":Z
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const-string v4, "G\u00e9nero (M/F)"

    const/16 v8, 0x1b0

    invoke-static {v0, v4, v3, v5, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->CustomTextFields(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 93
    invoke-static/range {p9 .. p9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    const v3, -0x5b95eb37

    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid\\24":Z
    move-object v4, v5

    .local v4, "$this$cache\\24":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 283
    .local v8, "$i$f$cache\\24\\93":I
    move/from16 v19, v3

    .end local v3    # "invalid\\24":Z
    .local v19, "invalid\\24":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\24":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 284
    .local v33, "$i$a$-let-ComposerKt$cache$1\\25\\283\\24":I
    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v35, v8

    .end local v8    # "$i$f$cache\\24\\93":I
    .local v35, "$i$f$cache\\24\\93":I
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v3, v8, :cond_e

    .line 285
    const/4 v8, 0x0

    .line 93
    .local v8, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$6\\26\\285\\8":I
    move-object/from16 v34, v3

    .end local v3    # "it\\24":Ljava/lang/Object;
    .local v34, "it\\24":Ljava/lang/Object;
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda15;

    move/from16 v36, v8

    move-object/from16 v8, p9

    .end local v8    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$6\\26\\285\\8":I
    .local v36, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$6\\26\\285\\8":I
    invoke-direct {v3, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda15;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 285
    .end local v36    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$6\\26\\285\\8":I
    nop

    .line 286
    .local v3, "value\\25":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 287
    nop

    .end local v3    # "value\\25":Ljava/lang/Object;
    goto :goto_b

    .line 288
    .end local v34    # "it\\24":Ljava/lang/Object;
    .local v3, "it\\24":Ljava/lang/Object;
    :cond_e
    move-object/from16 v8, p9

    move-object/from16 v34, v3

    .line 283
    .end local v3    # "it\\24":Ljava/lang/Object;
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\25\\283\\24":I
    :goto_b
    nop

    .line 93
    .end local v4    # "$this$cache\\24":Landroidx/compose/runtime/Composer;
    .end local v19    # "invalid\\24":Z
    .end local v35    # "$i$f$cache\\24\\93":I
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const-string v4, "Fecha nacimiento (YYYY-MM-DD)"

    const/16 v8, 0x1b0

    invoke-static {v0, v4, v3, v5, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->CustomTextFields(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 96
    invoke-static/range {p10 .. p10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static/range {p11 .. p11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$14(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v3

    move-object/from16 v19, v0

    const/4 v0, 0x1

    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    new-instance v3, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    move-object/from16 v19, v0

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v4, v0, v8}, Landroidx/compose/ui/text/input/PasswordVisualTransformation;-><init>(CILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Landroidx/compose/ui/text/input/VisualTransformation;

    .line 108
    :goto_c
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-static {v4, v3, v0, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 109
    const/16 v0, 0xc

    .local v0, "$this$dp\\27":I
    const/4 v3, 0x0

    .line 289
    .local v3, "$i$f$getDp\\27\\109":I
    int-to-float v8, v0

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 109
    .end local v0    # "$this$dp\\27":I
    .end local v3    # "$i$f$getDp\\27\\109":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    .line 110
    sget-object v32, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 111
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v41

    .line 112
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v43

    .line 110
    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    const-wide/16 v90, 0x0

    const-wide/16 v92, 0x0

    const-wide/16 v94, 0x0

    const-wide/16 v96, 0x0

    const-wide/16 v98, 0x0

    const-wide/16 v100, 0x0

    const-wide/16 v102, 0x0

    const-wide/16 v104, 0x0

    const-wide/16 v106, 0x0

    const-wide/16 v108, 0x0

    const-wide/16 v110, 0x0

    const-wide/16 v112, 0x0

    const-wide/16 v114, 0x0

    const-wide/16 v116, 0x0

    const v119, 0x36000

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0xc00

    const v124, 0x7fffffcf

    const/16 v125, 0xfff

    move-object/from16 v118, v5

    .end local v5    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v118, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v32 .. v125}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v54

    .line 96
    move-object/from16 v3, v118

    .line 97
    .end local v118    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\8":Landroidx/compose/runtime/Composer;
    const v5, -0x5b95d7ea

    invoke-static {v3, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid\\28":Z
    move-object v8, v3

    .local v8, "$this$cache\\28":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 290
    .local v32, "$i$f$cache\\28\\97":I
    move-object/from16 v33, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it\\28":Ljava/lang/Object;
    const/16 v34, 0x0

    .line 291
    .local v34, "$i$a$-let-ComposerKt$cache$1\\29\\290\\28":I
    if-nez v5, :cond_11

    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v36, v4

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_10

    goto :goto_d

    .line 295
    :cond_10
    goto :goto_e

    .line 291
    :cond_11
    move-object/from16 v36, v4

    .line 292
    :goto_d
    const/4 v4, 0x0

    .line 97
    .local v4, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$7\\30\\292\\8":I
    move-object/from16 v35, v0

    .end local v0    # "it\\28":Ljava/lang/Object;
    .local v35, "it\\28":Ljava/lang/Object;
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda16;

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda16;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 292
    .end local v4    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$7\\30\\292\\8":I
    nop

    .line 293
    .local v0, "value\\29":Ljava/lang/Object;
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    nop

    .line 290
    .end local v0    # "value\\29":Ljava/lang/Object;
    .end local v34    # "$i$a$-let-ComposerKt$cache$1\\29\\290\\28":I
    .end local v35    # "it\\28":Ljava/lang/Object;
    :goto_e
    nop

    .line 97
    .end local v5    # "invalid\\28":Z
    .end local v8    # "$this$cache\\28":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$f$cache\\28\\97":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 108
    nop

    .line 98
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda17;

    invoke-direct {v4, v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda17;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const v5, -0x6075d1f4

    const/16 v8, 0x36

    move-object/from16 v32, v0

    const/4 v0, 0x1

    invoke-static {v5, v0, v4, v3, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v39, v4

    check-cast v39, Lkotlin/jvm/functions/Function2;

    .line 100
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda18;

    move-object/from16 v5, p11

    invoke-direct {v4, v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda18;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v5, -0x302645b6

    invoke-static {v5, v0, v4, v3, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v41, v4

    check-cast v41, Lkotlin/jvm/functions/Function2;

    .line 99
    nop

    .line 109
    move-object/from16 v53, v33

    check-cast v53, Landroidx/compose/ui/graphics/Shape;

    .line 110
    nop

    .line 95
    const/16 v35, 0x0

    move-object/from16 v34, v36

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const v56, 0x30c00180

    const/16 v57, 0x0

    const/16 v58, 0x0

    const v59, 0x1fbd78

    move-object/from16 v55, v3

    move-object/from16 v46, v20

    move-object/from16 v33, v32

    move-object/from16 v32, v19

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v55, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v59}, Landroidx/compose/material3/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 116
    move-object/from16 v0, v55

    .end local v55    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v4, 0x14

    .local v4, "$this$dp\\31":I
    const/4 v5, 0x0

    .line 296
    .local v5, "$i$f$getDp\\31\\116":I
    int-to-float v8, v4

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 116
    .end local v4    # "$this$dp\\31":I
    .end local v5    # "$i$f$getDp\\31\\116":I
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move/from16 v4, v28

    invoke-static {v3, v0, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 120
    const v3, -0x5b954640

    invoke-static {v0, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int v8, v3, v4

    .local v8, "invalid\\32":Z
    move-object v3, v0

    .local v3, "$this$cache\\32":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 297
    .local v20, "$i$f$cache\\32\\120":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\32":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 298
    .local v32, "$i$a$-let-ComposerKt$cache$1\\33\\297\\32":I
    if-nez v8, :cond_13

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_12

    goto :goto_f

    .line 302
    :cond_12
    move-object/from16 v42, v0

    move/from16 v34, v8

    move-object v8, v3

    goto :goto_10

    .line 299
    :cond_13
    :goto_f
    const/16 v33, 0x0

    .line 120
    .local v33, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$10\\34\\299\\8":I
    move-object/from16 v42, v0

    .end local v0    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v42, "$composer\\8":Landroidx/compose/runtime/Composer;
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda19;

    move-object/from16 v5, p9

    move-object/from16 v35, v4

    move/from16 v34, v8

    move-object/from16 v4, p8

    move-object v8, v3

    move-object/from16 v3, p7

    .end local v3    # "$this$cache\\32":Landroidx/compose/runtime/Composer;
    .end local v4    # "it\\32":Ljava/lang/Object;
    .local v8, "$this$cache\\32":Landroidx/compose/runtime/Composer;
    .local v34, "invalid\\32":Z
    .local v35, "it\\32":Ljava/lang/Object;
    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda19;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 299
    .end local v33    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$10\\34\\299\\8":I
    move-object v4, v0

    .line 300
    .local v4, "value\\33":Ljava/lang/Object;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 301
    nop

    .line 297
    .end local v4    # "value\\33":Ljava/lang/Object;
    .end local v32    # "$i$a$-let-ComposerKt$cache$1\\33\\297\\32":I
    .end local v35    # "it\\32":Ljava/lang/Object;
    :goto_10
    nop

    .line 120
    .end local v8    # "$this$cache\\32":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$cache\\32\\120":I
    .end local v34    # "invalid\\32":Z
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v42 .. v42}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 127
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 128
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v3, v1, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 129
    const/16 v1, 0x37

    .local v1, "$this$dp\\35":I
    const/4 v3, 0x0

    .line 303
    .local v3, "$i$f$getDp\\35\\129":I
    int-to-float v5, v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 129
    .end local v1    # "$this$dp\\35":I
    .end local v3    # "$i$f$getDp\\35\\129":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 130
    const/16 v1, 0x10

    .local v1, "$this$dp\\36":I
    const/4 v3, 0x0

    .line 304
    .local v3, "$i$f$getDp\\36\\130":I
    int-to-float v5, v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 130
    .end local v1    # "$this$dp\\36":I
    .end local v3    # "$i$f$getDp\\36\\130":I
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Shape;

    .line 131
    sget-object v32, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget v3, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v3, v3, 0xc

    const/16 v28, 0x6

    or-int/lit8 v3, v3, 0x6

    const/16 v43, 0xe

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    move-wide/from16 v33, p2

    move-object/from16 v41, v42

    move/from16 v42, v3

    .end local v42    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v41, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v32 .. v43}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v36

    .line 132
    move-object/from16 v3, v41

    .end local v41    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\8":Landroidx/compose/runtime/Composer;
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda8;

    invoke-direct {v5, v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const v8, 0x33c6b001

    move-object/from16 v33, v0

    move-object/from16 v35, v1

    const/16 v0, 0x36

    const/4 v1, 0x1

    invoke-static {v8, v1, v5, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v41, v5

    check-cast v41, Lkotlin/jvm/functions/Function3;

    .line 119
    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const v43, 0x30000030

    const/16 v44, 0x1e4

    move-object/from16 v42, v3

    move-object/from16 v32, v4

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v42    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v44}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 138
    .end local v42    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    const v0, -0x5b94e18f

    invoke-static {v3, v0, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid\\37":Z
    move-object v1, v3

    .local v1, "$this$cache\\37":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 305
    .local v4, "$i$f$cache\\37\\138":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it\\37":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 306
    .local v7, "$i$a$-let-ComposerKt$cache$1\\38\\305\\37":I
    if-nez v0, :cond_15

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_14

    goto :goto_11

    .line 310
    :cond_14
    move/from16 v20, v0

    goto :goto_12

    .line 307
    :cond_15
    :goto_11
    const/4 v8, 0x0

    .line 138
    .local v8, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$12\\39\\307\\8":I
    move/from16 v20, v0

    .end local v0    # "invalid\\37":Z
    .local v20, "invalid\\37":Z
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda9;

    invoke-direct {v0, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda9;-><init>(Landroidx/navigation/NavController;)V

    .line 307
    .end local v8    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$12\\39\\307\\8":I
    nop

    .line 308
    .local v0, "value\\38":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 309
    move-object v5, v0

    .line 305
    .end local v0    # "value\\38":Ljava/lang/Object;
    .end local v5    # "it\\37":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1\\38\\305\\37":I
    :goto_12
    nop

    .line 138
    .end local v1    # "$this$cache\\37":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache\\37\\138":I
    .end local v20    # "invalid\\37":Z
    move-object/from16 v32, v5

    check-cast v32, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 139
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 140
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v1, v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 141
    const/16 v1, 0x37

    .local v1, "$this$dp\\40":I
    const/4 v4, 0x0

    .line 311
    .local v4, "$i$f$getDp\\40\\141":I
    int-to-float v5, v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 141
    .end local v1    # "$this$dp\\40":I
    .end local v4    # "$i$f$getDp\\40\\141":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v33

    .line 142
    const/16 v0, 0x10

    .local v0, "$this$dp\\41":I
    const/4 v1, 0x0

    .line 312
    .local v1, "$i$f$getDp\\41\\142":I
    int-to-float v4, v0

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 142
    .end local v0    # "$this$dp\\41":I
    .end local v1    # "$i$f$getDp\\41\\142":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Landroidx/compose/ui/graphics/Shape;

    .line 143
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda10;

    invoke-direct {v0, v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const v1, 0x67dbed83

    const/16 v4, 0x36

    const/4 v5, 0x1

    invoke-static {v1, v5, v0, v3, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v41, v0

    check-cast v41, Lkotlin/jvm/functions/Function3;

    .line 137
    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const v43, 0x30000030

    const/16 v44, 0x1f4

    move-object/from16 v42, v3

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v42    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v44}, Landroidx/compose/material3/ButtonKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 88
    invoke-static/range {v42 .. v42}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 146
    nop

    .line 228
    .end local v31    # "$changed\\8":I
    .end local v42    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v126    # "$this$RegistrarPacienteDesdeAdminScreen_u24lambda_u2443_u24lambda_u2442\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v127    # "$i$a$-Column-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1\\8\\228\\0":I
    invoke-static/range {v130 .. v130}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 252
    .end local v18    # "$changed\\7":I
    .end local v25    # "$i$a$-Layout-ColumnKt$Column$1\\7\\252\\3":I
    .end local v130    # "$composer\\7":Landroidx/compose/runtime/Composer;
    nop

    .line 313
    invoke-interface/range {v131 .. v131}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 237
    invoke-static/range {v131 .. v131}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 314
    nop

    .line 231
    .end local v23    # "$changed\\5":I
    .end local v26    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$ReusableComposeNode\\5\\235":I
    .end local v131    # "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 315
    nop

    .line 222
    .end local v10    # "compositeKeyHash\\4":I
    .end local v12    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v21    # "$changed\\4":I
    .end local v22    # "$i$f$Layout\\4\\227":I
    .end local v29    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v30    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v128    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .end local v129    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v24 .. v24}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 316
    nop

    .end local v11    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v13    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v14    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v15    # "$changed\\3":I
    .end local v16    # "$i$f$Column\\3\\80":I
    .end local v17    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v24    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_13

    .line 78
    :cond_16
    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 147
    :cond_17
    :goto_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$18$lambda$17(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setNombre(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$20$lambda$19(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setApellido(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$22$lambda$21(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setEmail(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$24$lambda$23(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$telefono$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$26$lambda$25(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$genero$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$28$lambda$27(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$fechaNacimiento$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$12(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$30$lambda$29(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setRegPassword(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$31(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C97@4431L39:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:97)"

    const v4, -0x6075d1f4

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 98
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Contrase\u00f1a"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const v22, 0x180006

    move-object/from16 v8, p0

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

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$passwordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C100@4683L38,100@4723L287,100@4662L348:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:100)"

    const v3, -0x302645b6

    invoke-static {v3, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 101
    :cond_1
    const v0, 0x405455d0

    const-string v1, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp"

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\1":Z
    move-object v1, p1

    .local v1, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 214
    .local v3, "$i$f$cache\\1\\101":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 215
    .local v5, "$i$a$-let-ComposerKt$cache$1\\2\\214\\1":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_2

    .line 216
    const/4 v7, 0x0

    .line 101
    .local v7, "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$9$1\\3\\216\\0":I
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 216
    .end local v7    # "$i$a$-cache-RegistrarPacienteDesdeAdminScreenKt$RegistrarPacienteDesdeAdminScreen$2$1$9$1\\3\\216\\0":I
    nop

    .line 217
    .local v8, "value\\2":Ljava/lang/Object;
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 218
    move-object v4, v8

    .end local v8    # "value\\2":Ljava/lang/Object;
    goto :goto_1

    .line 219
    :cond_2
    nop

    .line 214
    .end local v4    # "it\\1":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\2\\214\\1":I
    :goto_1
    nop

    .line 101
    .end local v0    # "invalid\\1":Z
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\1\\101":I
    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;)V

    const/16 v3, 0x36

    const v4, -0x44cf6233

    invoke-static {v4, v2, v1, p1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const v7, 0x30006

    const/16 v8, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 100
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 107
    :cond_4
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35$lambda$33$lambda$32(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$passwordVisible$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 101
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$14(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$15(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35$lambda$34(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$passwordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C101@4753L231:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

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

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:101)"

    const v2, -0x44cf6233

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 103
    :cond_1
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$14(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/VisibilityKt;->getVisibility(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/VisibilityOffKt;->getVisibilityOff(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 104
    nop

    .line 102
    const-string v2, "Ver contrase\u00f1a"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v7, 0x30

    const/16 v8, 0xc

    move-object v6, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 101
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_3
    move-object v6, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 106
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$37$lambda$36(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "$navController"    # Landroidx/navigation/NavController;
    .param p2, "$telefono$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p3, "$genero$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p4, "$fechaNacimiento$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 121
    invoke-static {p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setTelefono(Ljava/lang/String;)V

    .line 122
    invoke-static {p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$8(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setGenero(Ljava/lang/String;)V

    .line 123
    invoke-static {p4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setFechaNacimiento(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 126
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$38(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$this$Button"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$Button"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C132@6152L59:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:132)"

    const v5, 0x33c6b001

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 133
    :cond_1
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v4

    const/16 v23, 0x0

    const v24, 0x1ffba

    const-string v0, "Registrar"

    const/4 v1, 0x0

    move-wide v2, v4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const v22, 0x180186

    move-object/from16 v8, p0

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 132
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 134
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$40$lambda$39(Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 1
    .param p0, "$navController"    # Landroidx/navigation/NavController;

    .line 138
    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$41(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$this$OutlinedButton"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$OutlinedButton"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C143@6575L37:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:143)"

    const v5, 0x67dbed83

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 144
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Cancelar"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const v22, 0x180006

    move-object/from16 v8, p0

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 143
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 145
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RegistrarPacienteDesdeAdminScreen$lambda$44(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 4
    .param p0, "$telefono$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 67
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 202
    .local v3, "$i$f$getValue\\1\\67":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\67":I
    check-cast v0, Ljava/lang/String;

    .line 67
    return-object v0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 5
    .param p0, "$telefono$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 203
    .local v4, "$i$f$setValue\\1\\67":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 204
    nop

    .line 67
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\67":I
    return-void
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$8(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 4
    .param p0, "$genero$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 205
    .local v3, "$i$f$getValue\\1\\68":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\68":I
    check-cast v0, Ljava/lang/String;

    .line 68
    return-object v0
.end method

.method private static final RegistrarPacienteDesdeAdminScreen$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 5
    .param p0, "$genero$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 206
    .local v4, "$i$f$setValue\\1\\68":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 207
    nop

    .line 68
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\68":I
    return-void
.end method
