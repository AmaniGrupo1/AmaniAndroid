.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n31#2,2:906\n603#2,7:908\n568#2,5:915\n567#2,24:920\n33#2,3:944\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n*L\n550#1:906,2\n550#1:944,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $function$inlined$1:Lkotlin/jvm/functions/Function3;

.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;

.field final synthetic $p3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->$function$inlined$1:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 21
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iget-object v3, v1, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iget-object v4, v1, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    .line 906
    .local v5, "$i$f$catch":I
    nop

    .line 907
    const/4 v6, 0x0

    .line 550
    .local v6, "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    :try_start_0
    new-instance v7, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1$1;

    invoke-direct {v7, v0, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1$2;

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1$3;

    invoke-direct {v3, v4, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

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

    if-eqz v8, :cond_0

    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_c

    :cond_0
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

    if-eqz v9, :cond_1

    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v9

    goto/16 :goto_c

    :cond_1
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

    if-eqz v10, :cond_2

    sget-object v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v10

    goto/16 :goto_c

    :cond_2
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v10}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v10

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

    invoke-virtual {v11}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v16

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    :goto_0
    const/16 v17, -0x1

    if-nez v16, :cond_4

    move/from16 v16, v17

    goto :goto_1

    :cond_4
    sget-object v18, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v16 .. v16}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v16

    aget v16, v18, v16

    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 919
    :pswitch_0
    move-object/from16 v16, v0

    .end local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .local v16, "p2":Lkotlin/jvm/functions/Function0;
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    goto/16 :goto_b

    .line 918
    .end local v16    # "p2":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "p2":Lkotlin/jvm/functions/Function0;
    :pswitch_1
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
    move-object/from16 v18, v16

    .line 929
    .local v18, "t":Lcom/google/protobuf/Timestamp;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v16

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    if-nez v16, :cond_6

    move/from16 v15, v17

    goto :goto_4

    :cond_6
    sget-object v19, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v16 .. v16}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v16

    aget v16, v19, v16

    move/from16 v15, v16

    .line 930
    :goto_4
    move-object/from16 v16, v0

    .end local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .restart local v16    # "p2":Lkotlin/jvm/functions/Function0;
    const/4 v0, 0x4

    if-ne v15, v0, :cond_b

    invoke-virtual {v12}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v15, "getStringValue(...)"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    nop

    .line 928
    nop

    .line 935
    .local v0, "u":Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v15

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    :goto_5
    if-nez v15, :cond_8

    :goto_6
    goto :goto_7

    :cond_8
    sget-object v17, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v15}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v15

    aget v17, v17, v15

    goto :goto_6

    :goto_7
    sparse-switch v17, :sswitch_data_0

    .line 939
    move-object/from16 v1, v18

    .end local v18    # "t":Lcom/google/protobuf/Timestamp;
    .local v1, "t":Lcom/google/protobuf/Timestamp;
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    goto :goto_a

    .line 938
    .end local v1    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v18    # "t":Lcom/google/protobuf/Timestamp;
    :sswitch_0
    invoke-virtual {v13}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

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
    if-eqz v18, :cond_a

    if-nez v15, :cond_9

    move-object/from16 v1, v18

    goto :goto_9

    .line 943
    :cond_9
    iget-object v2, v1, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->$function$inlined$1:Lkotlin/jvm/functions/Function3;

    move-object/from16 v1, v18

    .end local v18    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v1    # "t":Lcom/google/protobuf/Timestamp;
    invoke-interface {v2, v1, v0, v15}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v2

    goto :goto_c

    .line 942
    .end local v1    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v18    # "t":Lcom/google/protobuf/Timestamp;
    :cond_a
    move-object/from16 v1, v18

    .end local v18    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v1    # "t":Lcom/google/protobuf/Timestamp;
    :goto_9
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v2

    goto :goto_c

    .line 939
    .end local v15    # "n":Ljava/lang/Long;
    :goto_a
    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v2

    goto :goto_c

    .line 931
    .end local v0    # "u":Ljava/lang/String;
    .end local v1    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v18    # "t":Lcom/google/protobuf/Timestamp;
    :cond_b
    move-object/from16 v1, v18

    .end local v18    # "t":Lcom/google/protobuf/Timestamp;
    .restart local v1    # "t":Lcom/google/protobuf/Timestamp;
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v8, v0

    goto :goto_c

    .line 919
    .end local v1    # "t":Lcom/google/protobuf/Timestamp;
    :goto_b
    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 914
    .end local v3    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v8    # "v1":Lcom/google/firestore/v1/Value;
    .end local v9    # "v2":Lcom/google/firestore/v1/Value;
    .end local v10    # "v3":Lcom/google/firestore/v1/Value;
    .end local v11    # "timestamp":Lcom/google/firestore/v1/Value;
    .end local v12    # "unit":Lcom/google/firestore/v1/Value;
    .end local v13    # "number":Lcom/google/firestore/v1/Value;
    .end local v14    # "$i$a$-ternaryNullableValueFunction-UtilsKt$ternaryTimestampFunction$1":I
    .end local v16    # "p2":Lkotlin/jvm/functions/Function0;
    :goto_c
    nop

    .line 550
    nop

    .line 907
    goto :goto_d

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v8, v1

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 946
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_d
    nop

    .line 550
    .end local v5    # "$i$f$catch":I
    return-object v8

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
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 550
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
