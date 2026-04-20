.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n859#2,6:908\n858#2,23:914\n896#2:937\n881#2,8:956\n33#2,3:964\n55#3,18:938\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n*L\n283#1:906,2\n283#1:964,3\n*E\n"
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->$p2:Lkotlin/jvm/functions/Function1;

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
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->$p1:Lkotlin/jvm/functions/Function1;

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
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->$p2:Lkotlin/jvm/functions/Function1;

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

    .line 964
    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    :catch_0
    move-exception v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    goto/16 :goto_2f

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

    goto/16 :goto_2d

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

    goto/16 :goto_2c

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
    if-eqz v10, :cond_45

    if-nez v9, :cond_6

    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object v1, v4

    move/from16 v33, v5

    goto/16 :goto_2b

    .line 933
    :cond_6
    nop

    .line 934
    :try_start_8
    instance-of v11, v10, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/high16 v18, -0x8000000000000000L

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-eqz v11, :cond_25

    .line 935
    nop

    .line 936
    instance-of v11, v9, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v11, :cond_15

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

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    .end local v28    # "l1":J
    .local v14, "l1":J
    long-to-double v12, v14

    move/from16 v30, v0

    move-wide/from16 v0, v24

    move-object/from16 v24, v3

    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v0, "l2":J
    .local v12, "base":D
    .local v24, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    long-to-double v2, v0

    .local v2, "exponent":D
    const/16 v25, 0x0

    .line 938
    .local v25, "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    cmpg-double v31, v2, v20

    if-nez v31, :cond_7

    move/from16 v31, v22

    goto :goto_7

    :cond_7
    move/from16 v31, v23

    :goto_7
    if-nez v31, :cond_14

    cmpg-double v31, v12, v28

    if-nez v31, :cond_8

    move/from16 v31, v22

    goto :goto_8

    :cond_8
    move/from16 v31, v23

    :goto_8
    if-eqz v31, :cond_9

    move-wide/from16 v31, v0

    move-object v1, v4

    move/from16 v33, v5

    goto/16 :goto_e

    .line 940
    :cond_9
    cmpg-double v16, v12, v16

    if-nez v16, :cond_a

    move/from16 v16, v22

    goto :goto_9

    :cond_a
    move/from16 v16, v23

    :goto_9
    if-eqz v16, :cond_b

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 941
    move-wide/from16 v31, v0

    .end local v0    # "l2":J
    .local v31, "l2":J
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v1, v4

    move/from16 v33, v5

    move-wide/from16 v4, v28

    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v33    # "$i$f$catch":I
    :try_start_a
    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_f

    .line 964
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v2    # "exponent":D
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    .end local v9    # "n2":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    .end local v10    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    .end local v11    # "$i$a$-arithmetic-UtilsKt$arithmetic$6":I
    .end local v12    # "base":D
    .end local v14    # "l1":J
    .end local v25    # "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
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
    goto/16 :goto_2f

    .line 940
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v33    # "$i$f$catch":I
    .restart local v0    # "l2":J
    .restart local v2    # "exponent":D
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v7    # "p2":Lcom/google/firestore/v1/Value;
    .restart local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    .restart local v9    # "n2":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    .restart local v10    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    .restart local v11    # "$i$a$-arithmetic-UtilsKt$arithmetic$6":I
    .restart local v12    # "base":D
    .restart local v14    # "l1":J
    .restart local v25    # "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    .restart local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :cond_b
    move-wide/from16 v31, v0

    move-object v1, v4

    move/from16 v33, v5

    .line 945
    .end local v0    # "l2":J
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v31    # "l2":J
    .restart local v33    # "$i$f$catch":I
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_d

    .line 951
    :cond_c
    cmpg-double v0, v12, v20

    if-gez v0, :cond_e

    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    move/from16 v0, v22

    goto :goto_a

    :cond_d
    move/from16 v0, v23

    :goto_a
    if-eqz v0, :cond_e

    invoke-static {v2, v3}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-nez v0, :cond_e

    .line 952
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_f

    .line 953
    :cond_e
    cmpg-double v0, v12, v20

    if-nez v0, :cond_f

    move/from16 v0, v22

    goto :goto_b

    :cond_f
    move/from16 v0, v23

    :goto_b
    if-nez v0, :cond_11

    cmpg-double v0, v12, v18

    if-nez v0, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v22, v23

    :goto_c
    if-eqz v22, :cond_12

    :cond_11
    cmpg-double v0, v2, v20

    if-gez v0, :cond_12

    .line 954
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_f

    .line 955
    :cond_12
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_f

    .line 946
    :cond_13
    :goto_d
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_f

    .line 938
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v31    # "l2":J
    .end local v33    # "$i$f$catch":I
    .restart local v0    # "l2":J
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    :cond_14
    move-wide/from16 v31, v0

    move-object v1, v4

    move/from16 v33, v5

    .line 939
    .end local v0    # "l2":J
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v31    # "l2":J
    .restart local v33    # "$i$f$catch":I
    :goto_e
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    :goto_f
    nop

    .line 937
    .end local v2    # "exponent":D
    .end local v11    # "$i$a$-arithmetic-UtilsKt$arithmetic$6":I
    .end local v12    # "base":D
    .end local v14    # "l1":J
    .end local v25    # "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    .end local v31    # "l2":J
    nop

    .line 936
    goto/16 :goto_2e

    .line 956
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v33    # "$i$f$catch":I
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    :cond_15
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
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_24

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v2

    long-to-double v2, v2

    move-object v0, v9

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v4

    .local v2, "base":D
    .local v4, "exponent":D
    const/4 v0, 0x0

    .line 938
    .local v0, "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    cmpg-double v11, v4, v20

    if-nez v11, :cond_16

    move/from16 v11, v22

    goto :goto_10

    :cond_16
    move/from16 v11, v23

    :goto_10
    if-nez v11, :cond_23

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v2, v28

    if-nez v11, :cond_17

    move/from16 v11, v22

    goto :goto_11

    :cond_17
    move/from16 v11, v23

    :goto_11
    if-eqz v11, :cond_18

    goto/16 :goto_17

    .line 940
    :cond_18
    cmpg-double v11, v2, v16

    if-nez v11, :cond_19

    move/from16 v11, v22

    goto :goto_12

    :cond_19
    move/from16 v11, v23

    :goto_12
    if-eqz v11, :cond_1a

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 941
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_18

    .line 945
    :cond_1a
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_22

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-eqz v11, :cond_1b

    goto :goto_16

    .line 951
    :cond_1b
    cmpg-double v11, v2, v20

    if-gez v11, :cond_1d

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_1c

    move/from16 v11, v22

    goto :goto_13

    :cond_1c
    move/from16 v11, v23

    :goto_13
    if-eqz v11, :cond_1d

    invoke-static {v4, v5}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 952
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_18

    .line 953
    :cond_1d
    cmpg-double v11, v2, v20

    if-nez v11, :cond_1e

    move/from16 v11, v22

    goto :goto_14

    :cond_1e
    move/from16 v11, v23

    :goto_14
    if-nez v11, :cond_20

    cmpg-double v11, v2, v18

    if-nez v11, :cond_1f

    goto :goto_15

    :cond_1f
    move/from16 v22, v23

    :goto_15
    if-eqz v22, :cond_21

    :cond_20
    cmpg-double v11, v4, v20

    if-gez v11, :cond_21

    .line 954
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_18

    .line 955
    :cond_21
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_18

    .line 946
    :cond_22
    :goto_16
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_18

    .line 939
    :cond_23
    :goto_17
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    :goto_18
    nop

    .line 956
    .end local v0    # "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    .end local v2    # "base":D
    .end local v4    # "exponent":D
    move-object v0, v11

    goto/16 :goto_2e

    .line 935
    :cond_24
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v33    # "$i$f$catch":I
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v0

    .line 959
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v4, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_25
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
    instance-of v0, v10, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_44

    .line 960
    nop

    .line 961
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_34

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v2

    move-object v0, v9

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v4

    .restart local v2    # "base":D
    .local v4, "exponent":D
    const/4 v0, 0x0

    .line 938
    .local v0, "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    cmpg-double v11, v4, v20

    if-nez v11, :cond_26

    move/from16 v11, v22

    goto :goto_19

    :cond_26
    move/from16 v11, v23

    :goto_19
    if-nez v11, :cond_33

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v2, v28

    if-nez v11, :cond_27

    move/from16 v11, v22

    goto :goto_1a

    :cond_27
    move/from16 v11, v23

    :goto_1a
    if-eqz v11, :cond_28

    goto/16 :goto_20

    .line 940
    :cond_28
    cmpg-double v11, v2, v16

    if-nez v11, :cond_29

    move/from16 v11, v22

    goto :goto_1b

    :cond_29
    move/from16 v11, v23

    :goto_1b
    if-eqz v11, :cond_2a

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 941
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_21

    .line 945
    :cond_2a
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_32

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-eqz v11, :cond_2b

    goto :goto_1f

    .line 951
    :cond_2b
    cmpg-double v11, v2, v20

    if-gez v11, :cond_2d

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_2c

    move/from16 v11, v22

    goto :goto_1c

    :cond_2c
    move/from16 v11, v23

    :goto_1c
    if-eqz v11, :cond_2d

    invoke-static {v4, v5}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v11

    if-nez v11, :cond_2d

    .line 952
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_21

    .line 953
    :cond_2d
    cmpg-double v11, v2, v20

    if-nez v11, :cond_2e

    move/from16 v11, v22

    goto :goto_1d

    :cond_2e
    move/from16 v11, v23

    :goto_1d
    if-nez v11, :cond_30

    cmpg-double v11, v2, v18

    if-nez v11, :cond_2f

    goto :goto_1e

    :cond_2f
    move/from16 v22, v23

    :goto_1e
    if-eqz v22, :cond_31

    :cond_30
    cmpg-double v11, v4, v20

    if-gez v11, :cond_31

    .line 954
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_21

    .line 955
    :cond_31
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_21

    .line 946
    :cond_32
    :goto_1f
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_21

    .line 939
    :cond_33
    :goto_20
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    :goto_21
    nop

    .line 961
    .end local v0    # "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    .end local v2    # "base":D
    .end local v4    # "exponent":D
    move-object v0, v11

    goto/16 :goto_2e

    .line 962
    :cond_34
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v0, :cond_43

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v2

    move-object v0, v9

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v4

    long-to-double v4, v4

    .restart local v2    # "base":D
    .restart local v4    # "exponent":D
    const/4 v0, 0x0

    .line 938
    .restart local v0    # "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    cmpg-double v11, v4, v20

    if-nez v11, :cond_35

    move/from16 v11, v22

    goto :goto_22

    :cond_35
    move/from16 v11, v23

    :goto_22
    if-nez v11, :cond_42

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v2, v28

    if-nez v11, :cond_36

    move/from16 v11, v22

    goto :goto_23

    :cond_36
    move/from16 v11, v23

    :goto_23
    if-eqz v11, :cond_37

    goto/16 :goto_29

    .line 940
    :cond_37
    cmpg-double v11, v2, v16

    if-nez v11, :cond_38

    move/from16 v11, v22

    goto :goto_24

    :cond_38
    move/from16 v11, v23

    :goto_24
    if-eqz v11, :cond_39

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-eqz v11, :cond_39

    .line 941
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_2a

    .line 945
    :cond_39
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_41

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-eqz v11, :cond_3a

    goto :goto_28

    .line 951
    :cond_3a
    cmpg-double v11, v2, v20

    if-gez v11, :cond_3c

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_3b

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_3b

    move/from16 v11, v22

    goto :goto_25

    :cond_3b
    move/from16 v11, v23

    :goto_25
    if-eqz v11, :cond_3c

    invoke-static {v4, v5}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v11

    if-nez v11, :cond_3c

    .line 952
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2a

    .line 953
    :cond_3c
    cmpg-double v11, v2, v20

    if-nez v11, :cond_3d

    move/from16 v11, v22

    goto :goto_26

    :cond_3d
    move/from16 v11, v23

    :goto_26
    if-nez v11, :cond_3f

    cmpg-double v11, v2, v18

    if-nez v11, :cond_3e

    goto :goto_27

    :cond_3e
    move/from16 v22, v23

    :goto_27
    if-eqz v22, :cond_40

    :cond_3f
    cmpg-double v11, v4, v20

    if-gez v11, :cond_40

    .line 954
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2a

    .line 955
    :cond_40
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2a

    .line 946
    :cond_41
    :goto_28
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2a

    .line 939
    :cond_42
    :goto_29
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    :goto_2a
    nop

    .line 962
    .end local v0    # "$i$a$-arithmetic-ArithmeticKt$evaluatePow$1":I
    .end local v2    # "base":D
    .end local v4    # "exponent":D
    move-object v0, v11

    goto :goto_2e

    .line 963
    :cond_43
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2e

    .line 933
    :cond_44
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
    :cond_45
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
    :goto_2b
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2e

    .line 928
    .end local v9    # "n2":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :goto_2c
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2e

    .line 913
    .end local v10    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :goto_2d
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 283
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    .end local v30    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :goto_2e
    nop

    .line 907
    goto :goto_30

    .line 964
    :catch_2
    move-exception v0

    goto :goto_2f

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

    .line 965
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .local v0, "e$iv":Ljava/lang/Exception;
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v24    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v33    # "$i$f$catch":I
    :goto_2f
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v2

    .line 966
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_30
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

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
