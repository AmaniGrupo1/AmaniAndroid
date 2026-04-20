.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;
.super Ljava/lang/Object;
.source "ListadoPsicologosScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListadoPsicologosScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListadoPsicologosScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,217:1\n122#2:218\n122#2:251\n122#2:252\n122#2:300\n87#3:219\n84#3,9:220\n94#3:316\n81#4,6:229\n88#4,6:244\n81#4,6:262\n88#4,6:277\n96#4:298\n96#4:315\n391#5,9:235\n400#5:250\n391#5,9:268\n400#5:283\n401#5,2:296\n401#5,2:313\n99#6:253\n97#6,8:254\n106#6:299\n1128#7,6:284\n1128#7,6:290\n1128#7,6:301\n1128#7,6:307\n85#8:317\n85#8:318\n*S KotlinDebug\n*F\n+ 1 ListadoPsicologosScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1\n*L\n103#1:218\n125#1:251\n129#1:252\n154#1:300\n103#1:219\n103#1:220,9\n103#1:316\n103#1:229,6\n103#1:244,6\n127#1:262,6\n127#1:277,6\n127#1:298\n103#1:315\n103#1:235,9\n103#1:250\n127#1:268,9\n127#1:283\n127#1:296,2\n103#1:313,2\n127#1:253\n127#1:254,8\n127#1:299\n132#1:284,6\n143#1:290,6\n160#1:301,6\n172#1:307,6\n156#1:317\n157#1:318\n*E\n"
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
.field final synthetic $deleteColor:J

.field final synthetic $loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field final synthetic $mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pacienteId:J

.field final synthetic $primaryColor:J

.field final synthetic $psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

