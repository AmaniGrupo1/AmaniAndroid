.class public final Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Timestamp.kt\ncom/google/firebase/firestore/pipeline/evaluation/TimestampKt\n*L\n1#1,905:1\n31#2,2:906\n215#2,7:908\n31#2,2:915\n151#2:917\n33#2,3:922\n222#2,2:925\n33#2,3:927\n195#3,4:918\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n48#1:906,2\n48#1:927,3\n221#2:915,2\n221#2:922,3\n*E\n"
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
.field final synthetic $p:Lkotlin/jvm/functions/Function1;

.field final synthetic $valueTypeCase$inlined:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/google/firestore/v1/Value$ValueTypeCase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3$1;->$p:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3$1;->$valueTypeCase$inlined:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 18
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3$1;->$p:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    .line 906
    .local v3, "$i$f$catch":I
    nop

    .line 907
    const/4 v4, 0x0

    .line 48
    .local v4, "$i$a$-catch-UtilsKt$unaryFunction$1$1$1":I
    :try_start_0
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v5, v0

    .local v5, "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    const/4 v6, 0x0

    .line 908
    .local v6, "$i$a$-unaryFunction-UtilsKt$unaryFunctionType$1":I
    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_7

    .line 910
    :cond_0
    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    move-object v7, v0

    .line 911
    .local v7, "v":Lcom/google/firestore/v1/Value;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v8, -0x1

    if-nez v0, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v10

    aget v9, v9, v10

    .line 912
    :goto_1
    if-eq v9, v8, :cond_8

    .line 913
    const/4 v8, 0x1

    if-ne v9, v8, :cond_3

    goto :goto_5

    .line 914
    :cond_3
    iget-object v9, v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3$1;->$valueTypeCase$inlined:Lcom/google/firestore/v1/Value$ValueTypeCase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v9, :cond_7

    const/4 v9, 0x0

    .line 915
    .local v9, "$i$f$catch":I
    nop

    .line 916
    const/4 v0, 0x0

    .line 914
    .local v0, "$i$a$-catch-UtilsKt$unaryFunctionType$1$1":I
    move-object v10, v7

    .local v10, "p0":Lcom/google/firestore/v1/Value;
    const/4 v11, 0x0

    .local v11, "$i$f$unaryFunction$stub_for_inlining$4":I
    const/4 v12, 0x0

    .line 917
    .local v12, "$i$a$-unaryFunctionType-UtilsKt$unaryFunction$6":I
    :try_start_1
    invoke-virtual {v10}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v13

    .line 914
    .end local v10    # "p0":Lcom/google/firestore/v1/Value;
    .end local v11    # "$i$f$unaryFunction$stub_for_inlining$4":I
    .end local v12    # "$i$a$-unaryFunctionType-UtilsKt$unaryFunction$6":I
    nop

    .local v13, "t":Lcom/google/protobuf/Timestamp;
    const/4 v10, 0x0

    .line 918
    .local v10, "$i$a$-unaryTimestampFunction-TimestampKt$evaluateTimestampToUnixSeconds$1":I
    invoke-virtual {v13}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v11

    invoke-virtual {v13}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v14

    invoke-static {v11, v12, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->isTimestampInBounds(JI)Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_3

    .line 920
    :cond_4
    invoke-virtual {v13}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v11

    int-to-long v11, v11

    const-wide/16 v14, 0x0

    cmp-long v14, v14, v11

    const/4 v15, 0x0

    if-gtz v14, :cond_5

    const-wide/32 v16, 0x3b9aca00

    cmp-long v11, v11, v16

    if-gez v11, :cond_5

    goto :goto_2

    :cond_5
    move v8, v15

    :goto_2
    if-nez v8, :cond_6

    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_3

    .line 921
    :cond_6
    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v13}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->long(J)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 914
    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$1$1":I
    .end local v10    # "$i$a$-unaryTimestampFunction-TimestampKt$evaluateTimestampToUnixSeconds$1":I
    .end local v13    # "t":Lcom/google/protobuf/Timestamp;
    :goto_3
    nop

    .line 916
    goto :goto_4

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e$iv":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 924
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_4
    move-object v0, v8

    .end local v9    # "$i$f$catch":I
    goto :goto_6

    .line 925
    :cond_7
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    .line 913
    :cond_8
    :goto_5
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 926
    :goto_6
    nop

    .line 48
    .end local v4    # "$i$a$-catch-UtilsKt$unaryFunction$1$1$1":I
    .end local v5    # "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v6    # "$i$a$-unaryFunction-UtilsKt$unaryFunctionType$1":I
    .end local v7    # "v":Lcom/google/firestore/v1/Value;
    :goto_7
    nop

    .line 907
    goto :goto_8

    .line 927
    :catch_1
    move-exception v0

    .line 928
    .restart local v0    # "e$iv":Ljava/lang/Exception;
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v4

    .line 929
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_8
    nop

    .line 48
    .end local v3    # "$i$f$catch":I
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
