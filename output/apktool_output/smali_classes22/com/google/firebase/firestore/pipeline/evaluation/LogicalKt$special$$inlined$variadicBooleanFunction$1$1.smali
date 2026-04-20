.class public final Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$2$1$WhenMappings;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 4 Logical.kt\ncom/google/firebase/firestore/pipeline/evaluation/LogicalKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,905:1\n1872#2,3:906\n31#3,2:909\n33#3,3:915\n70#4:911\n12918#5,3:912\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$2$1\n+ 2 Logical.kt\ncom/google/firebase/firestore/pipeline/evaluation/LogicalKt\n*L\n699#1:906,3\n710#1:909,2\n710#1:915,3\n70#2:912,3\n*E\n"
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;->$params:Ljava/util/List;

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

    .line 697
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;->$params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Z

    .line 698
    .local v3, "values":[Z
    const/4 v0, 0x0

    .line 699
    .local v0, "nullFound":Z
    iget-object v4, v1, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;->$params:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 906
    .local v5, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .line 907
    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v20, v6

    move v6, v0

    move/from16 v0, v20

    .local v0, "index$iv":I
    .local v6, "nullFound":Z
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "index$iv":I
    .local v9, "index$iv":I
    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v10, v8

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v0, "i":I
    .local v10, "param":Lkotlin/jvm/functions/Function1;
    const/4 v11, 0x0

    .line 700
    .local v11, "$i$a$-forEachIndexed-UtilsKt$variadicFunction$2$1$1":I
    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 701
    .local v12, "result":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v12}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v7

    .line 702
    :cond_1
    invoke-virtual {v12}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v13

    .line 703
    .local v13, "v":Lcom/google/firestore/v1/Value;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v14

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-nez v14, :cond_3

    const/4 v14, -0x1

    goto :goto_2

    :cond_3
    sget-object v15, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$2$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v14}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v14

    aget v14, v15, v14

    :goto_2
    packed-switch v14, :pswitch_data_0

    .line 707
    :pswitch_0
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v7

    .line 706
    :pswitch_1
    invoke-virtual {v13}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v14

    aput-boolean v14, v3, v0

    goto :goto_3

    .line 705
    :pswitch_2
    const/4 v6, 0x1

    .line 709
    :goto_3
    nop

    .line 907
    .end local v0    # "i":I
    .end local v10    # "param":Lkotlin/jvm/functions/Function1;
    .end local v11    # "$i$a$-forEachIndexed-UtilsKt$variadicFunction$2$1$1":I
    .end local v12    # "result":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v13    # "v":Lcom/google/firestore/v1/Value;
    move v0, v9

    .end local v8    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 908
    .end local v9    # "index$iv":I
    .local v0, "index$iv":I
    :cond_4
    nop

    .line 710
    .end local v0    # "index$iv":I
    .end local v4    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEachIndexed":I
    if-eqz v6, :cond_5

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    .line 909
    .local v4, "$i$f$catch":I
    nop

    .line 910
    const/4 v0, 0x0

    .line 710
    .local v0, "$i$a$-catch-UtilsKt$variadicFunction$2$1$2":I
    move-object v5, v3

    .local v5, "values":[Z
    const/4 v7, 0x0

    .line 911
    .local v7, "$i$a$-variadicBooleanFunction-LogicalKt$evaluateXor$1":I
    :try_start_0
    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v11, v5

    .local v10, "initial$iv":Ljava/lang/Object;
    .local v11, "$this$fold$iv":[Z
    const/4 v12, 0x0

    .line 912
    .local v12, "$i$f$fold":I
    move-object v13, v10

    .line 913
    .local v13, "accumulator$iv":Ljava/lang/Object;
    array-length v14, v11

    :goto_4
    if-ge v9, v14, :cond_6

    aget-boolean v15, v11, v9

    .local v15, "element$iv":Z
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .local v16, "p0":Z
    move/from16 v17, v15

    .local v17, "p1":Z
    const/16 v18, 0x0

    .local v18, "$i$a$-fold-LogicalKt$evaluateXor$1$1":I
    const/16 v19, 0x0

    .line 911
    .local v19, "$i$f$evaluateXor$lambda$4$stub_for_inlining":I
    xor-int v16, v16, v17

    .end local v16    # "p0":Z
    .end local v17    # "p1":Z
    .end local v18    # "$i$a$-fold-LogicalKt$evaluateXor$1$1":I
    .end local v19    # "$i$f$evaluateXor$lambda$4$stub_for_inlining":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 913
    move-object/from16 v13, v16

    .end local v15    # "element$iv":Z
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 914
    :cond_6
    nop

    .end local v10    # "initial$iv":Ljava/lang/Object;
    .end local v11    # "$this$fold$iv":[Z
    .end local v12    # "$i$f$fold":I
    .end local v13    # "accumulator$iv":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 911
    invoke-virtual {v8, v9}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->boolean(Z)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v0    # "$i$a$-catch-UtilsKt$variadicFunction$2$1$2":I
    .end local v5    # "values":[Z
    .end local v7    # "$i$a$-variadicBooleanFunction-LogicalKt$evaluateXor$1":I
    nop

    .line 910
    move-object v0, v8

    goto :goto_5

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v5

    .line 917
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_5
    nop

    .line 710
    .end local v4    # "$i$f$catch":I
    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 696
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