.field final synthetic $psicologoSeleccionado$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $roboto:Landroidx/compose/ui/text/font/FontFamily;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;Landroidx/compose/ui/text/font/FontFamily;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLkotlinx/coroutines/CoroutineScope;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
            "J",
            "Lkotlinx/coroutines/CoroutineScope;",
            "JJ",
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material3/SnackbarHostState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$roboto:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput-wide p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$primaryColor:J

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-wide p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$pacienteId:J

    iput-wide p9, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$deleteColor:J

    iput-object p11, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$psicologoSeleccionado$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p13, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$7$lambda$3(Landroidx/compose/runtime/State;)Z
    .locals 1
    .param p0, "$asignarSuccess$delegate"    # Landroidx/compose/runtime/State;

    .line 102
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->invoke$lambda$7$lambda$3(Landroidx/compose/runtime/State;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$invoke$lambda$7$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 1
    .param p0, "$asignarError$delegate"    # Landroidx/compose/runtime/State;

    .line 102
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->invoke$lambda$7$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$7$lambda$3(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$asignarSuccess$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 317
    .local v3, "$i$f$getValue\\1\\156":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\156":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 156
    return v0
.end method

.method private static final invoke$lambda$7$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$asignarError$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 318
    .local v3, "$i$f$getValue\\1\\157":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\157":I
    check-cast v0, Ljava/lang/String;

    .line 157
    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 102
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 95
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C102@4354L4003:ListadoPsicologosScreen.kt#6w2cjo"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0x11

    const/16 v5, 0x10

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v3, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:102)"

    const v8, 0x77ac2d4f

    invoke-static {v8, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 103
    :cond_1
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x10

    .local v5, "$this$dp\\1":I
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$f$getDp\\1\\103":I
    int-to-float v9, v5

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 103
    .end local v5    # "$this$dp\\1":I
    .end local v8    # "$i$f$getDp\\1\\103":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .local v3, "modifier\\2":Landroidx/compose/ui/Modifier;
    iget-object v13, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$roboto:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v10, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-wide v8, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$primaryColor:J

    move-wide v11, v8

    iget-object v9, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-wide/from16 v39, v11

    iget-wide v11, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$pacienteId:J

    iget-wide v14, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$deleteColor:J

    iget-object v8, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$psicologoSeleccionado$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;

    move-wide/from16 v16, v14

    iget-object v15, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    const/4 v14, 0x6

    .local v14, "$changed\\2":I
    move/from16 v41, v14

    .end local v14    # "$changed\\2":I
    .local v41, "$changed\\2":I
    move-object/from16 v14, p2

    .local v14, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/16 v42, 0x0

    .line 219
    .local v42, "$i$f$Column\\2\\103":I
    const v6, 0x4ff7456f

    const-string v0, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v14, v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 220
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    .line 221
    .local v0, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v6

    .line 224
    .local v6, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v18, v41, 0x3

    and-int/lit8 v18, v18, 0xe

    shr-int/lit8 v19, v41, 0x3

    and-int/lit8 v19, v19, 0x70

    or-int v1, v18, v19

    invoke-static {v0, v6, v14, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .line 228
    .local v1, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 227
    shl-int/lit8 v18, v41, 0x3

    and-int/lit8 v18, v18, 0x70

    .line 225
    move-object/from16 v43, v1

    .local v43, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    move/from16 v44, v18

    .local v44, "$changed\\3":I
    move-object/from16 v45, v3

    .local v45, "modifier\\3":Landroidx/compose/ui/Modifier;
    move-object/from16 v46, v14

    .local v46, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/16 v47, 0x0

    .line 229
    .local v47, "$i$f$Layout\\3\\225":I
    move-object/from16 v18, v15

    const v15, -0x451e1427

    move-object/from16 v48, v0

    .end local v0    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v48, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const-string v0, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v49, v1

    move-object/from16 v1, v46

    .end local v46    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v1, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v49, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1, v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 230
    const/4 v15, 0x0

    invoke-static {v1, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->hashCode(J)I

    move-result v46

    .line 231
    .local v46, "compositeKeyHash\\3":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 232
    .local v15, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v2, v45

    .end local v3    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v2, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v45, "modifier\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 234
    .local v3, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    move-object/from16 v50, v1

    .end local v1    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v50, "$composer\\3":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v1, v44, 0x6

    and-int/lit16 v1, v1, 0x380

    move/from16 v21, v1

    const/4 v1, 0x6

    or-int/lit8 v21, v21, 0x6

    .line 233
    move-object/from16 v51, v50

    .local v51, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object/from16 v52, v20

    .local v52, "factory\\4":Lkotlin/jvm/functions/Function0;
    move/from16 v53, v21

    .local v53, "$changed\\4":I
    const/16 v54, 0x0

    .line 235
    .local v54, "$i$f$ReusableComposeNode\\4\\233":I
    move/from16 v55, v1

    const v1, -0x20f7d59c

    move-object/from16 v56, v2

    .end local v2    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v56, "modifier\\3":Landroidx/compose/ui/Modifier;
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v4, v51

    .end local v51    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 236
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 237
    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 238
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    move-object/from16 v1, v52

    .end local v52    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v1, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 241
    .end local v1    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v52    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v1, v52

    .end local v52    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 243
    :goto_1
    move-object/from16 v52, v1

    .end local v1    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v52    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 244
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\243\\3":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v57, v4

    .end local v4    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v57, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    move-object/from16 v22, v5

    move-object/from16 v5, v43

    .end local v43    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v5, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v15, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 246
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .end local v5    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v43    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 247
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 248
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    nop

    .line 243
    .end local v1    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\243\\3":I
    nop

    .line 250
    shr-int/lit8 v1, v53, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\6":I
    move-object/from16 v4, v57

    .local v4, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 226
    .local v5, "$i$a$-Layout-ColumnKt$Column$1\\6\\250\\2":I
    move/from16 v58, v1

    .end local v1    # "$changed\\6":I
    .local v58, "$changed\\6":I
    const v1, 0x7cc0ae6e

    move-object/from16 v59, v3

    .end local v3    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .local v59, "materialized\\3":Landroidx/compose/ui/Modifier;
    const-string v3, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v3, v41, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed\\7":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$invoke_u24lambda_u247\\7":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v35, v4

    .local v35, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v60, 0x0

    .line 104
    .local v60, "$i$a$-Column-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1\\7\\226\\0":I
    move-object/from16 v61, v1

    .end local v1    # "$this$invoke_u24lambda_u247\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .local v61, "$this$invoke_u24lambda_u247\\7":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, 0x19879c42

    move/from16 v62, v3

    .end local v3    # "$changed\\7":I
    .local v62, "$changed\\7":I
    const-string v3, "C103@4423L209,108@4657L199,113@4881L207,118@5113L201,124@5340L41,126@5407L1397,153@6830L40,155@6956L16,156@7053L16,164@7413L43,159@7141L218,166@7547L124,158@7095L576,171@7796L539,171@7751L584:ListadoPsicologosScreen.kt#6w2cjo"

    move-object/from16 v63, v4

    .end local v35    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v63, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 105
    invoke-virtual {v13}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;->getNombre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;->getApellido()Ljava/lang/String;

    move-result-object v3

    .end local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v35    # "$composer\\7":Landroidx/compose/runtime/Composer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v64, v5

    .end local v5    # "$i$a$-Layout-ColumnKt$Column$1\\6\\250\\2":I
    .local v64, "$i$a$-Layout-ColumnKt$Column$1\\6\\250\\2":I
    const-string v5, "Nombre: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    .line 107
    nop

    .line 104
    move-object v5, v15

    .end local v15    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v5, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    const/4 v15, 0x0

    move-object/from16 v20, v18

    const v21, -0x451e1427

    const-wide/16 v18, 0x0

    move-object/from16 v23, v20

    const/16 v20, 0x0

    move/from16 v24, v21

    const/16 v21, 0x0

    move-object/from16 v25, v23

    move/from16 v26, v24

    const-wide/16 v23, 0x0

    move-object/from16 v27, v25

    const/16 v25, 0x0

    move/from16 v28, v26

    const/16 v26, 0x0

    move-object/from16 v29, v27

    move/from16 v30, v28

    const-wide/16 v27, 0x0

    move-object/from16 v31, v29

    const/16 v29, 0x0

    move/from16 v32, v30

    const/16 v30, 0x0

    move-object/from16 v33, v31

    const/16 v31, 0x0

    move/from16 v34, v32

    const/16 v32, 0x0

    move-object/from16 v36, v33

    const/16 v33, 0x0

    move/from16 v37, v34

    const/16 v34, 0x0

    move-object/from16 v38, v36

    const v36, 0x180180

    move/from16 v65, v37

    const/16 v37, 0x0

    move-object/from16 v66, v38

    const v38, 0x1ffba

    move-object/from16 v93, v14

    move-object v14, v1

    move/from16 v1, v65

    move-object/from16 v65, v93

    move-wide/from16 v93, v16

    move-wide/from16 v16, v3

    move-wide/from16 v3, v93

    .end local v14    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .local v65, "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static/range {v14 .. v38}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 110
    invoke-virtual {v13}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;->getEspecialidad()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Especialidad: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 111
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v16

    .line 112
    nop

    .line 109
    const/4 v15, 0x0

    invoke-static/range {v14 .. v38}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 115
    invoke-virtual {v13}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    const-string v68, "-"

    if-nez v1, :cond_4

    move-object/from16 v1, v68

    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Descripci\u00f3n: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 116
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getDarkGray-0d7_KjU()J

    move-result-wide v16

    .line 117
    nop

    .line 114
    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v36, 0x180180

    const/16 v37, 0x0

    const v38, 0x1ffba

    invoke-static/range {v14 .. v38}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 120
    invoke-virtual {v13}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;->getLicencia()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move-object/from16 v1, v68

    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Licencia: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 121
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getDarkGray-0d7_KjU()J

    move-result-wide v16

    .line 122
    nop

    .line 119
    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v36, 0x180180

    const/16 v37, 0x0

    const v38, 0x1ffba

    invoke-static/range {v14 .. v38}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 125
    move-object/from16 v1, v22

    move-object/from16 v14, v35

    .end local v35    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v14, "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v15, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v15, Landroidx/compose/ui/Modifier;

    move-wide/from16 v16, v3

    const/16 v3, 0xc

    .local v3, "$this$dp\\8":I
    const/4 v4, 0x0

    .line 251
    .local v4, "$i$f$getDp\\8\\125":I
    move/from16 v18, v4

    .end local v4    # "$i$f$getDp\\8\\125":I
    .local v18, "$i$f$getDp\\8\\125":I
    int-to-float v4, v3

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 125
    .end local v3    # "$this$dp\\8":I
    .end local v18    # "$i$f$getDp\\8\\125":I
    invoke-static {v15, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move/from16 v4, v55

    invoke-static {v3, v14, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 128
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x0

    const/4 v15, 0x0

    move-object/from16 v36, v5

    const/4 v5, 0x1

    .end local v5    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v36, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v3, v4, v5, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 129
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v15, 0x8

    .local v15, "$this$dp\\9":I
    const/16 v19, 0x0

    .line 252
    .local v19, "$i$f$getDp\\9\\129":I
    int-to-float v4, v15

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 129
    .end local v15    # "$this$dp\\9":I
    .end local v19    # "$i$f$getDp\\9\\129":I
    invoke-virtual {v5, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 127
    const/16 v5, 0x36

    move/from16 v27, v5

    .local v27, "$changed\\10":I
    move-object v15, v14

    .local v3, "modifier\\10":Landroidx/compose/ui/Modifier;
    .local v4, "horizontalArrangement\\10":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v15, "$composer\\10":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 253
    .local v28, "$i$f$Row\\10\\127":I
    const v5, 0x3255a44b

    move-object/from16 v30, v3

    .end local v3    # "modifier\\10":Landroidx/compose/ui/Modifier;
    .local v30, "modifier\\10":Landroidx/compose/ui/Modifier;
    const-string v3, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v15, v5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 254
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    .line 257
    .local v3, "verticalAlignment\\10":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v5, v27, 0x3

    and-int/lit8 v5, v5, 0xe

    shr-int/lit8 v19, v27, 0x3

    and-int/lit8 v19, v19, 0x70

    or-int v5, v5, v19

    invoke-static {v4, v3, v15, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .line 261
    .local v5, "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 260
    shl-int/lit8 v19, v27, 0x3

    and-int/lit8 v19, v19, 0x70

    .line 258
    move-object/from16 v31, v15

    .local v31, "$composer\\11":Landroidx/compose/runtime/Composer;
    move-object/from16 v32, v5

    .local v32, "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    move/from16 v33, v19

    .local v33, "$changed\\11":I
    move-object/from16 v34, v30

    .local v34, "modifier\\11":Landroidx/compose/ui/Modifier;
    const/16 v35, 0x0

    .line 262
    .local v35, "$i$f$Layout\\11\\258":I
    move-object/from16 v37, v3

    move-object/from16 v3, v31

    move-object/from16 v31, v4

    const v4, -0x451e1427

    .end local v4    # "horizontalArrangement\\10":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v3, "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v31, "horizontalArrangement\\10":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v37, "verticalAlignment\\10":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {v3, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 264
    .local v0, "compositeKeyHash\\11":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 265
    .local v4, "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v38, v0

    move-object/from16 v0, v34

    move-object/from16 v34, v5

    .end local v5    # "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v0, "modifier\\11":Landroidx/compose/ui/Modifier;
    .local v34, "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v38, "compositeKeyHash\\11":I
    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 267
    .local v5, "materialized\\11":Landroidx/compose/ui/Modifier;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    move-object/from16 v67, v0

    .end local v0    # "modifier\\11":Landroidx/compose/ui/Modifier;
    .local v67, "modifier\\11":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v33, 0x6

    and-int/lit16 v0, v0, 0x380

    const/16 v55, 0x6

    or-int/lit8 v0, v0, 0x6

    .line 266
    move-object/from16 v68, v3

    .local v0, "$changed\\12":I
    .local v68, "$composer\\12":Landroidx/compose/runtime/Composer;
    move-object/from16 v69, v19

    .local v69, "factory\\12":Lkotlin/jvm/functions/Function0;
    const/16 v70, 0x0

    .line 268
    .local v70, "$i$f$ReusableComposeNode\\12\\266":I
    move/from16 v71, v0

    move-object/from16 v51, v3

    move-object/from16 v0, v68

    const v3, -0x20f7d59c

    .end local v3    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v68    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v51, "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v71, "$changed\\12":I
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 269
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 270
    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 271
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 272
    move-object/from16 v2, v69

    .end local v69    # "factory\\12":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\12":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 274
    .end local v2    # "factory\\12":Lkotlin/jvm/functions/Function0;
    .restart local v69    # "factory\\12":Lkotlin/jvm/functions/Function0;
    :cond_7
    move-object/from16 v2, v69

    .end local v69    # "factory\\12":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\12":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 276
    :goto_2
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\13":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 277
    .local v19, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\13\\276\\11":I
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v68, v0

    .end local v0    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .restart local v68    # "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    move-object/from16 v69, v2

    move-object/from16 v2, v32

    .end local v32    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v2, "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v69    # "factory\\12":Lkotlin/jvm/functions/Function0;
    invoke-static {v3, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 278
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 279
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .end local v2    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v32    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v0, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 281
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v3, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 282
    nop

    .line 276
    .end local v3    # "$this$Layout_u24lambda_u240\\13":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\13\\276\\11":I
    nop

    .line 283
    shr-int/lit8 v0, v71, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed\\14":I
    move-object/from16 v2, v68

    .local v2, "$composer\\14":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 259
    .local v3, "$i$a$-Layout-RowKt$Row$1\\14\\283\\10":I
    move/from16 v72, v0

    .end local v0    # "$changed\\14":I
    .local v72, "$changed\\14":I
    const v0, 0x56ccd6f5

    move/from16 v73, v3

    .end local v3    # "$i$a$-Layout-RowKt$Row$1\\14\\283\\10":I
    .local v73, "$i$a$-Layout-RowKt$Row$1\\14\\283\\10":I
    const-string v3, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v3, v27, 0x6

    and-int/lit8 v3, v3, 0x70

    const/16 v55, 0x6

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed\\15":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v23, v2

    .local v23, "$composer\\15":Landroidx/compose/runtime/Composer;
    move-object/from16 v74, v0

    .end local v0    # "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    .local v74, "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    const/4 v0, 0x0

    .line 131
    .local v0, "$i$a$-Row-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1\\15\\259\\7":I
    move/from16 v87, v0

    .end local v0    # "$i$a$-Row-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1\\15\\259\\7":I
    .local v87, "$i$a$-Row-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1\\15\\259\\7":I
    const v0, 0x446d8dbf

    move-object/from16 v88, v2

    .end local v2    # "$composer\\14":Landroidx/compose/runtime/Composer;
    .local v88, "$composer\\14":Landroidx/compose/runtime/Composer;
    const-string v2, "C135@5886L42,131@5661L167,137@6023L125,130@5611L537,146@6520L43,142@6228L234,148@6658L120,141@6178L600:ListadoPsicologosScreen.kt#6w2cjo"

    move/from16 v89, v3

    move-object/from16 v3, v23

    .end local v23    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v89, "$changed\\15":I
    invoke-static {v3, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 136
    move-object/from16 v23, v14

    .end local v14    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v23, "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v14, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget v0, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v0, v0, 0xc

    const/16 v55, 0x6

    or-int/lit8 v24, v0, 0x6

    const/16 v25, 0xe

    move-object v0, v15

    move-wide/from16 v15, v16

    const/4 v2, 0x0

    .end local v15    # "$composer\\10":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\10":Landroidx/compose/runtime/Composer;
    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v93, v3

    move-object v3, v0

    move-object/from16 v0, v23

    move-object/from16 v23, v93

    .local v0, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\10":Landroidx/compose/runtime/Composer;
    .local v23, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v14 .. v25}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v14

    .line 137
    move-object/from16 v15, v23

    .end local v23    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v15, "$composer\\15":Landroidx/compose/runtime/Composer;
    sget-object v16, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v75, v16

    check-cast v75, Landroidx/compose/ui/Modifier;

    const/16 v78, 0x2

    const/16 v79, 0x0

    const/high16 v76, 0x3f800000    # 1.0f

    const/16 v77, 0x0

    invoke-static/range {v74 .. v79}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v75

    .line 132
    move-object/from16 v90, v74

    .end local v74    # "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    .local v90, "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    const v2, 0x5d0bcd1c

    move-object/from16 v91, v3

    .end local v3    # "$composer\\10":Landroidx/compose/runtime/Composer;
    .local v91, "$composer\\10":Landroidx/compose/runtime/Composer;
    const-string v3, "CC(remember):ListadoPsicologosScreen.kt#9igjgp"

    invoke-static {v15, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid\\16":Z
    move-object/from16 v16, v15

    .local v16, "$this$cache\\16":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 284
    .local v17, "$i$f$cache\\16\\132":I
    move/from16 v18, v2

    .end local v2    # "invalid\\16":Z
    .local v18, "invalid\\16":Z
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it\\16":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 285
    .local v19, "$i$a$-let-ComposerKt$cache$1\\17\\284\\16":I
    if-nez v18, :cond_9

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v92, v4

    .end local v4    # "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    .local v92, "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_8

    goto :goto_3

    .line 289
    :cond_8
    move-object/from16 v4, v16

    goto :goto_4

    .line 285
    .end local v92    # "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v4    # "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_9
    move-object/from16 v92, v4

    .line 286
    .end local v4    # "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v92    # "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_3
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1\\18\\286\\15":I
    move-object/from16 v20, v2

    .end local v2    # "it\\16":Ljava/lang/Object;
    .local v20, "it\\16":Ljava/lang/Object;
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;

    invoke-direct {v2, v13, v8, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;-><init>(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 286
    .end local v4    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1\\18\\286\\15":I
    nop

    .line 287
    .local v2, "value\\17":Ljava/lang/Object;
    move-object/from16 v4, v16

    .end local v16    # "$this$cache\\16":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache\\16":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 288
    nop

    .line 284
    .end local v2    # "value\\17":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1\\17\\284\\16":I
    .end local v20    # "it\\16":Ljava/lang/Object;
    :goto_4
    nop

    .line 132
    .end local v4    # "$this$cache\\16":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache\\16\\132":I
    .end local v18    # "invalid\\16":Z
    move-object/from16 v74, v2

    check-cast v74, Lkotlin/jvm/functions/Function0;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 137
    nop

    .line 136
    nop

    .line 138
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$2;

    invoke-direct {v2, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$2;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const v4, -0x694cea3b

    const/16 v7, 0x36

    const/4 v8, 0x1

    invoke-static {v4, v8, v2, v15, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v83, v2

    check-cast v83, Lkotlin/jvm/functions/Function3;

    .line 131
    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/high16 v85, 0x30000000

    const/16 v86, 0x1ec

    move-object/from16 v78, v14

    move-object/from16 v84, v15

    .end local v15    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v84, "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-static/range {v74 .. v86}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 147
    sget-object v14, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget v2, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v2, v2, 0xc

    const/16 v55, 0x6

    or-int/lit8 v24, v2, 0x6

    const/16 v25, 0xe

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-wide/from16 v15, v39

    move-object/from16 v23, v84

    .end local v84    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v23    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v14 .. v25}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v2

    .line 148
    move-object/from16 v4, v23

    .end local v23    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\15":Landroidx/compose/runtime/Composer;
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v75, v7

    check-cast v75, Landroidx/compose/ui/Modifier;

    const/16 v78, 0x2

    const/high16 v76, 0x3f800000    # 1.0f

    const/16 v77, 0x0

    move-object/from16 v74, v90

    .end local v90    # "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    .restart local v74    # "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    invoke-static/range {v74 .. v79}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v75

    .line 143
    .end local v74    # "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    .restart local v90    # "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    const v7, 0x5d0c143f

    invoke-static {v4, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid\\19":Z
    move-object v8, v4

    .local v8, "$this$cache\\19":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 290
    .local v14, "$i$f$cache\\19\\143":I
    move-object/from16 v78, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it\\19":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 291
    .local v17, "$i$a$-let-ComposerKt$cache$1\\20\\290\\19":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v19, v5

    .end local v5    # "materialized\\11":Landroidx/compose/ui/Modifier;
    .local v19, "materialized\\11":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_a

    .line 292
    const/4 v5, 0x0

    .line 143
    .local v5, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$3\\21\\292\\15":I
    sget-object v18, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$3$1;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$3$1;

    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 292
    .end local v5    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$3\\21\\292\\15":I
    move-object/from16 v5, v18

    .line 293
    .local v5, "value\\20":Ljava/lang/Object;
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    move-object v2, v5

    .end local v5    # "value\\20":Ljava/lang/Object;
    goto :goto_5

    .line 295
    :cond_a
    nop

    .line 290
    .end local v2    # "it\\19":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1\\20\\290\\19":I
    :goto_5
    nop

    .line 143
    .end local v7    # "invalid\\19":Z
    .end local v8    # "$this$cache\\19":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache\\19\\143":I
    move-object/from16 v74, v2

    check-cast v74, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 148
    nop

    .line 147
    nop

    .line 149
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$4;

    invoke-direct {v2, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$4;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const v5, 0x3c01562e

    const/16 v7, 0x36

    const/4 v8, 0x1

    invoke-static {v5, v8, v2, v4, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v83, v2

    check-cast v83, Lkotlin/jvm/functions/Function3;

    .line 142
    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const v85, 0x30000006

    const/16 v86, 0x1ec

    move-object/from16 v84, v4

    .end local v4    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .restart local v84    # "$composer\\15":Landroidx/compose/runtime/Composer;
    invoke-static/range {v74 .. v86}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 131
    invoke-static/range {v84 .. v84}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 152
    nop

    .line 259
    .end local v84    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .end local v87    # "$i$a$-Row-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1\\15\\259\\7":I
    .end local v89    # "$changed\\15":I
    .end local v90    # "$this$invoke_u24lambda_u247_u24lambda_u242\\15":Landroidx/compose/foundation/layout/RowScope;
    invoke-static/range {v88 .. v88}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 283
    .end local v72    # "$changed\\14":I
    .end local v73    # "$i$a$-Layout-RowKt$Row$1\\14\\283\\10":I
    .end local v88    # "$composer\\14":Landroidx/compose/runtime/Composer;
    nop

    .line 296
    invoke-interface/range {v68 .. v68}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 268
    invoke-static/range {v68 .. v68}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 297
    nop

    .line 262
    .end local v68    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .end local v69    # "factory\\12":Lkotlin/jvm/functions/Function0;
    .end local v70    # "$i$f$ReusableComposeNode\\12\\266":I
    .end local v71    # "$changed\\12":I
    invoke-static/range {v51 .. v51}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 298
    nop

    .line 253
    .end local v19    # "materialized\\11":Landroidx/compose/ui/Modifier;
    .end local v32    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v33    # "$changed\\11":I
    .end local v35    # "$i$f$Layout\\11\\258":I
    .end local v38    # "compositeKeyHash\\11":I
    .end local v51    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v67    # "modifier\\11":Landroidx/compose/ui/Modifier;
    .end local v92    # "localMap\\11":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v91 .. v91}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 299
    nop

    .line 154
    .end local v27    # "$changed\\10":I
    .end local v28    # "$i$f$Row\\10\\127":I
    .end local v30    # "modifier\\10":Landroidx/compose/ui/Modifier;
    .end local v31    # "horizontalArrangement\\10":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v34    # "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v37    # "verticalAlignment\\10":Landroidx/compose/ui/Alignment$Vertical;
    .end local v91    # "$composer\\10":Landroidx/compose/runtime/Composer;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v4, 0x8

    .local v4, "$this$dp\\22":I
    const/4 v5, 0x0

    .line 300
    .local v5, "$i$f$getDp\\22\\154":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 154
    .end local v4    # "$this$dp\\22":I
    .end local v5    # "$i$f$getDp\\22\\154":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v2, v0, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 156
    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getAsignarPacienteSuccess()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v2, v5, v0, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 157
    .local v2, "asignarSuccess$delegate\\7":Landroidx/compose/runtime/State;
    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getAsignarPacienteError()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v14

    invoke-static {v14, v5, v0, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v18

    .line 165
    .local v18, "asignarError$delegate\\7":Landroidx/compose/runtime/State;
    sget-object v14, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget v5, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    or-int/lit8 v24, v5, 0x6

    const/16 v25, 0xe

    move-object/from16 v4, v18

    .end local v18    # "asignarError$delegate\\7":Landroidx/compose/runtime/State;
    .local v4, "asignarError$delegate\\7":Landroidx/compose/runtime/State;
    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v23, v0

    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v23, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v14 .. v25}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v27

    .line 166
    .end local v23    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x1

    invoke-static {v5, v7, v14, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    .line 160
    const v5, -0x38fa5acd

    invoke-static {v0, v5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v0, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    .local v5, "invalid\\23":Z
    move-object v7, v0

    .local v7, "$this$cache\\23":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 301
    .local v14, "$i$f$cache\\23\\160":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it\\23":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 302
    .local v16, "$i$a$-let-ComposerKt$cache$1\\24\\301\\23":I
    if-nez v5, :cond_c

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v15, v8, :cond_b

    goto :goto_6

    .line 306
    :cond_b
    goto :goto_7

    .line 303
    :cond_c
    :goto_6
    const/16 v17, 0x0

    .line 160
    .local v17, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2\\25\\303\\7":I
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;

    invoke-direct/range {v8 .. v13}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 303
    .end local v17    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2\\25\\303\\7":I
    nop

    .line 304
    .local v8, "value\\24":Ljava/lang/Object;
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 305
    move-object v15, v8

    .line 301
    .end local v8    # "value\\24":Ljava/lang/Object;
    .end local v15    # "it\\23":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1\\24\\301\\23":I
    :goto_7
    nop

    .line 160
    .end local v5    # "invalid\\23":Z
    .end local v7    # "$this$cache\\23":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache\\23\\160":I
    move-object/from16 v23, v15

    check-cast v23, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 166
    nop

    .line 165
    nop

    .line 167
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$3;

    invoke-direct {v5, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$3;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const v1, 0x71d25a9

    const/16 v7, 0x36

    const/4 v8, 0x1

    invoke-static {v1, v8, v5, v0, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lkotlin/jvm/functions/Function3;

    .line 159
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v34, 0x30000030

    const/16 v35, 0x1ec

    move-object/from16 v33, v0

    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v33, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v23 .. v35}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 172
    .end local v33    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->invoke$lambda$7$lambda$3(Landroidx/compose/runtime/State;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->invoke$lambda$7$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v5

    const v7, -0x38fa07ac

    invoke-static {v0, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    .local v3, "invalid\\26":Z
    move-object v7, v0

    .local v7, "$this$cache\\26":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 307
    .local v8, "$i$f$cache\\26\\172":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it\\26":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 308
    .local v11, "$i$a$-let-ComposerKt$cache$1\\27\\307\\26":I
    if-nez v3, :cond_e

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v9, v12, :cond_d

    goto :goto_8

    .line 312
    :cond_d
    move-object/from16 v17, v2

    goto :goto_9

    .line 309
    :cond_e
    :goto_8
    const/4 v12, 0x0

    .line 172
    .local v12, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4\\28\\309\\7":I
    new-instance v14, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;

    const/16 v19, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v10

    move-object/from16 v15, v66

    .end local v2    # "asignarSuccess$delegate\\7":Landroidx/compose/runtime/State;
    .end local v4    # "asignarError$delegate\\7":Landroidx/compose/runtime/State;
    .local v17, "asignarSuccess$delegate\\7":Landroidx/compose/runtime/State;
    .restart local v18    # "asignarError$delegate\\7":Landroidx/compose/runtime/State;
    invoke-direct/range {v14 .. v19}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    .end local v18    # "asignarError$delegate\\7":Landroidx/compose/runtime/State;
    .restart local v4    # "asignarError$delegate\\7":Landroidx/compose/runtime/State;
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 309
    .end local v12    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4\\28\\309\\7":I
    nop

    .line 310
    .local v14, "value\\27":Ljava/lang/Object;
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 311
    move-object v9, v14

    .line 307
    .end local v9    # "it\\26":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1\\27\\307\\26":I
    .end local v14    # "value\\27":Ljava/lang/Object;
    :goto_9
    nop

    .line 172
    .end local v3    # "invalid\\26":Z
    .end local v7    # "$this$cache\\26":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache\\26\\172":I
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v15, 0x0

    invoke-static {v1, v5, v9, v0, v15}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 104
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 181
    .end local v4    # "asignarError$delegate\\7":Landroidx/compose/runtime/State;
    .end local v17    # "asignarSuccess$delegate\\7":Landroidx/compose/runtime/State;
    nop

    .line 226
    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v60    # "$i$a$-Column-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1\\7\\226\\0":I
    .end local v61    # "$this$invoke_u24lambda_u247\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v62    # "$changed\\7":I
    invoke-static/range {v63 .. v63}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 250
    .end local v58    # "$changed\\6":I
    .end local v63    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v64    # "$i$a$-Layout-ColumnKt$Column$1\\6\\250\\2":I
    nop

    .line 313
    invoke-interface/range {v57 .. v57}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 235
    invoke-static/range {v57 .. v57}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 314
    nop

    .line 229
    .end local v52    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .end local v53    # "$changed\\4":I
    .end local v54    # "$i$f$ReusableComposeNode\\4\\233":I
    .end local v57    # "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static/range {v50 .. v50}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 315
    nop

    .line 219
    .end local v36    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v43    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v44    # "$changed\\3":I
    .end local v46    # "compositeKeyHash\\3":I
    .end local v47    # "$i$f$Layout\\3\\225":I
    .end local v50    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v56    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v59    # "materialized\\3":Landroidx/compose/ui/Modifier;
    invoke-static/range {v65 .. v65}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 316
    nop

    .end local v6    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v41    # "$changed\\2":I
    .end local v42    # "$i$f$Column\\2\\103":I
    .end local v45    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v48    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v49    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v65    # "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_a

    .line 102
    :cond_f
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 182
    :cond_10
    :goto_a
    return-void
.end method
