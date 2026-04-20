.class public final Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Vector.kt\ncom/google/firebase/firestore/pipeline/evaluation/VectorKt\n*L\n1#1,905:1\n31#2,2:906\n346#2,5:908\n345#2,17:913\n31#2,2:930\n33#2,3:933\n33#2,3:936\n36#3:932\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n283#1:906,2\n283#1:936,3\n361#2:930,2\n361#2:933,3\n*E\n"
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
.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2$1;->$p2:Lkotlin/jvm/functions/Function1;

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

    .line 278
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2$1;->$p1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 279
    .local v3, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 280
    :cond_0
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 281
    .local v4, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 283
    :cond_1
    const/4 v5, 0x0

    .line 906
    .local v5, "$i$f$catch":I
    nop

    .line 907
    const/4 v6, 0x0

    .line 283
    .local v6, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :try_start_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v7

    .local v0, "left":Lcom/google/firestore/v1/Value;
    .local v7, "right":Lcom/google/firestore/v1/Value;
    move-object v8, v0

    .end local v0    # "left":Lcom/google/firestore/v1/Value;
    .local v8, "left":Lcom/google/firestore/v1/Value;
    const/4 v9, 0x0

    .line 908
    .local v9, "$i$a$-binaryValueValueFunction-UtilsKt$binaryFunction$4":I
    nop

    .line 909
    const/4 v0, 0x0

    if-nez v8, :cond_2

    move-object v10, v0

    goto :goto_0

    .line 910
    :cond_2
    invoke-static {v8}, Lcom/google/firebase/firestore/model/Values;->isNullValue(Lcom/google/firestore/v1/Value;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v0

    goto :goto_0

    .line 911
    :cond_3
    invoke-static {v8}, Lcom/google/firebase/firestore/model/Values;->isVectorValue(Lcom/google/firestore/v1/Value;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v8}, Lcom/google/firebase/firestore/model/Values;->getVectorValue(Lcom/google/firestore/v1/Value;)[D

    move-result-object v10

    .line 908
    :goto_0
    nop

    .line 913
    nop

    .line 921
    .local v10, "leftVector":[D
    nop

    .line 922
    if-nez v7, :cond_4

    goto :goto_1

    .line 923
    :cond_4
    invoke-static {v7}, Lcom/google/firebase/firestore/model/Values;->isNullValue(Lcom/google/firestore/v1/Value;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    .line 924
    :cond_5
    invoke-static {v7}, Lcom/google/firebase/firestore/model/Values;->isVectorValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v7}, Lcom/google/firebase/firestore/model/Values;->getVectorValue(Lcom/google/firestore/v1/Value;)[D

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 921
    :goto_1
    nop

    .line 920
    move-object v11, v0

    .line 928
    .local v11, "rightVector":[D
    if-eqz v10, :cond_7

    if-nez v11, :cond_6

    goto :goto_3

    .line 929
    :cond_6
    const/4 v12, 0x0

    .line 930
    .local v12, "$i$f$catch":I
    nop

    .line 931
    const/4 v0, 0x0

    .line 929
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$4$1":I
    move-object v13, v10

    .local v13, "left":[D
    move-object v14, v11

    .local v14, "right":[D
    const/4 v15, 0x0

    .line 932
    .local v15, "$i$a$-binaryVectorVectorFunction-VectorKt$evaluateDotProductDistance$1":I
    :try_start_1
    invoke-static {v13, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->dotProductDistance([D[D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 929
    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$4$1":I
    .end local v13    # "left":[D
    .end local v14    # "right":[D
    .end local v15    # "$i$a$-binaryVectorVectorFunction-VectorKt$evaluateDotProductDistance$1":I
    nop

    .line 931
    goto :goto_2

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e$iv":Ljava/lang/Exception;
    :try_start_2
    sget-object v13, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object/from16 v16, v13

    check-cast v16, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 935
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_2
    nop

    .line 929
    .end local v12    # "$i$f$catch":I
    goto :goto_4

    .line 928
    :cond_7
    :goto_3
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_4

    .line 925
    .end local v11    # "rightVector":[D
    :cond_8
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_4

    .line 912
    .end local v10    # "leftVector":[D
    :cond_9
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 283
    .end local v6    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v7    # "right":Lcom/google/firestore/v1/Value;
    .end local v8    # "left":Lcom/google/firestore/v1/Value;
    .end local v9    # "$i$a$-binaryValueValueFunction-UtilsKt$binaryFunction$4":I
    :goto_4
    nop

    .line 907
    goto :goto_5

    .line 936
    :catch_1
    move-exception v0

    .line 937
    .restart local v0    # "e$iv":Ljava/lang/Exception;
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object/from16 v16, v6

    check-cast v16, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_5
    nop

    .line 283
    .end local v5    # "$i$f$catch":I
    return-object v16
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 277
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
