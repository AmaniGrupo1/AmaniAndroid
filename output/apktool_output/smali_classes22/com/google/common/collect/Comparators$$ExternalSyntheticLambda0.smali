.class public final synthetic Lcom/google/common/collect/Comparators$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/common/collect/Comparators;"
    method = "lambda$least$0"
    proto = "(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Comparator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/collect/Comparators$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/google/common/collect/Comparators$$ExternalSyntheticLambda0;->f$1:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/common/collect/Comparators$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/google/common/collect/Comparators$$ExternalSyntheticLambda0;->f$1:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/Comparators;->lambda$least$0(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    move-result-object v0

    return-object v0
.end method
