.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n31#2,2:906\n819#2,6:908\n818#2,22:914\n33#2,3:936\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n*L\n283#1:906,2\n283#1:936,3\n*E\n"
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
.field final synthetic $doubleOp$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $intOp$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->$intOp$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->$doubleOp$inlined:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 12
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->$p1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 279
    .local v0, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 281
    .local v1, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 283
    :cond_1
    const/4 v2, 0x0

    .line 906
    .local v2, "$i$f$catch":I
    nop

    .line 907
    const/4 v3, 0x0

    .line 283
    .local v3, "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    .local v4, "p1":Lcom/google/firestore/v1/Value;
    .local v5, "p2":Lcom/google/firestore/v1/Value;
    const/4 v6, 0x0

    .line 908
    .local v6, "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$4":I
    const/4 v7, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v8

    goto :goto_0

    :cond_2
    move-object v8, v7

    :goto_0
    const/4 v9, -0x1

    if-nez v8, :cond_3

    move v8, v9

    goto :goto_1

    :cond_3
    sget-object v10, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v8

    aget v8, v10, v8

    :goto_1
    sparse-switch v8, :sswitch_data_0

    .line 913
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    goto/16 :goto_9

    .line 912
    :sswitch_0
    new-instance v8, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;-><init>(D)V

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_2

    .line 911
    :sswitch_1
    new-instance v8, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;-><init>(J)V

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_2

    .line 910
    :sswitch_2
    move-object v8, v7

    .line 908
    :goto_2
    nop

    .line 914
    nop

    .line 923
    .local v8, "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v10

    goto :goto_3

    :cond_4
    move-object v10, v7

    :goto_3
    if-nez v10, :cond_5

    :goto_4
    goto :goto_5

    :cond_5
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v10

    aget v9, v9, v10

    goto :goto_4

    :goto_5
    sparse-switch v9, :sswitch_data_1

    .line 928
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    goto :goto_8

    .line 927
    :sswitch_3
    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v9

    double-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_6

    .line 926
    :sswitch_4
    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

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
    .local v7, "n2":Ljava/lang/Long;
    if-eqz v8, :cond_9

    if-nez v7, :cond_6

    goto :goto_7

    .line 933
    :cond_6
    nop

    .line 934
    instance-of v9, v8, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->$intOp$inlined:Lkotlin/jvm/functions/Function2;

    move-object v10, v8

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v10}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_a

    .line 935
    :cond_7
    instance-of v9, v8, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->$doubleOp$inlined:Lkotlin/jvm/functions/Function2;

    move-object v10, v8

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v10}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_a

    .line 933
    :cond_8
    new-instance v9, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v9}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v0    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v2    # "$i$f$catch":I
    .end local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    throw v9

    .line 931
    .restart local v0    # "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v1    # "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .restart local v2    # "$i$f$catch":I
    .restart local p1    # "input":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_9
    :goto_7
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v9}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_a

    .line 928
    .end local v7    # "n2":Ljava/lang/Long;
    :goto_8
    move-object v9, v7

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_a

    .line 913
    .end local v8    # "n1":Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;
    :goto_9
    move-object v9, v7

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v3    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v4    # "p1":Lcom/google/firestore/v1/Value;
    .end local v5    # "p2":Lcom/google/firestore/v1/Value;
    .end local v6    # "$i$a$-binaryValueValueFunction-UtilsKt$arithmetic$4":I
    :goto_a
    nop

    .line 907
    goto :goto_b

    .line 936
    :catch_0
    move-exception v3

    .line 937
    .local v3, "e$iv":Ljava/lang/Exception;
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v9, v4

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 938
    .end local v3    # "e$iv":Ljava/lang/Exception;
    :goto_b
    nop

    .line 283
    .end local v2    # "$i$f$catch":I
    return-object v9

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

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
