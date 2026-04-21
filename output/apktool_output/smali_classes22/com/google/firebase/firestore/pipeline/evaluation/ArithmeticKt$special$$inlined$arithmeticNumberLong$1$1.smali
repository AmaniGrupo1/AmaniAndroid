.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n819#2,6:908\n818#2,21:914\n839#2:960\n33#2,3:978\n91#3,25:935\n120#3,17:961\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n*L\n283#1:906,2\n283#1:978,3\n*E\n"
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 27
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1$1;->$p1:Lkotlin/jvm/functions/Function1;

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
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1$1;->$p2:Lkotlin/jvm/functions/Function1;

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
    .local v8, "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$4":I
    const/4 v9, 0x0

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 978
    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$4":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    goto/16 :goto_11

    .line 908
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v6    # "p1":Lcom/google/firestore/v1/Value;
    .restart local v7    # "p2":Lcom/google/firestore/v1/Value;
    .restart local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$4":I
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
    move/from16 v22, v0

    move-object/from16 v18, v3

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v18, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v22, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :try_start_3
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_f

    .line 912
    .end local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
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
    move/from16 v22, v0

    move-object/from16 v18, v3

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :try_start_6
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_e

    .line 927
    .end local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :sswitch_3
    :try_start_7
    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_6

    .line 926
    :sswitch_4
    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
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
    .local v9, "n2":Ljava/lang/Long;
    if-eqz v10, :cond_15

    if-nez v9, :cond_6

    move/from16 v22, v0

    move-object/from16 v18, v3

    goto/16 :goto_d

    .line 933
    :cond_6
    nop

    .line 934
    :try_start_8
    instance-of v11, v10, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v11, :cond_d

    move-object v11, v10

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v14

    move-object v11, v9

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .local v14, "value":J
    move-wide/from16 v18, v16

    .local v18, "places":J
    const/4 v11, 0x0

    .line 935
    .local v11, "$i$a$-arithmeticNumberLong-ArithmeticKt$evaluateRoundToPrecision$1":I
    const-wide/16 v16, 0x0

    cmp-long v20, v18, v16

    if-ltz v20, :cond_7

    .line 936
    :try_start_9
    sget-object v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v12, v14, v15}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->long(J)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move/from16 v22, v0

    move-object/from16 v18, v3

    goto/16 :goto_8

    .line 940
    :cond_7
    const-wide/16 v20, 0x1

    :try_start_a
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    double-to-long v12, v12

    add-long v12, v12, v20

    .line 941
    .local v12, "numDigits":J
    move/from16 v22, v0

    move-wide/from16 v0, v18

    move-object/from16 v18, v3

    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v0, "places":J
    .local v18, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    neg-long v2, v0

    cmp-long v2, v2, v12

    if-ltz v2, :cond_8

    .line 942
    :try_start_b
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getLONG_ZERO()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v12, v2

    goto/16 :goto_8

    .line 945
    :cond_8
    long-to-double v2, v0

    neg-double v2, v2

    move-wide/from16 v19, v0

    .end local v0    # "places":J
    .local v19, "places":J
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 946
    .local v0, "roundingFactor":J
    rem-long v2, v14, v0

    sub-long v2, v14, v2

    .line 949
    .local v2, "truncated":J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v23

    move-wide/from16 v25, v0

    .end local v0    # "roundingFactor":J
    .local v25, "roundingFactor":J
    const/4 v0, 0x2

    int-to-long v0, v0

    div-long v0, v25, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v23, v0

    if-gez v0, :cond_9

    .line 950
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->long(J)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v12, v0

    goto :goto_8

    .line 953
    :cond_9
    cmp-long v0, v14, v16

    if-gez v0, :cond_b

    .line 954
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    add-long v0, v25, v0

    cmp-long v0, v14, v0

    if-gez v0, :cond_a

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-wide/from16 v16, v2

    goto :goto_7

    .line 955
    :cond_a
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-wide/from16 v16, v2

    .end local v2    # "truncated":J
    .local v16, "truncated":J
    sub-long v1, v16, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->long(J)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_7

    .line 957
    .end local v16    # "truncated":J
    .restart local v2    # "truncated":J
    :cond_b
    move-wide/from16 v16, v2

    .end local v2    # "truncated":J
    .restart local v16    # "truncated":J
    const-wide v0, 0x7fffffffffffffffL

    sub-long v0, v0, v25

    cmp-long v0, v14, v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_7

    .line 958
    :cond_c
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    add-long v2, v16, v25

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->long(J)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 959
    :goto_7
    move-object v12, v0

    .line 934
    .end local v11    # "$i$a$-arithmeticNumberLong-ArithmeticKt$evaluateRoundToPrecision$1":I
    .end local v12    # "numDigits":J
    .end local v14    # "value":J
    .end local v16    # "truncated":J
    .end local v19    # "places":J
    .end local v25    # "roundingFactor":J
    :goto_8
    goto/16 :goto_10

    .line 960
    .end local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :cond_d
    move/from16 v22, v0

    move-object/from16 v18, v3

    const-wide/16 v20, 0x1

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    instance-of v0, v10, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_14

    move-object v0, v10

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v0

    move-object v2, v9

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .local v0, "value":D
    .local v2, "places":J
    const/4 v11, 0x0

    .line 961
    .local v11, "$i$a$-arithmeticNumberLong-ArithmeticKt$evaluateRoundToPrecision$2":I
    const-wide/16 v12, 0x10

    cmp-long v12, v2, v12

    if-gez v12, :cond_13

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_e

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_e

    const/4 v12, 0x1

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    :goto_9
    if-nez v12, :cond_f

    goto :goto_b

    .line 967
    :cond_f
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log10(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-long v13, v13

    add-long v13, v13, v20

    .line 968
    .local v13, "numDigits":J
    move-wide/from16 v19, v13

    .end local v13    # "numDigits":J
    .local v19, "numDigits":J
    neg-long v12, v2

    cmp-long v12, v12, v19

    if-ltz v12, :cond_10

    .line 969
    sget-object v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v12}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getDOUBLE_ZERO()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_c

    .line 973
    :cond_10
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v12

    long-to-int v13, v2

    sget-object v14, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v12, v13, v14}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v12

    const-string v13, "setScale(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    nop

    .line 974
    .local v12, "rounded":Ljava/math/BigDecimal;
    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v13

    .line 976
    .local v13, "result":D
    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-nez v16, :cond_11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_11

    const/4 v15, 0x1

    goto :goto_a

    :cond_11
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_12

    sget-object v15, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v15, v13, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v15

    check-cast v15, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v12, v15

    goto :goto_c

    .line 977
    :cond_12
    sget-object v15, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v15, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v12, v15

    goto :goto_c

    .line 962
    .end local v12    # "rounded":Ljava/math/BigDecimal;
    .end local v13    # "result":D
    .end local v19    # "numDigits":J
    :cond_13
    :goto_b
    sget-object v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v12, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 960
    .end local v0    # "value":D
    .end local v2    # "places":J
    .end local v11    # "$i$a$-arithmeticNumberLong-ArithmeticKt$evaluateRoundToPrecision$2":I
    :goto_c
    goto :goto_10

    .line 933
    :cond_14
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v5    # "$i$f$catch":I
    .end local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v0

    .line 931
    .end local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .local v0, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v4    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v5    # "$i$f$catch":I
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_15
    move/from16 v22, v0

    move-object/from16 v18, v3

    .end local v0    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :goto_d
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_10

    .line 928
    .end local v9    # "n2":Ljava/lang/Long;
    :goto_e
    move-object v12, v0

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_10

    .line 913
    .end local v10    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :goto_f
    move-object v12, v0

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 283
    .end local v6    # "p1":Lcom/google/firestore/v1/Value;
    .end local v7    # "p2":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$4":I
    .end local v22    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :goto_10
    nop

    .line 907
    goto :goto_12

    .line 978
    :catch_1
    move-exception v0

    goto :goto_11

    .end local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    .line 979
    .end local v3    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .local v0, "e$iv":Ljava/lang/Exception;
    .restart local v18    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :goto_11
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v12, v1

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 980
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_12
    nop

    .line 283
    .end local v5    # "$i$f$catch":I
    return-object v12

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

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
