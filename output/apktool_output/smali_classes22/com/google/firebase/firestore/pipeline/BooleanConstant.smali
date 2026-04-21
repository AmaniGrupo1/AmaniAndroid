.class public final Lcom/google/firebase/firestore/pipeline/BooleanConstant;
.super Lcom/google/firebase/firestore/pipeline/BooleanExpression;
.source "expressions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0010\u00a2\u0006\u0002\u0008\u000cJ4\u0010\r\u001a!\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\u000ej\u0002`\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0010\u00a2\u0006\u0002\u0008\u0017J\r\u0010\u0018\u001a\u00020\u0019H\u0010\u00a2\u0006\u0002\u0008\u001aJ\u0008\u0010\u001b\u001a\u00020\u0019H\u0016J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0008\u0010 \u001a\u00020!H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\""
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/BooleanConstant;",
        "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
        "constant",
        "Lcom/google/firebase/firestore/pipeline/Expression$Constant;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/Expression$Constant;)V",
        "getConstant",
        "()Lcom/google/firebase/firestore/pipeline/Expression$Constant;",
        "toProto",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "toProto$com_google_firebase_firebase_firestore",
        "evaluateFunction",
        "Lkotlin/Function1;",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lkotlin/ParameterName;",
        "name",
        "input",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;",
        "context",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
        "evaluateFunction$com_google_firebase_firebase_firestore",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "toString",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression$Constant;)V
    .locals 1
    .param p1, "constant"    # Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    const-string v0, "constant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7593
    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/BooleanExpression;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    return-void
.end method


# virtual methods
.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 1

    .line 7599
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Constant;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 7604
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 7605
    :cond_0
    nop

    .line 7606
    instance-of v0, p1, Lcom/google/firebase/firestore/pipeline/BooleanConstant;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/BooleanConstant;

    iget-object v1, v1, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 7607
    :cond_1
    instance-of v0, p1, Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 7608
    :cond_2
    const/4 v0, 0x0

    .line 7605
    :goto_0
    return v0
.end method

.method public evaluateFunction$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "context"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7597
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Constant;->evaluateFunction$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public final getConstant()Lcom/google/firebase/firestore/pipeline/Expression$Constant;
    .locals 1

    .line 7593
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 7612
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Constant;->hashCode()I

    move-result v0

    return v0
.end method

.method public toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7594
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Constant;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 7601
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;->constant:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Constant;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
