.class public final synthetic Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;"
    method = "item$lambda$1$0"
    proto = "(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)Landroidx/compose/foundation/lazy/grid/GridItemSpan;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->$r8$lambda$ZuIUS0kkNQZOLv9hdV1sDoEFDMM(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    move-result-object p1

    return-object p1
.end method
