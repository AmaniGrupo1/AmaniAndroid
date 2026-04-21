.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;
.super Ljava/lang/Object;
.source "TestScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt\n+ 2 ViewModel.kt\norg/koin/androidx/compose/ViewModelKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,202:1\n49#2:203\n43#2,9:204\n1128#3,6:213\n1128#3,6:219\n1128#3,6:290\n1128#3,6:296\n1128#3,6:302\n1128#3,6:308\n1128#3,6:314\n1128#3,6:320\n1128#3,6:328\n122#4:225\n122#4:227\n122#4:256\n122#4:257\n122#4:326\n122#4:327\n85#5:226\n87#6,6:228\n87#6:258\n84#6,9:259\n94#6:337\n94#6:341\n81#7,6:234\n88#7,6:249\n81#7,6:268\n88#7,6:283\n96#7:336\n96#7:340\n391#8,9:240\n400#8:255\n391#8,9:274\n400#8:289\n401#8,2:334\n401#8,2:338\n*S KotlinDebug\n*F\n+ 1 TestScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt\n*L\n48#1:203\n48#1:204,9\n54#1:213,6\n57#1:219,6\n99#1:290,6\n106#1:296,6\n114#1:302,6\n121#1:308,6\n128#1:314,6\n136#1:320,6\n146#1:328,6\n193#1:225\n72#1:227\n91#1:256\n93#1:257\n144#1:326\n145#1:327\n55#1:226\n68#1:228,6\n86#1:258\n86#1:259,9\n86#1:337\n68#1:341\n68#1:234,6\n68#1:249,6\n86#1:268,6\n86#1:283,6\n86#1:336\n68#1:340\n68#1:240,9\n68#1:255\n86#1:274,9\n86#1:289\n86#1:334,2\n68#1:338,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a9\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010\u00b2\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u0084\u0002"
    }
    d2 = {
        "TestScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "crearPreguntaViewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Landroidx/compose/runtime/Composer;II)V",
        "CampoPregunta",
        "value",
        "",
        "placeholder",
        "onChange",
        "Lkotlin/Function1;",
        "roboto",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V",
        "app",
        "guardadoExitoso",
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
.method public static final CampoPregunta(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V
    .locals 103
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "placeholder"    # Ljava/lang/String;
    .param p2, "onChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
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
            "Landroidx/compose/ui/text/font/FontFamily;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    move/from16 v4, p5

    const-string v5, "value"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "placeholder"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onChange"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "roboto"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    const v5, 0x36392d4

    move-object/from16 v6, p4

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v7, "C(CampoPregunta)N(value,placeholder,onChange,roboto)193@6785L279,185@6563L115,180@6416L654:TestScreen.kt#6w2cjo"

    invoke-static {v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v7, p5

    .local v7, "$dirty":I
    and-int/lit8 v8, v4, 0x6

    if-nez v8, :cond_1

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v7, v8

    :cond_1
    and-int/lit8 v8, v4, 0x30

    if-nez v8, :cond_3

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_1

    :cond_2
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v7, v8

    :cond_3
    and-int/lit16 v8, v4, 0x180

    if-nez v8, :cond_5

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_2

    :cond_4
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v7, v8

    :cond_5
    and-int/lit16 v8, v4, 0xc00

    if-nez v8, :cond_7

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_3

    :cond_6
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v7, v8

    :cond_7
    and-int/lit16 v8, v7, 0x493

    const/16 v9, 0x492

    const/4 v10, 0x1

    if-eq v8, v9, :cond_8

    move v8, v10

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    and-int/lit8 v9, v7, 0x1

    invoke-interface {v6, v8, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, -0x1

    const-string v9, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CampoPregunta (TestScreen.kt:178)"

    invoke-static {v5, v7, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 182
    :cond_9
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 183
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v10, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 193
    const/16 v8, 0xc

    .local v8, "$this$dp\\1":I
    const/4 v9, 0x0

    .line 225
    .local v9, "$i$f$getDp\\1\\193":I
    int-to-float v11, v8

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 193
    .end local v8    # "$this$dp\\1":I
    .end local v9    # "$i$f$getDp\\1\\193":I
    invoke-static {v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v100

    .line 194
    move-object/from16 v92, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v92, "$composer":Landroidx/compose/runtime/Composer;
    sget-object v6, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 195
    const-wide v8, 0xfff7f7f7L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v15

    .line 196
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v17

    .line 197
    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v28

    .line 198
    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v30

    .line 199
    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v23

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 199
    nop

    .line 197
    nop

    .line 198
    nop

    .line 194
    move v9, v7

    .end local v7    # "$dirty":I
    .local v9, "$dirty":I
    const-wide/16 v7, 0x0

    move v11, v9

    move v12, v10

    .end local v9    # "$dirty":I
    .local v11, "$dirty":I
    const-wide/16 v9, 0x0

    move v13, v11

    move v14, v12

    .end local v11    # "$dirty":I
    .local v13, "$dirty":I
    const-wide/16 v11, 0x0

    move/from16 v19, v13

    move/from16 v20, v14

    .end local v13    # "$dirty":I
    .local v19, "$dirty":I
    const-wide/16 v13, 0x0

    move/from16 v21, v19

    move/from16 v22, v20

    .end local v19    # "$dirty":I
    .local v21, "$dirty":I
    const-wide/16 v19, 0x0

    move/from16 v25, v21

    move/from16 v26, v22

    .end local v21    # "$dirty":I
    .local v25, "$dirty":I
    const-wide/16 v21, 0x0

    move/from16 v27, v25

    move/from16 v32, v26

    .end local v25    # "$dirty":I
    .local v27, "$dirty":I
    const-wide/16 v25, 0x0

    move/from16 v33, v27

    .end local v27    # "$dirty":I
    .local v33, "$dirty":I
    const/16 v27, 0x0

    move/from16 v35, v32

    move/from16 v34, v33

    .end local v33    # "$dirty":I
    .local v34, "$dirty":I
    const-wide/16 v32, 0x0

    move/from16 v36, v34

    move/from16 v37, v35

    .end local v34    # "$dirty":I
    .local v36, "$dirty":I
    const-wide/16 v34, 0x0

    move/from16 v38, v36

    move/from16 v39, v37

    .end local v36    # "$dirty":I
    .local v38, "$dirty":I
    const-wide/16 v36, 0x0

    move/from16 v40, v38

    move/from16 v41, v39

    .end local v38    # "$dirty":I
    .local v40, "$dirty":I
    const-wide/16 v38, 0x0

    move/from16 v42, v40

    move/from16 v43, v41

    .end local v40    # "$dirty":I
    .local v42, "$dirty":I
    const-wide/16 v40, 0x0

    move/from16 v44, v42

    move/from16 v45, v43

    .end local v42    # "$dirty":I
    .local v44, "$dirty":I
    const-wide/16 v42, 0x0

    move/from16 v46, v44

    move/from16 v47, v45

    .end local v44    # "$dirty":I
    .local v46, "$dirty":I
    const-wide/16 v44, 0x0

    move/from16 v48, v46

    move/from16 v49, v47

    .end local v46    # "$dirty":I
    .local v48, "$dirty":I
    const-wide/16 v46, 0x0

    move/from16 v50, v48

    move/from16 v51, v49

    .end local v48    # "$dirty":I
    .local v50, "$dirty":I
    const-wide/16 v48, 0x0

    move/from16 v52, v50

    move/from16 v53, v51

    .end local v50    # "$dirty":I
    .local v52, "$dirty":I
    const-wide/16 v50, 0x0

    move/from16 v54, v52

    move/from16 v55, v53

    .end local v52    # "$dirty":I
    .local v54, "$dirty":I
    const-wide/16 v52, 0x0

    move/from16 v56, v54

    move/from16 v57, v55

    .end local v54    # "$dirty":I
    .local v56, "$dirty":I
    const-wide/16 v54, 0x0

    move/from16 v58, v56

    move/from16 v59, v57

    .end local v56    # "$dirty":I
    .local v58, "$dirty":I
    const-wide/16 v56, 0x0

    move/from16 v60, v58

    move/from16 v61, v59

    .end local v58    # "$dirty":I
    .local v60, "$dirty":I
    const-wide/16 v58, 0x0

    move/from16 v62, v60

    move/from16 v63, v61

    .end local v60    # "$dirty":I
    .local v62, "$dirty":I
    const-wide/16 v60, 0x0

    move/from16 v64, v62

    move/from16 v65, v63

    .end local v62    # "$dirty":I
    .local v64, "$dirty":I
    const-wide/16 v62, 0x0

    move/from16 v66, v64

    move/from16 v67, v65

    .end local v64    # "$dirty":I
    .local v66, "$dirty":I
    const-wide/16 v64, 0x0

    move/from16 v68, v66

    move/from16 v69, v67

    .end local v66    # "$dirty":I
    .local v68, "$dirty":I
    const-wide/16 v66, 0x0

    move/from16 v70, v68

    move/from16 v71, v69

    .end local v68    # "$dirty":I
    .local v70, "$dirty":I
    const-wide/16 v68, 0x0

    move/from16 v72, v70

    move/from16 v73, v71

    .end local v70    # "$dirty":I
    .local v72, "$dirty":I
    const-wide/16 v70, 0x0

    move/from16 v74, v72

    move/from16 v75, v73

    .end local v72    # "$dirty":I
    .local v74, "$dirty":I
    const-wide/16 v72, 0x0

    move/from16 v76, v74

    move/from16 v77, v75

    .end local v74    # "$dirty":I
    .local v76, "$dirty":I
    const-wide/16 v74, 0x0

    move/from16 v78, v76

    move/from16 v79, v77

    .end local v76    # "$dirty":I
    .local v78, "$dirty":I
    const-wide/16 v76, 0x0

    move/from16 v80, v78

    move/from16 v81, v79

    .end local v78    # "$dirty":I
    .local v80, "$dirty":I
    const-wide/16 v78, 0x0

    move/from16 v82, v80

    move/from16 v83, v81

    .end local v80    # "$dirty":I
    .local v82, "$dirty":I
    const-wide/16 v80, 0x0

    move/from16 v84, v82

    move/from16 v85, v83

    .end local v82    # "$dirty":I
    .local v84, "$dirty":I
    const-wide/16 v82, 0x0

    move/from16 v86, v84

    move/from16 v87, v85

    .end local v84    # "$dirty":I
    .local v86, "$dirty":I
    const-wide/16 v84, 0x0

    move/from16 v88, v86

    move/from16 v89, v87

    .end local v86    # "$dirty":I
    .local v88, "$dirty":I
    const-wide/16 v86, 0x0

    move/from16 v90, v88

    move/from16 v91, v89

    .end local v88    # "$dirty":I
    .local v90, "$dirty":I
    const-wide/16 v88, 0x0

    move/from16 v93, v90

    move/from16 v94, v91

    .end local v90    # "$dirty":I
    .local v93, "$dirty":I
    const-wide/16 v90, 0x0

    move/from16 v95, v93

    .end local v93    # "$dirty":I
    .local v95, "$dirty":I
    const v93, 0x6036000

    move/from16 v96, v94

    const/16 v94, 0x1b0

    move/from16 v97, v95

    .end local v95    # "$dirty":I
    .local v97, "$dirty":I
    const/16 v95, 0x0

    move/from16 v98, v96

    const/16 v96, 0x0

    move/from16 v99, v97

    .end local v97    # "$dirty":I
    .local v99, "$dirty":I
    const/16 v97, 0xc00

    move/from16 v101, v98

    const v98, 0x7fffe6cf

    move/from16 v102, v99

    .end local v99    # "$dirty":I
    .local v102, "$dirty":I
    const/16 v99, 0xfff

    move/from16 v0, v101

    invoke-virtual/range {v6 .. v99}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v22

    .line 184
    move-object/from16 v6, v92

    .line 185
    .end local v92    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    nop

    .line 183
    nop

    .line 186
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v8, 0x36

    const v9, 0x1a222ecf

    invoke-static {v9, v0, v7, v6, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 192
    nop

    .line 193
    move-object/from16 v21, v100

    check-cast v21, Landroidx/compose/ui/graphics/Shape;

    .line 194
    and-int/lit8 v0, v102, 0xe

    const v8, 0xc00180

    or-int/2addr v0, v8

    shr-int/lit8 v8, v102, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int v24, v0, v8

    .line 181
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v5

    const/4 v5, 0x0

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v92    # "$composer":Landroidx/compose/runtime/Composer;
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

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v25, 0xc00000

    const/16 v26, 0x0

    const v27, 0x1dff78

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v23, v92

    .end local v92    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v0 .. v27}, Landroidx/compose/material3/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v92    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    .line 173
    .end local v92    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v102    # "$dirty":I
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$dirty":I
    :cond_a
    move-object/from16 v92, v6

    move/from16 v102, v7

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v7    # "$dirty":I
    .restart local v92    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v102    # "$dirty":I
    invoke-interface/range {v92 .. v92}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 202
    :cond_b
    :goto_5
    invoke-interface/range {v92 .. v92}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda1;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;I)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method static final CampoPregunta$lambda$23(Ljava/lang/String;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$placeholder"    # Ljava/lang/String;
    .param p1, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "C186@6577L91:TestScreen.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CampoPregunta.<anonymous> (TestScreen.kt:186)"

    const v4, 0x1a222ecf

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 188
    :cond_1
    nop

    .line 189
    nop

    .line 187
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

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x1ffbe

    move-object/from16 v8, p1

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 186
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 191
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final CampoPregunta$lambda$24(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    or-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->CampoPregunta(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final TestScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "navController"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const v3, 0x2d0764fc

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(TestScreen)N(navController,crearPreguntaViewModel)50@2193L16,53@2263L32,54@2362L16,64@2724L35,65@2766L3182,62@2646L3302:TestScreen.kt#6w2cjo"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v1, 0x6

    if-nez v6, :cond_1

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v1, 0x30

    if-nez v6, :cond_4

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_2

    move-object/from16 v6, p1

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_1

    :cond_2
    move-object/from16 v6, p1

    :cond_3
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v5, v7

    goto :goto_2

    :cond_4
    move-object/from16 v6, p1

    :goto_2
    and-int/lit8 v7, v5, 0x13

    const/16 v8, 0x12

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_5

    move v7, v10

    goto :goto_3

    :cond_5
    move v7, v9

    :goto_3
    and-int/lit8 v8, v5, 0x1

    invoke-interface {v4, v7, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v7, "47@2057L15"

    invoke-static {v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    .line 45
    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_9

    and-int/lit8 v5, v5, -0x71

    goto :goto_5

    .line 49
    :cond_7
    :goto_4
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_9

    .line 48
    const/4 v7, 0x0

    .local v7, "$changed\\1":I
    move-object v8, v4

    .local v8, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 203
    .local v11, "$i$f$koinViewModel\\1\\48":I
    const v12, -0x6040e0aa

    const-string v13, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k"

    invoke-static {v8, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 204
    const/16 v18, 0x0

    .line 205
    .local v18, "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    sget-object v12, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v13, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v12, v8, v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 206
    .local v12, "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    const/16 v16, 0x0

    .line 207
    .local v16, "key\\1":Ljava/lang/String;
    invoke-static {v12}, Lorg/koin/viewmodel/CreationExtrasExtKt;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v17

    .line 208
    .local v17, "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    invoke-static {v8, v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    move-result-object v19

    .line 209
    .local v19, "scope\\1":Lorg/koin/core/scope/Scope;
    const/16 v20, 0x0

    .local v20, "parameters\\1":Lkotlin/jvm/functions/Function0;
    const-class v13, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 212
    invoke-interface {v12}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v15

    .line 211
    invoke-static/range {v14 .. v20}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v13

    .line 203
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 211
    nop

    .end local v7    # "$changed\\1":I
    .end local v8    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$koinViewModel\\1\\48":I
    .end local v12    # "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v16    # "key\\1":Ljava/lang/String;
    .end local v17    # "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v18    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .end local v19    # "scope\\1":Lorg/koin/core/scope/Scope;
    .end local v20    # "parameters\\1":Lkotlin/jvm/functions/Function0;
    move-object v6, v13

    check-cast v6, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    .end local p1    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .local v6, "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    and-int/lit8 v5, v5, -0x71

    move-object/from16 v25, v6

    move v6, v5

    move-object/from16 v5, v25

    goto :goto_6

    .line 205
    .end local v6    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .restart local v7    # "$changed\\1":I
    .restart local v8    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$i$f$koinViewModel\\1\\48":I
    .restart local v18    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    .end local v7    # "$changed\\1":I
    .end local v8    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$koinViewModel\\1\\48":I
    .end local v18    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    :cond_9
    :goto_5
    move-object/from16 v25, v6

    move v6, v5

    move-object/from16 v5, v25

    .end local p1    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .local v5, "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .local v6, "$dirty":I
    :goto_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, -0x1

    const-string v8, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen (TestScreen.kt:48)"

    invoke-static {v3, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 50
    :cond_a
    const-string v3, "#CCC0E4"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 51
    .local v3, "colorButton":I
    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->getRequest()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v4, v9, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 52
    .local v7, "request":Landroidx/compose/runtime/State;
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->getRoboto()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v11

    .line 54
    .local v11, "roboto":Landroidx/compose/ui/text/font/FontFamily;
    const v12, 0x8c23e3c

    const-string v13, "CC(remember):TestScreen.kt#9igjgp"

    invoke-static {v4, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v12, 0x0

    .local v12, "invalid\\2":Z
    move-object v14, v4

    .local v14, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 213
    .local v15, "$i$f$cache\\2\\54":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\2":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 214
    .local v16, "$i$a$-let-ComposerKt$cache$1\\3\\213\\2":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_b

    .line 215
    const/4 v9, 0x0

    .line 54
    .local v9, "$i$a$-cache-TestScreenKt$TestScreen$snackbarHostState$1\\4\\215\\0":I
    new-instance v17, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct/range {v17 .. v17}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    .line 215
    .end local v9    # "$i$a$-cache-TestScreenKt$TestScreen$snackbarHostState$1\\4\\215\\0":I
    move-object/from16 v9, v17

    .line 216
    .local v9, "value\\3":Ljava/lang/Object;
    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 217
    move-object v8, v9

    .end local v9    # "value\\3":Ljava/lang/Object;
    goto :goto_7

    .line 218
    :cond_b
    nop

    .line 213
    .end local v8    # "it\\2":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1\\3\\213\\2":I
    :goto_7
    nop

    .line 54
    .end local v12    # "invalid\\2":Z
    .end local v14    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache\\2\\54":I
    check-cast v8, Landroidx/compose/material3/SnackbarHostState;

    .local v8, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 55
    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->getGuardadoExitoso()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v9, v12, v4, v14, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v19

    .line 56
    .local v19, "guardadoExitoso$delegate":Landroidx/compose/runtime/State;
    invoke-static/range {v19 .. v19}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->TestScreen$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result v9

    if-eqz v9, :cond_e

    const v9, 0xf87c479

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "56@2446L189,56@2414L221"

    invoke-static {v4, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 57
    invoke-static/range {v19 .. v19}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->TestScreen$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const v12, 0x8c255b9

    invoke-static {v4, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    .local v12, "invalid\\5":Z
    move-object v13, v4

    .local v13, "$this$cache\\5":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 219
    .local v14, "$i$f$cache\\5\\57":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it\\5":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 220
    .local v16, "$i$a$-let-ComposerKt$cache$1\\6\\219\\5":I
    if-nez v12, :cond_d

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v15, v10, :cond_c

    goto :goto_8

    .line 224
    :cond_c
    move/from16 v17, v6

    goto :goto_9

    .line 221
    :cond_d
    :goto_8
    const/4 v10, 0x0

    .line 57
    .local v10, "$i$a$-cache-TestScreenKt$TestScreen$1\\7\\221\\0":I
    move/from16 v17, v6

    .end local v6    # "$dirty":I
    .local v17, "$dirty":I
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$TestScreen$1$1;

    move/from16 v20, v10

    const/4 v10, 0x0

    .end local v10    # "$i$a$-cache-TestScreenKt$TestScreen$1\\7\\221\\0":I
    .local v20, "$i$a$-cache-TestScreenKt$TestScreen$1\\7\\221\\0":I
    invoke-direct {v6, v8, v0, v5, v10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$TestScreen$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 221
    .end local v20    # "$i$a$-cache-TestScreenKt$TestScreen$1\\7\\221\\0":I
    nop

    .line 222
    .local v6, "value\\6":Ljava/lang/Object;
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 223
    move-object v15, v6

    .line 219
    .end local v6    # "value\\6":Ljava/lang/Object;
    .end local v15    # "it\\5":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1\\6\\219\\5":I
    :goto_9
    nop

    .line 57
    .end local v12    # "invalid\\5":Z
    .end local v13    # "$this$cache\\5":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache\\5\\57":I
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v14, 0x0

    invoke-static {v9, v15, v4, v14}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 56
    goto :goto_a

    .end local v17    # "$dirty":I
    .local v6, "$dirty":I
    :cond_e
    move/from16 v17, v6

    .end local v6    # "$dirty":I
    .restart local v17    # "$dirty":I
    const v6, 0xf634066

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 64
    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v9

    .line 65
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v6, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/SnackbarHostState;)V

    const v12, 0x163f0f76

    const/16 v13, 0x36

    const/4 v14, 0x1

    invoke-static {v12, v14, v6, v4, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 64
    nop

    .line 66
    new-instance v12, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;

    invoke-direct {v12, v11, v7, v5, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;I)V

    const v15, -0x479f3e73

    invoke-static {v15, v14, v12, v4, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lkotlin/jvm/functions/Function3;

    .line 63
    move-object/from16 v16, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    move-object v12, v5

    .end local v5    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .local v12, "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    const/4 v5, 0x0

    move-object v13, v7

    move-object v7, v6

    .end local v7    # "request":Landroidx/compose/runtime/State;
    .local v13, "request":Landroidx/compose/runtime/State;
    const/4 v6, 0x0

    move-object v14, v8

    .end local v8    # "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .local v14, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    const/4 v8, 0x0

    move-object/from16 v18, v11

    move-wide v10, v9

    .end local v11    # "roboto":Landroidx/compose/ui/text/font/FontFamily;
    .local v18, "roboto":Landroidx/compose/ui/text/font/FontFamily;
    const/4 v9, 0x0

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    .end local v12    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .end local v13    # "request":Landroidx/compose/runtime/State;
    .local v20, "request":Landroidx/compose/runtime/State;
    .local v21, "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    const-wide/16 v12, 0x0

    move-object/from16 v22, v14

    .end local v14    # "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .local v22, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    const/4 v14, 0x0

    move/from16 v23, v17

    .end local v17    # "$dirty":I
    .local v23, "$dirty":I
    const v17, 0x30000c00

    move-object/from16 v24, v18

    .end local v18    # "roboto":Landroidx/compose/ui/text/font/FontFamily;
    .local v24, "roboto":Landroidx/compose/ui/text/font/FontFamily;
    const/16 v18, 0x1b7

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 163
    .end local v3    # "colorButton":I
    .end local v19    # "guardadoExitoso$delegate":Landroidx/compose/runtime/State;
    .end local v20    # "request":Landroidx/compose/runtime/State;
    .end local v22    # "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local v24    # "roboto":Landroidx/compose/ui/text/font/FontFamily;
    :cond_f
    move-object/from16 v6, v21

    move/from16 v5, v23

    goto :goto_b

    .line 45
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .end local v23    # "$dirty":I
    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$dirty":I
    .restart local p1    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    :cond_10
    move-object/from16 v16, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 163
    .end local p1    # "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .local v6, "crearPreguntaViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    :goto_b
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_11

    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v6, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;II)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void
.end method

.method private static final TestScreen$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$guardadoExitoso$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 226
    .local v3, "$i$f$getValue\\1\\55":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\55":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 55
    return v0
.end method

.method static final TestScreen$lambda$21(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;ILandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 79
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$request"    # Landroidx/compose/runtime/State;
    .param p2, "$crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .param p3, "$colorButton"    # I
    .param p4, "innerPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-string v3, "innerPadding"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CN(innerPadding)67@2793L3149:TestScreen.kt#6w2cjo"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p6

    .local v3, "$dirty":I
    and-int/lit8 v4, p6, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v3, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v6, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    and-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v4, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen.<anonymous> (TestScreen.kt:67)"

    const v9, -0x479f3e73

    invoke-static {v9, v3, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 69
    :cond_3
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 70
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 71
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 72
    const/16 v10, 0x18

    .local v10, "$this$dp\\1":I
    const/4 v11, 0x0

    .line 227
    .local v11, "$i$f$getDp\\1\\72":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 72
    .end local v10    # "$this$dp\\1":I
    .end local v11    # "$i$f$getDp\\1\\72":I
    invoke-static {v4, v10, v6, v5, v9}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 73
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    .line 74
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v11

    .line 72
    nop

    .line 74
    check-cast v11, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 73
    nop

    .line 68
    const/16 v12, 0x1b0

    .local v12, "$changed\\2":I
    move-object/from16 v13, p5

    .local v4, "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v10, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .local v11, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v13, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 228
    .local v14, "$i$f$Column\\2\\68":I
    const v15, 0x4ff7456f

    const-string v5, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v13, v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 229
    shr-int/lit8 v17, v12, 0x3

    and-int/lit8 v17, v17, 0xe

    shr-int/lit8 v18, v12, 0x3

    and-int/lit8 v18, v18, 0x70

    or-int v15, v17, v18

    invoke-static {v11, v10, v13, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .line 233
    .local v15, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 232
    shl-int/lit8 v17, v12, 0x3

    and-int/lit8 v17, v17, 0x70

    .line 230
    move-object/from16 v18, v15

    .local v18, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v20, v4

    .local v17, "$changed\\3":I
    .local v20, "modifier\\3":Landroidx/compose/ui/Modifier;
    move-object/from16 v21, v13

    .local v21, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 234
    .local v22, "$i$f$Layout\\3\\230":I
    const v6, -0x451e1427

    const-string v8, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v9, v21

    .end local v21    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v9, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v9, v6, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 235
    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->hashCode(J)I

    move-result v21

    .line 236
    .local v21, "compositeKeyHash\\3":I
    move/from16 v25, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 237
    .local v7, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v6, v20

    .end local v20    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v6, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v9, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 239
    .local v1, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    shl-int/lit8 v2, v17, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    .line 238
    nop

    .local v2, "$changed\\4":I
    move-object/from16 v27, v20

    .local v27, "factory\\4":Lkotlin/jvm/functions/Function0;
    move-object/from16 v20, v9

    .local v20, "$composer\\4":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 240
    .local v28, "$i$f$ReusableComposeNode\\4\\238":I
    move/from16 v29, v2

    .end local v2    # "$changed\\4":I
    .local v29, "$changed\\4":I
    const v2, -0x20f7d59c

    move/from16 v30, v3

    .end local v3    # "$dirty":I
    .local v30, "$dirty":I
    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v31, v4

    move-object/from16 v4, v20

    .end local v20    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v31, "modifier\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 241
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 242
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 243
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    move-object/from16 v2, v27

    .end local v27    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 246
    .end local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v27    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v2, v27

    .end local v27    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 248
    :goto_2
    move-object/from16 v27, v2

    .end local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v27    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 249
    .local v32, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\248\\3":I
    sget-object v33, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v34, v4

    .end local v4    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v34, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    move-object/from16 v33, v6

    move-object/from16 v6, v18

    .end local v18    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v6, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v33, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v2, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 250
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v2, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v35, v6

    .end local v6    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v35, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v2, v4, v6}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 252
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 253
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 254
    nop

    .line 248
    .end local v2    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\248\\3":I
    nop

    .line 255
    shr-int/lit8 v2, v29, 0x6

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed\\6":I
    move-object/from16 v4, v34

    .local v4, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 231
    .local v6, "$i$a$-Layout-ColumnKt$Column$1\\6\\255\\2":I
    move-object/from16 v18, v1

    .end local v1    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .local v18, "materialized\\3":Landroidx/compose/ui/Modifier;
    const v1, 0x7cc0ae6e

    move/from16 v32, v2

    .end local v2    # "$changed\\6":I
    .local v32, "$changed\\6":I
    const-string v2, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v36, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v37, v12, 0x6

    and-int/lit8 v37, v37, 0x70

    or-int/lit8 v37, v37, 0x6

    .local v37, "$changed\\7":I
    check-cast v36, Landroidx/compose/foundation/layout/ColumnScope;

    .local v36, "$this$TestScreen_u24lambda_u2421_u24lambda_u2420\\7":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v59, v4

    .local v59, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v63, 0x0

    .line 77
    .local v63, "$i$a$-Column-TestScreenKt$TestScreen$3$1\\7\\231\\0":I
    const v1, 0x79fa22c7

    move-object/from16 v64, v4

    .end local v4    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v64, "$composer\\6":Landroidx/compose/runtime/Composer;
    const-string v4, "C76@3091L167,85@3274L2658:TestScreen.kt#6w2cjo"

    move/from16 v65, v6

    move-object/from16 v6, v59

    .end local v59    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v6, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v65, "$i$a$-Layout-ColumnKt$Column$1\\6\\255\\2":I
    invoke-static {v6, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 79
    const/16 v1, 0x1a

    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v42

    .line 81
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v40

    .line 78
    nop

    .line 81
    nop

    .line 79
    nop

    .line 80
    nop

    .line 77
    const-string v38, "Crear pregunta"

    const/16 v39, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const v60, 0x180d86

    const/16 v61, 0x0

    const v62, 0x1ffb2

    move-object/from16 v46, p0

    .end local v6    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v59    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v38 .. v62}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 87
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 88
    move-object/from16 v38, v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .end local v7    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v38, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v1, v6, v7, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 90
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v6

    .line 91
    const/16 v4, 0x14

    .local v4, "$this$dp\\8":I
    const/16 v39, 0x0

    .line 256
    .local v39, "$i$f$getDp\\8\\91":I
    move-object/from16 v40, v9

    .end local v9    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v40, "$composer\\3":Landroidx/compose/runtime/Composer;
    int-to-float v9, v4

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 91
    .end local v4    # "$this$dp\\8":I
    .end local v39    # "$i$f$getDp\\8\\91":I
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Shape;

    .line 89
    invoke-static {v1, v6, v7, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 93
    const/16 v4, 0x14

    .local v4, "$this$dp\\9":I
    const/4 v6, 0x0

    .line 257
    .local v6, "$i$f$getDp\\9\\93":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 93
    .end local v4    # "$this$dp\\9":I
    .end local v6    # "$i$f$getDp\\9\\93":I
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 86
    move/from16 v4, v25

    .local v4, "$changed\\10":I
    move-object/from16 v6, v59

    .local v1, "modifier\\10":Landroidx/compose/ui/Modifier;
    .local v6, "$composer\\10":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 258
    .local v7, "$i$f$Column\\10\\86":I
    const v9, 0x4ff7456f

    invoke-static {v6, v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 259
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v5

    .line 260
    .local v5, "verticalArrangement\\10":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v9

    .line 263
    .local v9, "horizontalAlignment\\10":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v19, v4, 0x3

    and-int/lit8 v19, v19, 0xe

    shr-int/lit8 v39, v4, 0x3

    and-int/lit8 v39, v39, 0x70

    move-object/from16 v41, v1

    .end local v1    # "modifier\\10":Landroidx/compose/ui/Modifier;
    .local v41, "modifier\\10":Landroidx/compose/ui/Modifier;
    or-int v1, v19, v39

    invoke-static {v5, v9, v6, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .line 267
    .local v1, "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 266
    shl-int/lit8 v19, v4, 0x3

    and-int/lit8 v19, v19, 0x70

    .line 264
    move-object/from16 v39, v41

    .local v19, "$changed\\11":I
    .local v39, "modifier\\11":Landroidx/compose/ui/Modifier;
    move-object/from16 v42, v1

    .local v42, "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v43, v6

    .local v43, "$composer\\11":Landroidx/compose/runtime/Composer;
    const/16 v44, 0x0

    .line 268
    .local v44, "$i$f$Layout\\11\\264":I
    move-object/from16 v45, v1

    move/from16 v26, v4

    move-object/from16 v1, v43

    const v4, -0x451e1427

    .end local v4    # "$changed\\10":I
    .end local v43    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v1, "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v26, "$changed\\10":I
    .local v45, "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1, v4, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 269
    move/from16 v4, v25

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    .line 270
    .local v4, "compositeKeyHash\\11":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 271
    .local v8, "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v43, v4

    move-object/from16 v4, v39

    move-object/from16 v39, v5

    .end local v5    # "verticalArrangement\\10":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v4, "modifier\\11":Landroidx/compose/ui/Modifier;
    .local v39, "verticalArrangement\\10":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v43, "compositeKeyHash\\11":I
    invoke-static {v1, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 273
    .local v5, "materialized\\11":Landroidx/compose/ui/Modifier;
    sget-object v46, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v46 .. v46}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v46

    move-object/from16 v47, v1

    .end local v1    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v47, "$composer\\11":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v1, v19, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 272
    move-object/from16 v48, v46

    .local v48, "factory\\12":Lkotlin/jvm/functions/Function0;
    move-object/from16 v46, v47

    .local v1, "$changed\\12":I
    .local v46, "$composer\\12":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 274
    .local v49, "$i$f$ReusableComposeNode\\12\\272":I
    move/from16 v50, v1

    move-object/from16 v20, v4

    move-object/from16 v1, v46

    const v4, -0x20f7d59c

    .end local v4    # "modifier\\11":Landroidx/compose/ui/Modifier;
    .end local v46    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v1, "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v20, "modifier\\11":Landroidx/compose/ui/Modifier;
    .local v50, "$changed\\12":I
    invoke-static {v1, v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 275
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 276
    :cond_6
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 277
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 278
    move-object/from16 v3, v48

    .end local v48    # "factory\\12":Lkotlin/jvm/functions/Function0;
    .local v3, "factory\\12":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 280
    .end local v3    # "factory\\12":Lkotlin/jvm/functions/Function0;
    .restart local v48    # "factory\\12":Lkotlin/jvm/functions/Function0;
    :cond_7
    move-object/from16 v3, v48

    .end local v48    # "factory\\12":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory\\12":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 282
    :goto_3
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240\\13":Landroidx/compose/runtime/Composer;
    const/16 v46, 0x0

    .line 283
    .local v46, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\13\\282\\11":I
    sget-object v48, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v51, v1

    .end local v1    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v51, "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v48 .. v48}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    move-object/from16 v48, v3

    move-object/from16 v3, v42

    .end local v42    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v3, "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v48    # "factory\\12":Lkotlin/jvm/functions/Function0;
    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 284
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 285
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v42, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v52, v3

    .end local v3    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v52, "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v42 .. v42}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 286
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 287
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 288
    nop

    .line 282
    .end local v4    # "$this$Layout_u24lambda_u240\\13":Landroidx/compose/runtime/Composer;
    .end local v46    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\13\\282\\11":I
    nop

    .line 289
    shr-int/lit8 v1, v50, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\14":I
    move-object/from16 v3, v51

    .local v3, "$composer\\14":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 265
    .local v4, "$i$a$-Layout-ColumnKt$Column$1\\14\\289\\10":I
    move/from16 v42, v1

    const v1, 0x7cc0ae6e

    .end local v1    # "$changed\\14":I
    .local v42, "$changed\\14":I
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v26, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\15":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$TestScreen_u24lambda_u2421_u24lambda_u2420_u24lambda_u2419\\15":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v70, v3

    .local v70, "$composer\\15":Landroidx/compose/runtime/Composer;
    const/16 v46, 0x0

    .line 96
    .local v46, "$i$a$-Column-TestScreenKt$TestScreen$3$1$1\\15\\265\\7":I
    move-object/from16 v53, v1

    .end local v1    # "$this$TestScreen_u24lambda_u2421_u24lambda_u2420_u24lambda_u2419\\15":Landroidx/compose/foundation/layout/ColumnScope;
    .local v53, "$this$TestScreen_u24lambda_u2421_u24lambda_u2420_u24lambda_u2419\\15":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, 0xdc39e81

    move/from16 v54, v2

    .end local v2    # "$changed\\15":I
    .local v54, "$changed\\15":I
    const-string v2, "C98@3718L39,95@3573L239,105@3982L38,102@3830L245,113@4258L41,110@4094L260,120@4536L41,117@4372L260,127@4814L41,124@4650L260,135@5093L41,132@4929L260,148@5555L147,145@5421L88,152@5721L197,140@5208L710:TestScreen.kt#6w2cjo"

    move-object/from16 v55, v3

    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v55, "$composer\\14":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 97
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;->getTexto()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_8

    move-object/from16 v66, v2

    goto :goto_4

    :cond_8
    move-object/from16 v66, v1

    .line 98
    :goto_4
    nop

    .line 99
    const v1, -0x7d05d20

    move-object/from16 v56, v2

    const-string v2, "CC(remember):TestScreen.kt#9igjgp"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\16":Z
    move-object/from16 v57, v3

    .local v57, "$this$cache\\16":Landroidx/compose/runtime/Composer;
    const/16 v58, 0x0

    .line 290
    .local v58, "$i$f$cache\\16\\99":I
    move/from16 v60, v1

    .end local v1    # "invalid\\16":Z
    .local v60, "invalid\\16":Z
    invoke-interface/range {v57 .. v57}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\16":Ljava/lang/Object;
    const/16 v61, 0x0

    .line 291
    .local v61, "$i$a$-let-ComposerKt$cache$1\\17\\290\\16":I
    if-nez v60, :cond_a

    sget-object v62, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v70, v3

    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v62 .. v62}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_9

    goto :goto_5

    .line 295
    :cond_9
    move-object/from16 v3, v57

    goto :goto_6

    .line 291
    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :cond_a
    move-object/from16 v70, v3

    .line 292
    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :goto_5
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$1\\18\\292\\15":I
    move-object/from16 v62, v1

    .end local v1    # "it\\16":Ljava/lang/Object;
    .local v62, "it\\16":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda5;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)V

    .line 292
    .end local v3    # "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$1\\18\\292\\15":I
    nop

    .line 293
    .local v1, "value\\17":Ljava/lang/Object;
    move-object/from16 v3, v57

    .end local v57    # "$this$cache\\16":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache\\16":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    nop

    .line 290
    .end local v1    # "value\\17":Ljava/lang/Object;
    .end local v61    # "$i$a$-let-ComposerKt$cache$1\\17\\290\\16":I
    .end local v62    # "it\\16":Ljava/lang/Object;
    :goto_6
    nop

    .line 99
    .end local v3    # "$this$cache\\16":Landroidx/compose/runtime/Composer;
    .end local v58    # "$i$f$cache\\16\\99":I
    .end local v60    # "invalid\\16":Z
    move-object/from16 v68, v1

    check-cast v68, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v70 .. v70}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 100
    nop

    .line 96
    const-string v67, "Pregunta"

    const/16 v71, 0xc30

    move-object/from16 v69, p0

    invoke-static/range {v66 .. v71}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->CampoPregunta(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V

    .line 104
    move-object/from16 v3, v70

    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;->getTipo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move-object/from16 v66, v56

    goto :goto_7

    :cond_b
    move-object/from16 v66, v1

    .line 105
    :goto_7
    nop

    .line 106
    const v1, -0x7d03c21

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\19":Z
    move-object/from16 v57, v3

    .local v57, "$this$cache\\19":Landroidx/compose/runtime/Composer;
    const/16 v58, 0x0

    .line 296
    .local v58, "$i$f$cache\\19\\106":I
    move/from16 v60, v1

    .end local v1    # "invalid\\19":Z
    .local v60, "invalid\\19":Z
    invoke-interface/range {v57 .. v57}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\19":Ljava/lang/Object;
    const/16 v61, 0x0

    .line 297
    .local v61, "$i$a$-let-ComposerKt$cache$1\\20\\296\\19":I
    if-nez v60, :cond_d

    sget-object v62, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v70, v3

    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v62 .. v62}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_c

    goto :goto_8

    .line 301
    :cond_c
    move-object/from16 v3, v57

    goto :goto_9

    .line 297
    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :cond_d
    move-object/from16 v70, v3

    .line 298
    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :goto_8
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$2\\21\\298\\15":I
    move-object/from16 v62, v1

    .end local v1    # "it\\19":Ljava/lang/Object;
    .local v62, "it\\19":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda6;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)V

    .line 298
    .end local v3    # "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$2\\21\\298\\15":I
    nop

    .line 299
    .local v1, "value\\20":Ljava/lang/Object;
    move-object/from16 v3, v57

    .end local v57    # "$this$cache\\19":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache\\19":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 300
    nop

    .line 296
    .end local v1    # "value\\20":Ljava/lang/Object;
    .end local v61    # "$i$a$-let-ComposerKt$cache$1\\20\\296\\19":I
    .end local v62    # "it\\19":Ljava/lang/Object;
    :goto_9
    nop

    .line 106
    .end local v3    # "$this$cache\\19":Landroidx/compose/runtime/Composer;
    .end local v58    # "$i$f$cache\\19\\106":I
    .end local v60    # "invalid\\19":Z
    move-object/from16 v68, v1

    check-cast v68, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v70 .. v70}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 107
    nop

    .line 103
    const-string v67, "Tipo de pregunta"

    const/16 v71, 0xc30

    move-object/from16 v69, p0

    invoke-static/range {v66 .. v71}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->CampoPregunta(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V

    .line 112
    move-object/from16 v3, v70

    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;->getOpciones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    move/from16 v57, v4

    const/4 v4, 0x0

    .end local v4    # "$i$a$-Layout-ColumnKt$Column$1\\14\\289\\10":I
    .local v57, "$i$a$-Layout-ColumnKt$Column$1\\14\\289\\10":I
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v66, v1

    goto :goto_b

    .end local v57    # "$i$a$-Layout-ColumnKt$Column$1\\14\\289\\10":I
    .restart local v4    # "$i$a$-Layout-ColumnKt$Column$1\\14\\289\\10":I
    :cond_f
    move/from16 v57, v4

    .end local v4    # "$i$a$-Layout-ColumnKt$Column$1\\14\\289\\10":I
    .restart local v57    # "$i$a$-Layout-ColumnKt$Column$1\\14\\289\\10":I
    :goto_a
    move-object/from16 v66, v56

    .line 113
    :goto_b
    nop

    .line 114
    const v1, -0x7d0199e

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\22":Z
    move-object v4, v3

    .local v4, "$this$cache\\22":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 302
    .local v25, "$i$f$cache\\22\\114":I
    move/from16 v58, v1

    .end local v1    # "invalid\\22":Z
    .local v58, "invalid\\22":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\22":Ljava/lang/Object;
    const/16 v60, 0x0

    .line 303
    .local v60, "$i$a$-let-ComposerKt$cache$1\\23\\302\\22":I
    if-nez v58, :cond_11

    sget-object v61, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v70, v3

    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v61 .. v61}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_10

    goto :goto_c

    .line 307
    :cond_10
    goto :goto_d

    .line 303
    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :cond_11
    move-object/from16 v70, v3

    .line 304
    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :goto_c
    const/4 v3, 0x0

    .line 114
    .local v3, "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$3\\24\\304\\15":I
    move-object/from16 v61, v1

    .end local v1    # "it\\22":Ljava/lang/Object;
    .local v61, "it\\22":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda7;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)V

    .line 304
    .end local v3    # "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$3\\24\\304\\15":I
    nop

    .line 305
    .local v1, "value\\23":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 306
    nop

    .line 302
    .end local v1    # "value\\23":Ljava/lang/Object;
    .end local v60    # "$i$a$-let-ComposerKt$cache$1\\23\\302\\22":I
    .end local v61    # "it\\22":Ljava/lang/Object;
    :goto_d
    nop

    .line 114
    .end local v4    # "$this$cache\\22":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$f$cache\\22\\114":I
    .end local v58    # "invalid\\22":Z
    move-object/from16 v68, v1

    check-cast v68, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v70 .. v70}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 115
    nop

    .line 111
    const-string v67, "Opci\u00f3n 1"

    const/16 v71, 0xc30

    move-object/from16 v69, p0

    invoke-static/range {v66 .. v71}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->CampoPregunta(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V

    .line 119
    move-object/from16 v3, v70

    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;->getOpciones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_12

    goto :goto_e

    :cond_12
    move-object/from16 v66, v1

    goto :goto_f

    :cond_13
    :goto_e
    move-object/from16 v66, v56

    .line 120
    :goto_f
    nop

    .line 121
    const v1, -0x7cff6de

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\25":Z
    move-object v4, v3

    .local v4, "$this$cache\\25":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 308
    .local v25, "$i$f$cache\\25\\121":I
    move/from16 v58, v1

    .end local v1    # "invalid\\25":Z
    .local v58, "invalid\\25":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\25":Ljava/lang/Object;
    const/16 v60, 0x0

    .line 309
    .local v60, "$i$a$-let-ComposerKt$cache$1\\26\\308\\25":I
    if-nez v58, :cond_15

    sget-object v61, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v70, v3

    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v61 .. v61}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_14

    goto :goto_10

    .line 313
    :cond_14
    goto :goto_11

    .line 309
    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :cond_15
    move-object/from16 v70, v3

    .line 310
    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :goto_10
    const/4 v3, 0x0

    .line 121
    .local v3, "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$4\\27\\310\\15":I
    move-object/from16 v61, v1

    .end local v1    # "it\\25":Ljava/lang/Object;
    .local v61, "it\\25":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda8;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)V

    .line 310
    .end local v3    # "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$4\\27\\310\\15":I
    nop

    .line 311
    .local v1, "value\\26":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 312
    nop

    .line 308
    .end local v1    # "value\\26":Ljava/lang/Object;
    .end local v60    # "$i$a$-let-ComposerKt$cache$1\\26\\308\\25":I
    .end local v61    # "it\\25":Ljava/lang/Object;
    :goto_11
    nop

    .line 121
    .end local v4    # "$this$cache\\25":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$f$cache\\25\\121":I
    .end local v58    # "invalid\\25":Z
    move-object/from16 v68, v1

    check-cast v68, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v70 .. v70}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 122
    nop

    .line 118
    const-string v67, "Opci\u00f3n 2"

    const/16 v71, 0xc30

    move-object/from16 v69, p0

    invoke-static/range {v66 .. v71}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->CampoPregunta(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V

    .line 126
    move-object/from16 v3, v70

    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;->getOpciones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_17

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_16

    goto :goto_12

    :cond_16
    move-object/from16 v66, v1

    goto :goto_13

    :cond_17
    :goto_12
    move-object/from16 v66, v56

    .line 127
    :goto_13
    nop

    .line 128
    const v1, -0x7cfd41e

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\28":Z
    move-object v4, v3

    .local v4, "$this$cache\\28":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 314
    .local v16, "$i$f$cache\\28\\128":I
    move/from16 v25, v1

    .end local v1    # "invalid\\28":Z
    .local v25, "invalid\\28":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\28":Ljava/lang/Object;
    const/16 v58, 0x0

    .line 315
    .local v58, "$i$a$-let-ComposerKt$cache$1\\29\\314\\28":I
    if-nez v25, :cond_19

    sget-object v60, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v70, v3

    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v60 .. v60}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_18

    goto :goto_14

    .line 319
    :cond_18
    goto :goto_15

    .line 315
    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :cond_19
    move-object/from16 v70, v3

    .line 316
    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :goto_14
    const/4 v3, 0x0

    .line 128
    .local v3, "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$5\\30\\316\\15":I
    move-object/from16 v60, v1

    .end local v1    # "it\\28":Ljava/lang/Object;
    .local v60, "it\\28":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda9;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)V

    .line 316
    .end local v3    # "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$5\\30\\316\\15":I
    nop

    .line 317
    .local v1, "value\\29":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 318
    nop

    .line 314
    .end local v1    # "value\\29":Ljava/lang/Object;
    .end local v58    # "$i$a$-let-ComposerKt$cache$1\\29\\314\\28":I
    .end local v60    # "it\\28":Ljava/lang/Object;
    :goto_15
    nop

    .line 128
    .end local v4    # "$this$cache\\28":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache\\28\\128":I
    .end local v25    # "invalid\\28":Z
    move-object/from16 v68, v1

    check-cast v68, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v70 .. v70}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 129
    nop

    .line 125
    const-string v67, "Opci\u00f3n 3"

    const/16 v71, 0xc30

    move-object/from16 v69, p0

    invoke-static/range {v66 .. v71}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->CampoPregunta(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V

    .line 134
    move-object/from16 v3, v70

    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;->getOpciones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/4 v4, 0x3

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1a

    goto :goto_16

    :cond_1a
    move-object/from16 v66, v1

    goto :goto_17

    :cond_1b
    :goto_16
    move-object/from16 v66, v56

    .line 135
    :goto_17
    nop

    .line 136
    const v1, -0x7cfb13e

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\31":Z
    move-object v4, v3

    .local v4, "$this$cache\\31":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 320
    .local v16, "$i$f$cache\\31\\136":I
    move/from16 v25, v1

    .end local v1    # "invalid\\31":Z
    .local v25, "invalid\\31":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\31":Ljava/lang/Object;
    const/16 v56, 0x0

    .line 321
    .local v56, "$i$a$-let-ComposerKt$cache$1\\32\\320\\31":I
    if-nez v25, :cond_1d

    sget-object v58, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v70, v3

    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v58 .. v58}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_1c

    goto :goto_18

    .line 325
    :cond_1c
    goto :goto_19

    .line 321
    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :cond_1d
    move-object/from16 v70, v3

    .line 322
    .end local v3    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    :goto_18
    const/4 v3, 0x0

    .line 136
    .local v3, "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$6\\33\\322\\15":I
    move-object/from16 v58, v1

    .end local v1    # "it\\31":Ljava/lang/Object;
    .local v58, "it\\31":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda10;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)V

    .line 322
    .end local v3    # "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$6\\33\\322\\15":I
    nop

    .line 323
    .local v1, "value\\32":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 324
    nop

    .line 320
    .end local v1    # "value\\32":Ljava/lang/Object;
    .end local v56    # "$i$a$-let-ComposerKt$cache$1\\32\\320\\31":I
    .end local v58    # "it\\31":Ljava/lang/Object;
    :goto_19
    nop

    .line 136
    .end local v4    # "$this$cache\\31":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache\\31\\136":I
    .end local v25    # "invalid\\31":Z
    move-object/from16 v68, v1

    check-cast v68, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v70 .. v70}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 137
    nop

    .line 133
    const-string v67, "Opci\u00f3n 4"

    const/16 v71, 0xc30

    move-object/from16 v69, p0

    invoke-static/range {v66 .. v71}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->CampoPregunta(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V

    .line 142
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 143
    move-object/from16 v16, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .end local v5    # "materialized\\11":Landroidx/compose/ui/Modifier;
    .local v16, "materialized\\11":Landroidx/compose/ui/Modifier;
    invoke-static {v1, v3, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 144
    const/16 v3, 0x34

    .local v3, "$this$dp\\34":I
    const/4 v4, 0x0

    .line 326
    .local v4, "$i$f$getDp\\34\\144":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 144
    .end local v3    # "$this$dp\\34":I
    .end local v4    # "$i$f$getDp\\34\\144":I
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 145
    const/16 v3, 0x28

    .local v3, "$this$dp\\35":I
    const/4 v4, 0x0

    .line 327
    .local v4, "$i$f$getDp\\35\\145":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 145
    .end local v3    # "$this$dp\\35":I
    .end local v4    # "$i$f$getDp\\35\\145":I
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    .line 149
    sget-object v66, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 150
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v67

    .line 151
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    sget v23, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v23, v23, 0xc

    or-int/lit8 v76, v23, 0x30

    .line 149
    const-wide/16 v71, 0x0

    const-wide/16 v73, 0x0

    const/16 v77, 0xc

    move-object/from16 v75, v70

    move-wide/from16 v69, v4

    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v75, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v66 .. v77}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v70

    .line 146
    move-object/from16 v4, v75

    .end local v75    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\15":Landroidx/compose/runtime/Composer;
    const v5, -0x7cf880f

    invoke-static {v4, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid\\36":Z
    move-object v5, v4

    .local v5, "$this$cache\\36":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 328
    .local v23, "$i$f$cache\\36\\146":I
    move-object/from16 v67, v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\36":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 329
    .local v24, "$i$a$-let-ComposerKt$cache$1\\37\\328\\36":I
    if-nez v2, :cond_1f

    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v56, v2

    .end local v2    # "invalid\\36":Z
    .local v56, "invalid\\36":Z
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1e

    goto :goto_1a

    .line 333
    :cond_1e
    goto :goto_1b

    .line 329
    .end local v56    # "invalid\\36":Z
    .restart local v2    # "invalid\\36":Z
    :cond_1f
    move/from16 v56, v2

    .line 330
    .end local v2    # "invalid\\36":Z
    .restart local v56    # "invalid\\36":Z
    :goto_1a
    const/4 v2, 0x0

    .line 146
    .local v2, "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$7\\38\\330\\15":I
    move-object/from16 v25, v1

    .end local v1    # "it\\36":Ljava/lang/Object;
    .local v25, "it\\36":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda11;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)V

    .line 330
    .end local v2    # "$i$a$-cache-TestScreenKt$TestScreen$3$1$1$7\\38\\330\\15":I
    nop

    .line 331
    .local v1, "value\\37":Ljava/lang/Object;
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 332
    nop

    .line 328
    .end local v1    # "value\\37":Ljava/lang/Object;
    .end local v24    # "$i$a$-let-ComposerKt$cache$1\\37\\328\\36":I
    .end local v25    # "it\\36":Ljava/lang/Object;
    :goto_1b
    nop

    .line 146
    .end local v5    # "$this$cache\\36":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$f$cache\\36\\146":I
    .end local v56    # "invalid\\36":Z
    move-object/from16 v66, v1

    check-cast v66, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 144
    nop

    .line 145
    move-object/from16 v69, v3

    check-cast v69, Landroidx/compose/ui/graphics/Shape;

    .line 149
    nop

    .line 153
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda12;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v3, 0x36

    const v5, 0x7ad63c69

    const/4 v0, 0x1

    invoke-static {v5, v0, v1, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v75, v0

    check-cast v75, Lkotlin/jvm/functions/Function3;

    .line 141
    const/16 v68, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const v77, 0x30000030

    const/16 v78, 0x1e4

    move-object/from16 v76, v4

    .end local v4    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v76, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-static/range {v66 .. v78}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 96
    move-object/from16 v70, v76

    .end local v76    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-static/range {v70 .. v70}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 160
    nop

    .line 265
    .end local v46    # "$i$a$-Column-TestScreenKt$TestScreen$3$1$1\\15\\265\\7":I
    .end local v53    # "$this$TestScreen_u24lambda_u2421_u24lambda_u2420_u24lambda_u2419\\15":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v54    # "$changed\\15":I
    .end local v70    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-static/range {v55 .. v55}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 289
    .end local v42    # "$changed\\14":I
    .end local v55    # "$composer\\14":Landroidx/compose/runtime/Composer;
    .end local v57    # "$i$a$-Layout-ColumnKt$Column$1\\14\\289\\10":I
    nop

    .line 334
    invoke-interface/range {v51 .. v51}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 274
    invoke-static/range {v51 .. v51}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 335
    nop

    .line 268
    .end local v48    # "factory\\12":Lkotlin/jvm/functions/Function0;
    .end local v49    # "$i$f$ReusableComposeNode\\12\\272":I
    .end local v50    # "$changed\\12":I
    .end local v51    # "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-static/range {v47 .. v47}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 336
    nop

    .line 258
    .end local v8    # "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v16    # "materialized\\11":Landroidx/compose/ui/Modifier;
    .end local v19    # "$changed\\11":I
    .end local v20    # "modifier\\11":Landroidx/compose/ui/Modifier;
    .end local v43    # "compositeKeyHash\\11":I
    .end local v44    # "$i$f$Layout\\11\\264":I
    .end local v47    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v52    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 337
    nop

    .line 77
    .end local v6    # "$composer\\10":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$Column\\10\\86":I
    .end local v9    # "horizontalAlignment\\10":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v26    # "$changed\\10":I
    .end local v39    # "verticalArrangement\\10":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v41    # "modifier\\10":Landroidx/compose/ui/Modifier;
    .end local v45    # "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v59 .. v59}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 161
    nop

    .line 231
    .end local v36    # "$this$TestScreen_u24lambda_u2421_u24lambda_u2420\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v37    # "$changed\\7":I
    .end local v59    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v63    # "$i$a$-Column-TestScreenKt$TestScreen$3$1\\7\\231\\0":I
    invoke-static/range {v64 .. v64}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 255
    .end local v32    # "$changed\\6":I
    .end local v64    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v65    # "$i$a$-Layout-ColumnKt$Column$1\\6\\255\\2":I
    nop

    .line 338
    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 240
    invoke-static/range {v34 .. v34}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 339
    nop

    .line 234
    .end local v27    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .end local v28    # "$i$f$ReusableComposeNode\\4\\238":I
    .end local v29    # "$changed\\4":I
    .end local v34    # "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static/range {v40 .. v40}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 340
    nop

    .line 228
    .end local v17    # "$changed\\3":I
    .end local v18    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .end local v21    # "compositeKeyHash\\3":I
    .end local v22    # "$i$f$Layout\\3\\230":I
    .end local v33    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v35    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v38    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v40    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 341
    nop

    .end local v10    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v11    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v12    # "$changed\\2":I
    .end local v13    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$Column\\2\\68":I
    .end local v15    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v31    # "modifier\\2":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1c

    .line 66
    .end local v30    # "$dirty":I
    .local v3, "$dirty":I
    :cond_20
    move-object/from16 v2, p0

    move/from16 v30, v3

    .end local v3    # "$dirty":I
    .restart local v30    # "$dirty":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 162
    :cond_21
    :goto_1c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$21$lambda$20$lambda$19$lambda$11$lambda$10(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->setOpcion2(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$21$lambda$20$lambda$19$lambda$13$lambda$12(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->setOpcion3(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$21$lambda$20$lambda$19$lambda$15$lambda$14(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->setOpcion4(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$21$lambda$20$lambda$19$lambda$17$lambda$16(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)Lkotlin/Unit;
    .locals 1
    .param p0, "$crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    .line 147
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->guardarPregunta()V

    .line 148
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$21$lambda$20$lambda$19$lambda$18(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
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

    const-string v2, "C153@5743L157:TestScreen.kt#6w2cjo"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v2, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (TestScreen.kt:153)"

    const v6, 0x7ad63c69

    invoke-static {v6, v1, v2, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 155
    :cond_1
    nop

    .line 156
    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    .line 157
    nop

    .line 154
    const-string v0, "Guardar pregunta"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

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

    const v22, 0x180c06

    const/16 v23, 0x0

    const v24, 0x1ffb6

    move-object/from16 v8, p0

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 153
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 159
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$21$lambda$20$lambda$19$lambda$5$lambda$4(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->setTexto(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$21$lambda$20$lambda$19$lambda$7$lambda$6(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->setTipo(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$21$lambda$20$lambda$19$lambda$9$lambda$8(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$crearPreguntaViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->setOpcion1(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$22(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p4, v0, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->TestScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final TestScreen$lambda$3(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$snackbarHostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C64@2726L31:TestScreen.kt#6w2cjo"

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen.<anonymous> (TestScreen.kt:64)"

    const v2, 0x163f0f76

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 65
    :cond_1
    const/4 v7, 0x6

    const/4 v8, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v6, p1

    .end local p0    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/SnackbarHostKt;->SnackbarHost(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .end local v3    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v3, p0

    move-object v6, p1

    .end local p0    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
