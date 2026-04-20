.class public final Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Timestamp.kt\ncom/google/firebase/firestore/pipeline/evaluation/TimestampKt\n*L\n1#1,905:1\n31#2,2:906\n603#2,7:908\n568#2,5:915\n567#2,24:920\n33#2,3:966\n137#3,22:944\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n*L\n550#1:906,2\n550#1:966,3\n*E\n"
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

.field final synthetic $p3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1;->$p3:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 28
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1;->$p1:Lkotlin/jvm/functions/Function1;

    iget-object v3, v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1;->$p2:Lkotlin/jvm/functions/Function1;

    iget-object v4, v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1;->$p3:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    .line 906
    .local v5, "$i$f$catch":I
    nop

    .line 907
    const/4 v6, 0x0

    .line 550
    .local v6, "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    :try_start_0
    new-instance v7, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1$1;

    invoke-direct {v7, v0, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1$2;

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1$3;

    invoke-direct {v3, v4, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v0, "p2":Lkotlin/jvm/functions/Function0;
    .local v3, "p3":Lkotlin/jvm/functions/Function0;
    .local v7, "p1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 908
    .local v4, "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v8, :cond_0

    :try_start_1
    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v25, v5

    goto/16 :goto_10

    .line 966
    .end local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .end local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    :catch_0
    move-exception v0

    move/from16 v25, v5

    goto/16 :goto_11

    .line 908
    .restart local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    :cond_0
    :try_start_2
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v8

    .line 910
    .local v8, "v1":Lcom/google/firestore/v1/Value;
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v9}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v9, :cond_1

    :try_start_3
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v25, v5

    move-object v8, v9

    goto/16 :goto_10

    :cond_1
    :try_start_4
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v9}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v9

    .line 912
    .local v9, "v2":Lcom/google/firestore/v1/Value;
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v10}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v10, :cond_2

    :try_start_5
    sget-object v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move/from16 v25, v5

    move-object v8, v10

    goto/16 :goto_10

    :cond_2
    :try_start_6
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v10}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 914
    .local v10, "v3":Lcom/google/firestore/v1/Value;
    move-object v11, v8

    .local v11, "timestamp":Lcom/google/firestore/v1/Value;
    move-object v12, v9

    .local v12, "unit":Lcom/google/firestore/v1/Value;
    move-object v13, v10

    .local v13, "number":Lcom/google/firestore/v1/Value;
    const/4 v14, 0x0

    .line 915
    .local v14, "$i$a$-ternaryNullableValueFunction-UtilsKt$ternaryTimestampFunction$1":I
    if-eqz v11, :cond_3

    :try_start_7
    invoke-virtual {v11}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v16
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    :goto_0
    const/16 v17, -0x1

    if-nez v16, :cond_4

    move/from16 v16, v17

    goto :goto_1

    :cond_4
    :try_start_8
    sget-object v18, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v16 .. v16}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v16

    aget v16, v18, v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 919
    :pswitch_0
    move-object/from16 v18, v0

    move-object/from16 v24, v3

    move/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .end local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v5    # "$i$f$catch":I
    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .local v18, "p2":Lkotlin/jvm/functions/Function0;
    .local v23, "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .local v24, "p3":Lkotlin/jvm/functions/Function0;
    .local v25, "$i$f$catch":I
    .local v26, "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .local v27, "p1":Lkotlin/jvm/functions/Function0;
    :try_start_9
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_f

    .line 918
    .end local v18    # "p2":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$catch":I
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    :pswitch_1
    :try_start_a
    invoke-virtual {v11}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v16

    goto :goto_2

    .line 917
    :pswitch_2
    const/16 v16, 0x0

    .line 915
    :goto_2
    nop

    .line 920
    nop

    .line 929
    .local v16, "t":Lcom/google/protobuf/Timestamp;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v18
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    :cond_5
    const/16 v18, 0x0

    :goto_3
    if-nez v18, :cond_6

    move/from16 v15, v17

    goto :goto_4

    :cond_6
    :try_start_b
    sget-object v19, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v18 .. v18}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v18

    aget v18, v19, v18

    move/from16 v15, v18

    .line 930
    :goto_4
    move-object/from16 v18, v0

    .end local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "p2":Lkotlin/jvm/functions/Function0;
    const/4 v0, 0x4

    if-ne v15, v0, :cond_14

    invoke-virtual {v12}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v15, "getStringValue(...)"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 929
    nop

    .line 928
    nop

    .line 935
    .local v0, "u":Ljava/lang/String;
    if-eqz v13, :cond_7

    :try_start_c
    invoke-virtual {v13}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v15
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    :goto_5
    if-nez v15, :cond_8

    :goto_6
    goto :goto_7

    :cond_8
    :try_start_d
    sget-object v17, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v15}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v15

    aget v17, v17, v15
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_6

    :goto_7
    sparse-switch v17, :sswitch_data_0

    .line 939
    move-object/from16 v20, v0

    move-object/from16 v24, v3

    move/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v0    # "u":Ljava/lang/String;
    .end local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v5    # "$i$f$catch":I
    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .local v20, "u":Ljava/lang/String;
    .restart local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "$i$f$catch":I
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    :try_start_e
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_e

    .line 938
    .end local v20    # "u":Ljava/lang/String;
    .end local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$catch":I
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "u":Ljava/lang/String;
    .restart local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    :sswitch_0
    :try_start_f
    invoke-virtual {v13}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_8

    .line 937
    :sswitch_1
    const/4 v15, 0x0

    .line 935
    :goto_8
    nop

    .line 934
    nop

    .line 942
    .local v15, "n":Ljava/lang/Long;
    if-eqz v16, :cond_13

    if-nez v15, :cond_9

    move-object/from16 v20, v0

    move-object/from16 v24, v3

    move/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    goto/16 :goto_d

    .line 943
    :cond_9
    :try_start_10
    move-object/from16 v17, v15

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    move-object/from16 v17, v16

    .local v17, "t":Lcom/google/protobuf/Timestamp;
    move-object/from16 v21, v0

    .local v21, "u":Ljava/lang/String;
    move-wide/from16 v22, v19

    .local v22, "n":J
    const/16 v19, 0x0

    .line 944
    .local v19, "$i$a$-ternaryTimestampFunction-TimestampKt$evaluateTimestampSub$1":I
    move-object/from16 v20, v0

    .end local v0    # "u":Ljava/lang/String;
    .restart local v20    # "u":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 945
    invoke-virtual/range {v17 .. v17}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v2

    move-object/from16 v24, v3

    .end local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v24    # "p3":Lkotlin/jvm/functions/Function0;
    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    invoke-static/range {v21 .. v21}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->convertUnit(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;

    move-result-object v1

    check-cast v1, Lj$/time/temporal/TemporalUnit;

    move-wide/from16 v2, v22

    .end local v22    # "n":J
    .local v2, "n":J
    invoke-virtual {v0, v2, v3, v1}, Lj$/time/Instant;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object v0

    .line 946
    .local v0, "result":Lj$/time/Instant;
    move-object/from16 v22, v0

    .end local v0    # "result":Lj$/time/Instant;
    .local v22, "result":Lj$/time/Instant;
    invoke-virtual/range {v22 .. v22}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    move/from16 v23, v4

    .end local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    invoke-virtual/range {v22 .. v22}, Lj$/time/Instant;->getNano()I

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->isTimestampInBounds(JI)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    if-nez v0, :cond_a

    .line 947
    :try_start_11
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    move-object v8, v0

    move/from16 v25, v5

    goto/16 :goto_10

    .line 949
    :cond_a
    :try_start_12
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    move v1, v5

    .end local v5    # "$i$f$catch":I
    .local v1, "$i$f$catch":I
    :try_start_13
    invoke-virtual/range {v22 .. v22}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    move/from16 v25, v1

    .end local v1    # "$i$f$catch":I
    .restart local v25    # "$i$f$catch":I
    :try_start_14
    invoke-virtual/range {v22 .. v22}, Lj$/time/Instant;->getNano()I

    move-result v1

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->timestamp(JI)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    move-object v5, v0

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    .end local v22    # "result":Lj$/time/Instant;
    goto/16 :goto_b

    .line 966
    .end local v2    # "n":J
    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v8    # "v1":Lcom/google/firestore/v1/Value;
    .end local v9    # "v2":Lcom/google/firestore/v1/Value;
    .end local v10    # "v3":Lcom/google/firestore/v1/Value;
    .end local v11    # "timestamp":Lcom/google/firestore/v1/Value;
    .end local v12    # "unit":Lcom/google/firestore/v1/Value;
    .end local v13    # "number":Lcom/google/firestore/v1/Value;
    .end local v14    # "$i$a$-ternaryNullableValueFunction-UtilsKt$ternaryTimestampFunction$1":I
    .end local v15    # "n":Ljava/lang/Long;
    .end local v16    # "t":Lcom/google/protobuf/Timestamp;
    .end local v17    # "t":Lcom/google/protobuf/Timestamp;
    .end local v18    # "p2":Lkotlin/jvm/functions/Function0;
    .end local v19    # "$i$a$-ternaryTimestampFunction-TimestampKt$evaluateTimestampSub$1":I
    .end local v20    # "u":Ljava/lang/String;
    .end local v21    # "u":Ljava/lang/String;
    .end local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$catch":I
    .restart local v1    # "$i$f$catch":I
    :catch_1
    move-exception v0

    move/from16 v25, v1

    .end local v1    # "$i$f$catch":I
    .restart local v25    # "$i$f$catch":I
    goto/16 :goto_11

    .line 952
    .end local v25    # "$i$f$catch":I
    .restart local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v8    # "v1":Lcom/google/firestore/v1/Value;
    .restart local v9    # "v2":Lcom/google/firestore/v1/Value;
    .restart local v10    # "v3":Lcom/google/firestore/v1/Value;
    .restart local v11    # "timestamp":Lcom/google/firestore/v1/Value;
    .restart local v12    # "unit":Lcom/google/firestore/v1/Value;
    .restart local v13    # "number":Lcom/google/firestore/v1/Value;
    .restart local v14    # "$i$a$-ternaryNullableValueFunction-UtilsKt$ternaryTimestampFunction$1":I
    .restart local v15    # "n":Ljava/lang/Long;
    .restart local v16    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v17    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v18    # "p2":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "$i$a$-ternaryTimestampFunction-TimestampKt$evaluateTimestampSub$1":I
    .restart local v20    # "u":Ljava/lang/String;
    .restart local v21    # "u":Ljava/lang/String;
    .local v22, "n":J
    :cond_b
    move-object/from16 v24, v3

    move/from16 v25, v5

    move-wide/from16 v2, v22

    move/from16 v23, v4

    .end local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v5    # "$i$f$catch":I
    .end local v22    # "n":J
    .restart local v2    # "n":J
    .restart local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "$i$f$catch":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v17    # "t":Lcom/google/protobuf/Timestamp;
    .end local v21    # "u":Ljava/lang/String;
    .local v0, "t":Lcom/google/protobuf/Timestamp;
    .local v1, "u":Ljava/lang/String;
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    goto/16 :goto_c

    .end local v0    # "t":Lcom/google/protobuf/Timestamp;
    .end local v1    # "u":Ljava/lang/String;
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v21    # "u":Ljava/lang/String;
    :sswitch_2
    const-string v0, "millisecond"

    move-object/from16 v1, v21

    .end local v21    # "u":Ljava/lang/String;
    .restart local v1    # "u":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v0, v17

    goto/16 :goto_c

    .line 954
    :cond_c
    const-wide/16 v21, 0x3e8

    div-long v4, v2, v21

    rem-long v21, v2, v21

    const v0, 0xf4240

    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    int-to-long v6, v0

    mul-long v6, v6, v21

    move-object/from16 v0, v17

    .end local v17    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v0    # "t":Lcom/google/protobuf/Timestamp;
    invoke-static {v0, v4, v5, v6, v7}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->minus(Lcom/google/protobuf/Timestamp;JJ)Lcom/google/protobuf/Timestamp;

    move-result-object v4

    goto/16 :goto_a

    .line 952
    .end local v0    # "t":Lcom/google/protobuf/Timestamp;
    .end local v1    # "u":Ljava/lang/String;
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v21    # "u":Ljava/lang/String;
    :sswitch_3
    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v17    # "t":Lcom/google/protobuf/Timestamp;
    .end local v21    # "u":Ljava/lang/String;
    .restart local v0    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v1    # "u":Ljava/lang/String;
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    const-string v4, "hour"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_9

    .line 957
    :cond_d
    const-wide/16 v4, 0xe10

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->access$minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object v4

    goto/16 :goto_a

    .line 952
    .end local v0    # "t":Lcom/google/protobuf/Timestamp;
    .end local v1    # "u":Ljava/lang/String;
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v21    # "u":Ljava/lang/String;
    :sswitch_4
    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v17    # "t":Lcom/google/protobuf/Timestamp;
    .end local v21    # "u":Ljava/lang/String;
    .restart local v0    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v1    # "u":Ljava/lang/String;
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    const-string v4, "day"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_9

    .line 958
    :cond_e
    const-wide/32 v4, 0x15180

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->access$minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object v4

    goto :goto_a

    .line 952
    .end local v0    # "t":Lcom/google/protobuf/Timestamp;
    .end local v1    # "u":Ljava/lang/String;
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v21    # "u":Ljava/lang/String;
    :sswitch_5
    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v17    # "t":Lcom/google/protobuf/Timestamp;
    .end local v21    # "u":Ljava/lang/String;
    .restart local v0    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v1    # "u":Ljava/lang/String;
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    const-string v4, "microsecond"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_9

    .line 953
    :cond_f
    const-wide/32 v4, 0xf4240

    div-long v6, v2, v4

    rem-long v4, v2, v4

    move-wide/from16 v21, v4

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long v4, v4, v21

    invoke-static {v0, v6, v7, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->minus(Lcom/google/protobuf/Timestamp;JJ)Lcom/google/protobuf/Timestamp;

    move-result-object v4

    goto :goto_a

    .line 952
    .end local v0    # "t":Lcom/google/protobuf/Timestamp;
    .end local v1    # "u":Ljava/lang/String;
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v21    # "u":Ljava/lang/String;
    :sswitch_6
    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v17    # "t":Lcom/google/protobuf/Timestamp;
    .end local v21    # "u":Ljava/lang/String;
    .restart local v0    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v1    # "u":Ljava/lang/String;
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    const-string v4, "second"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_9

    .line 955
    :cond_10
    invoke-static {v0, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->access$minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object v4

    goto :goto_a

    .line 952
    .end local v0    # "t":Lcom/google/protobuf/Timestamp;
    .end local v1    # "u":Ljava/lang/String;
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v21    # "u":Ljava/lang/String;
    :sswitch_7
    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v17    # "t":Lcom/google/protobuf/Timestamp;
    .end local v21    # "u":Ljava/lang/String;
    .restart local v0    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v1    # "u":Ljava/lang/String;
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    const-string v4, "minute"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    :goto_9
    goto :goto_c

    .line 956
    :cond_11
    const-wide/16 v4, 0x3c

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->access$minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object v4

    .line 952
    :goto_a
    nop

    .line 951
    nop

    .line 961
    .local v4, "result":Lcom/google/protobuf/Timestamp;
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->isTimestampInBounds(JI)Z

    move-result v5

    if-nez v5, :cond_12

    .line 962
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v5

    goto :goto_10

    .line 964
    :cond_12
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v5, v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->timestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v5

    .line 965
    .end local v4    # "result":Lcom/google/protobuf/Timestamp;
    :goto_b
    move-object v8, v5

    goto :goto_10

    .line 959
    :goto_c
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v4

    goto :goto_10

    .line 942
    .end local v1    # "u":Ljava/lang/String;
    .end local v2    # "n":J
    .end local v19    # "$i$a$-ternaryTimestampFunction-TimestampKt$evaluateTimestampSub$1":I
    .end local v20    # "u":Ljava/lang/String;
    .end local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$catch":I
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .local v0, "u":Ljava/lang/String;
    .restart local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .local v4, "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    :cond_13
    move-object/from16 v20, v0

    move-object/from16 v24, v3

    move/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v0    # "u":Ljava/lang/String;
    .end local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v5    # "$i$f$catch":I
    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "u":Ljava/lang/String;
    .restart local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "$i$f$catch":I
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    :goto_d
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v0

    goto :goto_10

    .line 939
    .end local v15    # "n":Ljava/lang/Long;
    :goto_e
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v0

    goto :goto_10

    .line 931
    .end local v20    # "u":Ljava/lang/String;
    .end local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$catch":I
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v5    # "$i$f$catch":I
    .restart local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v7    # "p1":Lkotlin/jvm/functions/Function0;
    :cond_14
    move-object/from16 v24, v3

    move/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v5    # "$i$f$catch":I
    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .restart local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "$i$f$catch":I
    .restart local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .restart local v27    # "p1":Lkotlin/jvm/functions/Function0;
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v0

    goto :goto_10

    .line 919
    .end local v16    # "t":Lcom/google/protobuf/Timestamp;
    :goto_f
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    move-object v8, v0

    .line 943
    .end local v8    # "v1":Lcom/google/firestore/v1/Value;
    .end local v9    # "v2":Lcom/google/firestore/v1/Value;
    .end local v10    # "v3":Lcom/google/firestore/v1/Value;
    .end local v11    # "timestamp":Lcom/google/firestore/v1/Value;
    .end local v12    # "unit":Lcom/google/firestore/v1/Value;
    .end local v13    # "number":Lcom/google/firestore/v1/Value;
    .end local v14    # "$i$a$-ternaryNullableValueFunction-UtilsKt$ternaryTimestampFunction$1":I
    .end local v18    # "p2":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v24    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v26    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v27    # "p1":Lkotlin/jvm/functions/Function0;
    :goto_10
    nop

    .line 914
    nop

    .line 550
    nop

    .line 907
    goto :goto_12

    .line 966
    :catch_2
    move-exception v0

    goto :goto_11

    .end local v25    # "$i$f$catch":I
    .restart local v5    # "$i$f$catch":I
    :catch_3
    move-exception v0

    move/from16 v25, v5

    .line 967
    .end local v5    # "$i$f$catch":I
    .local v0, "e$iv":Ljava/lang/Exception;
    .restart local v25    # "$i$f$catch":I
    :goto_11
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v8, v1

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 968
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_12
    nop

    .line 550
    .end local v25    # "$i$f$catch":I
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x400459ec -> :sswitch_7
        -0x3604bb8c -> :sswitch_6
        -0x15f49fc8 -> :sswitch_5
        0x1839c -> :sswitch_4
        0x30f5e4 -> :sswitch_3
        0x73c6d681 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 550
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
