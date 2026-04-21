.class public final synthetic Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/window/reflection/Predicate2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/window/embedding/EmbeddingAdapter;"
    method = "translateSplitPlaceholderRule$lambda$13"
    proto = "(Landroidx/window/embedding/SplitPlaceholderRule;Landroid/content/Intent;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/window/embedding/SplitPlaceholderRule;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitPlaceholderRule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda3;->f$0:Landroidx/window/embedding/SplitPlaceholderRule;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda3;->f$0:Landroidx/window/embedding/SplitPlaceholderRule;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->translateSplitPlaceholderRule$lambda$13(Landroidx/window/embedding/SplitPlaceholderRule;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
