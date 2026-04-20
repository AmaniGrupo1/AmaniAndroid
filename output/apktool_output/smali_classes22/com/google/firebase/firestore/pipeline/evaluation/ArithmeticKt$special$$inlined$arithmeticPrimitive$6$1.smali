.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n859#2,6:908\n858#2,23:914\n762#2:937\n881#2:939\n763#2:940\n884#2,3:941\n763#2:944\n887#2:945\n763#2:946\n888#2:947\n33#2,3:948\n51#3:938\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n*L\n283#1:906,2\n283#1:948,3\n*E\n"
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6$1;->$p2:Lkotlin/jvm/functions/Function1;

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

    .line 278
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6$1;->$p1:Lkotlin/jvm/functions/Function1;

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
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6$1;->$p2:Lkotlin/jvm/functions/Function1;

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

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

    .line 948
    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_b

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    sparse-switch v10, :sswitch_data_0

    .line 913
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .local v16, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .local v17, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v18, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v19, "$i$f$catch":I
    .local v20, "p1":Lcom/google/firestore/v1/Value;
    :try_start_3
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    .line 912
    .end local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v19    # "$i$f$catch":I
    .end local v20    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "p1":Lcom/google/firestore/v1/Value;
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
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :goto_5
    sparse-switch v11, :sswitch_data_1

    .line 928
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v19    # "$i$f$catch":I
    .restart local v20    # "p1":Lcom/google/firestore/v1/Value;
    :try_start_6
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_8

    .line 927
    .end local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v19    # "$i$f$catch":I
    .end local v20    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "p1":Lcom/google/firestore/v1/Value;
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
    if-eqz v10, :cond_d

    if-nez v9, :cond_6

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    goto/16 :goto_7

    .line 933
    :cond_6
    nop

    .line 934
    :try_start_8
    instance-of v11, v10, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v11, :cond_9

    .line 935
    nop

    .line 936
    instance-of v11, v9, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v11, :cond_7

    move-object v11, v10

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v11

    move-object v13, v9

    check-cast v13, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v13}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v13

    .local v11, "x":J
    .local v13, "y":J
    const/4 v15, 0x0

    .line 937
    .local v15, "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$3":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-wide/from16 v17, v13

    .local v17, "p1":J
    move-wide/from16 v19, v11

    .local v19, "p0":J
    const/16 v21, 0x0

    .local v21, "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateMultiply$1":I
    const/16 v22, 0x0

    .line 938
    .local v22, "$i$f$evaluateMultiply$stub_for_inlining$9":I
    move-wide/from16 v1, v17

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-wide/from16 v3, v19

    move/from16 v19, v5

    move-object/from16 v20, v6

    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .local v1, "p1":J
    .local v3, "p0":J
    .local v17, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v19, "$i$f$catch":I
    .restart local v20    # "p1":Lcom/google/firestore/v1/Value;
    :try_start_9
    invoke-static {v3, v4, v1, v2}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v5

    .line 937
    .end local v1    # "p1":J
    .end local v3    # "p0":J
    .end local v21    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateMultiply$1":I
    .end local v22    # "$i$f$evaluateMultiply$stub_for_inlining$9":I
    invoke-virtual {v0, v5, v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->long(J)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 936
    .end local v11    # "x":J
    .end local v13    # "y":J
    .end local v15    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$3":I
    goto/16 :goto_a

    .line 939
    .end local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v19    # "$i$f$catch":I
    .end local v20    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .local v3, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "p1":Lcom/google/firestore/v1/Value;
    :cond_7
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v19    # "$i$f$catch":I
    .restart local v20    # "p1":Lcom/google/firestore/v1/Value;
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_8

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v0

    long-to-double v0, v0

    move-object v2, v9

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v2

    .local v0, "x":D
    .local v2, "y":D
    const/4 v4, 0x0

    .line 940
    .local v4, "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$4":I
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-wide v11, v2

    .local v11, "p1":D
    move-wide v13, v0

    .local v13, "p0":D
    const/4 v6, 0x0

    .local v6, "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateMultiply$2":I
    const/4 v15, 0x0

    .line 938
    .local v15, "$i$f$evaluateMultiply$stub_for_inlining$10":I
    mul-double/2addr v13, v11

    .line 940
    .end local v6    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateMultiply$2":I
    .end local v11    # "p1":D
    .end local v13    # "p0":D
    .end local v15    # "$i$f$evaluateMultiply$stub_for_inlining$10":I
    invoke-virtual {v5, v13, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 939
    .end local v0    # "x":D
    .end local v2    # "y":D
    .end local v4    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$4":I
    move-object v0, v5

    goto/16 :goto_a

    .line 935
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v19    # "$i$f$catch":I
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v0

    .line 941
    .end local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v20    # "p1":Lcom/google/firestore/v1/Value;
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v4, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .local v6, "p1":Lcom/google/firestore/v1/Value;
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_9
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v19    # "$i$f$catch":I
    .restart local v20    # "p1":Lcom/google/firestore/v1/Value;
    instance-of v0, v10, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_c

    .line 942
    nop

    .line 943
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_a

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v0

    move-object v2, v9

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v2

    .local v0, "x":D
    .restart local v2    # "y":D
    const/4 v4, 0x0

    .line 944
    .local v4, "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$4":I
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-wide v11, v2

    .restart local v11    # "p1":D
    move-wide v13, v0

    .restart local v13    # "p0":D
    const/4 v6, 0x0

    .local v6, "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateMultiply$2":I
    const/4 v15, 0x0

    .line 938
    .restart local v15    # "$i$f$evaluateMultiply$stub_for_inlining$10":I
    mul-double/2addr v13, v11

    .line 944
    .end local v6    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateMultiply$2":I
    .end local v11    # "p1":D
    .end local v13    # "p0":D
    .end local v15    # "$i$f$evaluateMultiply$stub_for_inlining$10":I
    invoke-virtual {v5, v13, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 943
    .end local v0    # "x":D
    .end local v2    # "y":D
    .end local v4    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$4":I
    move-object v0, v5

    goto :goto_a

    .line 945
    :cond_a
    instance-of v0, v9, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v0, :cond_b

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v0

    move-object v2, v9

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v2

    long-to-double v2, v2

    .restart local v0    # "x":D
    .restart local v2    # "y":D
    const/4 v4, 0x0

    .line 946
    .restart local v4    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$4":I
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-wide v11, v2

    .restart local v11    # "p1":D
    move-wide v13, v0

    .restart local v13    # "p0":D
    const/4 v6, 0x0

    .restart local v6    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateMultiply$2":I
    const/4 v15, 0x0

    .line 938
    .restart local v15    # "$i$f$evaluateMultiply$stub_for_inlining$10":I
    mul-double/2addr v13, v11

    .line 946
    .end local v6    # "$i$a$-arithmeticPrimitive-ArithmeticKt$evaluateMultiply$2":I
    .end local v11    # "p1":D
    .end local v13    # "p0":D
    .end local v15    # "$i$f$evaluateMultiply$stub_for_inlining$10":I
    invoke-virtual {v5, v13, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 945
    .end local v0    # "x":D
    .end local v2    # "y":D
    .end local v4    # "$i$a$-arithmetic-UtilsKt$arithmeticPrimitive$4":I
    move-object v0, v5

    goto :goto_a

    .line 947
    :cond_b
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_a

    .line 933
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v19    # "$i$f$catch":I
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v0

    .line 931
    .end local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v20    # "p1":Lcom/google/firestore/v1/Value;
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v4, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .local v6, "p1":Lcom/google/firestore/v1/Value;
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_d
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v19    # "$i$f$catch":I
    .restart local v20    # "p1":Lcom/google/firestore/v1/Value;
    :goto_7
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_a

    .line 928
    .end local v9    # "n2":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :goto_8
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_a

    .line 913
    .end local v10    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :goto_9
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 283
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$5":I
    .end local v16    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v20    # "p1":Lcom/google/firestore/v1/Value;
    :goto_a
    nop

    .line 907
    goto :goto_c

    .line 948
    :catch_1
    move-exception v0

    goto :goto_b

    .end local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v19    # "$i$f$catch":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    .line 949
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .local v0, "e$iv":Ljava/lang/Exception;
    .restart local v17    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v19    # "$i$f$catch":I
    :goto_b
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v1

    .line 950
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_c
    nop

    .line 283
    .end local v19    # "$i$f$catch":I
    return-object v0

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

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
