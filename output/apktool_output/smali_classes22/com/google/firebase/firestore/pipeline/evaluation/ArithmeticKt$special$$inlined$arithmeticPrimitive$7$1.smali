.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n795#2:908\n741#2:909\n33#2,3:911\n31#2,2:914\n798#2:916\n742#2:917\n33#2,3:923\n77#3:910\n79#3,5:918\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1\n*L\n255#1:906,2\n255#1:911,3\n256#1:914,2\n256#1:923,3\n*E\n"
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7$1;->$p:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 23
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7$1;->$p:Lkotlin/jvm/functions/Function1;

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
    if-eq v6, v5, :cond_a

    .line 254
    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    goto/16 :goto_7

    .line 255
    :cond_3
    iget-object v6, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v6, :cond_4

    const/4 v5, 0x0

    .line 906
    .local v5, "$i$f$catch":I
    nop

    .line 907
    const/4 v0, 0x0

    .line 255
    .local v0, "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$1":I
    move-object v6, v4

    .local v6, "p0":Lcom/google/firestore/v1/Value;
    const/4 v7, 0x0

    .local v7, "$i$f$arithmetic$stub_for_inlining$27":I
    const/4 v8, 0x0

    .line 908
    .local v8, "$i$a$-unaryFunctionType-UtilsKt$arithmetic$2":I
    :try_start_0
    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v9

    .line 255
    .end local v6    # "p0":Lcom/google/firestore/v1/Value;
    .end local v7    # "$i$f$arithmetic$stub_for_inlining$27":I
    .end local v8    # "$i$a$-unaryFunctionType-UtilsKt$arithmetic$2":I
    nop

    .local v9, "x":J
    const/4 v6, 0x0

    .line 909
    .local v6, "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$1":I
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-wide v11, v9

    .local v11, "it":J
    const/4 v8, 0x0

    .line 910
    .local v8, "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateRound$1":I
    nop

    .line 909
    .end local v8    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateRound$1":I
    .end local v11    # "it":J
    invoke-virtual {v7, v11, v12}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->long(J)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$1":I
    .end local v6    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$1":I
    .end local v9    # "x":J
    nop

    .line 907
    goto :goto_2

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v7, v6

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 913
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_2
    nop

    .end local v5    # "$i$f$catch":I
    goto/16 :goto_8

    .line 256
    :cond_4
    iget-object v6, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v6, :cond_9

    const/4 v6, 0x0

    .line 914
    .local v6, "$i$f$catch":I
    nop

    .line 915
    const/4 v0, 0x0

    .line 256
    .local v0, "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    move-object v8, v4

    .local v8, "p0":Lcom/google/firestore/v1/Value;
    const/4 v9, 0x0

    .local v9, "$i$f$arithmetic$stub_for_inlining$28":I
    const/4 v10, 0x0

    .line 916
    .local v10, "$i$a$-unaryFunctionType-UtilsKt$arithmetic$3":I
    :try_start_1
    invoke-virtual {v8}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v11

    .line 256
    .end local v8    # "p0":Lcom/google/firestore/v1/Value;
    .end local v9    # "$i$f$arithmetic$stub_for_inlining$28":I
    .end local v10    # "$i$a$-unaryFunctionType-UtilsKt$arithmetic$3":I
    nop

    .local v11, "x":D
    const/4 v8, 0x0

    .line 917
    .local v8, "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$2":I
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-wide v13, v11

    .local v13, "input":D
    const/4 v10, 0x0

    .line 918
    .local v10, "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateRound$2":I
    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v15, :cond_5

    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v15, :cond_5

    move v15, v7

    goto :goto_3

    .line 923
    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .end local v8    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$2":I
    .end local v10    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateRound$2":I
    .end local v11    # "x":D
    .end local v13    # "input":D
    :catch_1
    move-exception v0

    move v15, v6

    goto :goto_5

    .line 918
    .restart local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .restart local v8    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$2":I
    .restart local v10    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateRound$2":I
    .restart local v11    # "x":D
    .restart local v13    # "input":D
    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_8

    .line 919
    move v15, v6

    .end local v6    # "$i$f$catch":I
    .local v15, "$i$f$catch":I
    int-to-double v5, v7

    rem-double v5, v13, v5

    .line 920
    .local v5, "remainder":D
    sub-double v17, v13, v5

    .line 921
    .local v17, "truncated":D
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_7

    const-wide/16 v19, 0x0

    cmpg-double v19, v13, v19

    if-gez v19, :cond_6

    const/4 v7, -0x1

    :cond_6
    move/from16 v16, v0

    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .local v16, "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    int-to-double v0, v7

    add-double v0, v17, v0

    move-wide v13, v0

    goto :goto_4

    .end local v16    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .restart local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    :cond_7
    move/from16 v16, v0

    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .restart local v16    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    move-wide/from16 v13, v17

    .end local v5    # "remainder":D
    .end local v17    # "truncated":D
    goto :goto_4

    .line 923
    .end local v8    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$2":I
    .end local v10    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateRound$2":I
    .end local v11    # "x":D
    .end local v13    # "input":D
    .end local v16    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    :catch_2
    move-exception v0

    goto :goto_5

    .line 922
    .end local v15    # "$i$f$catch":I
    .restart local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .restart local v6    # "$i$f$catch":I
    .restart local v8    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$2":I
    .restart local v10    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateRound$2":I
    .restart local v11    # "x":D
    .restart local v13    # "input":D
    :cond_8
    move/from16 v16, v0

    move v15, v6

    .line 917
    .end local v0    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .end local v6    # "$i$f$catch":I
    .end local v10    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateRound$2":I
    .end local v13    # "input":D
    .restart local v15    # "$i$f$catch":I
    .restart local v16    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    :goto_4
    invoke-virtual {v9, v13, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 256
    .end local v8    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$2":I
    .end local v11    # "x":D
    .end local v16    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    nop

    .line 915
    move-object v7, v0

    goto :goto_6

    .line 923
    .end local v15    # "$i$f$catch":I
    .restart local v6    # "$i$f$catch":I
    :catch_3
    move-exception v0

    move v15, v6

    .line 924
    .end local v6    # "$i$f$catch":I
    .local v0, "e$iv":Ljava/lang/Exception;
    .restart local v15    # "$i$f$catch":I
    :goto_5
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v7, v1

    .line 925
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_6
    nop

    .end local v15    # "$i$f$catch":I
    goto :goto_8

    .line 257
    :cond_9
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v7, v0

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_8

    .line 254
    :cond_a
    :goto_7
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 258
    :goto_8
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 247
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
