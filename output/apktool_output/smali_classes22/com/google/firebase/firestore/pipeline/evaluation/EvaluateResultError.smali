.class public final Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
.super Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
.source "EvaluateResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000b\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u000c\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "<init>",
        "()V",
        "value",
        "Lcom/google/firestore/v1/Value;",
        "getValue",
        "()Lcom/google/firestore/v1/Value;",
        "isSuccess",
        "",
        "()Z",
        "isError",
        "isUnset",
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


# static fields
.field public static final INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

.field private static final isError:Z

.field private static final isSuccess:Z

.field private static final isUnset:Z

.field private static final value:Lcom/google/firestore/v1/Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->isError:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->value:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->isError:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->isSuccess:Z

    return v0
.end method

.method public isUnset()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->isUnset:Z

    return v0
.end method
