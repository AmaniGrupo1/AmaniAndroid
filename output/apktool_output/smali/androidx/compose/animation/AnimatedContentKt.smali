.class public final Landroidx/compose/animation/AnimatedContentKt;
.super Ljava/lang/Object;
.source "AnimatedContent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 9 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,959:1\n1128#2,6:960\n1128#2,6:966\n1128#2,6:972\n1128#2,6:978\n1128#2,6:985\n1128#2,6:991\n1128#2,6:997\n1128#2,6:1015\n1128#2,6:1021\n75#3:984\n360#4,7:1003\n35#5,5:1010\n35#5,5:1049\n81#6,6:1027\n88#6,6:1042\n96#6:1056\n391#7,9:1033\n400#7:1048\n401#7,2:1054\n30#8:1057\n80#9:1058\n*S KotlinDebug\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentKt\n*L\n132#1:960,6\n139#1:966,6\n766#1:972,6\n772#1:978,6\n777#1:985,6\n781#1:991,6\n782#1:997,6\n868#1:1015,6\n875#1:1021,6\n775#1:984\n808#1:1003,7\n817#1:1010,5\n873#1:1049,5\n870#1:1027,6\n870#1:1042,6\n870#1:1056\n870#1:1033,9\n870#1:1048\n870#1:1054,2\n703#1:1057\n703#1:1058\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u00b4\u0001\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u001f\u0008\u0002\u0010\u0006\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0008\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2%\u0008\u0002\u0010\u000f\u001a\u001f\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000721\u0010\u0013\u001a-\u0012\u0004\u0012\u00020\u0015\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0003\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0002\u0008\nH\u0007\u00a2\u0006\u0002\u0010\u0017\u001aP\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2>\u0008\u0002\u0010\u001c\u001a8\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u001e\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0 0\u0014\u001a\u0015\u0010!\u001a\u00020\t*\u00020\"2\u0006\u0010#\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020\t*\u00020\"2\u0006\u0010#\u001a\u00020$H\u0087\u0004\u001a\u00ac\u0001\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020(2\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u001f\u0008\u0002\u0010\u0006\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0008\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2%\u0008\u0002\u0010\u000f\u001a\u001f\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000721\u0010\u0013\u001a-\u0012\u0004\u0012\u00020\u0015\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0003\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0002\u0008\nH\u0007\u00a2\u0006\u0002\u0010)\"\u0010\u0010&\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "AnimatedContent",
        "",
        "S",
        "targetState",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "transitionSpec",
        "Lkotlin/Function1;",
        "Landroidx/compose/animation/AnimatedContentTransitionScope;",
        "Landroidx/compose/animation/ContentTransform;",
        "Lkotlin/ExtensionFunctionType;",
        "contentAlignment",
        "Landroidx/compose/ui/Alignment;",
        "label",
        "",
        "contentKey",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "content",
        "Lkotlin/Function2;",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V",
        "SizeTransform",
        "Landroidx/compose/animation/SizeTransform;",
        "clip",
        "",
        "sizeAnimationSpec",
        "Landroidx/compose/ui/unit/IntSize;",
        "initialSize",
        "targetSize",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "togetherWith",
        "Landroidx/compose/animation/EnterTransition;",
        "exit",
        "Landroidx/compose/animation/ExitTransition;",
        "with",
        "UnspecifiedSize",
        "J",
        "Landroidx/compose/animation/core/Transition;",
        "(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V",
        "animation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final UnspecifiedSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 703
    const/high16 v0, -0x80000000

    .local v0, "width$iv":I
    const/high16 v1, -0x80000000

    .local v1, "height$iv":I
    const/4 v2, 0x0

    .line 1057
    .local v2, "$i$f$IntSize":I
    move v3, v1

    .local v3, "val2$iv$iv":I
    move v4, v0

    .local v4, "val1$iv$iv":I
    const/4 v5, 0x0

    .line 1058
    .local v5, "$i$f$packInts":I
    int-to-long v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long v3, v6, v8

    .line 1057
    .end local v3    # "val2$iv$iv":I
    .end local v4    # "val1$iv$iv":I
    .end local v5    # "$i$f$packInts":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    .line 703
    .end local v0    # "width$iv":I
    .end local v1    # "height$iv":I
    .end local v2    # "$i$f$IntSize":I
    sput-wide v0, Landroidx/compose/animation/AnimatedContentKt;->UnspecifiedSize:J

    return-void
.end method

