.class final Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;
.super Ljava/lang/Object;
.source "SimpleLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SimpleLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleLayout.kt\nandroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,45:1\n151#2,2:46\n35#2,5:48\n153#2:53\n35#2,5:54\n*S KotlinDebug\n*F\n+ 1 SimpleLayout.kt\nandroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1\n*L\n36#1:46,2\n36#1:48,5\n36#1:53\n42#1:54,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final measure_3p2s80s$lambda$1(Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 13
    .param p0, "$placeables"    # Ljava/util/List;
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 42
    move-object v0, p0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 54
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .local v6, "placeable":Landroidx/compose/ui/layout/Placeable;
    const/4 v12, 0x0

    .line 42
    .local v12, "$i$a$-fastForEach-SimpleLayoutKt$SimpleLayout$1$1$1$1":I
    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    .end local p1    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v5, "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 56
    .end local v6    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v12    # "$i$a$-fastForEach-SimpleLayoutKt$SimpleLayout$1$1$1$1":I
    nop

    .line 54
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local p1    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    :cond_0
    move-object v5, p1

    .line 58
    .end local v2    # "index$iv":I
    .end local p1    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v5    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    nop

    .line 42
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 19
    .param p1, "$this$Layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "width":I
    const/4 v1, 0x0

    .line 36
    .local v1, "height":I
    move-object/from16 v2, p2

    .local v2, "$this$fastMap$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$f$fastMap":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 48
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    move v10, v0

    move v11, v1

    .end local v0    # "width":I
    .end local v1    # "height":I
    .local v10, "width":I
    .local v11, "height":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 49
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "item$iv$iv":Ljava/lang/Object;
    move-object v1, v0

    .local v1, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 47
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    move-object v12, v4

    check-cast v12, Ljava/util/Collection;

    move-object v13, v1

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .local v13, "measurable":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 37
    .local v14, "$i$a$-fastMap-SimpleLayoutKt$SimpleLayout$1$1$placeables$1":I
    move-object/from16 v17, v0

    move/from16 v16, v14

    move-wide/from16 v14, p3

    .end local v0    # "item$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastMap-SimpleLayoutKt$SimpleLayout$1$1$placeables$1":I
    .local v16, "$i$a$-fastMap-SimpleLayoutKt$SimpleLayout$1$1$placeables$1":I
    .local v17, "item$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 38
    .local v0, "placeable":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v18, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v18, "it$iv":Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 40
    nop

    .line 47
    .end local v0    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v13    # "measurable":Landroidx/compose/ui/layout/Measurable;
    .end local v16    # "$i$a$-fastMap-SimpleLayoutKt$SimpleLayout$1$1$placeables$1":I
    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    .end local v18    # "it$iv":Ljava/lang/Object;
    nop

    .line 48
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v14, p3

    .line 52
    .end local v7    # "index$iv$iv":I
    nop

    .line 53
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 36
    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMap":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 35
    nop

    .line 42
    .local v0, "placeables":Ljava/util/List;
    new-instance v13, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
