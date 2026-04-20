.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n859#2,6:908\n858#2,23:914\n896#2:937\n881#2,8:945\n33#2,3:953\n164#3,7:938\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n*L\n283#1:906,2\n283#1:953,3\n*E\n"
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 34
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->$p1:Lkotlin/jvm/functions/Function1;

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
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->$p2:Lkotlin/jvm/functions/Function1;

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
    const/4 v0, 0x0

    .line 283
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :try_start_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .local v6, "p1":Lcom/google/firestore/v1/Value;
    .local v7, "p2":Lcom/google/firestore/v1/Value;
    const/4 v8, 0x0

    .line 908
    .local v8, "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    const/4 v9, 0x0

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 953
    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    :catch_0
    move-exception v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    goto/16 :goto_1f

    .line 908
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v6    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v7    # "p2":Lcom/google/firestore/v1/Value;
    .restart local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    :cond_2
    move-object v10, v9

    :goto_0
    const/4 v11, -0x1

    if-nez v10, :cond_3

    move v10, v11

    goto :goto_1

    :cond_3
    :try_start_2
    sget-object v12, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v10

    aget v10, v12, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    sparse-switch v10, :sswitch_data_0

    .line 913
    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .local v1, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v24, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v30, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .local v33, "$i$f$catch":I
    :try_start_3
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1d

    .line 912
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v33    # "$i$f$catch":I
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    :sswitch_0
    :try_start_4
    new-instance v10, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;-><init>(D)V

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_2

    .line 911
    :sswitch_1
    new-instance v10, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;-><init>(J)V

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_2

    .line 910
    :sswitch_2
    move-object v10, v9

    .line 908
    :goto_2
    nop

    .line 914
    nop

    .line 923
    .local v10, "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :cond_4
    move-object v12, v9

    :goto_3
    if-nez v12, :cond_5

    :goto_4
    goto :goto_5

    :cond_5
    :try_start_5
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v12}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v12

    aget v11, v11, v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :goto_5
    sparse-switch v11, :sswitch_data_1

    .line 928
    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v33    # "$i$f$catch":I
    :try_start_6
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1c

    .line 927
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v33    # "$i$f$catch":I
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    :sswitch_3
    :try_start_7
    new-instance v9, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v11

    invoke-direct {v9, v11, v12}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;-><init>(D)V

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_6

    .line 926
    :sswitch_4
    new-instance v9, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v11

    invoke-direct {v9, v11, v12}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;-><init>(J)V

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    .line 925
    :sswitch_5
    nop

    .line 923
    :goto_6
    nop

    .line 922
    nop

    .line 931
    .local v9, "n2":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    if-eqz v10, :cond_29

    if-nez v9, :cond_6

    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    goto/16 :goto_1b

    .line 933
    :cond_6
    nop

    .line 934
    :try_start_8
    instance-of v11, v10, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/16 v18, 0x0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-eqz v11, :cond_17

    .line 935
    nop

    .line 936
    instance-of v11, v9, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v11, :cond_e

    move-object v11, v10

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v24

    move-object v11, v9

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v26
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-wide/from16 v28, v24

    .local v28, "l1":J
    move-wide/from16 v24, v26

    .local v24, "l2":J
    const/4 v11, 0x0

    .line 937
    .local v11, "$i$a$-arithmetic-UtilsKt$arithmetic$6":I
    move-wide/from16 v14, v28

    const-wide/high16 v26, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .end local v28    # "l1":J
    .local v14, "l1":J
    long-to-double v12, v14

    move/from16 v30, v0

    move-wide/from16 v0, v24

    move-object/from16 v24, v3

    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v0, "l2":J
    .local v12, "value":D
    .local v24, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    long-to-double v2, v0

    .local v2, "base":D
    const/16 v25, 0x0

    .line 938
    .local v25, "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    cmpg-double v16, v12, v16

    if-nez v16, :cond_7

    move/from16 v16, v22

    goto :goto_7

    :cond_7
    move/from16 v16, v23

    :goto_7
    if-eqz v16, :cond_8

    .line 939
    move-wide/from16 v31, v0

    .end local v0    # "l2":J
    .local v31, "l2":J
    :try_start_9
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v1, v4

    move/from16 v33, v5

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v33    # "$i$f$catch":I
    :try_start_a
    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_b

    .line 953
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v2    # "base":D
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    .end local v9    # "n2":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    .end local v10    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    .end local v11    # "$i$a$-arithmetic-UtilsKt$arithmetic$6":I
    .end local v12    # "value":D
    .end local v14    # "l1":J
    .end local v25    # "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v31    # "l2":J
    .end local v33    # "$i$f$catch":I
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    :catch_1
    move-exception v0

    move-object v1, v4

    move/from16 v33, v5

    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v33    # "$i$f$catch":I
    goto/16 :goto_1f

    .line 940
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v33    # "$i$f$catch":I
    .restart local v0    # "l2":J
    .restart local v2    # "base":D
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v7    # "p2":Lcom/google/firestore/v1/Value;
    .restart local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    .restart local v9    # "n2":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    .restart local v10    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    .restart local v11    # "$i$a$-arithmetic-UtilsKt$arithmetic$6":I
    .restart local v12    # "value":D
    .restart local v14    # "l1":J
    .restart local v25    # "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    .restart local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :cond_8
    move-wide/from16 v31, v0

    move-object v1, v4

    move/from16 v33, v5

    .end local v0    # "l2":J
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v31    # "l2":J
    .restart local v33    # "$i$f$catch":I
    cmpg-double v0, v2, v26

    if-nez v0, :cond_9

    move/from16 v0, v22

    goto :goto_8

    :cond_9
    move/from16 v0, v23

    :goto_8
    if-eqz v0, :cond_a

    .line 941
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_b

    .line 942
    :cond_a
    cmpg-double v0, v2, v18

    if-lez v0, :cond_d

    cmpg-double v0, v12, v18

    if-lez v0, :cond_d

    cmpg-double v0, v2, v20

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v22, v23

    :goto_9
    if-eqz v22, :cond_c

    goto :goto_a

    .line 944
    :cond_c
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v12, v13, v2, v3}, Lkotlin/math/MathKt;->log(DD)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_b

    .line 943
    :cond_d
    :goto_a
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    :goto_b
    nop

    .line 937
    .end local v2    # "base":D
    .end local v11    # "$i$a$-arithmetic-UtilsKt$arithmetic$6":I
    .end local v12    # "value":D
    .end local v14    # "l1":J
    .end local v25    # "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    .end local v31    # "l2":J
    nop

    .line 936
    goto/16 :goto_1e

    .line 945
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v33    # "$i$f$catch":I
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    :cond_e
    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    const-wide/high16 v26, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v33    # "$i$f$catch":I
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_16

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v2

    long-to-double v2, v2

    move-object v0, v9

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v4

    .local v2, "value":D
    .local v4, "base":D
    const/4 v0, 0x0

    .line 938
    .local v0, "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    cmpg-double v11, v2, v16

    if-nez v11, :cond_f

    move/from16 v11, v22

    goto :goto_c

    :cond_f
    move/from16 v11, v23

    :goto_c
    if-eqz v11, :cond_10

    .line 939
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_10

    .line 940
    :cond_10
    cmpg-double v11, v4, v26

    if-nez v11, :cond_11

    move/from16 v11, v22

    goto :goto_d

    :cond_11
    move/from16 v11, v23

    :goto_d
    if-eqz v11, :cond_12

    .line 941
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_10

    .line 942
    :cond_12
    cmpg-double v11, v4, v18

    if-lez v11, :cond_15

    cmpg-double v11, v2, v18

    if-lez v11, :cond_15

    cmpg-double v11, v4, v20

    if-nez v11, :cond_13

    goto :goto_e

    :cond_13
    move/from16 v22, v23

    :goto_e
    if-eqz v22, :cond_14

    goto :goto_f

    .line 944
    :cond_14
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v2, v3, v4, v5}, Lkotlin/math/MathKt;->log(DD)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_10

    .line 943
    :cond_15
    :goto_f
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    :goto_10
    nop

    .line 945
    .end local v0    # "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    .end local v2    # "value":D
    .end local v4    # "base":D
    move-object v0, v11

    goto/16 :goto_1e

    .line 935
    :cond_16
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v33    # "$i$f$catch":I
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v0

    .line 948
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v4, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_17
    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    const-wide/high16 v26, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v33    # "$i$f$catch":I
    instance-of v0, v10, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_28

    .line 949
    nop

    .line 950
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_1f

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v2

    move-object v0, v9

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v4

    .restart local v2    # "value":D
    .local v4, "base":D
    const/4 v0, 0x0

    .line 938
    .local v0, "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    cmpg-double v11, v2, v16

    if-nez v11, :cond_18

    move/from16 v11, v22

    goto :goto_11

    :cond_18
    move/from16 v11, v23

    :goto_11
    if-eqz v11, :cond_19

    .line 939
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_15

    .line 940
    :cond_19
    cmpg-double v11, v4, v26

    if-nez v11, :cond_1a

    move/from16 v11, v22

    goto :goto_12

    :cond_1a
    move/from16 v11, v23

    :goto_12
    if-eqz v11, :cond_1b

    .line 941
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_15

    .line 942
    :cond_1b
    cmpg-double v11, v4, v18

    if-lez v11, :cond_1e

    cmpg-double v11, v2, v18

    if-lez v11, :cond_1e

    cmpg-double v11, v4, v20

    if-nez v11, :cond_1c

    goto :goto_13

    :cond_1c
    move/from16 v22, v23

    :goto_13
    if-eqz v22, :cond_1d

    goto :goto_14

    .line 944
    :cond_1d
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v2, v3, v4, v5}, Lkotlin/math/MathKt;->log(DD)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_15

    .line 943
    :cond_1e
    :goto_14
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    :goto_15
    nop

    .line 950
    .end local v0    # "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    .end local v2    # "value":D
    .end local v4    # "base":D
    move-object v0, v11

    goto/16 :goto_1e

    .line 951
    :cond_1f
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v0, :cond_27

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v2

    move-object v0, v9

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v4

    long-to-double v4, v4

    .restart local v2    # "value":D
    .restart local v4    # "base":D
    const/4 v0, 0x0

    .line 938
    .restart local v0    # "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    cmpg-double v11, v2, v16

    if-nez v11, :cond_20

    move/from16 v11, v22

    goto :goto_16

    :cond_20
    move/from16 v11, v23

    :goto_16
    if-eqz v11, :cond_21

    .line 939
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_1a

    .line 940
    :cond_21
    cmpg-double v11, v4, v26

    if-nez v11, :cond_22

    move/from16 v11, v22

    goto :goto_17

    :cond_22
    move/from16 v11, v23

    :goto_17
    if-eqz v11, :cond_23

    .line 941
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_1a

    .line 942
    :cond_23
    cmpg-double v11, v4, v18

    if-lez v11, :cond_26

    cmpg-double v11, v2, v18

    if-lez v11, :cond_26

    cmpg-double v11, v4, v20

    if-nez v11, :cond_24

    goto :goto_18

    :cond_24
    move/from16 v22, v23

    :goto_18
    if-eqz v22, :cond_25

    goto :goto_19

    .line 944
    :cond_25
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v2, v3, v4, v5}, Lkotlin/math/MathKt;->log(DD)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_1a

    .line 943
    :cond_26
    :goto_19
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    :goto_1a
    nop

    .line 951
    .end local v0    # "$i$a$-arithmetic-ArithmeticKt$evaluateLog$1":I
    .end local v2    # "value":D
    .end local v4    # "base":D
    move-object v0, v11

    goto :goto_1e

    .line 952
    :cond_27
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_1e

    .line 933
    :cond_28
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v33    # "$i$f$catch":I
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v0

    .line 931
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v4, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_29
    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v33    # "$i$f$catch":I
    :goto_1b
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_1e

    .line 928
    .end local v9    # "n2":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :goto_1c
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_1e

    .line 913
    .end local v10    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :goto_1d
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 283
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :goto_1e
    nop

    .line 907
    goto :goto_20

    .line 953
    :catch_2
    move-exception v0

    goto :goto_1f

    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v33    # "$i$f$catch":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    :catch_3
    move-exception v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    .line 954
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .local v0, "e$iv":Ljava/lang/Exception;
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v33    # "$i$f$catch":I
    :goto_1f
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v2

    .line 955
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_20
    nop

    .line 283
    .end local v33    # "$i$f$catch":I
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 277
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
