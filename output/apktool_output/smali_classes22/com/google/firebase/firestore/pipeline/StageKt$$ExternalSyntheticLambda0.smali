.class public final synthetic Lcom/google/firebase/firestore/pipeline/StageKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/pipeline/StageKt;"
    method = "comparatorFromOrderings$lambda$1"
    proto = "([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:[Lcom/google/firebase/firestore/pipeline/Ordering;

.field public final synthetic f$1:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;


# direct methods
.method public synthetic constructor <init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/StageKt$$ExternalSyntheticLambda0;->f$0:[Lcom/google/firebase/firestore/pipeline/Ordering;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/StageKt$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/StageKt$$ExternalSyntheticLambda0;->f$0:[Lcom/google/firebase/firestore/pipeline/Ordering;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/StageKt$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;

    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    check-cast p2, Lcom/google/firebase/firestore/model/Document;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/firestore/pipeline/StageKt;->comparatorFromOrderings$lambda$1([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I

    move-result p1

    return p1
.end method
