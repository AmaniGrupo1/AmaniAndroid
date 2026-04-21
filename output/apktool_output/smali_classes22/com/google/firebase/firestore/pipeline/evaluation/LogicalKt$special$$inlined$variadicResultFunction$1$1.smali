.class public final Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicResultFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicResultFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicResultFunction$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 4 Logical.kt\ncom/google/firebase/firestore/pipeline/evaluation/LogicalKt\n*L\n1#1,905:1\n1557#2:906\n1628#2,3:907\n31#3,2:910\n33#3,3:933\n88#4,21:912\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicResultFunction$1$1\n*L\n621#1:906\n621#1:907,3\n622#1:910,2\n622#1:933,3\n*E\n"
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
.field final synthetic $params:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicResultFunction$1$1;->$params:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 12
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicResultFunction$1$1;->$params:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 906
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 907
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 908
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "it":Lkotlin/jvm/functions/Function1;
    const/4 v8, 0x0

    .line 621
    .local v8, "$i$a$-map-UtilsKt$variadicResultFunction$1$1$results$1":I
    invoke-interface {v7, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 908
    .end local v7    # "it":Lkotlin/jvm/functions/Function1;
    .end local v8    # "$i$a$-map-UtilsKt$variadicResultFunction$1$1$results$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 906
    nop

    .line 621
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    nop

    .line 622
    .local v2, "results":Ljava/util/List;
    const/4 v0, 0x0

    .line 910
    .local v0, "$i$f$catch":I
    nop

    .line 911
    const/4 v1, 0x0

    .line 622
    .local v1, "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    move-object v3, v2

    .local v3, "params":Ljava/util/List;
    const/4 v4, 0x0

    .line 912
    .local v4, "$i$a$-variadicResultFunction-LogicalKt$evaluateLogicalMaximum$1":I
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    .line 914
    :cond_1
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 922
    .local v5, "maximum":Lkotlin/jvm/functions/Function2;
    const/4 v6, 0x0

    .line 923
    .local v6, "maxResult":Lcom/google/firestore/v1/Value;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    :pswitch_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 924
    .local v8, "param":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v5, v7

    goto :goto_5

    .line 925
    :cond_2
    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v9

    .line 926
    .local v9, "value":Lcom/google/firestore/v1/Value;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_4

    const/4 v10, -0x1

    goto :goto_3

    :cond_4
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v10

    aget v10, v11, v10

    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 929
    :pswitch_1
    invoke-interface {v5, v6, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firestore/v1/Value;

    move-object v6, v10

    .end local v8    # "param":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v9    # "value":Lcom/google/firestore/v1/Value;
    goto :goto_1

    .line 932
    :cond_5
    if-nez v6, :cond_6

    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v7

    goto :goto_4

    :cond_6
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v7, v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v7

    :goto_4
    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    .line 622
    .end local v1    # "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    .end local v3    # "params":Ljava/util/List;
    .end local v4    # "$i$a$-variadicResultFunction-LogicalKt$evaluateLogicalMaximum$1":I
    .end local v5    # "maximum":Lkotlin/jvm/functions/Function2;
    .end local v6    # "maxResult":Lcom/google/firestore/v1/Value;
    :goto_5
    nop

    .line 911
    goto :goto_6

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, "e$iv":Ljava/lang/Exception;
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v5, v3

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 935
    .end local v1    # "e$iv":Ljava/lang/Exception;
    :goto_6
    nop

    .line 622
    .end local v0    # "$i$f$catch":I
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 620
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicResultFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
