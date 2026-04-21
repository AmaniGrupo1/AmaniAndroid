.class public final synthetic Lcom/google/common/graph/ImmutableNetwork$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/common/graph/ImmutableNetwork;"
    method = "lambda$adjacentNodeFn$2"
    proto = "(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/common/graph/Network;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/Network;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/ImmutableNetwork$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/graph/Network;

    iput-object p2, p0, Lcom/google/common/graph/ImmutableNetwork$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/common/graph/ImmutableNetwork$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/graph/Network;

    iget-object v1, p0, Lcom/google/common/graph/ImmutableNetwork$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/graph/ImmutableNetwork;->lambda$adjacentNodeFn$2(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
