.class public final synthetic Landroidx/compose/ui/tooling/data/SlotTreeKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/ui/tooling/data/SlotTreeKt;"
    method = "mapTree$lambda$0"
    proto = "(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceContext;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/data/SlotTreeKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SlotTreeKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function3;

    check-cast p1, Landroidx/compose/runtime/tooling/CompositionGroup;

    check-cast p2, Landroidx/compose/ui/tooling/data/SourceContext;

    check-cast p3, Ljava/util/List;

    check-cast p4, Ljava/util/List;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->mapTree$lambda$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceContext;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
