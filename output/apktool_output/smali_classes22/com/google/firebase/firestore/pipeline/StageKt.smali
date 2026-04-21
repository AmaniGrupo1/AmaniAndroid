.class public final Lcom/google/firebase/firestore/pipeline/StageKt;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/StageKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1328:1\n12820#2,3:1329\n*S KotlinDebug\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/StageKt\n*L\n414#1:1329,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a1\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\t\u001a5\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00110\u0005H\u0002\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "associateWithoutDuplications",
        "",
        "",
        "Lcom/google/firestore/v1/Value;",
        "fields",
        "",
        "Lcom/google/firebase/firestore/pipeline/Selectable;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/Map;",
        "comparatorFromOrderings",
        "Ljava/util/Comparator;",
        "Lcom/google/firebase/firestore/model/Document;",
        "Lkotlin/Comparator;",
        "context",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
        "orderings",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;[Lcom/google/firebase/firestore/pipeline/Ordering;)Ljava/util/Comparator;",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$associateWithoutDuplications([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/Map;
    .locals 1
    .param p0, "fields"    # [Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/pipeline/StageKt;->associateWithoutDuplications([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$comparatorFromOrderings(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;[Lcom/google/firebase/firestore/pipeline/Ordering;)Ljava/util/Comparator;
    .locals 1
    .param p0, "context"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    .param p1, "orderings"    # [Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/pipeline/StageKt;->comparatorFromOrderings(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;[Lcom/google/firebase/firestore/pipeline/Ordering;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method private static final associateWithoutDuplications([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/Map;
    .locals 13
    .param p0, "fields"    # [Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/firebase/firestore/pipeline/Selectable;",
            "Lcom/google/firebase/firestore/UserDataReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "initial$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "$this$fold$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1329
    .local v2, "$i$f$fold":I
    move-object v3, v0

    .line 1330
    .local v3, "accumulator$iv":Ljava/lang/Object;
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v3

    .local v7, "results":Ljava/util/HashMap;
    move-object v8, v6

    .local v8, "selectable":Lcom/google/firebase/firestore/pipeline/Selectable;
    const/4 v9, 0x0

    .line 415
    .local v9, "$i$a$-fold-StageKt$associateWithoutDuplications$1":I
    move-object v10, v7

    check-cast v10, Ljava/util/Map;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/Selectable;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 419
    move-object v10, v7

    check-cast v10, Ljava/util/Map;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/Selectable;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, p1}, Lcom/google/firebase/firestore/pipeline/Selectable;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    nop

    .line 1330
    .end local v7    # "results":Ljava/util/HashMap;
    .end local v8    # "selectable":Lcom/google/firebase/firestore/pipeline/Selectable;
    .end local v9    # "$i$a$-fold-StageKt$associateWithoutDuplications$1":I
    move-object v3, v7

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 416
    .restart local v6    # "element$iv":Ljava/lang/Object;
    .restart local v7    # "results":Ljava/util/HashMap;
    .restart local v8    # "selectable":Lcom/google/firebase/firestore/pipeline/Selectable;
    .restart local v9    # "$i$a$-fold-StageKt$associateWithoutDuplications$1":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate alias: \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/Selectable;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x27

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1331
    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "results":Ljava/util/HashMap;
    .end local v8    # "selectable":Lcom/google/firebase/firestore/pipeline/Selectable;
    .end local v9    # "$i$a$-fold-StageKt$associateWithoutDuplications$1":I
    :cond_1
    nop

    .end local v0    # "initial$iv":Ljava/lang/Object;
    .end local v1    # "$this$fold$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$fold":I
    .end local v3    # "accumulator$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    .line 414
    return-object v0
.end method

.method private static final comparatorFromOrderings(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;[Lcom/google/firebase/firestore/pipeline/Ordering;)Ljava/util/Comparator;
    .locals 1
    .param p0, "context"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    .param p1, "orderings"    # [Lcom/google/firebase/firestore/pipeline/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
            "[",
            "Lcom/google/firebase/firestore/pipeline/Ordering;",
            ")",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 942
    new-instance v0, Lcom/google/firebase/firestore/pipeline/StageKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/firestore/pipeline/StageKt$$ExternalSyntheticLambda0;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)V

    .line 966
    return-object v0
.end method

.method static final comparatorFromOrderings$lambda$1([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I
    .locals 9
    .param p0, "$orderings"    # [Lcom/google/firebase/firestore/pipeline/Ordering;
    .param p1, "$context"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    .param p2, "d1"    # Lcom/google/firebase/firestore/model/Document;
    .param p3, "d2"    # Lcom/google/firebase/firestore/model/Document;

    .line 943
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    .line 944
    .local v3, "ordering":Lcom/google/firebase/firestore/pipeline/Ordering;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/Ordering;->getExpr()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v4

    .line 947
    .local v4, "expr":Lcom/google/firebase/firestore/pipeline/Expression;
    invoke-virtual {v4, p1}, Lcom/google/firebase/firestore/pipeline/Expression;->evaluateFunction$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.google.firebase.firestore.model.MutableDocument"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p2

    check-cast v7, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-interface {v5, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 948
    .local v5, "leftValue":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v4, p1}, Lcom/google/firebase/firestore/pipeline/Expression;->evaluateFunction$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p3

    check-cast v6, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-interface {v7, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 953
    .local v6, "rightValue":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isUnset()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v7, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    .line 954
    :goto_2
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isUnset()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    :goto_3
    sget-object v8, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    .line 952
    :goto_4
    invoke-static {v7, v8}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v7

    .line 951
    nop

    .line 957
    .local v7, "comparison":I
    if-eqz v7, :cond_5

    .line 958
    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/Ordering;->getDir()Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->ASCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    if-ne v0, v1, :cond_4

    .line 959
    move v0, v7

    goto :goto_5

    .line 961
    :cond_4
    neg-int v0, v7

    .line 958
    :goto_5
    return v0

    .line 943
    .end local v3    # "ordering":Lcom/google/firebase/firestore/pipeline/Ordering;
    .end local v4    # "expr":Lcom/google/firebase/firestore/pipeline/Expression;
    .end local v5    # "leftValue":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v6    # "rightValue":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v7    # "comparison":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    :cond_6
    return v1
.end method
