.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1$WhenMappings;
    }
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n795#2:908\n777#2:909\n33#2,3:917\n31#2,2:920\n798#2:922\n33#2,3:923\n150#3,7:910\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1\n*L\n255#1:906,2\n255#1:917,3\n256#1:920,2\n256#1:923,3\n*E\n"
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

.field final synthetic $valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field final synthetic $valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2$1;->$p:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 20
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2$1;->$p:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 249
    .local v3, "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 252
    .local v4, "v":Lcom/google/firestore/v1/Value;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v5, -0x1

    if-nez v0, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v7

    aget v6, v6, v7

    .line 253
    :goto_1
    if-eq v6, v5, :cond_e

    .line 254
    const/4 v5, 0x1

    if-ne v6, v5, :cond_3

    goto/16 :goto_a

    .line 255
    :cond_3
    iget-object v6, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v7, "exp(...) exponent overflow"

    const/4 v8, 0x0

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ne v0, v6, :cond_8

    const/4 v6, 0x0

    .line 906
    .local v6, "$i$f$catch":I
    nop

    .line 907
    const/4 v0, 0x0

    .line 255
    .local v0, "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$1":I
    move-object v11, v4

    .local v11, "p0":Lcom/google/firestore/v1/Value;
    const/4 v12, 0x0

    .local v12, "$i$f$arithmetic$stub_for_inlining$27":I
    const/4 v13, 0x0

    .line 908
    .local v13, "$i$a$-unaryFunctionType-UtilsKt$arithmetic$2":I
    :try_start_0
    invoke-virtual {v11}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v14

    .line 255
    .end local v11    # "p0":Lcom/google/firestore/v1/Value;
    .end local v12    # "$i$f$arithmetic$stub_for_inlining$27":I
    .end local v13    # "$i$a$-unaryFunctionType-UtilsKt$arithmetic$2":I
    nop

    .local v14, "n":J
    const/4 v11, 0x0

    .line 909
    .local v11, "$i$a$-arithmetic-UtilsKt$arithmetic$1":I
    long-to-double v12, v14

    .local v12, "value":D
    const/16 v16, 0x0

    .line 910
    .local v16, "$i$a$-arithmetic-ArithmeticKt$evaluateExp$1":I
    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v17

    .line 913
    .local v17, "result":D
    cmpg-double v19, v17, v9

    if-nez v19, :cond_4

    move/from16 v19, v5

    goto :goto_2

    :cond_4
    move/from16 v19, v8

    :goto_2
    if-eqz v19, :cond_7

    cmpg-double v9, v12, v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    move v5, v8

    :goto_3
    if-eqz v5, :cond_6

    goto :goto_4

    .line 914
    :cond_6
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v3    # "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v":Lcom/google/firestore/v1/Value;
    .end local v6    # "$i$f$catch":I
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v5

    .line 916
    .restart local v3    # "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v":Lcom/google/firestore/v1/Value;
    .restart local v6    # "$i$f$catch":I
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_7
    :goto_4
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$1":I
    .end local v11    # "$i$a$-arithmetic-UtilsKt$arithmetic$1":I
    .end local v12    # "value":D
    .end local v14    # "n":J
    .end local v16    # "$i$a$-arithmetic-ArithmeticKt$evaluateExp$1":I
    .end local v17    # "result":D
    nop

    .line 255
    nop

    .line 907
    goto :goto_5

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 919
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_5
    nop

    .end local v6    # "$i$f$catch":I
    goto :goto_b

    .line 256
    :cond_8
    iget-object v6, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v6, :cond_d

    const/4 v6, 0x0

    .line 920
    .restart local v6    # "$i$f$catch":I
    nop

    .line 921
    const/4 v0, 0x0

    .line 256
    .local v0, "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    move-object v11, v4

    .local v11, "p0":Lcom/google/firestore/v1/Value;
    const/4 v12, 0x0

    .local v12, "$i$f$arithmetic$stub_for_inlining$28":I
    const/4 v13, 0x0

    .line 922
    .local v13, "$i$a$-unaryFunctionType-UtilsKt$arithmetic$3":I
    :try_start_1
    invoke-virtual {v11}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v14

    .line 256
    .end local v11    # "p0":Lcom/google/firestore/v1/Value;
    .end local v12    # "$i$f$arithmetic$stub_for_inlining$28":I
    .end local v13    # "$i$a$-unaryFunctionType-UtilsKt$arithmetic$3":I
    nop

    .local v14, "value":D
    const/4 v11, 0x0

    .line 910
    .local v11, "$i$a$-arithmetic-ArithmeticKt$evaluateExp$1":I
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    .line 913
    .local v12, "result":D
    cmpg-double v16, v12, v9

    if-nez v16, :cond_9

    move/from16 v16, v5

    goto :goto_6

    :cond_9
    move/from16 v16, v8

    :goto_6
    if-eqz v16, :cond_c

    cmpg-double v9, v14, v9

    if-nez v9, :cond_a

    goto :goto_7

    :cond_a
    move v5, v8

    :goto_7
    if-eqz v5, :cond_b

    goto :goto_8

    .line 914
    :cond_b
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v3    # "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v":Lcom/google/firestore/v1/Value;
    .end local v6    # "$i$f$catch":I
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v5

    .line 916
    .restart local v3    # "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v":Lcom/google/firestore/v1/Value;
    .restart local v6    # "$i$f$catch":I
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_c
    :goto_8
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .end local v11    # "$i$a$-arithmetic-ArithmeticKt$evaluateExp$1":I
    .end local v12    # "result":D
    .end local v14    # "value":D
    nop

    .line 921
    goto :goto_9

    .line 923
    :catch_1
    move-exception v0

    .line 924
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 925
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_9
    nop

    .end local v6    # "$i$f$catch":I
    goto :goto_b

    .line 257
    :cond_d
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_b

    .line 254
    :cond_e
    :goto_a
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 258
    :goto_b
    return-object v5
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 247
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
