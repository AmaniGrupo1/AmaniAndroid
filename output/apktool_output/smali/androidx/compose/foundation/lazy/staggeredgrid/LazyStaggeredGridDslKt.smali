.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;
.super Ljava/lang/Object;
.source "LazyStaggeredGridDsl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridDsl.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 6 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,512:1\n122#2:513\n122#2:514\n122#2:515\n122#2:516\n122#2:517\n122#2:518\n122#2:525\n122#2:526\n122#2:527\n122#2:528\n122#2:529\n122#2:530\n1128#3,6:519\n1128#3,6:531\n1#4:537\n97#5,4:538\n97#5,4:543\n49#6:542\n49#6:547\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridDsl.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt\n*L\n74#1:513\n76#1:514\n77#1:515\n105#1:516\n107#1:517\n108#1:518\n195#1:525\n197#1:526\n198#1:527\n226#1:528\n228#1:529\n229#1:530\n135#1:519,6\n256#1:531,6\n137#1:538,4\n258#1:543,4\n141#1:542\n262#1:547\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u001a\u008c\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0017\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u0016\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a\u0080\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0017\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u0016\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\tH\u0003\u00a2\u0006\u0002\u0010\u001f\u001a\u008c\u0001\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0017\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u0016\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0004\u0008%\u0010&\u001a\u0080\u0001\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0017\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u0016\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0004\u0008\'\u0010(\u001a%\u0010)\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0008\u001a\u00020\tH\u0003\u00a2\u0006\u0002\u0010*\u001a\u00d0\u0001\u0010+\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010,*\u00020\u00172\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H,0-2%\u0008\n\u0010.\u001a\u001f\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u000202\u0018\u00010\u00162%\u0008\u0006\u00103\u001a\u001f\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0006\u0012\u0004\u0018\u0001020\u00162%\u0008\n\u00104\u001a\u001f\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u000205\u0018\u00010\u001623\u0008\u0004\u00106\u001a-\u0012\u0004\u0012\u000208\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u00020\u000107\u00a2\u0006\u0002\u00089\u00a2\u0006\u0002\u0008\u0018H\u0086\u0008\u00a2\u0006\u0002\u0010:\u001a\u00a4\u0002\u0010;\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010,*\u00020\u00172\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H,0-2:\u0008\n\u0010.\u001a4\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(=\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u000202\u0018\u0001072:\u0008\u0006\u00103\u001a4\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(=\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0006\u0012\u0004\u0018\u000102072:\u0008\n\u00104\u001a4\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(=\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u000205\u0018\u0001072H\u0008\u0004\u00106\u001aB\u0012\u0004\u0012\u000208\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(=\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u00020\u00010>\u00a2\u0006\u0002\u00089\u00a2\u0006\u0002\u0008\u0018H\u0086\u0008\u00a2\u0006\u0002\u0010?\u001a\u00d0\u0001\u0010+\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010,*\u00020\u00172\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H,0@2%\u0008\n\u0010.\u001a\u001f\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u000202\u0018\u00010\u00162%\u0008\u0006\u00103\u001a\u001f\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0006\u0012\u0004\u0018\u0001020\u00162%\u0008\n\u00104\u001a\u001f\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u000205\u0018\u00010\u001623\u0008\u0004\u00106\u001a-\u0012\u0004\u0012\u000208\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u00020\u000107\u00a2\u0006\u0002\u00089\u00a2\u0006\u0002\u0008\u0018H\u0086\u0008\u00a2\u0006\u0002\u0010A\u001a\u00a4\u0002\u0010;\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010,*\u00020\u00172\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H,0@2:\u0008\n\u0010.\u001a4\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(=\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u000202\u0018\u0001072:\u0008\u0006\u00103\u001a4\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(=\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0006\u0012\u0004\u0018\u000102072:\u0008\n\u00104\u001a4\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(=\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u000205\u0018\u0001072H\u0008\u0004\u00106\u001aB\u0012\u0004\u0012\u000208\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(=\u0012\u0013\u0012\u0011H,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u00020\u00010>\u00a2\u0006\u0002\u00089\u00a2\u0006\u0002\u0008\u0018H\u0086\u0008\u00a2\u0006\u0002\u0010B\u00a8\u0006C"
    }
    d2 = {
        "LazyVerticalStaggeredGrid",
        "",
        "columns",
        "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "verticalItemSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "userScrollEnabled",
        "overscrollEffect",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
        "Lkotlin/ExtensionFunctionType;",
        "LazyVerticalStaggeredGrid-6qCrX9Q",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "LazyVerticalStaggeredGrid-zadm560",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "rememberColumnSlots",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;",
        "LazyHorizontalStaggeredGrid",
        "rows",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalItemSpacing",
        "LazyHorizontalStaggeredGrid-121YqSk",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "LazyHorizontalStaggeredGrid-cJHQLPU",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "rememberRowSlots",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;",
        "items",
        "T",
        "",
        "key",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "contentType",
        "span",
        "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
        "itemContent",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "itemsIndexed",
        "",
        "index",
        "Lkotlin/Function3;",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V",
        "",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$KmcLpbfEa4JnZ7WDM15dY6y6cv0(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->rememberColumnSlots$lambda$0$0(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oghxAD6TYxvQH8FIEk2KTiQ3LN8(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->rememberRowSlots$lambda$0$0(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    move-result-object p0

    return-object p0
.end method

.method public static final LazyHorizontalStaggeredGrid-121YqSk(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 31
    .param p0, "rows"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "state"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "reverseLayout"    # Z
    .param p5, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p6, "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0"    # F
    .param p7, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p8, "userScrollEnabled"    # Z
    .param p9, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p10, "content"    # Lkotlin/jvm/functions/Function1;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "F",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 203
    move-object/from16 v1, p0

    move/from16 v12, p12

    move/from16 v14, p14

    const v0, -0x27fa9d1c

    move-object/from16 v2, p11

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(LazyHorizontalStaggeredGrid)N(rows,modifier,state,contentPadding,reverseLayout,verticalArrangement,horizontalItemSpacing:c#ui.unit.Dp,flingBehavior,userScrollEnabled,overscrollEffect,content)214@9926L59,203@9477L542:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p12

    .local v3, "$dirty":I
    move/from16 v4, p13

    .local v4, "$dirty1":I
    and-int/lit8 v5, v12, 0x6

    if-nez v5, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v3, v5

    :cond_1
    and-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_2

    or-int/lit8 v3, v3, 0x30

    move-object/from16 v8, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v8, v12, 0x30

    if-nez v8, :cond_4

    move-object/from16 v8, p1

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_1

    :cond_3
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v3, v9

    goto :goto_2

    :cond_4
    move-object/from16 v8, p1

    :goto_2
    and-int/lit16 v9, v12, 0x180

    if-nez v9, :cond_7

    and-int/lit8 v9, v14, 0x4

    if-nez v9, :cond_5

    move-object/from16 v9, p2

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x100

    goto :goto_3

    :cond_5
    move-object/from16 v9, p2

    :cond_6
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v3, v10

    goto :goto_4

    :cond_7
    move-object/from16 v9, p2

    :goto_4
    and-int/lit8 v10, v14, 0x8

    if-eqz v10, :cond_8

    or-int/lit16 v3, v3, 0xc00

    move-object/from16 v11, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v11, v12, 0xc00

    if-nez v11, :cond_a

    move-object/from16 v11, p3

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x800

    goto :goto_5

    :cond_9
    const/16 v13, 0x400

    :goto_5
    or-int/2addr v3, v13

    goto :goto_6

    :cond_a
    move-object/from16 v11, p3

    :goto_6
    and-int/lit8 v13, v14, 0x10

    if-eqz v13, :cond_b

    or-int/lit16 v3, v3, 0x6000

    move/from16 v15, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v15, v12, 0x6000

    if-nez v15, :cond_d

    move/from16 v15, p4

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_7

    :cond_c
    const/16 v16, 0x2000

    :goto_7
    or-int v3, v3, v16

    goto :goto_8

    :cond_d
    move/from16 v15, p4

    :goto_8
    and-int/lit8 v16, v14, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_e

    or-int v3, v3, v17

    move-object/from16 v7, p5

    goto :goto_a

    :cond_e
    and-int v17, v12, v17

    if-nez v17, :cond_10

    move-object/from16 v7, p5

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v17, 0x10000

    :goto_9
    or-int v3, v3, v17

    goto :goto_a

    :cond_10
    move-object/from16 v7, p5

    :goto_a
    and-int/lit8 v17, v14, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_11

    or-int v3, v3, v18

    move/from16 v0, p6

    goto :goto_c

    :cond_11
    and-int v18, v12, v18

    if-nez v18, :cond_13

    move/from16 v0, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v19, 0x80000

    :goto_b
    or-int v3, v3, v19

    goto :goto_c

    :cond_13
    move/from16 v0, p6

    :goto_c
    const/high16 v19, 0xc00000

    and-int v19, v12, v19

    if-nez v19, :cond_16

    and-int/lit16 v6, v14, 0x80

    if-nez v6, :cond_14

    move-object/from16 v6, p7

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_d

    :cond_14
    move-object/from16 v6, p7

    :cond_15
    const/high16 v20, 0x400000

    :goto_d
    or-int v3, v3, v20

    goto :goto_e

    :cond_16
    move-object/from16 v6, p7

    :goto_e
    and-int/lit16 v0, v14, 0x100

    const/high16 v20, 0x6000000

    if-eqz v0, :cond_17

    or-int v3, v3, v20

    move/from16 v20, v0

    move/from16 v0, p8

    goto :goto_10

    :cond_17
    and-int v20, v12, v20

    if-nez v20, :cond_19

    move/from16 v20, v0

    move/from16 v0, p8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_18

    const/high16 v21, 0x4000000

    goto :goto_f

    :cond_18
    const/high16 v21, 0x2000000

    :goto_f
    or-int v3, v3, v21

    goto :goto_10

    :cond_19
    move/from16 v20, v0

    move/from16 v0, p8

    :goto_10
    const/high16 v21, 0x30000000

    and-int v21, v12, v21

    if-nez v21, :cond_1c

    and-int/lit16 v0, v14, 0x200

    if-nez v0, :cond_1a

    move-object/from16 v0, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/high16 v21, 0x20000000

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p9

    :cond_1b
    const/high16 v21, 0x10000000

    :goto_11
    or-int v3, v3, v21

    goto :goto_12

    :cond_1c
    move-object/from16 v0, p9

    :goto_12
    and-int/lit8 v21, p13, 0x6

    if-nez v21, :cond_1e

    move-object/from16 v0, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    const/16 v21, 0x4

    goto :goto_13

    :cond_1d
    const/16 v21, 0x2

    :goto_13
    or-int v4, v4, v21

    goto :goto_14

    :cond_1e
    move-object/from16 v0, p10

    :goto_14
    const v21, 0x12492493

    and-int v0, v3, v21

    move/from16 p11, v5

    const v5, 0x12492492

    const/4 v6, 0x0

    if-ne v0, v5, :cond_20

    and-int/lit8 v0, v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1f

    goto :goto_15

    :cond_1f
    move v0, v6

    goto :goto_16

    :cond_20
    :goto_15
    const/4 v0, 0x1

    :goto_16
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v2, v0, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "193@9000L32,198@9295L15,200@9393L26"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x1

    const v5, -0x70000001

    const v19, -0x1c00001

    if-eqz v0, :cond_25

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_17

    .line 191
    :cond_21
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_22

    and-int/lit16 v3, v3, -0x381

    :cond_22
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_23

    and-int v3, v3, v19

    :cond_23
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_24

    and-int v0, v3, v5

    move/from16 v24, p6

    move-object/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v23, p9

    move v3, v0

    move/from16 v20, v15

    move-object v15, v9

    .end local v3    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1c

    .end local v0    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_24
    move/from16 v24, p6

    move-object/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v23, p9

    move/from16 v20, v15

    move-object v15, v9

    goto/16 :goto_1c

    .line 203
    :cond_25
    :goto_17
    if-eqz p11, :cond_26

    .line 193
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v8, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    :cond_26
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_27

    .line 194
    const/4 v0, 0x3

    invoke-static {v6, v6, v2, v6, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt;->rememberLazyStaggeredGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v0

    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v0, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    and-int/lit16 v3, v3, -0x381

    move-object v9, v0

    .end local v0    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v9, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :cond_27
    if-eqz v10, :cond_28

    .line 195
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 525
    .local v10, "$i$f$getDp":I
    move/from16 p11, v5

    int-to-float v5, v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 195
    .end local v0    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object v11, v0

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v0, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_18

    .line 194
    .end local v0    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_28
    move/from16 p11, v5

    .line 195
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v11, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_18
    if-eqz v13, :cond_29

    .line 196
    const/4 v0, 0x0

    move v15, v0

    .end local p4    # "reverseLayout":Z
    .local v15, "reverseLayout":Z
    :cond_29
    if-eqz v16, :cond_2a

    .line 197
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v5, 0x0

    .local v5, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 526
    .restart local v10    # "$i$f$getDp":I
    int-to-float v13, v5

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 197
    .end local v5    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object v7, v0

    .end local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v7, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_2a
    if-eqz v17, :cond_2b

    .line 198
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 527
    .local v5, "$i$f$getDp":I
    int-to-float v10, v0

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .end local v5    # "$i$f$getDp":I
    .end local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .local v0, "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    goto :goto_19

    .line 197
    .end local v0    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .restart local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    :cond_2b
    move/from16 v0, p6

    .line 527
    .end local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .restart local v0    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    :goto_19
    and-int/lit16 v5, v14, 0x80

    if-eqz v5, :cond_2c

    .line 199
    sget-object v5, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v10, 0x6

    invoke-virtual {v5, v2, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v5

    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v5, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    and-int v3, v3, v19

    goto :goto_1a

    .line 527
    .end local v5    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :cond_2c
    move-object/from16 v5, p7

    .line 199
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v5    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :goto_1a
    if-eqz v20, :cond_2d

    .line 200
    const/4 v10, 0x1

    .end local p8    # "userScrollEnabled":Z
    .local v10, "userScrollEnabled":Z
    goto :goto_1b

    .line 199
    .end local v10    # "userScrollEnabled":Z
    .restart local p8    # "userScrollEnabled":Z
    :cond_2d
    move/from16 v10, p8

    .line 200
    .end local p8    # "userScrollEnabled":Z
    .restart local v10    # "userScrollEnabled":Z
    :goto_1b
    and-int/lit16 v13, v14, 0x200

    if-eqz v13, :cond_2e

    .line 201
    invoke-static {v2, v6}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v6

    .end local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v6, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    and-int v3, v3, p11

    move/from16 v24, v0

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move/from16 v22, v10

    move/from16 v20, v15

    move-object v15, v9

    goto :goto_1c

    .line 200
    .end local v6    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .restart local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    :cond_2e
    move-object/from16 v23, p9

    move/from16 v24, v0

    move-object/from16 v21, v5

    move/from16 v22, v10

    move/from16 v20, v15

    move-object v15, v9

    .line 191
    .end local v0    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .end local v5    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local v9    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v10    # "userScrollEnabled":Z
    .end local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v15, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v20, "reverseLayout":Z
    .local v21, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v22, "userScrollEnabled":Z
    .local v23, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v24, "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    :goto_1c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "androidx.compose.foundation.lazy.staggeredgrid.LazyHorizontalStaggeredGrid (LazyStaggeredGridDsl.kt:202)"

    const v5, -0x27fa9d1c

    invoke-static {v5, v3, v4, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 206
    :cond_2f
    sget-object v16, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 211
    invoke-interface {v7}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v25

    .line 215
    and-int/lit8 v0, v3, 0xe

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v0, v5

    shr-int/lit8 v5, v3, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v0, v5

    invoke-static {v1, v7, v11, v2, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->rememberRowSlots(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    move-result-object v17

    .line 207
    nop

    .line 206
    nop

    .line 215
    nop

    .line 205
    nop

    .line 208
    nop

    .line 209
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 210
    nop

    .line 211
    nop

    .line 216
    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    shl-int/lit8 v5, v3, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v0, v5

    shl-int/lit8 v5, v3, 0x3

    const v6, 0xe000

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    shl-int/lit8 v5, v3, 0x3

    const/high16 v6, 0x70000

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    shr-int/lit8 v5, v3, 0x3

    const/high16 v6, 0x380000

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    shr-int/lit8 v5, v3, 0x3

    const/high16 v6, 0x1c00000

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    shr-int/lit8 v5, v3, 0x3

    const/high16 v6, 0xe000000

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    shl-int/lit8 v5, v3, 0x9

    const/high16 v6, 0x70000000

    and-int/2addr v5, v6

    or-int v28, v0, v5

    shl-int/lit8 v0, v4, 0x3

    and-int/lit8 v29, v0, 0x70

    .line 204
    const/16 v30, 0x0

    move-object/from16 v26, p10

    move-object/from16 v27, v2

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v11    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    .local v19, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v27, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v15 .. v30}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;->LazyStaggeredGrid-w41Enmo(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 218
    :cond_30
    move-object v0, v15

    move v15, v3

    move-object v3, v0

    move v0, v4

    move-object v6, v7

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    move/from16 v7, v24

    goto :goto_1d

    .line 191
    .end local v7    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v15    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v19    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v20    # "reverseLayout":Z
    .end local v21    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local v22    # "userScrollEnabled":Z
    .end local v23    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .end local v24    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .end local v27    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p4    # "reverseLayout":Z
    .restart local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p8    # "userScrollEnabled":Z
    .restart local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    :cond_31
    move-object/from16 v27, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v27    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v10, p9

    move v0, v4

    move-object v6, v7

    move-object v2, v8

    move-object v4, v11

    move v5, v15

    move/from16 v7, p6

    move-object/from16 v8, p7

    move v15, v3

    move-object v3, v9

    move/from16 v9, p8

    .line 218
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local p4    # "reverseLayout":Z
    .end local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p8    # "userScrollEnabled":Z
    .end local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v0, "$dirty1":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v5, "reverseLayout":Z
    .local v6, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v7, "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .local v8, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v9, "userScrollEnabled":Z
    .local v10, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v15, "$dirty":I
    :goto_1d
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_32

    move v13, v0

    .end local v0    # "$dirty1":I
    .local v13, "$dirty1":I
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda4;

    move/from16 v16, v13

    move/from16 p1, v15

    move/from16 v13, p13

    move-object v15, v11

    move-object/from16 v11, p10

    .end local v13    # "$dirty1":I
    .end local v15    # "$dirty":I
    .local v16, "$dirty1":I
    .local p1, "$dirty":I
    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;III)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1e

    .end local v16    # "$dirty1":I
    .end local p1    # "$dirty":I
    .restart local v0    # "$dirty1":I
    .restart local v15    # "$dirty":I
    :cond_32
    move/from16 v16, v0

    move/from16 p1, v15

    .end local v0    # "$dirty1":I
    .end local v15    # "$dirty":I
    .restart local v16    # "$dirty1":I
    .restart local p1    # "$dirty":I
    :goto_1e
    return-void
.end method

.method public static final synthetic LazyHorizontalStaggeredGrid-cJHQLPU(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "rows"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "state"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "reverseLayout"    # Z
    .param p5, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p6, "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0"    # F
    .param p7, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p8, "userScrollEnabled"    # Z
    .param p9, "content"    # Lkotlin/jvm/functions/Function1;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use the non deprecated overload"
    .end annotation

    .line 233
    move/from16 v11, p11

    move/from16 v12, p12

    const v0, -0x843bda

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(LazyHorizontalStaggeredGrid)N(rows,modifier,state,contentPadding,reverseLayout,verticalArrangement,horizontalItemSpacing:c#ui.unit.Dp,flingBehavior,userScrollEnabled,content)243@11057L26,233@10656L461:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p11

    .local v2, "$dirty":I
    and-int/lit8 v3, v11, 0x6

    if-nez v3, :cond_1

    move-object/from16 v13, p0

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v13, p0

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v11, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_7

    and-int/lit8 v5, v12, 0x4

    if-nez v5, :cond_5

    move-object/from16 v5, p2

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_4

    :cond_5
    move-object/from16 v5, p2

    :cond_6
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    goto :goto_5

    :cond_7
    move-object/from16 v5, p2

    :goto_5
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_a

    move-object/from16 v7, p3

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v2, v8

    goto :goto_7

    :cond_a
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v8, v12, 0x10

    if-eqz v8, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v9, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v9, v11, 0x6000

    if-nez v9, :cond_d

    move/from16 v9, p4

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v2, v10

    goto :goto_9

    :cond_d
    move/from16 v9, p4

    :goto_9
    and-int/lit8 v10, v12, 0x20

    const/high16 v14, 0x30000

    if-eqz v10, :cond_e

    or-int/2addr v2, v14

    move-object/from16 v14, p5

    goto :goto_b

    :cond_e
    and-int/2addr v14, v11

    if-nez v14, :cond_10

    move-object/from16 v14, p5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v2, v15

    goto :goto_b

    :cond_10
    move-object/from16 v14, p5

    :goto_b
    and-int/lit8 v15, v12, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_11

    or-int v2, v2, v16

    move/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v16, v11, v16

    if-nez v16, :cond_13

    move/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v2, v2, v17

    goto :goto_d

    :cond_13
    move/from16 v0, p6

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v11, v17

    if-nez v17, :cond_16

    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_14

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v0, p7

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v2, v2, v17

    goto :goto_f

    :cond_16
    move-object/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v12, 0x100

    const/high16 v17, 0x6000000

    if-eqz v0, :cond_17

    or-int v2, v2, v17

    move/from16 v17, v0

    move/from16 v0, p8

    goto :goto_11

    :cond_17
    and-int v17, v11, v17

    if-nez v17, :cond_19

    move/from16 v17, v0

    move/from16 v0, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_18

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v18, 0x2000000

    :goto_10
    or-int v2, v2, v18

    goto :goto_11

    :cond_19
    move/from16 v17, v0

    move/from16 v0, p8

    :goto_11
    const/high16 v18, 0x30000000

    and-int v18, v11, v18

    if-nez v18, :cond_1b

    move-object/from16 v0, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v18, 0x10000000

    :goto_12
    or-int v2, v2, v18

    goto :goto_13

    :cond_1b
    move-object/from16 v0, p9

    :goto_13
    const v18, 0x12492493

    and-int v0, v2, v18

    move/from16 p10, v3

    const v3, 0x12492492

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_14

    :cond_1c
    move v0, v4

    :goto_14
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "224@10249L32,229@10544L15"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v11, 0x1

    const v3, -0x1c00001

    if-eqz v0, :cond_20

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_15

    .line 222
    :cond_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_1e

    and-int/lit16 v2, v2, -0x381

    :cond_1e
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_1f

    and-int v0, v2, v3

    move/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move v2, v0

    move v0, v4

    move-object v15, v5

    move-object/from16 v16, v7

    move/from16 v17, v9

    move-object/from16 v18, v14

    const v3, -0x843bda

    move-object/from16 v14, p1

    .end local v2    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1d

    .end local v0    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_1f
    move/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move v0, v4

    move-object v15, v5

    move-object/from16 v16, v7

    move/from16 v17, v9

    move-object/from16 v18, v14

    const v3, -0x843bda

    move-object/from16 v14, p1

    goto/16 :goto_1d

    .line 233
    :cond_20
    :goto_15
    if-eqz p10, :cond_21

    .line 224
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_16

    .line 233
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_21
    move-object/from16 v0, p1

    .line 224
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    and-int/lit8 v18, v12, 0x4

    if-eqz v18, :cond_22

    .line 225
    move/from16 p10, v3

    const/4 v3, 0x3

    invoke-static {v4, v4, v1, v4, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt;->rememberLazyStaggeredGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v3

    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v3, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    and-int/lit16 v2, v2, -0x381

    goto :goto_17

    .line 224
    .end local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :cond_22
    move/from16 p10, v3

    move-object v3, v5

    .line 225
    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :goto_17
    if-eqz v6, :cond_23

    .line 226
    const/4 v5, 0x0

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 528
    .local v6, "$i$f$getDp":I
    int-to-float v4, v5

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 226
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_18

    .line 225
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_23
    move-object v4, v7

    .line 226
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_18
    if-eqz v8, :cond_24

    .line 227
    const/4 v5, 0x0

    .end local p4    # "reverseLayout":Z
    .local v5, "reverseLayout":Z
    goto :goto_19

    .line 226
    .end local v5    # "reverseLayout":Z
    .restart local p4    # "reverseLayout":Z
    :cond_24
    move v5, v9

    .line 227
    .end local p4    # "reverseLayout":Z
    .restart local v5    # "reverseLayout":Z
    :goto_19
    if-eqz v10, :cond_25

    .line 228
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v7, 0x0

    .local v7, "$this$dp$iv":I
    const/4 v8, 0x0

    .line 529
    .local v8, "$i$f$getDp":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 228
    .end local v7    # "$this$dp$iv":I
    .end local v8    # "$i$f$getDp":I
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .end local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v6, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_1a

    .line 227
    .end local v6    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_25
    move-object v6, v14

    .line 228
    .end local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v6    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_1a
    if-eqz v15, :cond_26

    .line 229
    const/4 v7, 0x0

    .restart local v7    # "$this$dp$iv":I
    const/4 v8, 0x0

    .line 530
    .restart local v8    # "$i$f$getDp":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .end local v8    # "$i$f$getDp":I
    .end local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .local v7, "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    goto :goto_1b

    .line 228
    .end local v7    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .restart local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    :cond_26
    move/from16 v7, p6

    .line 530
    .end local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .restart local v7    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    :goto_1b
    and-int/lit16 v8, v12, 0x80

    if-eqz v8, :cond_27

    .line 230
    sget-object v8, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v9, 0x6

    invoke-virtual {v8, v1, v9}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v8

    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v8, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    and-int v2, v2, p10

    goto :goto_1c

    .line 530
    .end local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :cond_27
    move-object/from16 v8, p7

    .line 230
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :goto_1c
    if-eqz v17, :cond_28

    .line 231
    const/4 v9, 0x1

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    const/4 v0, 0x0

    const v3, -0x843bda

    .end local p8    # "userScrollEnabled":Z
    .local v9, "userScrollEnabled":Z
    goto :goto_1d

    .line 230
    .end local v9    # "userScrollEnabled":Z
    .restart local p8    # "userScrollEnabled":Z
    :cond_28
    move/from16 v21, p8

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    const/4 v0, 0x0

    const v3, -0x843bda

    .line 222
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v5    # "reverseLayout":Z
    .end local v6    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v7    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .end local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p8    # "userScrollEnabled":Z
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v16, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v17, "reverseLayout":Z
    .local v18, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v19, "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .local v20, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v21, "userScrollEnabled":Z
    :goto_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.foundation.lazy.staggeredgrid.LazyHorizontalStaggeredGrid (LazyStaggeredGridDsl.kt:232)"

    invoke-static {v3, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 235
    :cond_29
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    invoke-static {v1, v0}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v22

    .line 245
    and-int/lit8 v0, v2, 0xe

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v2

    or-int v25, v0, v3

    shr-int/lit8 v0, v2, 0x1b

    and-int/lit8 v26, v0, 0xe

    .line 234
    const/16 v27, 0x0

    move-object/from16 v23, p9

    move-object/from16 v24, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v13 .. v27}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->LazyHorizontalStaggeredGrid-121YqSk(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 247
    :cond_2a
    move v13, v2

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    goto :goto_1e

    .line 222
    .end local v14    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v15    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v16    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v17    # "reverseLayout":Z
    .end local v18    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v19    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .end local v20    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local v21    # "userScrollEnabled":Z
    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p4    # "reverseLayout":Z
    .restart local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p8    # "userScrollEnabled":Z
    :cond_2b
    move-object/from16 v24, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v8, p7

    move v13, v2

    move-object v3, v5

    move-object v4, v7

    move v5, v9

    move-object v6, v14

    move-object/from16 v2, p1

    move/from16 v7, p6

    move/from16 v9, p8

    .line 247
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local p4    # "reverseLayout":Z
    .end local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local p6    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p8    # "userScrollEnabled":Z
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v5    # "reverseLayout":Z
    .restart local v6    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v7    # "$v$c$androidx-compose-ui-unit-Dp$-horizontalItemSpacing$0":F
    .restart local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v9    # "userScrollEnabled":Z
    .local v13, "$dirty":I
    :goto_1e
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_2c

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda3;

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2c
    return-void
.end method

.method static final LazyHorizontalStaggeredGrid_121YqSk$lambda$0(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    invoke-static/range {p12 .. p12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p13

    move-object/from16 v12, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->LazyHorizontalStaggeredGrid-121YqSk(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LazyHorizontalStaggeredGrid_cJHQLPU$lambda$0(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->LazyHorizontalStaggeredGrid-cJHQLPU(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final LazyVerticalStaggeredGrid-6qCrX9Q(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 31
    .param p0, "columns"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "state"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "reverseLayout"    # Z
    .param p5, "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0"    # F
    .param p6, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p7, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p8, "userScrollEnabled"    # Z
    .param p9, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p10, "content"    # Lkotlin/jvm/functions/Function1;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZF",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 82
    move-object/from16 v1, p0

    move/from16 v12, p12

    move/from16 v14, p14

    const v0, -0x2281ca08

    move-object/from16 v2, p11

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(LazyVerticalStaggeredGrid)N(columns,modifier,state,contentPadding,reverseLayout,verticalItemSpacing:c#ui.unit.Dp,horizontalArrangement,flingBehavior,userScrollEnabled,overscrollEffect,content)93@4432L67,82@3985L548:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p12

    .local v3, "$dirty":I
    move/from16 v4, p13

    .local v4, "$dirty1":I
    and-int/lit8 v5, v12, 0x6

    if-nez v5, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v3, v5

    :cond_1
    and-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_2

    or-int/lit8 v3, v3, 0x30

    move-object/from16 v8, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v8, v12, 0x30

    if-nez v8, :cond_4

    move-object/from16 v8, p1

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_1

    :cond_3
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v3, v9

    goto :goto_2

    :cond_4
    move-object/from16 v8, p1

    :goto_2
    and-int/lit16 v9, v12, 0x180

    if-nez v9, :cond_7

    and-int/lit8 v9, v14, 0x4

    if-nez v9, :cond_5

    move-object/from16 v9, p2

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x100

    goto :goto_3

    :cond_5
    move-object/from16 v9, p2

    :cond_6
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v3, v10

    goto :goto_4

    :cond_7
    move-object/from16 v9, p2

    :goto_4
    and-int/lit8 v10, v14, 0x8

    if-eqz v10, :cond_8

    or-int/lit16 v3, v3, 0xc00

    move-object/from16 v11, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v11, v12, 0xc00

    if-nez v11, :cond_a

    move-object/from16 v11, p3

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x800

    goto :goto_5

    :cond_9
    const/16 v13, 0x400

    :goto_5
    or-int/2addr v3, v13

    goto :goto_6

    :cond_a
    move-object/from16 v11, p3

    :goto_6
    and-int/lit8 v13, v14, 0x10

    if-eqz v13, :cond_b

    or-int/lit16 v3, v3, 0x6000

    move/from16 v15, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v15, v12, 0x6000

    if-nez v15, :cond_d

    move/from16 v15, p4

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_7

    :cond_c
    const/16 v16, 0x2000

    :goto_7
    or-int v3, v3, v16

    goto :goto_8

    :cond_d
    move/from16 v15, p4

    :goto_8
    and-int/lit8 v16, v14, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_e

    or-int v3, v3, v17

    move/from16 v7, p5

    goto :goto_a

    :cond_e
    and-int v17, v12, v17

    if-nez v17, :cond_10

    move/from16 v7, p5

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v17, 0x10000

    :goto_9
    or-int v3, v3, v17

    goto :goto_a

    :cond_10
    move/from16 v7, p5

    :goto_a
    and-int/lit8 v17, v14, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_11

    or-int v3, v3, v18

    move-object/from16 v0, p6

    goto :goto_c

    :cond_11
    and-int v18, v12, v18

    if-nez v18, :cond_13

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v19, 0x80000

    :goto_b
    or-int v3, v3, v19

    goto :goto_c

    :cond_13
    move-object/from16 v0, p6

    :goto_c
    const/high16 v19, 0xc00000

    and-int v19, v12, v19

    if-nez v19, :cond_16

    and-int/lit16 v6, v14, 0x80

    if-nez v6, :cond_14

    move-object/from16 v6, p7

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_d

    :cond_14
    move-object/from16 v6, p7

    :cond_15
    const/high16 v20, 0x400000

    :goto_d
    or-int v3, v3, v20

    goto :goto_e

    :cond_16
    move-object/from16 v6, p7

    :goto_e
    and-int/lit16 v0, v14, 0x100

    const/high16 v20, 0x6000000

    if-eqz v0, :cond_17

    or-int v3, v3, v20

    move/from16 v20, v0

    move/from16 v0, p8

    goto :goto_10

    :cond_17
    and-int v20, v12, v20

    if-nez v20, :cond_19

    move/from16 v20, v0

    move/from16 v0, p8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_18

    const/high16 v21, 0x4000000

    goto :goto_f

    :cond_18
    const/high16 v21, 0x2000000

    :goto_f
    or-int v3, v3, v21

    goto :goto_10

    :cond_19
    move/from16 v20, v0

    move/from16 v0, p8

    :goto_10
    const/high16 v21, 0x30000000

    and-int v21, v12, v21

    if-nez v21, :cond_1c

    and-int/lit16 v0, v14, 0x200

    if-nez v0, :cond_1a

    move-object/from16 v0, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/high16 v21, 0x20000000

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p9

    :cond_1b
    const/high16 v21, 0x10000000

    :goto_11
    or-int v3, v3, v21

    goto :goto_12

    :cond_1c
    move-object/from16 v0, p9

    :goto_12
    and-int/lit8 v21, p13, 0x6

    if-nez v21, :cond_1e

    move-object/from16 v0, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    const/16 v21, 0x4

    goto :goto_13

    :cond_1d
    const/16 v21, 0x2

    :goto_13
    or-int v4, v4, v21

    goto :goto_14

    :cond_1e
    move-object/from16 v0, p10

    :goto_14
    const v21, 0x12492493

    and-int v0, v3, v21

    move/from16 p11, v5

    const v5, 0x12492492

    const/4 v6, 0x0

    if-ne v0, v5, :cond_20

    and-int/lit8 v0, v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1f

    goto :goto_15

    :cond_1f
    move v0, v6

    goto :goto_16

    :cond_20
    :goto_15
    const/4 v0, 0x1

    :goto_16
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v2, v0, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "72@3506L32,77@3803L15,79@3901L26"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x1

    const v5, -0x70000001

    const v19, -0x1c00001

    if-eqz v0, :cond_25

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_17

    .line 70
    :cond_21
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_22

    and-int/lit16 v3, v3, -0x381

    :cond_22
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_23

    and-int v3, v3, v19

    :cond_23
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_24

    and-int v0, v3, v5

    move-object/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v23, p9

    move v3, v0

    move/from16 v24, v7

    move/from16 v20, v15

    move-object/from16 v0, p6

    move-object v15, v9

    .end local v3    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1c

    .end local v0    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_24
    move-object/from16 v0, p6

    move-object/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v23, p9

    move/from16 v24, v7

    move/from16 v20, v15

    move-object v15, v9

    goto/16 :goto_1c

    .line 82
    :cond_25
    :goto_17
    if-eqz p11, :cond_26

    .line 72
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v8, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    :cond_26
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_27

    .line 73
    const/4 v0, 0x3

    invoke-static {v6, v6, v2, v6, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt;->rememberLazyStaggeredGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v0

    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v0, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    and-int/lit16 v3, v3, -0x381

    move-object v9, v0

    .end local v0    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v9, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :cond_27
    if-eqz v10, :cond_28

    .line 74
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 513
    .local v10, "$i$f$getDp":I
    move/from16 p11, v5

    int-to-float v5, v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 74
    .end local v0    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object v11, v0

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v0, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_18

    .line 73
    .end local v0    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_28
    move/from16 p11, v5

    .line 74
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v11, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_18
    if-eqz v13, :cond_29

    .line 75
    const/4 v0, 0x0

    move v15, v0

    .end local p4    # "reverseLayout":Z
    .local v15, "reverseLayout":Z
    :cond_29
    if-eqz v16, :cond_2a

    .line 76
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 514
    .local v5, "$i$f$getDp":I
    int-to-float v10, v0

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move v7, v0

    .end local v0    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    .end local p5    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .local v7, "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    :cond_2a
    if-eqz v17, :cond_2b

    .line 77
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v5, 0x0

    .local v5, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 515
    .restart local v10    # "$i$f$getDp":I
    int-to-float v13, v5

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 77
    .end local v5    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .end local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v0, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_19

    .line 514
    .end local v0    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_2b
    move-object/from16 v0, p6

    .line 77
    .end local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v0    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_19
    and-int/lit16 v5, v14, 0x80

    if-eqz v5, :cond_2c

    .line 78
    sget-object v5, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v10, 0x6

    invoke-virtual {v5, v2, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v5

    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v5, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    and-int v3, v3, v19

    goto :goto_1a

    .line 77
    .end local v5    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :cond_2c
    move-object/from16 v5, p7

    .line 78
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v5    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :goto_1a
    if-eqz v20, :cond_2d

    .line 79
    const/4 v10, 0x1

    .end local p8    # "userScrollEnabled":Z
    .local v10, "userScrollEnabled":Z
    goto :goto_1b

    .line 78
    .end local v10    # "userScrollEnabled":Z
    .restart local p8    # "userScrollEnabled":Z
    :cond_2d
    move/from16 v10, p8

    .line 79
    .end local p8    # "userScrollEnabled":Z
    .restart local v10    # "userScrollEnabled":Z
    :goto_1b
    and-int/lit16 v13, v14, 0x200

    if-eqz v13, :cond_2e

    .line 80
    invoke-static {v2, v6}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v6

    .end local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v6, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    and-int v3, v3, p11

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v22, v10

    move/from16 v20, v15

    move-object v15, v9

    goto :goto_1c

    .line 79
    .end local v6    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .restart local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    :cond_2e
    move-object/from16 v23, p9

    move-object/from16 v21, v5

    move/from16 v24, v7

    move/from16 v22, v10

    move/from16 v20, v15

    move-object v15, v9

    .line 70
    .end local v5    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local v7    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .end local v9    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v10    # "userScrollEnabled":Z
    .end local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v15, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v20, "reverseLayout":Z
    .local v21, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v22, "userScrollEnabled":Z
    .local v23, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v24, "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    :goto_1c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string/jumbo v5, "androidx.compose.foundation.lazy.staggeredgrid.LazyVerticalStaggeredGrid (LazyStaggeredGridDsl.kt:81)"

    const v6, -0x2281ca08

    invoke-static {v6, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 85
    :cond_2f
    sget-object v16, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 90
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v25

    .line 94
    and-int/lit8 v5, v3, 0xe

    shr-int/lit8 v6, v3, 0xf

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v5, v6

    shr-int/lit8 v6, v3, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v5, v6

    invoke-static {v1, v0, v11, v2, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->rememberColumnSlots(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    move-result-object v17

    .line 86
    nop

    .line 85
    nop

    .line 94
    nop

    .line 84
    nop

    .line 87
    nop

    .line 88
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 89
    nop

    .line 90
    nop

    .line 95
    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0xe

    or-int/lit8 v5, v5, 0x30

    shl-int/lit8 v6, v3, 0x6

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x3

    const v7, 0xe000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x3

    const/high16 v7, 0x70000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shr-int/lit8 v6, v3, 0x3

    const/high16 v7, 0x380000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shr-int/lit8 v6, v3, 0x3

    const/high16 v7, 0x1c00000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shr-int/lit8 v6, v3, 0x3

    const/high16 v7, 0xe000000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0xc

    const/high16 v7, 0x70000000

    and-int/2addr v6, v7

    or-int v28, v5, v6

    shl-int/lit8 v5, v4, 0x3

    and-int/lit8 v29, v5, 0x70

    .line 83
    const/16 v30, 0x0

    move-object/from16 v26, p10

    move-object/from16 v27, v2

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v11    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    .local v19, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v27, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v15 .. v30}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;->LazyStaggeredGrid-w41Enmo(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 97
    :cond_30
    move-object v2, v15

    move v15, v3

    move-object v3, v2

    move-object v7, v0

    move v0, v4

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    move/from16 v6, v24

    goto :goto_1d

    .line 70
    .end local v0    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v15    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v19    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v20    # "reverseLayout":Z
    .end local v21    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local v22    # "userScrollEnabled":Z
    .end local v23    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .end local v24    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .end local v27    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p4    # "reverseLayout":Z
    .restart local p5    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .restart local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p8    # "userScrollEnabled":Z
    .restart local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    :cond_31
    move-object/from16 v27, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v27    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v10, p9

    move v0, v4

    move v6, v7

    move-object v2, v8

    move-object v4, v11

    move v5, v15

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move v15, v3

    move-object v3, v9

    move/from16 v9, p8

    .line 97
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local p4    # "reverseLayout":Z
    .end local p5    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .end local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p8    # "userScrollEnabled":Z
    .end local p9    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v0, "$dirty1":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v5, "reverseLayout":Z
    .local v6, "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .local v7, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v8, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v9, "userScrollEnabled":Z
    .local v10, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v15, "$dirty":I
    :goto_1d
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_32

    move v13, v0

    .end local v0    # "$dirty1":I
    .local v13, "$dirty1":I
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda0;

    move/from16 v16, v13

    move/from16 p1, v15

    move/from16 v13, p13

    move-object v15, v11

    move-object/from16 v11, p10

    .end local v13    # "$dirty1":I
    .end local v15    # "$dirty":I
    .local v16, "$dirty1":I
    .local p1, "$dirty":I
    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;III)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1e

    .end local v16    # "$dirty1":I
    .end local p1    # "$dirty":I
    .restart local v0    # "$dirty1":I
    .restart local v15    # "$dirty":I
    :cond_32
    move/from16 v16, v0

    move/from16 p1, v15

    .end local v0    # "$dirty1":I
    .end local v15    # "$dirty":I
    .restart local v16    # "$dirty1":I
    .restart local p1    # "$dirty":I
    :goto_1e
    return-void
.end method

.method public static final synthetic LazyVerticalStaggeredGrid-zadm560(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "columns"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "state"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "reverseLayout"    # Z
    .param p5, "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0"    # F
    .param p6, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p7, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p8, "userScrollEnabled"    # Z
    .param p9, "content"    # Lkotlin/jvm/functions/Function1;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use the non deprecated overload"
    .end annotation

    .line 112
    move/from16 v11, p11

    move/from16 v12, p12

    const v0, 0x650c9692

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(LazyVerticalStaggeredGrid)N(columns,modifier,state,contentPadding,reverseLayout,verticalItemSpacing:c#ui.unit.Dp,horizontalArrangement,flingBehavior,userScrollEnabled,content)122@5578L26,112@5173L465:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p11

    .local v2, "$dirty":I
    and-int/lit8 v3, v11, 0x6

    if-nez v3, :cond_1

    move-object/from16 v13, p0

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v13, p0

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v11, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_7

    and-int/lit8 v5, v12, 0x4

    if-nez v5, :cond_5

    move-object/from16 v5, p2

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_4

    :cond_5
    move-object/from16 v5, p2

    :cond_6
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    goto :goto_5

    :cond_7
    move-object/from16 v5, p2

    :goto_5
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_a

    move-object/from16 v7, p3

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v2, v8

    goto :goto_7

    :cond_a
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v8, v12, 0x10

    if-eqz v8, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v9, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v9, v11, 0x6000

    if-nez v9, :cond_d

    move/from16 v9, p4

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v2, v10

    goto :goto_9

    :cond_d
    move/from16 v9, p4

    :goto_9
    and-int/lit8 v10, v12, 0x20

    const/high16 v14, 0x30000

    if-eqz v10, :cond_e

    or-int/2addr v2, v14

    move/from16 v14, p5

    goto :goto_b

    :cond_e
    and-int/2addr v14, v11

    if-nez v14, :cond_10

    move/from16 v14, p5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v2, v15

    goto :goto_b

    :cond_10
    move/from16 v14, p5

    :goto_b
    and-int/lit8 v15, v12, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_11

    or-int v2, v2, v16

    move-object/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v16, v11, v16

    if-nez v16, :cond_13

    move-object/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v2, v2, v17

    goto :goto_d

    :cond_13
    move-object/from16 v0, p6

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v11, v17

    if-nez v17, :cond_16

    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_14

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v0, p7

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v2, v2, v17

    goto :goto_f

    :cond_16
    move-object/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v12, 0x100

    const/high16 v17, 0x6000000

    if-eqz v0, :cond_17

    or-int v2, v2, v17

    move/from16 v17, v0

    move/from16 v0, p8

    goto :goto_11

    :cond_17
    and-int v17, v11, v17

    if-nez v17, :cond_19

    move/from16 v17, v0

    move/from16 v0, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_18

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v18, 0x2000000

    :goto_10
    or-int v2, v2, v18

    goto :goto_11

    :cond_19
    move/from16 v17, v0

    move/from16 v0, p8

    :goto_11
    const/high16 v18, 0x30000000

    and-int v18, v11, v18

    if-nez v18, :cond_1b

    move-object/from16 v0, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v18, 0x10000000

    :goto_12
    or-int v2, v2, v18

    goto :goto_13

    :cond_1b
    move-object/from16 v0, p9

    :goto_13
    const v18, 0x12492493

    and-int v0, v2, v18

    move/from16 p10, v3

    const v3, 0x12492492

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_14

    :cond_1c
    move v0, v4

    :goto_14
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "103@4764L32,108@5061L15"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v11, 0x1

    const v3, -0x1c00001

    if-eqz v0, :cond_20

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_15

    .line 101
    :cond_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_1e

    and-int/lit16 v2, v2, -0x381

    :cond_1e
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_1f

    and-int v0, v2, v3

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move v2, v0

    move v0, v4

    move-object v15, v5

    move-object/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v14

    const v3, 0x650c9692

    move-object/from16 v14, p1

    .end local v2    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1d

    .end local v0    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_1f
    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move v0, v4

    move-object v15, v5

    move-object/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v14

    const v3, 0x650c9692

    move-object/from16 v14, p1

    goto/16 :goto_1d

    .line 112
    :cond_20
    :goto_15
    if-eqz p10, :cond_21

    .line 103
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_16

    .line 112
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_21
    move-object/from16 v0, p1

    .line 103
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    and-int/lit8 v18, v12, 0x4

    if-eqz v18, :cond_22

    .line 104
    move/from16 p10, v3

    const/4 v3, 0x3

    invoke-static {v4, v4, v1, v4, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt;->rememberLazyStaggeredGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v3

    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v3, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    and-int/lit16 v2, v2, -0x381

    goto :goto_17

    .line 103
    .end local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :cond_22
    move/from16 p10, v3

    move-object v3, v5

    .line 104
    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :goto_17
    if-eqz v6, :cond_23

    .line 105
    const/4 v5, 0x0

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 516
    .local v6, "$i$f$getDp":I
    int-to-float v4, v5

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 105
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_18

    .line 104
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_23
    move-object v4, v7

    .line 105
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_18
    if-eqz v8, :cond_24

    .line 106
    const/4 v5, 0x0

    .end local p4    # "reverseLayout":Z
    .local v5, "reverseLayout":Z
    goto :goto_19

    .line 105
    .end local v5    # "reverseLayout":Z
    .restart local p4    # "reverseLayout":Z
    :cond_24
    move v5, v9

    .line 106
    .end local p4    # "reverseLayout":Z
    .restart local v5    # "reverseLayout":Z
    :goto_19
    if-eqz v10, :cond_25

    .line 107
    const/4 v6, 0x0

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 517
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .end local v7    # "$i$f$getDp":I
    .end local p5    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .local v6, "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    goto :goto_1a

    .line 106
    .end local v6    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .restart local p5    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    :cond_25
    move v6, v14

    .line 517
    .end local p5    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .restart local v6    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    :goto_1a
    if-eqz v15, :cond_26

    .line 108
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v8, 0x0

    .local v8, "$this$dp$iv":I
    const/4 v9, 0x0

    .line 518
    .local v9, "$i$f$getDp":I
    int-to-float v10, v8

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 108
    .end local v8    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    invoke-virtual {v7, v8}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .end local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v7, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_1b

    .line 517
    .end local v7    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_26
    move-object/from16 v7, p6

    .line 108
    .end local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v7    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_1b
    and-int/lit16 v8, v12, 0x80

    if-eqz v8, :cond_27

    .line 109
    sget-object v8, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v9, 0x6

    invoke-virtual {v8, v1, v9}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v8

    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v8, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    and-int v2, v2, p10

    goto :goto_1c

    .line 108
    .end local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :cond_27
    move-object/from16 v8, p7

    .line 109
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :goto_1c
    if-eqz v17, :cond_28

    .line 110
    const/4 v9, 0x1

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    const/4 v0, 0x0

    const v3, 0x650c9692

    .end local p8    # "userScrollEnabled":Z
    .local v9, "userScrollEnabled":Z
    goto :goto_1d

    .line 109
    .end local v9    # "userScrollEnabled":Z
    .restart local p8    # "userScrollEnabled":Z
    :cond_28
    move/from16 v21, p8

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    const/4 v0, 0x0

    const v3, 0x650c9692

    .line 101
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v5    # "reverseLayout":Z
    .end local v6    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .end local v7    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p8    # "userScrollEnabled":Z
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v16, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v17, "reverseLayout":Z
    .local v18, "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .local v19, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v20, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v21, "userScrollEnabled":Z
    :goto_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.foundation.lazy.staggeredgrid.LazyVerticalStaggeredGrid (LazyStaggeredGridDsl.kt:111)"

    invoke-static {v3, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 114
    :cond_29
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    invoke-static {v1, v0}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v22

    .line 124
    and-int/lit8 v0, v2, 0xe

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v2

    or-int v25, v0, v3

    shr-int/lit8 v0, v2, 0x1b

    and-int/lit8 v26, v0, 0xe

    .line 113
    const/16 v27, 0x0

    move-object/from16 v23, p9

    move-object/from16 v24, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v13 .. v27}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->LazyVerticalStaggeredGrid-6qCrX9Q(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 126
    :cond_2a
    move v13, v2

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    goto :goto_1e

    .line 101
    .end local v14    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v15    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v16    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v17    # "reverseLayout":Z
    .end local v18    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .end local v19    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v20    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local v21    # "userScrollEnabled":Z
    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p4    # "reverseLayout":Z
    .restart local p5    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .restart local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p8    # "userScrollEnabled":Z
    :cond_2b
    move-object/from16 v24, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v8, p7

    move v13, v2

    move-object v3, v5

    move-object v4, v7

    move v5, v9

    move v6, v14

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move/from16 v9, p8

    .line 126
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local p4    # "reverseLayout":Z
    .end local p5    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .end local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p8    # "userScrollEnabled":Z
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v5    # "reverseLayout":Z
    .restart local v6    # "$v$c$androidx-compose-ui-unit-Dp$-verticalItemSpacing$0":F
    .restart local v7    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v9    # "userScrollEnabled":Z
    .local v13, "$dirty":I
    :goto_1e
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_2c

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda5;

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2c
    return-void
.end method

.method static final LazyVerticalStaggeredGrid_6qCrX9Q$lambda$0(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    invoke-static/range {p12 .. p12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p13

    move-object/from16 v12, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->LazyVerticalStaggeredGrid-6qCrX9Q(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LazyVerticalStaggeredGrid_zadm560$lambda$0(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->LazyVerticalStaggeredGrid-zadm560(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final items(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 8
    .param p0, "$this$items"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p4, "span"    # Lkotlin/jvm/functions/Function1;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 396
    .local v0, "$i$f$items":I
    nop

    .line 397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 398
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 537
    move-object v3, p2

    .local v3, "it":Lkotlin/jvm/functions/Function1;
    const/4 v4, 0x0

    .line 398
    .local v4, "$i$a$-let-LazyStaggeredGridDslKt$items$2":I
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$2$1;

    invoke-direct {v5, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$2$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v3, v5

    .end local v3    # "it":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$i$a$-let-LazyStaggeredGridDslKt$items$2":I
    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 396
    :goto_0
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$3;

    invoke-direct {v4, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 400
    if-eqz p4, :cond_1

    .line 537
    move-object v1, p4

    .local v1, "it":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 400
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$items$4":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$4$1;

    invoke-direct {v6, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$4$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    move-object v1, v6

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v5, v1

    .end local v1    # "it":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$items$4":I
    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 401
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$5;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$5;-><init>(Lkotlin/jvm/functions/Function4;Ljava/util/List;)V

    const v6, -0x13f780b2

    const/4 v7, 0x1

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 396
    move-object v1, p0

    .end local p0    # "$this$items":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .local v1, "$this$items":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 403
    return-void
.end method

.method public static final items(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 8
    .param p0, "$this$items"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p4, "span"    # Lkotlin/jvm/functions/Function1;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "[TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 468
    .local v0, "$i$f$items":I
    nop

    .line 469
    array-length v2, p1

    .line 470
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 537
    move-object v3, p2

    .local v3, "it":Lkotlin/jvm/functions/Function1;
    const/4 v4, 0x0

    .line 470
    .local v4, "$i$a$-let-LazyStaggeredGridDslKt$items$7":I
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$7$1;

    invoke-direct {v5, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$7$1;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v3, v5

    .end local v3    # "it":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$i$a$-let-LazyStaggeredGridDslKt$items$7":I
    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 468
    :goto_0
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$8;

    invoke-direct {v4, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$8;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 472
    if-eqz p4, :cond_1

    .line 537
    move-object v1, p4

    .local v1, "it":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 472
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$items$9":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$9$1;

    invoke-direct {v6, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$9$1;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    move-object v1, v6

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v5, v1

    .end local v1    # "it":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$items$9":I
    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 473
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$10;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$10;-><init>(Lkotlin/jvm/functions/Function4;[Ljava/lang/Object;)V

    const v6, -0x69db5f53

    const/4 v7, 0x1

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 468
    move-object v1, p0

    .end local p0    # "$this$items":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .local v1, "$this$items":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 475
    return-void
.end method

.method public static synthetic items$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$items_u24default"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p4, "span"    # Lkotlin/jvm/functions/Function1;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function4;

    .line 389
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 391
    const/4 p2, 0x0

    .line 389
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 392
    sget-object p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$1;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$1;

    move-object p3, p7

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 389
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 393
    const/4 p4, 0x0

    .line 389
    :cond_2
    const/4 p6, 0x0

    .line 396
    .local p6, "$i$f$items":I
    nop

    .line 397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 398
    const/4 p7, 0x0

    if-eqz p2, :cond_3

    .line 537
    move-object v0, p2

    .local v0, "it":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    .line 398
    .local v2, "$i$a$-let-LazyStaggeredGridDslKt$items$2":I
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$2$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$2$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v2, v3

    .end local v0    # "it":Lkotlin/jvm/functions/Function1;
    .end local v2    # "$i$a$-let-LazyStaggeredGridDslKt$items$2":I
    goto :goto_0

    :cond_3
    move-object v2, p7

    .line 396
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$3;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 400
    if-eqz p4, :cond_4

    .line 537
    move-object p7, p4

    .local p7, "it":Lkotlin/jvm/functions/Function1;
    const/4 v0, 0x0

    .line 400
    .local v0, "$i$a$-let-LazyStaggeredGridDslKt$items$4":I
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$4$1;

    invoke-direct {v4, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$4$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    move-object p7, v4

    check-cast p7, Lkotlin/jvm/functions/Function1;

    move-object v4, p7

    .end local v0    # "$i$a$-let-LazyStaggeredGridDslKt$items$4":I
    .end local p7    # "it":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    :cond_4
    move-object v4, p7

    .line 401
    :goto_1
    new-instance p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$5;

    invoke-direct {p7, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$5;-><init>(Lkotlin/jvm/functions/Function4;Ljava/util/List;)V

    const v0, -0x13f780b2

    const/4 v5, 0x1

    invoke-static {v0, v5, p7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p7

    move-object v5, p7

    check-cast v5, Lkotlin/jvm/functions/Function4;

    .line 396
    move-object v0, p0

    .end local p0    # "$this$items_u24default":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .local v0, "$this$items_u24default":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 403
    return-void
.end method

.method public static synthetic items$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$items_u24default"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p4, "span"    # Lkotlin/jvm/functions/Function1;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function4;

    .line 461
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 463
    const/4 p2, 0x0

    .line 461
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 464
    sget-object p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$6;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$6;

    move-object p3, p7

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 461
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 465
    const/4 p4, 0x0

    .line 461
    :cond_2
    const/4 p6, 0x0

    .line 468
    .local p6, "$i$f$items":I
    nop

    .line 469
    array-length v1, p1

    .line 470
    const/4 p7, 0x0

    if-eqz p2, :cond_3

    .line 537
    move-object v0, p2

    .local v0, "it":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    .line 470
    .local v2, "$i$a$-let-LazyStaggeredGridDslKt$items$7":I
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$7$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$7$1;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v2, v3

    .end local v0    # "it":Lkotlin/jvm/functions/Function1;
    .end local v2    # "$i$a$-let-LazyStaggeredGridDslKt$items$7":I
    goto :goto_0

    :cond_3
    move-object v2, p7

    .line 468
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$8;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$8;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 472
    if-eqz p4, :cond_4

    .line 537
    move-object p7, p4

    .local p7, "it":Lkotlin/jvm/functions/Function1;
    const/4 v0, 0x0

    .line 472
    .local v0, "$i$a$-let-LazyStaggeredGridDslKt$items$9":I
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$9$1;

    invoke-direct {v4, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$9$1;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    move-object p7, v4

    check-cast p7, Lkotlin/jvm/functions/Function1;

    move-object v4, p7

    .end local v0    # "$i$a$-let-LazyStaggeredGridDslKt$items$9":I
    .end local p7    # "it":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    :cond_4
    move-object v4, p7

    .line 473
    :goto_1
    new-instance p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$10;

    invoke-direct {p7, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$10;-><init>(Lkotlin/jvm/functions/Function4;[Ljava/lang/Object;)V

    const v0, -0x69db5f53

    const/4 v5, 0x1

    invoke-static {v0, v5, p7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p7

    move-object v5, p7

    check-cast v5, Lkotlin/jvm/functions/Function4;

    .line 468
    move-object v0, p0

    .end local p0    # "$this$items_u24default":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .local v0, "$this$items_u24default":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 475
    return-void
.end method

.method public static final itemsIndexed(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V
    .locals 8
    .param p0, "$this$itemsIndexed"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "key"    # Lkotlin/jvm/functions/Function2;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function2;
    .param p4, "span"    # Lkotlin/jvm/functions/Function2;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    .local v0, "$i$f$itemsIndexed":I
    nop

    .line 433
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 434
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 537
    move-object v3, p2

    .local v3, "it":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 434
    .local v4, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$2":I
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$2$1;

    invoke-direct {v5, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$2$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v3, v5

    .end local v3    # "it":Lkotlin/jvm/functions/Function2;
    .end local v4    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$2":I
    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 432
    :goto_0
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$3;

    invoke-direct {v4, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 436
    if-eqz p4, :cond_1

    .line 537
    move-object v1, p4

    .local v1, "it":Lkotlin/jvm/functions/Function2;
    const/4 v5, 0x0

    .line 436
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$4":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$4$1;

    invoke-direct {v6, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$4$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object v1, v6

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v5, v1

    .end local v1    # "it":Lkotlin/jvm/functions/Function2;
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$4":I
    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 437
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$5;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$5;-><init>(Lkotlin/jvm/functions/Function5;Ljava/util/List;)V

    const v6, -0x5768657b

    const/4 v7, 0x1

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 432
    move-object v1, p0

    .end local p0    # "$this$itemsIndexed":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .local v1, "$this$itemsIndexed":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 439
    return-void
.end method

.method public static final itemsIndexed(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V
    .locals 8
    .param p0, "$this$itemsIndexed"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "key"    # Lkotlin/jvm/functions/Function2;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function2;
    .param p4, "span"    # Lkotlin/jvm/functions/Function2;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "[TT;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 504
    .local v0, "$i$f$itemsIndexed":I
    nop

    .line 505
    array-length v2, p1

    .line 506
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 537
    move-object v3, p2

    .local v3, "it":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 506
    .local v4, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$7":I
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$7$1;

    invoke-direct {v5, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$7$1;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v3, v5

    .end local v3    # "it":Lkotlin/jvm/functions/Function2;
    .end local v4    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$7":I
    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 504
    :goto_0
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$8;

    invoke-direct {v4, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$8;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 508
    if-eqz p4, :cond_1

    .line 537
    move-object v1, p4

    .local v1, "it":Lkotlin/jvm/functions/Function2;
    const/4 v5, 0x0

    .line 508
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$9":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$9$1;

    invoke-direct {v6, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$9$1;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object v1, v6

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v5, v1

    .end local v1    # "it":Lkotlin/jvm/functions/Function2;
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$9":I
    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 509
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$10;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$10;-><init>(Lkotlin/jvm/functions/Function5;[Ljava/lang/Object;)V

    const v6, 0x1961e84e

    const/4 v7, 0x1

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 504
    move-object v1, p0

    .end local p0    # "$this$itemsIndexed":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .local v1, "$this$itemsIndexed":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 511
    return-void
.end method

.method public static synthetic itemsIndexed$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$itemsIndexed_u24default"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "key"    # Lkotlin/jvm/functions/Function2;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function2;
    .param p4, "span"    # Lkotlin/jvm/functions/Function2;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function5;

    .line 425
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 427
    const/4 p2, 0x0

    .line 425
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 428
    sget-object p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$1;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$1;

    move-object p3, p7

    check-cast p3, Lkotlin/jvm/functions/Function2;

    .line 425
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 429
    const/4 p4, 0x0

    .line 425
    :cond_2
    const/4 p6, 0x0

    .line 432
    .local p6, "$i$f$itemsIndexed":I
    nop

    .line 433
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 434
    const/4 p7, 0x0

    if-eqz p2, :cond_3

    .line 537
    move-object v0, p2

    .local v0, "it":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    .line 434
    .local v2, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$2":I
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$2$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$2$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v2, v3

    .end local v0    # "it":Lkotlin/jvm/functions/Function2;
    .end local v2    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$2":I
    goto :goto_0

    :cond_3
    move-object v2, p7

    .line 432
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$3;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 436
    if-eqz p4, :cond_4

    .line 537
    move-object p7, p4

    .local p7, "it":Lkotlin/jvm/functions/Function2;
    const/4 v0, 0x0

    .line 436
    .local v0, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$4":I
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$4$1;

    invoke-direct {v4, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$4$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object p7, v4

    check-cast p7, Lkotlin/jvm/functions/Function1;

    move-object v4, p7

    .end local v0    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$4":I
    .end local p7    # "it":Lkotlin/jvm/functions/Function2;
    goto :goto_1

    :cond_4
    move-object v4, p7

    .line 437
    :goto_1
    new-instance p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$5;

    invoke-direct {p7, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$5;-><init>(Lkotlin/jvm/functions/Function5;Ljava/util/List;)V

    const v0, -0x5768657b

    const/4 v5, 0x1

    invoke-static {v0, v5, p7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p7

    move-object v5, p7

    check-cast v5, Lkotlin/jvm/functions/Function4;

    .line 432
    move-object v0, p0

    .end local p0    # "$this$itemsIndexed_u24default":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .local v0, "$this$itemsIndexed_u24default":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 439
    return-void
.end method

.method public static synthetic itemsIndexed$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$itemsIndexed_u24default"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "key"    # Lkotlin/jvm/functions/Function2;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function2;
    .param p4, "span"    # Lkotlin/jvm/functions/Function2;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function5;

    .line 497
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 499
    const/4 p2, 0x0

    .line 497
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 500
    sget-object p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$6;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$6;

    move-object p3, p7

    check-cast p3, Lkotlin/jvm/functions/Function2;

    .line 497
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 501
    const/4 p4, 0x0

    .line 497
    :cond_2
    const/4 p6, 0x0

    .line 504
    .local p6, "$i$f$itemsIndexed":I
    nop

    .line 505
    array-length v1, p1

    .line 506
    const/4 p7, 0x0

    if-eqz p2, :cond_3

    .line 537
    move-object v0, p2

    .local v0, "it":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    .line 506
    .local v2, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$7":I
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$7$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$7$1;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v2, v3

    .end local v0    # "it":Lkotlin/jvm/functions/Function2;
    .end local v2    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$7":I
    goto :goto_0

    :cond_3
    move-object v2, p7

    .line 504
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$8;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$8;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 508
    if-eqz p4, :cond_4

    .line 537
    move-object p7, p4

    .local p7, "it":Lkotlin/jvm/functions/Function2;
    const/4 v0, 0x0

    .line 508
    .local v0, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$9":I
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$9$1;

    invoke-direct {v4, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$9$1;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object p7, v4

    check-cast p7, Lkotlin/jvm/functions/Function1;

    move-object v4, p7

    .end local v0    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$9":I
    .end local p7    # "it":Lkotlin/jvm/functions/Function2;
    goto :goto_1

    :cond_4
    move-object v4, p7

    .line 509
    :goto_1
    new-instance p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$10;

    invoke-direct {p7, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$10;-><init>(Lkotlin/jvm/functions/Function5;[Ljava/lang/Object;)V

    const v0, 0x1961e84e

    const/4 v5, 0x1

    invoke-static {v0, v5, p7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p7

    move-object v5, p7

    check-cast v5, Lkotlin/jvm/functions/Function4;

    .line 504
    move-object v0, p0

    .end local p0    # "$this$itemsIndexed_u24default":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .local v0, "$this$itemsIndexed_u24default":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 511
    return-void
.end method

.method private static final rememberColumnSlots(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;
    .locals 8
    .param p0, "columns"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 135
    const v0, -0x4b860ee9

    const-string v1, "C(rememberColumnSlots)N(columns,horizontalArrangement,contentPadding)134@5881L1194:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.lazy.staggeredgrid.rememberColumnSlots (LazyStaggeredGridDsl.kt:134)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v0, 0x7dc21f01

    const-string v1, "CC(remember):LazyStaggeredGridDsl.kt#9igjgp"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, p4, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 v0, p4, 0x6

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    and-int/lit8 v1, p4, 0x70

    xor-int/lit8 v1, v1, 0x30

    const/16 v4, 0x20

    if-le v1, v4, :cond_4

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    and-int/lit8 v1, p4, 0x30

    if-ne v1, v4, :cond_6

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v4, 0x100

    if-le v1, v4, :cond_7

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    and-int/lit16 v1, p4, 0x180

    if-ne v1, v4, :cond_9

    :cond_8
    move v2, v3

    :cond_9
    or-int/2addr v0, v2

    .local v0, "invalid$iv":Z
    move-object v1, p3

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 519
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 520
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_b

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_a

    goto :goto_2

    .line 524
    :cond_a
    goto :goto_3

    .line 521
    :cond_b
    :goto_2
    const/4 v5, 0x0

    .line 136
    .local v5, "$i$a$-cache-LazyStaggeredGridDslKt$rememberColumnSlots$1":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;

    new-instance v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda1;

    invoke-direct {v7, p2, p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V

    invoke-direct {v6, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    .line 155
    nop

    .line 521
    .end local v5    # "$i$a$-cache-LazyStaggeredGridDslKt$rememberColumnSlots$1":I
    nop

    .line 522
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 523
    move-object v3, v6

    .line 519
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 135
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v3
.end method

.method private static final rememberColumnSlots$lambda$0$0(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;
    .locals 11
    .param p0, "$contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p1, "$columns"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p2, "$horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p3, "$this$LazyStaggeredGridSlotCache"    # Landroidx/compose/ui/unit/Density;
    .param p4, "constraints"    # Landroidx/compose/ui/unit/Constraints;

    .line 137
    invoke-virtual {p4}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 538
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 539
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-requirePrecondition-LazyStaggeredGridDslKt$rememberColumnSlots$1$1$1":I
    nop

    .line 539
    .end local v2    # "$i$a$-requirePrecondition-LazyStaggeredGridDslKt$rememberColumnSlots$1$1$1":I
    const-string v2, "LazyVerticalStaggeredGrid\'s width should be bound by parent."

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 541
    :cond_1
    nop

    .line 141
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    .line 142
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    .line 141
    nop

    .local v0, "$v$c$androidx-compose-ui-unit-Dp$-this$0$iv":F
    .local v1, "$v$c$androidx-compose-ui-unit-Dp$-other$0$iv":F
    const/4 v2, 0x0

    .line 542
    .local v2, "$i$f$plus-5rwHm24":I
    add-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 141
    .end local v0    # "$v$c$androidx-compose-ui-unit-Dp$-this$0$iv":F
    .end local v1    # "$v$c$androidx-compose-ui-unit-Dp$-other$0$iv":F
    .end local v2    # "$i$f$plus-5rwHm24":I
    nop

    .line 140
    nop

    .line 143
    .local v0, "horizontalPadding":F
    invoke-virtual {p4}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-interface {p3, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    sub-int v5, v1, v2

    .line 144
    .local v5, "gridWidth":I
    move-object v1, p1

    .local v1, "$this$rememberColumnSlots_u24lambda_u240_u240_u241":Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    const/4 v2, 0x0

    .line 145
    .local v2, "$i$a$-with-LazyStaggeredGridDslKt$rememberColumnSlots$1$1$2":I
    invoke-interface {p2}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v3

    invoke-interface {p3, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    invoke-interface {v1, p3, v5, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;->calculateCrossAxisCellSizes(Landroidx/compose/ui/unit/Density;II)[I

    move-result-object v6

    .line 146
    nop

    .local v6, "sizes":[I
    const/4 v9, 0x0

    .line 147
    .local v9, "$i$a$-let-LazyStaggeredGridDslKt$rememberColumnSlots$1$1$2$1":I
    array-length v3, v6

    new-array v8, v3, [I

    .line 148
    .local v8, "positions":[I
    move-object v3, p2

    .local v3, "$this$rememberColumnSlots_u24lambda_u240_u240_u241_u240_u240":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/4 v10, 0x0

    .line 150
    .local v10, "$i$a$-with-LazyStaggeredGridDslKt$rememberColumnSlots$1$1$2$1$1":I
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object v4, p3

    .end local p3    # "$this$LazyStaggeredGridSlotCache":Landroidx/compose/ui/unit/Density;
    .local v4, "$this$LazyStaggeredGridSlotCache":Landroidx/compose/ui/unit/Density;
    invoke-interface/range {v3 .. v8}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 151
    nop

    .line 148
    .end local v3    # "$this$rememberColumnSlots_u24lambda_u240_u240_u241_u240_u240":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v10    # "$i$a$-with-LazyStaggeredGridDslKt$rememberColumnSlots$1$1$2$1$1":I
    nop

    .line 152
    new-instance p3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    invoke-direct {p3, v8, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;-><init>([I[I)V

    .line 146
    .end local v6    # "sizes":[I
    .end local v8    # "positions":[I
    .end local v9    # "$i$a$-let-LazyStaggeredGridDslKt$rememberColumnSlots$1$1$2$1":I
    nop

    .line 153
    nop

    .line 144
    .end local v1    # "$this$rememberColumnSlots_u24lambda_u240_u240_u241":Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .end local v2    # "$i$a$-with-LazyStaggeredGridDslKt$rememberColumnSlots$1$1$2":I
    nop

    .line 154
    return-object p3
.end method

.method private static final rememberRowSlots(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;
    .locals 8
    .param p0, "rows"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 256
    const v0, -0x5b564f4d

    const-string v1, "C(rememberRowSlots)N(rows,verticalArrangement,contentPadding)255@11347L956:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.lazy.staggeredgrid.rememberRowSlots (LazyStaggeredGridDsl.kt:255)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v0, 0x2100656f

    const-string v1, "CC(remember):LazyStaggeredGridDsl.kt#9igjgp"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, p4, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 v0, p4, 0x6

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    and-int/lit8 v1, p4, 0x70

    xor-int/lit8 v1, v1, 0x30

    const/16 v4, 0x20

    if-le v1, v4, :cond_4

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    and-int/lit8 v1, p4, 0x30

    if-ne v1, v4, :cond_6

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v4, 0x100

    if-le v1, v4, :cond_7

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    and-int/lit16 v1, p4, 0x180

    if-ne v1, v4, :cond_9

    :cond_8
    move v2, v3

    :cond_9
    or-int/2addr v0, v2

    .local v0, "invalid$iv":Z
    move-object v1, p3

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 531
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 532
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_b

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_a

    goto :goto_2

    .line 536
    :cond_a
    goto :goto_3

    .line 533
    :cond_b
    :goto_2
    const/4 v5, 0x0

    .line 257
    .local v5, "$i$a$-cache-LazyStaggeredGridDslKt$rememberRowSlots$1":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;

    new-instance v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda2;

    invoke-direct {v7, p2, p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    invoke-direct {v6, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    .line 272
    nop

    .line 533
    .end local v5    # "$i$a$-cache-LazyStaggeredGridDslKt$rememberRowSlots$1":I
    nop

    .line 534
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 535
    move-object v3, v6

    .line 531
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 256
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v3
.end method

.method private static final rememberRowSlots$lambda$0$0(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;
    .locals 9
    .param p0, "$contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p1, "$rows"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p2, "$verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p3, "$this$LazyStaggeredGridSlotCache"    # Landroidx/compose/ui/unit/Density;
    .param p4, "constraints"    # Landroidx/compose/ui/unit/Constraints;

    .line 258
    invoke-virtual {p4}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 543
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 544
    const/4 v2, 0x0

    .line 259
    .local v2, "$i$a$-requirePrecondition-LazyStaggeredGridDslKt$rememberRowSlots$1$1$1":I
    nop

    .line 544
    .end local v2    # "$i$a$-requirePrecondition-LazyStaggeredGridDslKt$rememberRowSlots$1$1$1":I
    const-string v2, "LazyHorizontalStaggeredGrid\'s height should be bound by parent."

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 546
    :cond_1
    nop

    .line 262
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    .local v0, "$v$c$androidx-compose-ui-unit-Dp$-this$0$iv":F
    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v1

    .local v1, "$v$c$androidx-compose-ui-unit-Dp$-other$0$iv":F
    const/4 v2, 0x0

    .line 547
    .local v2, "$i$f$plus-5rwHm24":I
    add-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 262
    .end local v0    # "$v$c$androidx-compose-ui-unit-Dp$-this$0$iv":F
    .end local v1    # "$v$c$androidx-compose-ui-unit-Dp$-other$0$iv":F
    .end local v2    # "$i$f$plus-5rwHm24":I
    nop

    .line 261
    nop

    .line 263
    .local v0, "verticalPadding":F
    invoke-virtual {p4}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    invoke-interface {p3, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 264
    .local v1, "gridHeight":I
    move-object v2, p1

    .local v2, "$this$rememberRowSlots_u24lambda_u240_u240_u241":Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    const/4 v3, 0x0

    .line 265
    .local v3, "$i$a$-with-LazyStaggeredGridDslKt$rememberRowSlots$1$1$2":I
    invoke-interface {p2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v4

    invoke-interface {p3, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    invoke-interface {v2, p3, v1, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;->calculateCrossAxisCellSizes(Landroidx/compose/ui/unit/Density;II)[I

    move-result-object v4

    .line 266
    nop

    .local v4, "sizes":[I
    const/4 v5, 0x0

    .line 267
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$rememberRowSlots$1$1$2$1":I
    array-length v6, v4

    new-array v6, v6, [I

    .line 268
    .local v6, "positions":[I
    move-object v7, p2

    .line 537
    .local v7, "$this$rememberRowSlots_u24lambda_u240_u240_u241_u240_u240":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v8, 0x0

    .line 268
    .local v8, "$i$a$-with-LazyStaggeredGridDslKt$rememberRowSlots$1$1$2$1$1":I
    invoke-interface {v7, p3, v1, v4, v6}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 269
    .end local v7    # "$this$rememberRowSlots_u24lambda_u240_u240_u241_u240_u240":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v8    # "$i$a$-with-LazyStaggeredGridDslKt$rememberRowSlots$1$1$2$1$1":I
    new-instance v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    invoke-direct {v7, v6, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;-><init>([I[I)V

    .line 266
    .end local v4    # "sizes":[I
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$rememberRowSlots$1$1$2$1":I
    .end local v6    # "positions":[I
    nop

    .line 270
    nop

    .line 264
    .end local v2    # "$this$rememberRowSlots_u24lambda_u240_u240_u241":Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .end local v3    # "$i$a$-with-LazyStaggeredGridDslKt$rememberRowSlots$1$1$2":I
    nop

    .line 271
    return-object v7
.end method
