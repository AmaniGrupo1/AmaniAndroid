.class final Landroidx/compose/material/TextFieldTransitionScope;
.super Ljava/lang/Object;
.source "TextFieldImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldTransitionScope\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Transition.kt\nandroidx/compose/animation/TransitionKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,375:1\n1967#2:376\n1882#2,7:377\n1967#2:384\n1882#2,7:385\n1882#2,7:403\n1882#2,7:421\n68#3,3:392\n71#3:398\n74#3:402\n68#3,3:410\n71#3:416\n74#3:420\n1223#4,3:395\n1226#4,3:399\n1223#4,3:413\n1226#4,3:417\n81#5:428\n81#5:429\n81#5:430\n81#5:431\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldTransitionScope\n*L\n279#1:376\n279#1:377,7\n290#1:384\n290#1:385,7\n318#1:403,7\n328#1:421,7\n318#1:392,3\n318#1:398\n318#1:402\n328#1:410,3\n328#1:416\n328#1:420\n318#1:395,3\n318#1:399,3\n328#1:413,3\n328#1:417,3\n279#1:428\n290#1:429\n318#1:430\n328#1:431\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u00b2\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u000b\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\r\u001a\u00020\u000e2e\u0010\u000f\u001aa\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00040\u0010\u00a2\u0006\u0002\u0008\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001a\u00b2\u0006\n\u0010\u0014\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0017\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0015\u001a\u00020\u0008X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0016\u001a\u00020\u0008X\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/material/TextFieldTransitionScope;",
        "",
        "()V",
        "Transition",
        "",
        "inputState",
        "Landroidx/compose/material/InputPhase;",
        "focusedTextStyleColor",
        "Landroidx/compose/ui/graphics/Color;",
        "unfocusedTextStyleColor",
        "contentColor",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composable;",
        "showLabel",
        "",
        "content",
        "Lkotlin/Function4;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "labelProgress",
        "labelTextStyleColor",
        "labelContentColor",
        "placeholderOpacity",
        "Transition-DTcfvLk",
        "(Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function6;Landroidx/compose/runtime/Composer;I)V",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/TextFieldTransitionScope;

    invoke-direct {v0}, Landroidx/compose/material/TextFieldTransitionScope;-><init>()V

    sput-object v0, Landroidx/compose/material/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final Transition_DTcfvLk$lambda$1(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$labelProgress$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 428
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 279
    return v0
.end method

.method private static final Transition_DTcfvLk$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$placeholderOpacity$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 429
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 290
    return v0
.end method

.method private static final Transition_DTcfvLk$lambda$5(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$labelTextStyleColor$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 430
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 318
    return-wide v0
.end method

.method private static final Transition_DTcfvLk$lambda$6(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$labelContentColor$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 431
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 328
    return-wide v0
.end method


# virtual methods
.method public final Transition-DTcfvLk(Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function6;Landroidx/compose/runtime/Composer;I)V
    .locals 37
    .param p1, "inputState"    # Landroidx/compose/material/InputPhase;
    .param p2, "focusedTextStyleColor"    # J
    .param p4, "unfocusedTextStyleColor"    # J
    .param p6, "contentColor"    # Lkotlin/jvm/functions/Function3;
    .param p7, "showLabel"    # Z
    .param p8, "content"    # Lkotlin/jvm/functions/Function6;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/InputPhase;",
            "JJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/InputPhase;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;Z",
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 273
    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p10

    const v0, 0x76899c6a

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(Transition)P(3,2:c#ui.graphics.Color,5:c#ui.graphics.Color,1,4)276@11175L59,278@11276L325,289@11648L1101,317@12797L299,327@13142L186,333@13338L140:TextFieldImpl.kt#jmzs0o"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p10

    .local v3, "$dirty":I
    and-int/lit8 v4, v10, 0x6

    if-nez v4, :cond_1

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_3

    move-wide/from16 v4, p2

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v3, v6

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p2

    :goto_2
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_5

    move-wide/from16 v11, p4

    invoke-interface {v1, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    move-wide/from16 v11, p4

    :goto_4
    and-int/lit16 v6, v10, 0xc00

    if-nez v6, :cond_7

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_5

    :cond_6
    const/16 v6, 0x400

    :goto_5
    or-int/2addr v3, v6

    :cond_7
    and-int/lit16 v6, v10, 0x6000

    if-nez v6, :cond_9

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    goto :goto_6

    :cond_8
    const/16 v6, 0x2000

    :goto_6
    or-int/2addr v3, v6

    :cond_9
    const/high16 v6, 0x30000

    and-int/2addr v6, v10

    if-nez v6, :cond_b

    move-object/from16 v9, p8

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/high16 v6, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v6, 0x10000

    :goto_7
    or-int/2addr v3, v6

    goto :goto_8

    :cond_b
    move-object/from16 v9, p8

    :goto_8
    const v6, 0x12493

    and-int/2addr v6, v3

    const v13, 0x12492

    if-ne v6, v13, :cond_d

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_9

    .line 340
    :cond_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v22, v1

    goto/16 :goto_1b

    .line 273
    :cond_d
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    const/4 v13, -0x1

    if-eqz v6, :cond_e

    const-string/jumbo v6, "androidx.compose.material.TextFieldTransitionScope.Transition (TextFieldImpl.kt:272)"

    invoke-static {v0, v3, v13, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 277
    :cond_e
    and-int/lit8 v0, v3, 0xe

    or-int/lit8 v0, v0, 0x30

    const/4 v6, 0x0

    const-string/jumbo v14, "TextFieldInputState"

    invoke-static {v2, v14, v1, v0, v6}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 279
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v6, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelProgress$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelProgress$2;

    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 280
    nop

    .line 279
    nop

    .local v6, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v19, v0

    .local v19, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const-string v16, "LabelProgress"

    .local v16, "label$iv":Ljava/lang/String;
    const/16 v14, 0x180

    move/from16 v20, v14

    .local v20, "$changed$iv":I
    const/16 v21, 0x0

    .line 376
    .local v21, "$i$f$animateFloat":I
    const v15, -0x4fcbfb15

    const-string v14, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli"

    invoke-static {v1, v15, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v14, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v14}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v15

    .local v15, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v14, v20, 0xe

    shl-int/lit8 v13, v20, 0x3

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v13, v14

    shl-int/lit8 v14, v20, 0x3

    and-int/lit16 v14, v14, 0x1c00

    or-int/2addr v13, v14

    shl-int/lit8 v14, v20, 0x3

    const v22, 0xe000

    and-int v14, v14, v22

    or-int/2addr v13, v14

    .local v13, "$changed$iv$iv":I
    move-object/from16 v11, v19

    .local v11, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v23, v13

    .end local v13    # "$changed$iv$iv":I
    .local v23, "$changed$iv$iv":I
    const/16 v24, 0x0

    .line 377
    .local v24, "$i$f$animateValue":I
    const v12, -0x880d1ef

    const-string v13, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli"

    invoke-static {v1, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 379
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v14

    shr-int/lit8 v18, v23, 0x9

    and-int/lit8 v12, v18, 0x70

    .local v12, "$changed":I
    check-cast v14, Landroidx/compose/material/InputPhase;

    .local v14, "it":Landroidx/compose/material/InputPhase;
    move-object/from16 v18, v1

    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    move-object/from16 v27, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .local v26, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    .local v27, "transition":Landroidx/compose/animation/core/Transition;
    const v0, -0x4505bda8

    move-object/from16 v2, v18

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "C:TextFieldImpl.kt#jmzs0o"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 283
    move-object/from16 v28, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    const-string/jumbo v2, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:282)"

    const v4, -0x4505bda8

    const/4 v5, -0x1

    invoke-static {v4, v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_a

    .line 379
    .end local v28    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_f
    move-object/from16 v28, v2

    .line 283
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v28    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_a
    sget-object v2, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v14}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 286
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_b

    .line 285
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_b

    .line 284
    :pswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 283
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_10
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v12    # "$changed":I
    .end local v14    # "it":Landroidx/compose/material/InputPhase;
    .end local v26    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    .end local v28    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 379
    nop

    .line 380
    .local v12, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v14, v23, 0x9

    and-int/lit8 v14, v14, 0x70

    .local v14, "$changed":I
    check-cast v2, Landroidx/compose/material/InputPhase;

    .local v2, "it":Landroidx/compose/material/InputPhase;
    move-object/from16 v26, v1

    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    move-object/from16 v4, v26

    const v5, -0x4505bda8

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 283
    move-object/from16 v18, v2

    .end local v2    # "it":Landroidx/compose/material/InputPhase;
    .local v18, "it":Landroidx/compose/material/InputPhase;
    const-string/jumbo v2, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:282)"

    move-object/from16 v26, v4

    const/4 v4, -0x1

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v26    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v5, v14, v4, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_c

    .line 380
    .end local v18    # "it":Landroidx/compose/material/InputPhase;
    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "it":Landroidx/compose/material/InputPhase;
    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v26, v4

    const/4 v4, -0x1

    .line 283
    .end local v2    # "it":Landroidx/compose/material/InputPhase;
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "it":Landroidx/compose/material/InputPhase;
    .restart local v26    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_c
    sget-object v2, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_1

    .line 286
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_3
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_d

    .line 285
    :pswitch_4
    const/4 v2, 0x0

    goto :goto_d

    .line 284
    :pswitch_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 283
    :goto_d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_12
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v14    # "$changed":I
    .end local v18    # "it":Landroidx/compose/material/InputPhase;
    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 380
    nop

    .line 381
    .local v2, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v5

    shr-int/lit8 v14, v23, 0x3

    and-int/lit8 v14, v14, 0x70

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v5, v1, v14}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 383
    .local v14, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v5, v23, 0xe

    shl-int/lit8 v17, v23, 0x9

    and-int v17, v17, v22

    or-int v5, v5, v17

    shl-int/lit8 v17, v23, 0x6

    const/high16 v26, 0x70000

    and-int v17, v17, v26

    or-int v18, v5, v17

    move-object/from16 v17, v1

    move v5, v4

    move-object v1, v13

    const/16 v4, 0x180

    move-object v13, v2

    const v2, -0x880d1ef

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v2    # "targetValue$iv$iv":Ljava/lang/Object;
    .local v13, "targetValue$iv$iv":Ljava/lang/Object;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v18

    .line 377
    move-object/from16 v36, v13

    move-object v13, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v36

    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .local v14, "targetValue$iv$iv":Ljava/lang/Object;
    .local v17, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 383
    nop

    .line 376
    .end local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v13    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v14    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v15    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v17    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v23    # "$changed$iv$iv":I
    .end local v24    # "$i$f$animateValue":I
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 279
    .end local v6    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v16    # "label$iv":Ljava/lang/String;
    .end local v19    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v20    # "$changed$iv":I
    .end local v21    # "$i$f$animateFloat":I
    move-object/from16 v6, v18

    .line 290
    .local v6, "labelProgress$delegate":Landroidx/compose/runtime/State;
    sget-object v12, Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;

    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 291
    nop

    .line 290
    move-object/from16 v19, v27

    .local v12, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .restart local v19    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const-string/jumbo v16, "PlaceholderOpacity"

    .restart local v16    # "label$iv":Ljava/lang/String;
    move/from16 v20, v4

    .restart local v20    # "$changed$iv":I
    const/16 v21, 0x0

    .line 384
    .restart local v21    # "$i$f$animateFloat":I
    const v13, -0x4fcbfb15

    const-string v14, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli"

    invoke-static {v11, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v13, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v13}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v15

    .restart local v15    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v13, v20, 0xe

    shl-int/lit8 v14, v20, 0x3

    and-int/lit16 v14, v14, 0x380

    or-int/2addr v13, v14

    shl-int/lit8 v14, v20, 0x3

    and-int/lit16 v14, v14, 0x1c00

    or-int/2addr v13, v14

    shl-int/lit8 v14, v20, 0x3

    and-int v14, v14, v22

    or-int v23, v13, v14

    .restart local v23    # "$changed$iv$iv":I
    move-object/from16 v13, v19

    .restart local v13    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v24, 0x0

    .line 385
    .restart local v24    # "$i$f$animateValue":I
    invoke-static {v11, v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 387
    invoke-virtual {v13}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v14

    shr-int/lit8 v17, v23, 0x9

    move/from16 p9, v4

    and-int/lit8 v4, v17, 0x70

    .local v4, "$changed":I
    check-cast v14, Landroidx/compose/material/InputPhase;

    .local v14, "it":Landroidx/compose/material/InputPhase;
    move-object/from16 v17, v11

    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .local v18, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    const v2, -0x52068529

    move-object/from16 v5, v17

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 311
    move-object/from16 v17, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    const-string/jumbo v5, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:310)"

    move-object/from16 v31, v6

    const/4 v6, -0x1

    .end local v6    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    .local v31, "labelProgress$delegate":Landroidx/compose/runtime/State;
    invoke-static {v2, v4, v6, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_e

    .line 387
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v31    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    :cond_13
    move-object/from16 v17, v5

    move-object/from16 v31, v6

    .line 311
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v31    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    :goto_e
    sget-object v5, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v14}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 314
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_6
    const/4 v5, 0x0

    goto :goto_f

    .line 313
    :pswitch_7
    if-eqz v8, :cond_14

    const/4 v5, 0x0

    goto :goto_f

    :cond_14
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_f

    .line 312
    :pswitch_8
    const/high16 v5, 0x3f800000    # 1.0f

    .line 311
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_15
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v4    # "$changed":I
    .end local v14    # "it":Landroidx/compose/material/InputPhase;
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 387
    nop

    .line 388
    .local v4, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v13}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    shr-int/lit8 v6, v23, 0x9

    and-int/lit8 v6, v6, 0x70

    .local v6, "$changed":I
    check-cast v5, Landroidx/compose/material/InputPhase;

    .local v5, "it":Landroidx/compose/material/InputPhase;
    move-object v14, v11

    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .local v17, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 311
    move-object/from16 v18, v4

    .end local v4    # "initialValue$iv$iv":Ljava/lang/Object;
    .local v18, "initialValue$iv$iv":Ljava/lang/Object;
    const-string/jumbo v4, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:310)"

    move-object/from16 v32, v5

    const/4 v5, -0x1

    .end local v5    # "it":Landroidx/compose/material/InputPhase;
    .local v32, "it":Landroidx/compose/material/InputPhase;
    invoke-static {v2, v6, v5, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_10

    .line 388
    .end local v18    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v32    # "it":Landroidx/compose/material/InputPhase;
    .restart local v4    # "initialValue$iv$iv":Ljava/lang/Object;
    .restart local v5    # "it":Landroidx/compose/material/InputPhase;
    :cond_16
    move-object/from16 v18, v4

    move-object/from16 v32, v5

    .line 311
    .end local v4    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v5    # "it":Landroidx/compose/material/InputPhase;
    .restart local v18    # "initialValue$iv$iv":Ljava/lang/Object;
    .restart local v32    # "it":Landroidx/compose/material/InputPhase;
    :goto_10
    sget-object v2, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_3

    .line 314
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_9
    const/4 v4, 0x0

    goto :goto_11

    .line 313
    :pswitch_a
    if-eqz v8, :cond_17

    const/4 v4, 0x0

    goto :goto_11

    :cond_17
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_11

    .line 312
    :pswitch_b
    const/high16 v4, 0x3f800000    # 1.0f

    .line 311
    :goto_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v6    # "$changed":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .end local v32    # "it":Landroidx/compose/material/InputPhase;
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 388
    nop

    .line 389
    .restart local v2    # "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v13}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v23, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v4, v11, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 391
    .local v14, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v23, 0xe

    shl-int/lit8 v5, v23, 0x9

    and-int v5, v5, v22

    or-int/2addr v4, v5

    shl-int/lit8 v5, v23, 0x6

    and-int v5, v5, v26

    or-int/2addr v4, v5

    move-object/from16 v17, v11

    move-object v11, v13

    move-object v13, v2

    move-object v2, v12

    move-object/from16 v12, v18

    move/from16 v18, v4

    .end local v18    # "initialValue$iv$iv":Ljava/lang/Object;
    .local v2, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v11, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .local v12, "initialValue$iv$iv":Ljava/lang/Object;
    .local v13, "targetValue$iv$iv":Ljava/lang/Object;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 385
    move-object/from16 v5, v17

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 391
    nop

    .line 384
    .end local v11    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v13    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v14    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v15    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v23    # "$changed$iv$iv":I
    .end local v24    # "$i$f$animateValue":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 290
    .end local v2    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v16    # "label$iv":Ljava/lang/String;
    .end local v19    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v20    # "$changed$iv":I
    .end local v21    # "$i$f$animateFloat":I
    nop

    .line 318
    .local v4, "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    sget-object v2, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelTextStyleColor$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelTextStyleColor$2;

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 320
    nop

    .line 318
    move-object/from16 v6, v27

    .restart local v2    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v6, "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v19, p9

    .local v19, "$changed$iv":I
    const-string v16, "LabelTextStyleColor"

    .restart local v16    # "label$iv":Ljava/lang/String;
    const/16 v20, 0x0

    .line 392
    .local v20, "$i$f$animateColor":I
    const v11, -0x739d657f

    const-string v12, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1"

    invoke-static {v5, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 393
    invoke-virtual {v6}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v11

    shr-int/lit8 v12, v19, 0x6

    and-int/lit8 v12, v12, 0x70

    .local v12, "$changed":I
    check-cast v11, Landroidx/compose/material/InputPhase;

    .local v11, "it":Landroidx/compose/material/InputPhase;
    move-object v13, v5

    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .local v14, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    const v15, -0x58d2cc88

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    const-string/jumbo v15, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:321)"

    if-eqz v17, :cond_19

    .line 322
    move-object/from16 v21, v4

    move-object/from16 v23, v6

    const v4, -0x58d2cc88

    const/4 v6, -0x1

    .end local v4    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .end local v6    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .local v21, "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .local v23, "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    invoke-static {v4, v12, v6, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_12

    .line 393
    .end local v21    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .end local v23    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .restart local v4    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .restart local v6    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    :cond_19
    move-object/from16 v21, v4

    move-object/from16 v23, v6

    .line 322
    .end local v4    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .end local v6    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .restart local v21    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .restart local v23    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    :goto_12
    sget-object v4, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v6

    aget v4, v4, v6

    .line 323
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1a

    move-wide/from16 v29, p2

    goto :goto_13

    .line 324
    :cond_1a
    move-wide/from16 v29, p4

    .line 322
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 393
    .end local v11    # "it":Landroidx/compose/material/InputPhase;
    .end local v12    # "$changed":I
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v4

    .line 394
    .local v4, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    const v11, 0x72589593

    const-string v12, "CC(remember):Transition.kt#9igjgp"

    invoke-static {v5, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "invalid$iv$iv":Z
    move-object v12, v5

    .local v12, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 395
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 396
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v11, :cond_1d

    sget-object v24, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v14, v6, :cond_1c

    goto :goto_14

    .line 401
    :cond_1c
    move-object v6, v14

    goto :goto_15

    .line 397
    :cond_1d
    :goto_14
    const/4 v6, 0x0

    .line 398
    .local v6, "$i$a$-cache-TransitionKt$animateColor$typeConverter$1$iv":I
    sget-object v24, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move/from16 v30, v6

    .end local v6    # "$i$a$-cache-TransitionKt$animateColor$typeConverter$1$iv":I
    .local v30, "$i$a$-cache-TransitionKt$animateColor$typeConverter$1$iv":I
    invoke-static/range {v24 .. v24}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/core/TwoWayConverter;

    .line 397
    .end local v30    # "$i$a$-cache-TransitionKt$animateColor$typeConverter$1$iv":I
    nop

    .line 399
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 400
    nop

    .line 396
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    :goto_15
    nop

    .line 395
    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 394
    .end local v11    # "invalid$iv$iv":Z
    .end local v12    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v6, Landroidx/compose/animation/core/TwoWayConverter;

    .local v6, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 402
    and-int/lit8 v11, v19, 0xe

    shl-int/lit8 v12, v19, 0x3

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v11, v12

    shl-int/lit8 v12, v19, 0x3

    and-int/lit16 v12, v12, 0x1c00

    or-int/2addr v11, v12

    shl-int/lit8 v12, v19, 0x3

    and-int v12, v12, v22

    or-int v24, v11, v12

    .local v24, "$changed$iv$iv":I
    move-object/from16 v11, v23

    .local v11, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v30, 0x0

    .line 403
    .local v30, "$i$f$animateValue":I
    const v12, -0x880d1ef

    invoke-static {v5, v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 405
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v12

    shr-int/lit8 v13, v24, 0x9

    and-int/lit8 v13, v13, 0x70

    .local v13, "$changed":I
    check-cast v12, Landroidx/compose/material/InputPhase;

    .local v12, "it":Landroidx/compose/material/InputPhase;
    move-object v14, v5

    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    move-object/from16 v32, v4

    const v4, -0x58d2cc88

    .end local v4    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v17, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .local v32, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 322
    move-object/from16 v33, v6

    const/4 v6, -0x1

    .end local v6    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .local v33, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    invoke-static {v4, v13, v6, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_16

    .line 405
    .end local v33    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .restart local v6    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    :cond_1e
    move-object/from16 v33, v6

    .line 322
    .end local v6    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .restart local v33    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    :goto_16
    sget-object v4, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v12}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v6

    aget v4, v4, v6

    .line 323
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1f

    move-wide/from16 v34, p2

    goto :goto_17

    .line 324
    :cond_1f
    move-wide/from16 v34, p4

    .line 322
    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v12    # "it":Landroidx/compose/material/InputPhase;
    .end local v13    # "$changed":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static/range {v34 .. v35}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    .line 405
    nop

    .line 406
    .local v12, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    shr-int/lit8 v6, v24, 0x9

    and-int/lit8 v6, v6, 0x70

    .local v6, "$changed":I
    check-cast v4, Landroidx/compose/material/InputPhase;

    .local v4, "it":Landroidx/compose/material/InputPhase;
    move-object v13, v5

    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    move-object/from16 v17, v4

    const v4, -0x58d2cc88

    .end local v4    # "it":Landroidx/compose/material/InputPhase;
    .local v14, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .local v17, "it":Landroidx/compose/material/InputPhase;
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 322
    const/4 v0, -0x1

    invoke-static {v4, v6, v0, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_21
    sget-object v0, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v4

    aget v0, v0, v4

    .line 323
    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    move-wide/from16 v28, p2

    goto :goto_18

    .line 324
    :cond_22
    move-wide/from16 v28, p4

    .line 322
    :goto_18
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_23
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v6    # "$changed":I
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .end local v17    # "it":Landroidx/compose/material/InputPhase;
    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v13

    .line 406
    nop

    .line 407
    .local v13, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    shr-int/lit8 v4, v24, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v5, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 409
    .local v14, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v0, v24, 0xe

    shl-int/lit8 v4, v24, 0x9

    and-int v4, v4, v22

    or-int/2addr v0, v4

    shl-int/lit8 v4, v24, 0x6

    and-int v4, v4, v26

    or-int v18, v0, v4

    move-object/from16 v17, v5

    move-object/from16 v15, v33

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v33    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .local v15, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 403
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 409
    nop

    .line 402
    .end local v11    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v13    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v14    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v24    # "$changed$iv$iv":I
    .end local v30    # "$i$f$animateValue":I
    nop

    .line 392
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 402
    nop

    .line 318
    .end local v2    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v15    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v16    # "label$iv":Ljava/lang/String;
    .end local v19    # "$changed$iv":I
    .end local v20    # "$i$f$animateColor":I
    .end local v23    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .end local v32    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    nop

    .line 328
    .local v0, "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    sget-object v2, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelContentColor$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelContentColor$2;

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 330
    and-int/lit16 v4, v3, 0x1c00

    move/from16 v6, p9

    or-int/2addr v4, v6

    .line 328
    move-object/from16 v6, v27

    .local v6, "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    const-string v16, "LabelContentColor"

    .restart local v2    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "$changed$iv":I
    .restart local v16    # "label$iv":Ljava/lang/String;
    const/16 v19, 0x0

    .line 410
    .local v19, "$i$f$animateColor":I
    const v11, -0x739d657f

    const-string v12, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1"

    invoke-static {v5, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 411
    invoke-virtual {v6}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v11

    shr-int/lit8 v12, v4, 0x6

    and-int/lit8 v12, v12, 0x70

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v11, v5, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v11

    .line 412
    .local v11, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    const v12, 0x72589593

    const-string v13, "CC(remember):Transition.kt#9igjgp"

    invoke-static {v5, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    .local v12, "invalid$iv$iv":Z
    move-object v13, v5

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 413
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 414
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v12, :cond_25

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p9, v0

    .end local v0    # "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    .local p9, "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_24

    goto :goto_19

    .line 419
    :cond_24
    move-object v0, v15

    goto :goto_1a

    .line 414
    .end local p9    # "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    .restart local v0    # "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    :cond_25
    move-object/from16 p9, v0

    .line 415
    .end local v0    # "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    .restart local p9    # "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    :goto_19
    const/4 v0, 0x0

    .line 416
    .local v0, "$i$a$-cache-TransitionKt$animateColor$typeConverter$1$iv":I
    sget-object v18, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move/from16 v20, v0

    .end local v0    # "$i$a$-cache-TransitionKt$animateColor$typeConverter$1$iv":I
    .local v20, "$i$a$-cache-TransitionKt$animateColor$typeConverter$1$iv":I
    invoke-static/range {v18 .. v18}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/TwoWayConverter;

    .line 415
    .end local v20    # "$i$a$-cache-TransitionKt$animateColor$typeConverter$1$iv":I
    nop

    .line 417
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 418
    nop

    .line 414
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_1a
    nop

    .line 413
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 412
    .end local v12    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    move-object v15, v0

    check-cast v15, Landroidx/compose/animation/core/TwoWayConverter;

    .local v15, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 420
    and-int/lit8 v0, v4, 0xe

    shl-int/lit8 v12, v4, 0x3

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v0, v12

    shl-int/lit8 v12, v4, 0x3

    and-int/lit16 v12, v12, 0x1c00

    or-int/2addr v0, v12

    shl-int/lit8 v12, v4, 0x3

    and-int v12, v12, v22

    or-int/2addr v0, v12

    move-object v12, v11

    .end local v11    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v0, "$changed$iv$iv":I
    .local v12, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    move-object v11, v6

    .local v11, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v20, 0x0

    .line 421
    .local v20, "$i$f$animateValue":I
    const v13, -0x880d1ef

    invoke-static {v5, v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 423
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v13, v0, 0x9

    and-int/lit8 v13, v13, 0x70

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v1, v5, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v13

    shr-int/lit8 v14, v0, 0x9

    and-int/lit8 v14, v14, 0x70

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v13, v5, v14}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 425
    .local v13, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v14

    shr-int/lit8 v17, v0, 0x3

    and-int/lit8 v17, v17, 0x70

    move/from16 v23, v0

    .end local v0    # "$changed$iv$iv":I
    .local v23, "$changed$iv$iv":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v14, v5, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 427
    .local v14, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v0, v23, 0xe

    shl-int/lit8 v17, v23, 0x9

    and-int v17, v17, v22

    or-int v0, v0, v17

    shl-int/lit8 v17, v23, 0x6

    and-int v17, v17, v26

    or-int v18, v0, v17

    move-object/from16 v17, v5

    move-object v0, v12

    move-object v12, v1

    .end local v1    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v12, "initialValue$iv$iv":Ljava/lang/Object;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 421
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 427
    nop

    .line 420
    .end local v11    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v13    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v14    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v20    # "$i$f$animateValue":I
    .end local v23    # "$changed$iv$iv":I
    nop

    .line 410
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 420
    nop

    .line 328
    .end local v0    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .end local v2    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v4    # "$changed$iv":I
    .end local v6    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .end local v15    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v16    # "label$iv":Ljava/lang/String;
    .end local v19    # "$i$f$animateColor":I
    nop

    .line 334
    .local v1, "labelContentColor$delegate":Landroidx/compose/runtime/State;
    nop

    .line 335
    invoke-static/range {v31 .. v31}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 336
    invoke-static/range {p9 .. p9}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$5(Landroidx/compose/runtime/State;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v13

    .line 337
    invoke-static {v1}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$6(Landroidx/compose/runtime/State;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v14

    .line 338
    invoke-static/range {v21 .. v21}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    shr-int/lit8 v0, v3, 0x3

    and-int v0, v0, v22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 334
    move-object v11, v9

    move-object/from16 v16, v17

    move-object/from16 v17, v0

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v11 .. v17}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v16

    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 340
    .end local v1    # "labelContentColor$delegate":Landroidx/compose/runtime/State;
    .end local v21    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .end local v27    # "transition":Landroidx/compose/animation/core/Transition;
    .end local v31    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    .end local p9    # "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    :cond_26
    :goto_1b
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_27

    new-instance v0, Landroidx/compose/material/TextFieldTransitionScope$Transition$1;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    move-object/from16 v9, p8

    move/from16 v25, v3

    move-wide/from16 v3, p2

    .end local v3    # "$dirty":I
    .local v25, "$dirty":I
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/TextFieldTransitionScope$Transition$1;-><init>(Landroidx/compose/material/TextFieldTransitionScope;Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function6;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1c

    .end local v25    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_27
    move/from16 v25, v3

    .end local v3    # "$dirty":I
    .restart local v25    # "$dirty":I
    :goto_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
