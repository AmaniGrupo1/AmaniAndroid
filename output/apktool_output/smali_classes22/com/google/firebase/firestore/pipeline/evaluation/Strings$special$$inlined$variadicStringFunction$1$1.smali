.class public final Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunctionType$1$1$WhenMappings;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunctionType$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Strings.kt\ncom/google/firebase/firestore/pipeline/evaluation/Strings\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,905:1\n651#2:906\n31#2,2:907\n33#2,3:913\n42#3:909\n1#4:910\n1863#5,2:911\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunctionType$1$1\n+ 2 Strings.kt\ncom/google/firebase/firestore/pipeline/evaluation/Strings\n*L\n680#1:907,2\n680#1:913,3\n42#2:911,2\n*E\n"
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

.field final synthetic $valueTypeCase:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/firestore/v1/Value$ValueTypeCase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1$1;->$params:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1$1;->$valueTypeCase:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 19
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1$1;->$params:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 669
    .local v3, "values":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 670
    .local v0, "nullFound":Z
    iget-object v4, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1$1;->$params:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    .end local v0    # "nullFound":Z
    .local v5, "nullFound":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 671
    .local v0, "param":Lkotlin/jvm/functions/Function1;
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 672
    .local v6, "p":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v4

    .line 673
    :cond_0
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    if-nez v7, :cond_2

    move v9, v8

    goto :goto_2

    :cond_2
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunctionType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v10

    aget v9, v9, v10

    .line 674
    :goto_2
    if-eq v9, v8, :cond_5

    .line 675
    const/4 v8, 0x1

    if-ne v9, v8, :cond_3

    goto :goto_3

    .line 676
    :cond_3
    iget-object v8, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1$1;->$valueTypeCase:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v7, v8, :cond_4

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v7, "p0":Lcom/google/firestore/v1/Value;
    const/4 v8, 0x0

    .local v8, "$i$f$variadicFunction$stub_for_inlining$20":I
    const/4 v9, 0x0

    .line 906
    .local v9, "$i$a$-variadicFunctionType-UtilsKt$variadicFunction$1":I
    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v7

    .line 676
    .end local v7    # "p0":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$f$variadicFunction$stub_for_inlining$20":I
    .end local v9    # "$i$a$-variadicFunctionType-UtilsKt$variadicFunction$1":I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    :cond_4
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v4

    .line 675
    :cond_5
    :goto_3
    const/4 v5, 0x1

    goto :goto_0

    .line 680
    .end local v0    # "param":Lkotlin/jvm/functions/Function1;
    .end local v6    # "p":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :cond_6
    if-eqz v5, :cond_7

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    .line 907
    .local v4, "$i$f$catch":I
    nop

    .line 908
    const/4 v0, 0x0

    .line 680
    .local v0, "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    :try_start_0
    move-object v6, v3

    check-cast v6, Ljava/util/List;

    .local v6, "strings":Ljava/util/List;
    const/4 v7, 0x0

    .line 909
    .local v7, "$i$a$-variadicStringFunction-Strings$evaluateStrConcat$1":I
    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    move-object v10, v9

    .local v10, "$this$evaluateStrConcat_u24lambda_u241_u24lambda_u240":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 909
    .local v11, "$i$a$-buildString-Strings$evaluateStrConcat$1$1":I
    move-object v12, v6

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 911
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .local v17, "p0":Ljava/lang/String;
    const/16 v16, 0x0

    .line 909
    .local v16, "$i$a$-forEach-Strings$evaluateStrConcat$1$1$1":I
    move/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "p0":Ljava/lang/String;
    .local v0, "p0":Ljava/lang/String;
    .local v18, "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    nop

    .end local v0    # "p0":Ljava/lang/String;
    .end local v16    # "$i$a$-forEach-Strings$evaluateStrConcat$1$1$1":I
    move/from16 v0, v18

    .end local v15    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 912
    .end local v18    # "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    .local v0, "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    :cond_8
    move/from16 v18, v0

    .line 909
    .end local v0    # "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    .end local v12    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v18    # "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    nop

    .end local v10    # "$this$evaluateStrConcat_u24lambda_u241_u24lambda_u240":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Strings$evaluateStrConcat$1$1":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "toString(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->string(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v6    # "strings":Ljava/util/List;
    .end local v7    # "$i$a$-variadicStringFunction-Strings$evaluateStrConcat$1":I
    .end local v18    # "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    nop

    .line 908
    goto :goto_5

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v6

    .line 915
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_5
    nop

    .line 680
    .end local v4    # "$i$f$catch":I
    :goto_6
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 667
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
