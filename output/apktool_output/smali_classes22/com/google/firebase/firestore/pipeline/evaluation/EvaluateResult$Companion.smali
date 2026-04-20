.class public final Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;
.super Ljava/lang/Object;
.source "EvaluateResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aJ\u0014\u0010\u001b\u001a\u00020\u00052\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020 J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u0018J\u000e\u0010#\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u001dR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007\u00a8\u0006$"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;",
        "",
        "<init>",
        "()V",
        "TRUE",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;",
        "getTRUE",
        "()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;",
        "FALSE",
        "getFALSE",
        "NULL",
        "getNULL",
        "DOUBLE_ZERO",
        "getDOUBLE_ZERO",
        "LONG_ZERO",
        "getLONG_ZERO",
        "boolean",
        "",
        "(Ljava/lang/Boolean;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;",
        "double",
        "",
        "long",
        "",
        "int",
        "",
        "string",
        "",
        "list",
        "",
        "Lcom/google/firestore/v1/Value;",
        "timestamp",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "Lcom/google/protobuf/Timestamp;",
        "seconds",
        "nanos",
        "value",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final boolean(Ljava/lang/Boolean;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1
    .param p1, "boolean"    # Ljava/lang/Boolean;

    .line 34
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->boolean(Z)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final boolean(Z)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1
    .param p1, "boolean"    # Z

    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getTRUE()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getFALSE()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 2
    .param p1, "double"    # D

    .line 36
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/model/Values;->encodeValue(D)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method public final getDOUBLE_ZERO()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 32
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->access$getDOUBLE_ZERO$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    return-object v0
.end method

.method public final getFALSE()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 30
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->access$getFALSE$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    return-object v0
.end method

.method public final getLONG_ZERO()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 33
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->access$getLONG_ZERO$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    return-object v0
.end method

.method public final getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 31
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->access$getNULL$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    return-object v0
.end method

.method public final getTRUE()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1

    .line 29
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->access$getTRUE$cp()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    return-object v0
.end method

.method public final list(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 2
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method public final long(I)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 3
    .param p1, "int"    # I

    .line 38
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/model/Values;->encodeValue(J)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method public final long(J)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 2
    .param p1, "long"    # J

    .line 37
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/model/Values;->encodeValue(J)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method public final string(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method public final timestamp(JI)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 2
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I

    .line 44
    nop

    .line 45
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->timestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v1

    .line 48
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v0
.end method

.method public final timestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 2
    .param p1, "timestamp"    # Lcom/google/protobuf/Timestamp;

    const-string v0, "timestamp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method

.method public final value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method
