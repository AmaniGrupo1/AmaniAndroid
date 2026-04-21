.class public final synthetic Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/window/reflection/JFunction2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/window/embedding/EmbeddingAdapter;"
    method = "translateSplitAttributesCalculator$lambda$1"
    proto = "(Landroidx/window/embedding/EmbeddingAdapter;Lkotlin/jvm/functions/Function1;Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;)Landroidx/window/extensions/embedding/SplitAttributes;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/window/embedding/EmbeddingAdapter;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/EmbeddingAdapter;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/window/embedding/EmbeddingAdapter;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/window/embedding/EmbeddingAdapter;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;

    invoke-static {v0, v1, p1}, Landroidx/window/embedding/EmbeddingAdapter;->translateSplitAttributesCalculator$lambda$1(Landroidx/window/embedding/EmbeddingAdapter;Lkotlin/jvm/functions/Function1;Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;)Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object p1

    return-object p1
.end method
