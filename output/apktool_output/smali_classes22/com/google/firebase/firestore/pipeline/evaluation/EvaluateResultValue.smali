.class public final Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
.super Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
.source "EvaluateResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\t2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000b\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u000c\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "value",
        "Lcom/google/firestore/v1/Value;",
        "<init>",
        "(Lcom/google/firestore/v1/Value;)V",
        "getValue",
        "()Lcom/google/firestore/v1/Value;",
        "isSuccess",
        "",
        "()Z",
        "isError",
        "isUnset",
        "component1",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final isError:Z

.field private final isSuccess:Z

.field private final isUnset:Z

.field private final value:Lcom/google/firestore/v1/Value;


# direct methods
.method public constructor <init>(Lcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->value:Lcom/google/firestore/v1/Value;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->isSuccess:Z

    .line 53
    return-void
.end method

.method public static synthetic copy$default(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;Lcom/google/firestore/v1/Value;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->value:Lcom/google/firestore/v1/Value;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->copy(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/firestore/v1/Value;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->value:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public final copy(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->value:Lcom/google/firestore/v1/Value;

    iget-object v1, v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->value:Lcom/google/firestore/v1/Value;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getValue()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->value:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->value:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hashCode()I

    move-result v0

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->isError:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->isSuccess:Z

    return v0
.end method

.method public isUnset()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->isUnset:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EvaluateResultValue(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->value:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
