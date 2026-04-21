.class public final synthetic Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/common/graph/AbstractBaseGraph$2;"
    method = "lambda$iterator$2"
    proto = "(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/common/graph/AbstractBaseGraph$2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/AbstractBaseGraph$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/graph/AbstractBaseGraph$2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/graph/AbstractBaseGraph$2;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractBaseGraph$2;->lambda$iterator$2$com-google-common-graph-AbstractBaseGraph$2(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
