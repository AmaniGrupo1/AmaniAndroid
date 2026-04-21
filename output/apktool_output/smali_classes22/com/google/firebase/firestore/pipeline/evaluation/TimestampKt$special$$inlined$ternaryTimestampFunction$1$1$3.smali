.class public final Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1$1$3;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        ">;"
    }
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


# instance fields
.field final synthetic $input:Lcom/google/firebase/firestore/model/MutableDocument;

.field final synthetic $p3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1$1$3;->$p3:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1$1$3;->$input:Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1$1$3;->$p3:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1$1$3;->$input:Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1$1$3;->invoke()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
