.class final Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Crossfade.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfade.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt$Crossfade$5$1\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,139:1\n1952#2:140\n1950#2:141\n1839#2,7:142\n1846#2,2:162\n1841#2,19:164\n1128#3,3:149\n1131#3,3:159\n1128#3,6:183\n613#4,7:152\n70#5:189\n67#5,9:190\n77#5:224\n81#6,6:199\n88#6,6:214\n96#6:223\n391#7,9:205\n400#7,3:220\n85#8:225\n*S KotlinDebug\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt$Crossfade$5$1\n*L\n127#1:140\n127#1:141\n127#1:142,7\n127#1:162,2\n127#1:164,19\n127#1:149,3\n127#1:159,3\n130#1:183,6\n127#1:152,7\n130#1:189\n130#1:190,9\n130#1:224\n130#1:199,6\n130#1:214,6\n130#1:223\n130#1:205,9\n130#1:220,3\n127#1:225\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "TT;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stateForContent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $this_Crossfade:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;TT;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$stateForContent:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$1(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;

    .line 125
    invoke-static {p0}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->invoke$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 225
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

    .line 127
    return v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 125
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 36
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "C126@5771L134,129@5949L22,129@5922L79:Crossfade.kt#xbi5r1"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v4, v3, 0x1

    invoke-interface {v2, v0, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    const v0, -0x37b2e7f5

    const-string/jumbo v7, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous> (Crossfade.kt:125)"

    invoke-static {v0, v3, v4, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 127
    :cond_1
    iget-object v7, v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    .local v7, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$alpha$2;

    iget-object v8, v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-direct {v0, v8}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$alpha$2;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .local v8, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    iget-object v0, v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$stateForContent:Ljava/lang/Object;

    const/4 v9, 0x0

    .local v9, "$changed$iv":I
    move-object/from16 v10, p1

    .local v10, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 140
    .local v11, "$i$f$animateFloat":I
    const v12, 0x32503bcb

    const-string v13, "CC(animateFloat)N(transitionSpec,label,targetValueByState)1951@83597L78:Transition.kt#pdpnli"

    invoke-static {v10, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 141
    const-string v12, "FloatAnimation"

    .line 140
    .local v12, "label$iv":Ljava/lang/String;
    sget-object v13, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v13}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v18

    .local v18, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v13, v9, 0xe

    shl-int/lit8 v14, v9, 0x3

    and-int/lit16 v14, v14, 0x380

    or-int/2addr v13, v14

    shl-int/lit8 v14, v9, 0x3

    and-int/lit16 v14, v14, 0x1c00

    or-int/2addr v13, v14

    shl-int/lit8 v14, v9, 0x3

    const v15, 0xe000

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    .local v13, "$changed$iv$iv":I
    move-object v14, v10

    .local v14, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v19, v12

    .local v19, "label$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v8

    .local v22, "transitionSpec$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v16, v7

    .local v16, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v23, 0x0

    .line 142
    .local v23, "$i$f$animateValue":I
    const v5, 0x442155f1

    move/from16 v20, v15

    const-string v15, "CC(animateValue)N(typeConverter,transitionSpec,label,targetValueByState)1848@78638L32,1855@79111L49,1855@79092L75,1856@79207L45,1856@79192L67,1858@79272L89:Transition.kt#pdpnli"

    invoke-static {v14, v5, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 145
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v5

    const-string v15, "CC(remember):Transition.kt#9igjgp"

    const/4 v6, 0x4

    if-nez v5, :cond_8

    const v5, 0x6355e4b0

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "1844@78495L67"

    invoke-static {v14, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 148
    const v5, -0x3edc1cac    # -10.243f

    invoke-static {v14, v5, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v5, v13, 0xe

    xor-int/lit8 v5, v5, 0x6

    if-le v5, v6, :cond_2

    move-object/from16 v5, v16

    .end local v16    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .local v5, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_1

    .end local v5    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .restart local v16    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    :cond_2
    move-object/from16 v5, v16

    .end local v16    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .restart local v5    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    :goto_1
    and-int/lit8 v4, v13, 0x6

    if-ne v4, v6, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv$iv":Z
    :goto_2
    move-object/from16 v21, v14

    .local v21, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 149
    .local v25, "$i$f$cache":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 150
    .local v27, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v4, :cond_6

    sget-object v28, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_5

    goto :goto_3

    .line 161
    :cond_5
    move/from16 v30, v4

    move-object/from16 v33, v7

    move-object/from16 v4, v21

    goto :goto_5

    .line 151
    :cond_6
    :goto_3
    const/4 v3, 0x0

    .line 148
    .local v3, "$i$a$-cache-TransitionKt$animateValue$initialState$1$iv$iv":I
    move/from16 v28, v3

    .end local v3    # "$i$a$-cache-TransitionKt$animateValue$initialState$1$iv$iv":I
    .local v28, "$i$a$-cache-TransitionKt$animateValue$initialState$1$iv$iv":I
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v3, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/16 v29, 0x0

    .line 152
    .local v29, "$i$f$withoutReadObservation":I
    move/from16 v30, v4

    .end local v4    # "invalid$iv$iv$iv":Z
    .local v30, "invalid$iv$iv$iv":Z
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    .line 153
    .local v4, "previousSnapshot$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v31

    goto :goto_4

    :cond_7
    const/16 v31, 0x0

    :goto_4
    move-object/from16 v32, v31

    .line 154
    .local v32, "observer$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v31, v6

    .end local v6    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v31, "it$iv$iv$iv":Ljava/lang/Object;
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    .line 155
    .local v6, "newSnapshot$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 156
    const/16 v33, 0x0

    .line 148
    .local v33, "$i$a$-withoutReadObservation-TransitionKt$animateValue$initialState$1$1$iv$iv":I
    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v33    # "$i$a$-withoutReadObservation-TransitionKt$animateValue$initialState$1$1$iv$iv":I
    nop

    .line 158
    move-object/from16 v33, v7

    move-object/from16 v7, v32

    .end local v32    # "observer$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v7, "observer$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v33, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    invoke-virtual {v3, v4, v6, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 156
    nop

    .line 148
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "previousSnapshot$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v6    # "newSnapshot$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "observer$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v29    # "$i$f$withoutReadObservation":I
    nop

    .line 151
    .end local v28    # "$i$a$-cache-TransitionKt$animateValue$initialState$1$iv$iv":I
    move-object/from16 v3, v34

    .line 159
    .local v3, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v4, v21

    .end local v21    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    move-object v6, v3

    .line 149
    .end local v3    # "value$iv$iv$iv":Ljava/lang/Object;
    .end local v27    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v31    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 148
    .end local v4    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$f$cache":I
    .end local v30    # "invalid$iv$iv$iv":Z
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 145
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_6

    .line 158
    .end local v33    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .local v3, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .local v4, "previousSnapshot$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v6    # "newSnapshot$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v7, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .restart local v21    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$i$f$cache":I
    .restart local v27    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .restart local v28    # "$i$a$-cache-TransitionKt$animateValue$initialState$1$iv$iv":I
    .restart local v29    # "$i$f$withoutReadObservation":I
    .restart local v30    # "invalid$iv$iv$iv":Z
    .restart local v31    # "it$iv$iv$iv":Ljava/lang/Object;
    .restart local v32    # "observer$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v0

    move-object/from16 v33, v7

    move-object/from16 v7, v32

    .end local v32    # "observer$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v7, "observer$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v33    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    invoke-virtual {v3, v4, v6, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    .line 162
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "previousSnapshot$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v6    # "newSnapshot$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v21    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$f$cache":I
    .end local v27    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v28    # "$i$a$-cache-TransitionKt$animateValue$initialState$1$iv$iv":I
    .end local v29    # "$i$f$withoutReadObservation":I
    .end local v30    # "invalid$iv$iv$iv":Z
    .end local v31    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v33    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .local v7, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .restart local v16    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    :cond_8
    move-object/from16 v33, v7

    move-object/from16 v5, v16

    .end local v7    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v16    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .restart local v5    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .restart local v33    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const v3, 0x6359c50d

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 163
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v6

    .line 145
    :goto_6
    nop

    .line 164
    nop

    .line 172
    .local v6, "initialState$iv$iv":Ljava/lang/Object;
    shr-int/lit8 v3, v13, 0x9

    and-int/lit8 v3, v3, 0x70

    .local v3, "$changed":I
    move-object v4, v6

    .local v4, "it":Ljava/lang/Object;
    move-object v7, v14

    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    move-object/from16 v25, v6

    .end local v6    # "initialState$iv$iv":Ljava/lang/Object;
    .local v21, "$i$a$-animateFloat-CrossfadeKt$Crossfade$5$1$alpha$3":I
    .local v25, "initialState$iv$iv":Ljava/lang/Object;
    const v6, 0x522f0047

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v6, "C:Crossfade.kt#xbi5r1"

    invoke-static {v7, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v28

    move-object/from16 v29, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    const-string/jumbo v7, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous>.<anonymous> (Crossfade.kt:127)"

    if-eqz v28, :cond_9

    move-object/from16 v28, v8

    move/from16 v30, v9

    const/4 v8, -0x1

    const v9, 0x522f0047

    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v9    # "$changed$iv":I
    .local v28, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v30, "$changed$iv":I
    invoke-static {v9, v3, v8, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_7

    .end local v28    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v30    # "$changed$iv":I
    .restart local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .restart local v9    # "$changed$iv":I
    :cond_9
    move-object/from16 v28, v8

    move/from16 v30, v9

    .line 128
    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v9    # "$changed$iv":I
    .restart local v28    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .restart local v30    # "$changed$iv":I
    :goto_7
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/16 v31, 0x0

    if-eqz v8, :cond_a

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_a
    move/from16 v8, v31

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v32

    if-eqz v32, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v3    # "$changed":I
    .end local v4    # "it":Ljava/lang/Object;
    .end local v21    # "$i$a$-animateFloat-CrossfadeKt$Crossfade$5$1$alpha$3":I
    .end local v29    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 172
    nop

    .line 179
    .local v3, "initialValue$iv$iv":Ljava/lang/Object;
    const v4, -0x3edbcfbe

    invoke-static {v14, v4, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v4, v13, 0xe

    xor-int/lit8 v4, v4, 0x6

    const/4 v8, 0x4

    if-le v4, v8, :cond_c

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    and-int/lit8 v4, v13, 0x6

    const/4 v8, 0x4

    if-ne v4, v8, :cond_e

    :cond_d
    const/4 v4, 0x1

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv$iv":Z
    :goto_9
    move-object v8, v14

    .local v8, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 149
    .local v21, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 150
    .local v32, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v4, :cond_10

    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v35, v3

    .end local v3    # "initialValue$iv$iv":Ljava/lang/Object;
    .local v35, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v9, v3, :cond_f

    goto :goto_a

    .line 161
    :cond_f
    goto :goto_b

    .line 150
    .end local v35    # "initialValue$iv$iv":Ljava/lang/Object;
    .restart local v3    # "initialValue$iv$iv":Ljava/lang/Object;
    :cond_10
    move-object/from16 v35, v3

    .line 151
    .end local v3    # "initialValue$iv$iv":Ljava/lang/Object;
    .restart local v35    # "initialValue$iv$iv":Ljava/lang/Object;
    :goto_a
    const/4 v3, 0x0

    .line 179
    .local v3, "$i$a$-cache-TransitionKt$animateValue$targetValue$1$iv$iv":I
    move/from16 v34, v3

    .end local v3    # "$i$a$-cache-TransitionKt$animateValue$targetValue$1$iv$iv":I
    .local v34, "$i$a$-cache-TransitionKt$animateValue$targetValue$1$iv$iv":I
    new-instance v3, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1;

    invoke-direct {v3, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 151
    .end local v34    # "$i$a$-cache-TransitionKt$animateValue$targetValue$1$iv$iv":I
    nop

    .line 159
    .local v3, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    move-object v9, v3

    .line 149
    .end local v3    # "value$iv$iv$iv":Ljava/lang/Object;
    .end local v9    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v32    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    :goto_b
    nop

    .line 179
    .end local v4    # "invalid$iv$iv$iv":Z
    .end local v8    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$f$cache":I
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it":Ljava/lang/Object;
    shr-int/lit8 v4, v13, 0x9

    and-int/lit8 v4, v4, 0x70

    .local v4, "$changed":I
    move-object v8, v14

    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    move/from16 v21, v9

    const v9, 0x522f0047

    .local v21, "$i$a$-animateFloat-CrossfadeKt$Crossfade$5$1$alpha$3":I
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v8, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, -0x1

    invoke-static {v9, v4, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 128
    :cond_11
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_12
    move/from16 v9, v31

    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_13
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v3    # "it":Ljava/lang/Object;
    .end local v4    # "$changed":I
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-animateFloat-CrossfadeKt$Crossfade$5$1$alpha$3":I
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 179
    nop

    .line 180
    .local v16, "targetValue$iv$iv":Ljava/lang/Object;
    const v0, -0x3edbc3c2

    invoke-static {v14, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v13, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v8, 0x4

    if-le v0, v8, :cond_14

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    and-int/lit8 v0, v13, 0x6

    const/4 v8, 0x4

    if-ne v0, v8, :cond_16

    :cond_15
    const/16 v17, 0x1

    goto :goto_d

    :cond_16
    const/16 v17, 0x0

    .local v17, "invalid$iv$iv$iv":Z
    :goto_d
    move-object v0, v14

    .local v0, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 149
    .local v3, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 150
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v17, :cond_18

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_17

    goto :goto_e

    .line 161
    :cond_17
    goto :goto_f

    .line 151
    :cond_18
    :goto_e
    const/4 v7, 0x0

    .line 180
    .local v7, "$i$a$-cache-TransitionKt$animateValue$animationSpec$1$iv$iv":I
    new-instance v8, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$2;

    invoke-direct {v8, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$2;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 151
    .end local v7    # "$i$a$-cache-TransitionKt$animateValue$animationSpec$1$iv$iv":I
    nop

    .line 159
    .local v7, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    move-object v4, v7

    .line 149
    .end local v4    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v7    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 180
    .end local v0    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local v17    # "invalid$iv$iv$iv":Z
    check-cast v4, Landroidx/compose/runtime/State;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v3, v13, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v8, v22

    .end local v22    # "transitionSpec$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v8, "transitionSpec$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8, v0, v14, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 182
    .local v17, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v0, v13, 0xe

    shl-int/lit8 v3, v13, 0x9

    and-int v3, v3, v20

    or-int/2addr v0, v3

    shl-int/lit8 v3, v13, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v21, v0, v3

    move-object/from16 v20, v14

    move-object/from16 v15, v35

    move-object v14, v5

    .end local v5    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v35    # "initialValue$iv$iv":Ljava/lang/Object;
    .local v14, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .local v15, "initialValue$iv$iv":Ljava/lang/Object;
    .local v20, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-static/range {v14 .. v21}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 142
    move-object/from16 v29, v20

    .end local v20    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v29, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 182
    nop

    .line 140
    .end local v8    # "transitionSpec$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v13    # "$changed$iv$iv":I
    .end local v14    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v15    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v16    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v17    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v18    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v19    # "label$iv$iv":Ljava/lang/String;
    .end local v23    # "$i$f$animateValue":I
    .end local v25    # "initialState$iv$iv":Ljava/lang/Object;
    .end local v29    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 127
    .end local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$animateFloat":I
    .end local v12    # "label$iv":Ljava/lang/String;
    .end local v28    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v30    # "$changed$iv":I
    .end local v33    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    nop

    .line 126
    nop

    .line 130
    .local v0, "alpha$delegate":Landroidx/compose/runtime/State;
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const v4, -0x1698a1ff

    const-string v5, "CC(remember):Crossfade.kt#9igjgp"

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv":Z
    move-object/from16 v5, p1

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 183
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 184
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_1a

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_19

    goto :goto_10

    .line 188
    :cond_19
    goto :goto_11

    .line 185
    :cond_1a
    :goto_10
    const/4 v9, 0x0

    .line 130
    .local v9, "$i$a$-cache-CrossfadeKt$Crossfade$5$1$1":I
    new-instance v10, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$1$1;

    invoke-direct {v10, v0}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 185
    .end local v9    # "$i$a$-cache-CrossfadeKt$Crossfade$5$1$1":I
    nop

    .line 186
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 187
    move-object v7, v10

    .line 183
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v10    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 130
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v3, v7}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    iget-object v4, v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$content:Lkotlin/jvm/functions/Function3;

    iget-object v5, v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$stateForContent:Ljava/lang/Object;

    const/4 v6, 0x0

    .local v6, "$changed$iv":I
    move-object/from16 v7, p1

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 189
    .local v8, "$i$f$Box":I
    const v9, 0x3e277f0a

    const-string v10, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo"

    invoke-static {v7, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 190
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v9

    .line 191
    .local v9, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v10, 0x0

    .line 194
    .local v10, "propagateMinConstraints$iv":Z
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 198
    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 197
    shl-int/lit8 v12, v6, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 195
    move-object v13, v7

    .local v13, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    move-object v14, v11

    .local v14, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v15, v3

    .local v12, "$changed$iv$iv":I
    .local v15, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    const/16 v16, 0x0

    .line 199
    .local v16, "$i$f$Layout":I
    move-object/from16 v17, v0

    .end local v0    # "alpha$delegate":Landroidx/compose/runtime/State;
    .local v17, "alpha$delegate":Landroidx/compose/runtime/State;
    const v0, -0x451e1427

    const-string v1, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 201
    .local v0, "compositeKeyHash$iv$iv":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 202
    .local v1, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v18, v0

    .end local v0    # "compositeKeyHash$iv$iv":I
    .local v18, "compositeKeyHash$iv$iv":I
    invoke-static {v13, v15}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 204
    .local v0, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    shl-int/lit8 v2, v12, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    .line 203
    nop

    .local v2, "$changed$iv$iv$iv":I
    move-object/from16 v20, v13

    .local v20, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v21, v19

    .local v21, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v19, 0x0

    .line 205
    .local v19, "$i$f$ReusableComposeNode":I
    move/from16 v22, v2

    .end local v2    # "$changed$iv$iv$iv":I
    .local v22, "$changed$iv$iv$iv":I
    const v2, -0x20f7d59c

    move-object/from16 v23, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v23, "modifier$iv":Landroidx/compose/ui/Modifier;
    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move/from16 v25, v6

    move-object/from16 v6, v20

    .end local v20    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v25, "$changed$iv":I
    invoke-static {v6, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 206
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 207
    :cond_1b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 208
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 209
    move-object/from16 v2, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    .line 211
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_1c
    move-object/from16 v2, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 213
    :goto_12
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 214
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v26, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v26, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v14, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 215
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 216
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v27, v1

    .end local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v3, v2, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 217
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 218
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    nop

    .line 213
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 220
    shr-int/lit8 v1, v22, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v2, v6

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 196
    .local v3, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move-object/from16 v20, v0

    .end local v0    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v20, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const v0, 0x6d423196

    move/from16 v21, v1

    .end local v1    # "$changed$iv":I
    .local v21, "$changed$iv":I
    const-string v1, "C72@3469L9:Box.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v25, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v28, v2

    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 130
    .local v29, "$i$a$-Box-CrossfadeKt$Crossfade$5$1$2":I
    move-object/from16 v30, v0

    .end local v0    # "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/BoxScope;
    .local v30, "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0xb65e5ba

    move/from16 v31, v1

    .end local v1    # "$changed":I
    .local v31, "$changed":I
    const-string v1, "C129@5975L24:Crossfade.kt#xbi5r1"

    move-object/from16 v32, v2

    .end local v28    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v32, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v5, v2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 196
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-Box-CrossfadeKt$Crossfade$5$1$2":I
    .end local v30    # "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/BoxScope;
    .end local v31    # "$changed":I
    invoke-static/range {v32 .. v32}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 220
    .end local v3    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v21    # "$changed$iv":I
    .end local v32    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 221
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 205
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 222
    nop

    .line 199
    .end local v6    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v22    # "$changed$iv$iv$iv":I
    .end local v26    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 223
    nop

    .line 189
    .end local v12    # "$changed$iv$iv":I
    .end local v13    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v15    # "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v16    # "$i$f$Layout":I
    .end local v18    # "compositeKeyHash$iv$iv":I
    .end local v20    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 224
    nop

    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$Box":I
    .end local v9    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v10    # "propagateMinConstraints$iv":Z
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v23    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v17    # "alpha$delegate":Landroidx/compose/runtime/State;
    goto :goto_13

    .line 125
    :cond_1d
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 131
    :cond_1e
    :goto_13
    return-void
.end method
