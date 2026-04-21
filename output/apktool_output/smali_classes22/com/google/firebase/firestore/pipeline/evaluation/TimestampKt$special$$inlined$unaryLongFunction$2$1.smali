.class public final Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Timestamp.kt\ncom/google/firebase/firestore/pipeline/evaluation/TimestampKt\n*L\n1#1,905:1\n31#2,2:906\n215#2,7:908\n31#2,2:915\n134#2:917\n33#2,3:923\n222#2,2:926\n33#2,3:928\n224#3,5:918\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n48#1:906,2\n48#1:928,3\n221#2:915,2\n221#2:923,3\n*E\n"
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2$1;->$p:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2$1;->$valueTypeCase$inlined:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 17
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2$1;->$p:Lkotlin/jvm/functions/Function1;

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

    goto/16 :goto_6

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
    if-eq v9, v8, :cond_6

    .line 913
    const/4 v8, 0x1

    if-ne v9, v8, :cond_3

    goto :goto_4

    .line 914
    :cond_3
    iget-object v8, v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2$1;->$valueTypeCase$inlined:Lcom/google/firestore/v1/Value$ValueTypeCase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v8, :cond_5

    const/4 v8, 0x0

    .line 915
    .local v8, "$i$f$catch":I
    nop

    .line 916
    const/4 v0, 0x0

    .line 914
    .local v0, "$i$a$-catch-UtilsKt$unaryFunctionType$1$1":I
    move-object v9, v7

    .local v9, "p0":Lcom/google/firestore/v1/Value;
    const/4 v10, 0x0

    .local v10, "$i$f$unaryFunction$stub_for_inlining$3":I
    const/4 v11, 0x0

    .line 917
    .local v11, "$i$a$-unaryFunctionType-UtilsKt$unaryFunction$5":I
    :try_start_1
    invoke-virtual {v9}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v12

    .line 914
    .end local v9    # "p0":Lcom/google/firestore/v1/Value;
    .end local v10    # "$i$f$unaryFunction$stub_for_inlining$3":I
    .end local v11    # "$i$a$-unaryFunctionType-UtilsKt$unaryFunction$5":I
    nop

    .local v12, "millis":J
    const/4 v9, 0x0

    .line 918
    .local v9, "$i$a$-unaryLongFunction-TimestampKt$evaluateUnixMillisToTimestamp$1":I
    invoke-static {v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->isMillisecondsInTimestampBounds(J)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2

    .line 919
    :cond_4
    sget-object v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    .line 920
    const-wide/16 v14, 0x3e8

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v14

    .line 921
    const/16 v11, 0x3e8

    invoke-static {v12, v13, v11}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$1$1$$ExternalSyntheticBackport0;->m(JI)I

    move-result v11

    const v16, 0xf4240

    mul-int v11, v11, v16

    .line 919
    invoke-virtual {v10, v14, v15, v11}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->timestamp(JI)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 922
    nop

    .line 914
    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$1$1":I
    .end local v9    # "$i$a$-unaryLongFunction-TimestampKt$evaluateUnixMillisToTimestamp$1":I
    .end local v12    # "millis":J
    :goto_2
    nop

    .line 916
    goto :goto_3

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e$iv":Ljava/lang/Exception;
    :try_start_2
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v10, v9

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 925
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_3
    move-object v0, v10

    .end local v8    # "$i$f$catch":I
    goto :goto_5

    .line 926
    :cond_5
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    .line 913
    :cond_6
    :goto_4
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 927
    :goto_5
    nop

    .line 48
    .end local v4    # "$i$a$-catch-UtilsKt$unaryFunction$1$1$1":I
    .end local v5    # "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v6    # "$i$a$-unaryFunction-UtilsKt$unaryFunctionType$1":I
    .end local v7    # "v":Lcom/google/firestore/v1/Value;
    :goto_6
    nop

    .line 907
    goto :goto_7

    .line 928
    :catch_1
    move-exception v0

    .line 929
    .restart local v0    # "e$iv":Ljava/lang/Exception;
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v4

    .line 930
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_7
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

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