.method public static final AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 33
    .param p0, "$this$AnimatedContent"    # Landroidx/compose/animation/core/Transition;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "transitionSpec"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "contentKey"    # Lkotlin/jvm/functions/Function1;
    .param p5, "content"    # Lkotlin/jvm/functions/Function4;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "TS;>;",
            "Landroidx/compose/animation/ContentTransform;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope;",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 774
    move-object/from16 v1, p0

    move/from16 v7, p7

    const v0, 0x1e804e2f

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(AnimatedContent)P(3,4,1,2)765@38134L226,771@38459L6,774@38592L7,776@38628L114,780@38830L51,781@38903L69,867@43438L58,868@43530L45,874@43785L52,869@43580L264:AnimatedContent.kt#xbi5r1"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p7

    .local v2, "$dirty":I
    and-int/lit8 v3, v7, 0x6

    if-nez v3, :cond_1

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, p8, 0x1

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v5, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v5, v7, 0x30

    if-nez v5, :cond_4

    move-object/from16 v5, p1

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_1

    :cond_3
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v2, v6

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    :goto_2
    and-int/lit8 v6, p8, 0x2

    if-eqz v6, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v8, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v8, v7, 0x180

    if-nez v8, :cond_7

    move-object/from16 v8, p2

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x100

    goto :goto_3

    :cond_6
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v2, v10

    goto :goto_4

    :cond_7
    move-object/from16 v8, p2

    :goto_4
    and-int/lit8 v10, p8, 0x4

    if-eqz v10, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v11, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v11, v7, 0xc00

    if-nez v11, :cond_a

    move-object/from16 v11, p3

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x800

    goto :goto_5

    :cond_9
    const/16 v12, 0x400

    :goto_5
    or-int/2addr v2, v12

    goto :goto_6

    :cond_a
    move-object/from16 v11, p3

    :goto_6
    and-int/lit8 v12, p8, 0x8

    if-eqz v12, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move-object/from16 v13, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v13, v7, 0x6000

    if-nez v13, :cond_d

    move-object/from16 v13, p4

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_7

    :cond_c
    const/16 v14, 0x2000

    :goto_7
    or-int/2addr v2, v14

    goto :goto_8

    :cond_d
    move-object/from16 v13, p4

    :goto_8
    const/high16 v14, 0x30000

    and-int/2addr v14, v7

    if-nez v14, :cond_f

    move-object/from16 v14, p5

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/high16 v15, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v15, 0x10000

    :goto_9
    or-int/2addr v2, v15

    goto :goto_a

    :cond_f
    move-object/from16 v14, p5

    :goto_a
    move v15, v2

    .end local v2    # "$dirty":I
    .local v15, "$dirty":I
    const v2, 0x12493

    and-int/2addr v2, v15

    const v4, 0x12492

    if-eq v2, v4, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    :goto_b
    and-int/lit8 v4, v15, 0x1

    invoke-interface {v9, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz v3, :cond_11

    .line 765
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_c

    .line 774
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_11
    move-object v2, v5

    .line 765
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_c
    const-string v3, "CC(remember):AnimatedContent.kt#9igjgp"

    if-eqz v6, :cond_13

    .line 766
    const v4, 0x7fa59271

    invoke-static {v9, v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv":Z
    move-object v5, v9

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 972
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 973
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_12

    .line 974
    const/4 v2, 0x0

    .line 766
    .local v2, "$i$a$-cache-AnimatedContentKt$AnimatedContent$4":I
    sget-object v20, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 974
    .end local v2    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$4":I
    move-object/from16 v2, v20

    .line 975
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 976
    move-object v0, v2

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_d

    .line 977
    :cond_12
    nop

    .line 972
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_d
    nop

    .line 766
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .end local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local v0, "transitionSpec":Lkotlin/jvm/functions/Function1;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v8, v0

    goto :goto_e

    .line 765
    .end local v0    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    :cond_13
    move-object/from16 p1, v2

    .line 766
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local v8, "transitionSpec":Lkotlin/jvm/functions/Function1;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    if-eqz v10, :cond_14

    .line 771
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    move-object v11, v0

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v11, "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_14
    if-eqz v12, :cond_16

    .line 772
    const v0, 0x7fa5ba35

    invoke-static {v9, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v2, v9

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 978
    .local v4, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 979
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v5, v10, :cond_15

    .line 980
    const/4 v10, 0x0

    .line 772
    .local v10, "$i$a$-cache-AnimatedContentKt$AnimatedContent$5":I
    sget-object v12, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 980
    .end local v10    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$5":I
    nop

    .line 981
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 982
    move-object v5, v12

    .end local v12    # "value$iv":Ljava/lang/Object;
    goto :goto_f

    .line 983
    :cond_15
    nop

    .line 978
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_f
    nop

    .line 772
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v0, v5

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .end local p4    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v0, "contentKey":Lkotlin/jvm/functions/Function1;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v13, v0

    .end local v0    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v13, "contentKey":Lkotlin/jvm/functions/Function1;
    :cond_16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_17

    const-string/jumbo v0, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)"

    const v4, 0x1e804e2f

    invoke-static {v4, v15, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 775
    :cond_17
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    move-object v5, v9

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 984
    .local v6, "$i$f$getCurrent":I
    const v10, 0x789c5f52

    const-string v12, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v5, v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 775
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$getCurrent":I
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 777
    .local v10, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    const v0, 0x7fa5cfc1

    invoke-static {v9, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v15, 0xe

    const/4 v4, 0x4

    if-ne v0, v4, :cond_18

    const/4 v0, 0x1

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    :goto_10
    move-object v4, v9

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 985
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 986
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_1a

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v6, v2, :cond_19

    goto :goto_11

    .line 990
    :cond_19
    move/from16 p3, v0

    goto :goto_12

    .line 987
    :cond_1a
    :goto_11
    const/4 v2, 0x0

    .line 778
    .local v2, "$i$a$-cache-AnimatedContentKt$AnimatedContent$rootScope$1":I
    move/from16 p3, v0

    .end local v0    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    new-instance v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-direct {v0, v1, v11, v10}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 987
    .end local v2    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$rootScope$1":I
    nop

    .line 988
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 989
    move-object v6, v0

    .line 985
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_12
    nop

    .line 777
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    move-object v4, v6

    check-cast v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 776
    nop

    .line 781
    .local v4, "rootScope":Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    const v0, 0x7fa5e8c2

    invoke-static {v9, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v15, 0xe

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    const/4 v0, 0x1

    goto :goto_13

    :cond_1b
    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    :goto_13
    move-object v2, v9

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 991
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 992
    .restart local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_1d

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v0

    .end local v0    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_1c

    goto :goto_14

    .line 996
    :cond_1c
    goto :goto_15

    .line 992
    .end local p3    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_1d
    move/from16 p3, v0

    .line 993
    .end local v0    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    :goto_14
    const/4 v0, 0x0

    .line 781
    .local v0, "$i$a$-cache-AnimatedContentKt$AnimatedContent$currentlyVisible$1":I
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf([Ljava/lang/Object;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    .line 993
    .end local v0    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$currentlyVisible$1":I
    nop

    .line 994
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 995
    move-object v6, v0

    .line 991
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_15
    nop

    .line 781
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    move-object v5, v6

    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v5, "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 782
    const v0, 0x7fa5f1f4

    invoke-static {v9, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v15, 0xe

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1e

    const/4 v0, 0x1

    goto :goto_16

    :cond_1e
    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    :goto_16
    move-object v2, v9

    .restart local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 997
    .local v6, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 998
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_20

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v0

    .end local v0    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v12, v0, :cond_1f

    goto :goto_17

    .line 1002
    :cond_1f
    goto :goto_18

    .line 998
    .end local p3    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_20
    move/from16 p3, v0

    .line 999
    .end local v0    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    :goto_17
    const/4 v0, 0x0

    .line 782
    .local v0, "$i$a$-cache-AnimatedContentKt$AnimatedContent$contentMap$1":I
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    .line 999
    .end local v0    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$contentMap$1":I
    nop

    .line 1000
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1001
    move-object v12, v0

    .line 997
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_18
    nop

    .line 782
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v12, Landroidx/collection/MutableScatterMap;

    .local v12, "contentMap":Landroidx/collection/MutableScatterMap;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 786
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 787
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 788
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_21
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 791
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_19

    :cond_22
    const/4 v0, 0x0

    .line 792
    :goto_19
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 793
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_23
    invoke-virtual {v12}, Landroidx/collection/MutableScatterMap;->getSize()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_24

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 796
    :cond_24
    invoke-virtual {v12}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 799
    :cond_25
    invoke-virtual {v4, v11}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->setContentAlignment(Landroidx/compose/ui/Alignment;)V

    .line 800
    invoke-virtual {v4, v10}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->setLayoutDirection$animation(Landroidx/compose/ui/unit/LayoutDirection;)V

    goto :goto_1a

    .line 790
    :cond_26
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 806
    :goto_1a
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 808
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1003
    .local v2, "$i$f$indexOfFirst":I
    const/16 v16, 0x0

    .line 1004
    .local v16, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 1005
    .local v19, "item$iv":Ljava/lang/Object;
    move-object/from16 p3, v19

    .local p3, "it":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 808
    .local v20, "$i$a$-indexOfFirst-AnimatedContentKt$AnimatedContent$id$1":I
    move-object/from16 v6, p3

    move-object/from16 p3, v0

    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .local v6, "it":Ljava/lang/Object;
    .local p3, "$this$indexOfFirst$iv":Ljava/util/List;
    invoke-interface {v13, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1005
    .end local v6    # "it":Ljava/lang/Object;
    .end local v20    # "$i$a$-indexOfFirst-AnimatedContentKt$AnimatedContent$id$1":I
    if-eqz v0, :cond_27

    .line 1006
    goto :goto_1c

    .line 1007
    :cond_27
    nop

    .end local v19    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v16, v16, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    goto :goto_1b

    .line 1009
    .end local p3    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    :cond_28
    move-object/from16 p3, v0

    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local p3    # "$this$indexOfFirst$iv":Ljava/util/List;
    const/16 v16, -0x1

    .line 808
    .end local v2    # "$i$f$indexOfFirst":I
    .end local v16    # "index$iv":I
    .end local p3    # "$this$indexOfFirst$iv":Ljava/util/List;
    :goto_1c
    move/from16 v0, v16

    .line 809
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 812
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 815
    .end local v0    # "id":I
    :cond_2a
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_1e

    :cond_2b
    const v0, 0x72cb6333

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 p2, v8

    move-object v8, v3

    move-object/from16 v3, p2

    move-object/from16 v7, p1

    move-object/from16 p2, v10

    goto/16 :goto_20

    :cond_2c
    :goto_1e
    const v0, 0x75350ad1

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "*817@40849L2545"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 816
    invoke-virtual {v12}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 817
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1010
    .local v16, "$i$f$fastForEach":I
    const/4 v1, 0x0

    .local v1, "index$iv":I
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_1f
    if-ge v1, v2, :cond_2d

    .line 1011
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 1012
    .local v18, "item$iv":Ljava/lang/Object;
    move v6, v2

    move-object/from16 v2, v18

    .local v2, "stateForContent":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 818
    .local v19, "$i$a$-fastForEach-AnimatedContentKt$AnimatedContent$6":I
    move-object/from16 v20, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v20, "$this$fastForEach$iv":Ljava/util/List;
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;

    move-object/from16 p2, v8

    move-object v8, v3

    move-object/from16 v3, p2

    move-object/from16 v7, p1

    move/from16 p1, v6

    move-object/from16 p2, v10

    move-object v6, v14

    const/4 v10, 0x1

    move v14, v1

    move-object/from16 v1, p0

    .end local v1    # "index$iv":I
    .end local v8    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .end local v10    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "index$iv":I
    .local p2, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function4;)V

    const/16 v1, 0x36

    const v6, -0x16ceaa7

    invoke-static {v6, v10, v0, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 866
    nop

    .line 1012
    .end local v2    # "stateForContent":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-AnimatedContentKt$AnimatedContent$6":I
    nop

    .line 1010
    .end local v18    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v1, v14, 0x1

    move-object v0, v8

    move-object v8, v3

    move-object v3, v0

    move/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v14, p5

    move-object/from16 p1, v7

    move-object/from16 v0, v20

    move/from16 v7, p7

    .end local v14    # "index$iv":I
    .restart local v1    # "index$iv":I
    goto :goto_1f

    .end local v3    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .end local v7    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local p2    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v8    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .restart local v10    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2d
    move-object/from16 p2, v8

    move-object v8, v3

    move-object/from16 v3, p2

    move-object/from16 v7, p1

    move-object/from16 v20, v0

    move v14, v1

    move-object/from16 p2, v10

    .line 1014
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "index$iv":I
    .end local v8    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .end local v10    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .restart local v7    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local p2    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    nop

    .line 815
    .end local v16    # "$i$f$fastForEach":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 868
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    const v1, 0x7fa828c9

    invoke-static {v9, v1, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v9

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 1015
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1016
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_2f

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v6, v14, :cond_2e

    goto :goto_21

    .line 1020
    :cond_2e
    goto :goto_22

    .line 1017
    :cond_2f
    :goto_21
    const/4 v14, 0x0

    .line 868
    .local v14, "$i$a$-cache-AnimatedContentKt$AnimatedContent$contentTransform$1":I
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/animation/ContentTransform;

    .line 1017
    .end local v14    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$contentTransform$1":I
    move-object/from16 v14, v16

    .line 1018
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1019
    move-object v6, v14

    .line 1015
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_22
    nop

    .line 868
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    move-object v0, v6

    check-cast v0, Landroidx/compose/animation/ContentTransform;

    .local v0, "contentTransform":Landroidx/compose/animation/ContentTransform;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 869
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v9, v1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->createSizeAnimationModifier$animation(Landroidx/compose/animation/ContentTransform;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 871
    .local v2, "sizeModifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v7, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 875
    const v6, 0x7fa85423

    invoke-static {v9, v6, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "invalid$iv":Z
    move-object v8, v9

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 1021
    .local v10, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1022
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v0

    .end local v0    # "contentTransform":Landroidx/compose/animation/ContentTransform;
    .local p1, "contentTransform":Landroidx/compose/animation/ContentTransform;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_30

    .line 1023
    const/4 v0, 0x0

    .line 875
    .local v0, "$i$a$-cache-AnimatedContentKt$AnimatedContent$7":I
    move/from16 p3, v0

    .end local v0    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$7":I
    .local p3, "$i$a$-cache-AnimatedContentKt$AnimatedContent$7":I
    new-instance v0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    invoke-direct {v0, v4}, Landroidx/compose/animation/AnimatedContentMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 1023
    .end local p3    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$7":I
    nop

    .line 1024
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1025
    move-object v14, v0

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_23

    .line 1026
    :cond_30
    nop

    .line 1021
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_23
    nop

    .line 875
    .end local v6    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v14, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 871
    nop

    .line 875
    check-cast v14, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 870
    nop

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v14, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v0, 0x180

    .local v0, "$changed$iv":I
    move-object v6, v9

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 1027
    .local v8, "$i$f$Layout":I
    const v10, -0x451e1427

    move/from16 p3, v0

    .end local v0    # "$changed$iv":I
    .local p3, "$changed$iv":I
    const-string v0, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v6, v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1028
    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 1029
    .local v0, "compositeKeyHash$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 1030
    .local v10, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 p4, v0

    .end local v0    # "compositeKeyHash$iv":I
    .local p4, "compositeKeyHash$iv":I
    invoke-static {v6, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1032
    .local v0, "materialized$iv":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    move-object/from16 p6, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p6, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, p3, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 1031
    nop

    .local v1, "$changed$iv$iv":I
    move-object/from16 v18, v16

    .local v18, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v6

    .local v16, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 1033
    .local v19, "$i$f$ReusableComposeNode":I
    move/from16 v20, v1

    .end local v1    # "$changed$iv$iv":I
    .local v20, "$changed$iv$iv":I
    const v1, -0x20f7d59c

    move-object/from16 v21, v2

    .end local v2    # "sizeModifier":Landroidx/compose/ui/Modifier;
    .local v21, "sizeModifier":Landroidx/compose/ui/Modifier;
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v22, v3

    move-object/from16 v3, v16

    .end local v16    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v22, "transitionSpec":Lkotlin/jvm/functions/Function1;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1034
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1035
    :cond_31
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1036
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1037
    move-object/from16 v1, v18

    .end local v18    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_24

    .line 1039
    .end local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_32
    move-object/from16 v1, v18

    .end local v18    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1041
    :goto_24
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1042
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v23, v1

    .end local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v23, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1043
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1044
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v3

    .end local v3    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v24, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1045
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1046
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1047
    nop

    .line 1041
    .end local v2    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 1048
    shr-int/lit8 v1, v20, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed":I
    move-object/from16 v2, v24

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 873
    .local v3, "$i$a$-Layout-AnimatedContentKt$AnimatedContent$8":I
    move-object/from16 v16, v0

    .end local v0    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .local v16, "materialized$iv":Landroidx/compose/ui/Modifier;
    const v0, -0x3561a254    # -5189334.0f

    move/from16 v18, v1

    .end local v1    # "$changed":I
    .local v18, "$changed":I
    const-string v1, "C:AnimatedContent.kt#xbi5r1"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, -0x334534ba    # -9.7933872E7f

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, ""

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v25, 0x0

    .line 1049
    .local v25, "$i$f$fastForEach":I
    const/16 v26, 0x0

    .local v26, "index$iv":I
    move-object/from16 v27, v1

    check-cast v27, Ljava/util/Collection;

    move/from16 v28, v3

    .end local v3    # "$i$a$-Layout-AnimatedContentKt$AnimatedContent$8":I
    .local v28, "$i$a$-Layout-AnimatedContentKt$AnimatedContent$8":I
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->size()I

    move-result v3

    move-object/from16 v27, v4

    move/from16 v4, v26

    .end local v26    # "index$iv":I
    .local v4, "index$iv":I
    .local v27, "rootScope":Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    :goto_25
    if-ge v4, v3, :cond_34

    .line 1050
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .line 1051
    .local v26, "item$iv":Ljava/lang/Object;
    move-object/from16 v29, v26

    .local v29, "it":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 873
    .local v30, "$i$a$-fastForEach-AnimatedContentKt$AnimatedContent$8$1":I
    move-object/from16 v31, v1

    move-object/from16 v1, v29

    move/from16 v29, v3

    .end local v29    # "it":Ljava/lang/Object;
    .local v1, "it":Ljava/lang/Object;
    .local v31, "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v13, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v32, v4

    .end local v4    # "index$iv":I
    .local v32, "index$iv":I
    const v4, -0x78c25a0a

    invoke-interface {v2, v4, v3}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    if-nez v3, :cond_33

    const v3, 0x6077a733

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v17, 0x0

    goto :goto_26

    :cond_33
    const v4, -0x78c25572

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "872@43737L8"

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_26
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    .line 1051
    .end local v1    # "it":Ljava/lang/Object;
    .end local v30    # "$i$a$-fastForEach-AnimatedContentKt$AnimatedContent$8$1":I
    nop

    .line 1049
    .end local v26    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v32, 0x1

    move/from16 v3, v29

    move-object/from16 v1, v31

    .end local v32    # "index$iv":I
    .restart local v4    # "index$iv":I
    goto :goto_25

    .end local v31    # "$this$fastForEach$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    :cond_34
    move-object/from16 v31, v1

    move/from16 v32, v4

    .line 1053
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "index$iv":I
    .restart local v31    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .end local v25    # "$i$f$fastForEach":I
    .end local v31    # "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 873
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 874
    nop

    .line 1048
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v18    # "$changed":I
    .end local v28    # "$i$a$-Layout-AnimatedContentKt$AnimatedContent$8":I
    nop

    .line 1054
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1033
    invoke-static/range {v24 .. v24}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1055
    nop

    .line 1027
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v20    # "$changed$iv$iv":I
    .end local v23    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1056
    nop

    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$Layout":I
    .end local v10    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v16    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local p3    # "$changed$iv":I
    .end local p4    # "compositeKeyHash$iv":I
    .end local p6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 877
    .end local v5    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v12    # "contentMap":Landroidx/collection/MutableScatterMap;
    .end local v21    # "sizeModifier":Landroidx/compose/ui/Modifier;
    .end local v27    # "rootScope":Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    .end local p1    # "contentTransform":Landroidx/compose/animation/ContentTransform;
    .end local p2    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    :cond_35
    move-object v2, v7

    move-object/from16 v3, v22

    move-object v4, v11

    move-object v5, v13

    goto :goto_27

    .line 764
    .end local v7    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v11    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local v13    # "contentKey":Lkotlin/jvm/functions/Function1;
    .end local v22    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local p1, "modifier":Landroidx/compose/ui/Modifier;
    .local p2, "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local p3, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local p4, "contentKey":Lkotlin/jvm/functions/Function1;
    :cond_36
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v5

    move-object v3, v8

    move-object v4, v11

    move-object v5, v13

    .line 877
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local p4    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local v4, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v5, "contentKey":Lkotlin/jvm/functions/Function1;
    :goto_27
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_37

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_37
    return-void
.end method

.method public static final AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0, "targetState"    # Ljava/lang/Object;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "transitionSpec"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "contentKey"    # Lkotlin/jvm/functions/Function1;
    .param p6, "content"    # Lkotlin/jvm/functions/Function4;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "TS;>;",
            "Landroidx/compose/animation/ContentTransform;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope;",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 141
    move-object/from16 v1, p0

    move/from16 v8, p8

    const v0, 0x598416e0

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(AnimatedContent)P(5,4,6,1,3,2)131@7139L226,138@7503L6,141@7610L58,142@7684L137:AnimatedContent.kt#xbi5r1"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p8

    .local v2, "$dirty":I
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_2

    and-int/lit8 v3, v8, 0x8

    if-nez v3, :cond_0

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v2, v3

    :cond_2
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v8, 0x180

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v9, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v8, 0xc00

    if-nez v9, :cond_b

    move-object/from16 v9, p3

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v2, v10

    goto :goto_7

    :cond_b
    move-object/from16 v9, p3

    :goto_7
    and-int/lit8 v10, p9, 0x10

    if-eqz v10, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move-object/from16 v11, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v11, v8, 0x6000

    if-nez v11, :cond_e

    move-object/from16 v11, p4

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_8

    :cond_d
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v2, v12

    goto :goto_9

    :cond_e
    move-object/from16 v11, p4

    :goto_9
    and-int/lit8 v12, p9, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_f

    or-int/2addr v2, v13

    move-object/from16 v13, p5

    goto :goto_b

    :cond_f
    and-int/2addr v13, v8

    if-nez v13, :cond_11

    move-object/from16 v13, p5

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v2, v14

    goto :goto_b

    :cond_11
    move-object/from16 v13, p5

    :goto_b
    const/high16 v14, 0x180000

    and-int/2addr v14, v8

    if-nez v14, :cond_13

    move-object/from16 v14, p6

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v16, 0x80000

    :goto_c
    or-int v2, v2, v16

    goto :goto_d

    :cond_13
    move-object/from16 v14, p6

    :goto_d
    const v16, 0x92493

    and-int v0, v2, v16

    move/from16 p7, v3

    const v3, 0x92492

    if-eq v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v15, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p7, :cond_15

    .line 131
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move/from16 v21, v10

    move-object v10, v0

    move/from16 v0, v21

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_f

    .line 141
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_15
    move v0, v10

    move-object/from16 v10, p1

    .line 131
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    const-string v3, "CC(remember):AnimatedContent.kt#9igjgp"

    if-eqz v5, :cond_17

    .line 132
    const v5, 0x8d9f3a2

    invoke-static {v15, v5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "invalid$iv":Z
    move-object/from16 p1, v15

    .local p1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 960
    .local v16, "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 961
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_16

    .line 962
    const/4 v0, 0x0

    .line 132
    .local v0, "$i$a$-cache-AnimatedContentKt$AnimatedContent$1":I
    sget-object v19, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$1$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$1$1;

    check-cast v19, Lkotlin/jvm/functions/Function1;

    .line 962
    .end local v0    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$1":I
    move-object/from16 v0, v19

    .line 963
    .local v0, "value$iv":Ljava/lang/Object;
    move-object/from16 v19, v4

    move-object/from16 v4, p1

    .end local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v19, "it$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 964
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_10

    .line 965
    .end local v19    # "it$iv":Ljava/lang/Object;
    .local v4, "it$iv":Ljava/lang/Object;
    .restart local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_16
    move-object/from16 v19, v4

    move-object/from16 v4, p1

    .end local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v19    # "it$iv":Ljava/lang/Object;
    move-object/from16 v0, v19

    .line 960
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v19    # "it$iv":Ljava/lang/Object;
    :goto_10
    nop

    .line 132
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "invalid$iv":Z
    .end local v16    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .end local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local v0, "transitionSpec":Lkotlin/jvm/functions/Function1;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v11, v0

    goto :goto_11

    .line 131
    .end local v0    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .restart local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    :cond_17
    move/from16 v20, v0

    move-object v11, v6

    .line 132
    .end local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function1;
    :goto_11
    if-eqz v7, :cond_18

    .line 137
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    move/from16 v21, v12

    move-object v12, v0

    move/from16 v0, v21

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v0, "contentAlignment":Landroidx/compose/ui/Alignment;
    goto :goto_12

    .line 132
    .end local v0    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_18
    move v0, v12

    move-object v12, v9

    .line 137
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v12, "contentAlignment":Landroidx/compose/ui/Alignment;
    :goto_12
    if-eqz v20, :cond_19

    .line 138
    const-string v4, "AnimatedContent"

    .end local p4    # "label":Ljava/lang/String;
    .local v4, "label":Ljava/lang/String;
    goto :goto_13

    .line 137
    .end local v4    # "label":Ljava/lang/String;
    .restart local p4    # "label":Ljava/lang/String;
    :cond_19
    move-object/from16 v4, p4

    .line 138
    .end local p4    # "label":Ljava/lang/String;
    .restart local v4    # "label":Ljava/lang/String;
    :goto_13
    if-eqz v0, :cond_1b

    .line 139
    const v0, 0x8da2046

    invoke-static {v15, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v3, v15

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 966
    .local v5, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 967
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v6, v9, :cond_1a

    .line 968
    const/4 v9, 0x0

    .line 139
    .local v9, "$i$a$-cache-AnimatedContentKt$AnimatedContent$2":I
    sget-object v16, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$2$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$2$1;

    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 968
    .end local v9    # "$i$a$-cache-AnimatedContentKt$AnimatedContent$2":I
    move-object/from16 v9, v16

    .line 969
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 970
    move-object v6, v9

    .end local v9    # "value$iv":Ljava/lang/Object;
    goto :goto_14

    .line 971
    :cond_1a
    nop

    .line 966
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_14
    nop

    .line 139
    .end local v0    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v0, v6

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .end local p5    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v0, "contentKey":Lkotlin/jvm/functions/Function1;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v13, v0

    .end local v0    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v13, "contentKey":Lkotlin/jvm/functions/Function1;
    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, -0x1

    const-string/jumbo v3, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)"

    const v5, 0x598416e0

    invoke-static {v5, v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 142
    :cond_1c
    and-int/lit8 v0, v2, 0x8

    and-int/lit8 v3, v2, 0xe

    or-int/2addr v0, v3

    shr-int/lit8 v3, v2, 0x9

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v1, v4, v15, v0, v3}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v9

    .line 143
    .local v9, "transition":Landroidx/compose/animation/core/Transition;
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    and-int/lit8 v0, v2, 0x70

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    shr-int/lit8 v3, v2, 0x3

    const v5, 0xe000

    and-int/2addr v3, v5

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v3, v5

    or-int v16, v0, v3

    .line 143
    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 150
    .end local v9    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_1d
    move-object v5, v4

    move-object v3, v11

    move-object v4, v12

    move-object v6, v13

    goto :goto_15

    .line 129
    .end local v4    # "label":Ljava/lang/String;
    .end local v10    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v11    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .end local v12    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local v13    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local p1, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local p4    # "label":Ljava/lang/String;
    .restart local p5    # "contentKey":Lkotlin/jvm/functions/Function1;
    :cond_1e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v10, p1

    move-object/from16 v5, p4

    move-object v3, v6

    move-object v4, v9

    move-object v6, v13

    .line 150
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "transitionSpec":Lkotlin/jvm/functions/Function1;
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local p4    # "label":Ljava/lang/String;
    .end local p5    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v3, "transitionSpec":Lkotlin/jvm/functions/Function1;
    .local v4, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v5, "label":Ljava/lang/String;
    .local v6, "contentKey":Lkotlin/jvm/functions/Function1;
    .restart local v10    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_15
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_1f

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;

    move-object v7, v10

    move v10, v2

    move-object v2, v7

    move-object/from16 v7, p6

    move/from16 v9, p9

    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "$dirty":I
    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_16

    .local v2, "$dirty":I
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1f
    move-object/from16 v21, v10

    move v10, v2

    move-object/from16 v2, v21

    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "$dirty":I
    :goto_16
    return-void
.end method

.method public static final SizeTransform(ZLkotlin/jvm/functions/Function2;)Landroidx/compose/animation/SizeTransform;
    .locals 1
    .param p0, "clip"    # Z
    .param p1, "sizeAnimationSpec"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;)",
            "Landroidx/compose/animation/SizeTransform;"
        }
    .end annotation

    .line 226
    new-instance v0, Landroidx/compose/animation/SizeTransformImpl;

    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/SizeTransformImpl;-><init>(ZLkotlin/jvm/functions/Function2;)V

    check-cast v0, Landroidx/compose/animation/SizeTransform;

    return-object v0
.end method

.method public static synthetic SizeTransform$default(ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/compose/animation/SizeTransform;
    .locals 0

    .line 217
    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 218
    const/4 p0, 0x1

    .line 217
    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    .line 220
    sget-object p1, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 217
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/AnimatedContentKt;->SizeTransform(ZLkotlin/jvm/functions/Function2;)Landroidx/compose/animation/SizeTransform;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUnspecifiedSize$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/animation/AnimatedContentKt;->UnspecifiedSize:J

    return-wide v0
.end method

.method public static final togetherWith(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;
    .locals 7
    .param p0, "$this$togetherWith"    # Landroidx/compose/animation/EnterTransition;
    .param p1, "exit"    # Landroidx/compose/animation/ExitTransition;

    .line 269
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "$this$togetherWith":Landroidx/compose/animation/EnterTransition;
    .end local p1    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v1, "$this$togetherWith":Landroidx/compose/animation/EnterTransition;
    .local v2, "exit":Landroidx/compose/animation/ExitTransition;
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final with(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;
    .locals 7
    .param p0, "$this$with"    # Landroidx/compose/animation/EnterTransition;
    .param p1, "exit"    # Landroidx/compose/animation/ExitTransition;
    .annotation runtime Lkotlin/Deprecated;
        message = "Infix fun EnterTransition.with(ExitTransition) has been renamed to togetherWith"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "togetherWith(exit)"
            imports = {}
        .end subannotation
    .end annotation

    .line 277
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "$this$with":Landroidx/compose/animation/EnterTransition;
    .end local p1    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v1, "$this$with":Landroidx/compose/animation/EnterTransition;
    .local v2, "exit":Landroidx/compose/animation/ExitTransition;
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
