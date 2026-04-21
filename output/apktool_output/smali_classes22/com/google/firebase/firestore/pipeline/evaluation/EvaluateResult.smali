.class public abstract Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
.super Ljava/lang/Object;
.source "EvaluateResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u0000 \r2\u00020\u0001:\u0001\rB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0012\u0010\u000b\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u0012\u0010\u000c\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\n\u0082\u0001\u0003\u000e\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "",
        "<init>",
        "()V",
        "value",
        "Lcom/google/firestore/v1/Value;",
        "getValue",
        "()Lcom/google/firestore/v1/Value;",
        "isError",
        "",
        "()Z",
        "isSuccess",
        "isUnset",
        "Companion",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

.field private static final DOUBLE_ZERO:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

.field private static final FALSE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

.field private static final LONG_ZERO:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

.field private static final NULL:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

.field private static final TRUE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    .line 29
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    sget-object v1, Lcom/google/firebase/firestore/model/Values;->TRUE_VALUE:Lcom/google/firestore/v1/Value;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->TRUE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    .line 30
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    sget-object v1, Lcom/google/firebase/firestore/model/Values;->FALSE_VALUE:Lcom/google/firestore/v1/Value;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->FALSE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    .line 31
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    sget-object v1, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->NULL:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    .line 32
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->DOUBLE_ZERO:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    .line 33
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->long(I)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->LONG_ZERO:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDOUBLE_ZERO$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->DOUBLE_ZERO:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    return-object v0
.end method

.method public static final synthetic access$getFALSE$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->FALSE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    return-object v0
.end method

.method public static final synthetic access$getLONG_ZERO$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->LONG_ZERO:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    return-object v0
.end method

.method public static final synthetic access$getNULL$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->NULL:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    return-object v0
.end method

.method public static final synthetic access$getTRUE$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->TRUE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    return-object v0
.end method


# virtual methods
.method public abstract getValue()Lcom/google/firestore/v1/Value;
.end method

.method public abstract isError()Z
.end method

.method public abstract isSuccess()Z
.end method

.method public abstract isUnset()Z
.end method
