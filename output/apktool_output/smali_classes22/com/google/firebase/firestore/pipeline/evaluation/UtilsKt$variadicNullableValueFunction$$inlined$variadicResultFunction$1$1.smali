.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicResultFunction$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n1557#2:906\n1628#2,3:907\n1557#2:913\n1628#2,3:914\n31#3,2:910\n636#3:912\n33#3,3:917\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicResultFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n621#1:906\n621#1:907,3\n622#1:910,2\n622#1:917,3\n636#2:913\n636#2:914,3\n*E\n"
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
.field final synthetic $function$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $params:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1$1;->$params:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1$1;->$function$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 18
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1$1;->$params:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 906
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v0

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 907
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 908
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v10, "it":Lkotlin/jvm/functions/Function1;
    const/4 v11, 0x0

    .line 621
    .local v11, "$i$a$-map-UtilsKt$variadicResultFunction$1$1$results$1":I
    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 908
    .end local v10    # "it":Lkotlin/jvm/functions/Function1;
    .end local v11    # "$i$a$-map-UtilsKt$variadicResultFunction$1$1$results$1":I
    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 906
    nop

    .line 621
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    nop

    .line 622
    .local v4, "results":Ljava/util/List;
    const/4 v3, 0x0

    .line 910
    .local v3, "$i$f$catch":I
    nop

    .line 911
    const/4 v0, 0x0

    .line 622
    .local v0, "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    move-object v6, v4

    .local v6, "l":Ljava/util/List;
    const/4 v7, 0x0

    .line 912
    .local v7, "$i$a$-variadicResultFunction-UtilsKt$variadicNullableValueFunction$1":I
    :try_start_0
    iget-object v8, v1, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1$1;->$function$inlined:Lkotlin/jvm/functions/Function1;

    move-object v9, v6

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 913
    .local v10, "$i$f$map":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    .local v11, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v9

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 914
    .local v12, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 915
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .local v15, "it":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    const/16 v16, 0x0

    .line 912
    .local v16, "$i$a$-map-UtilsKt$variadicNullableValueFunction$1$1":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    .local v17, "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    invoke-virtual {v15}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2

    .line 915
    .end local v15    # "it":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v16    # "$i$a$-map-UtilsKt$variadicNullableValueFunction$1$1":I
    :cond_1
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v0, v17

    goto :goto_1

    .line 916
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    .restart local v0    # "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    :cond_2
    move/from16 v17, v0

    .end local v0    # "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$mapTo":I
    .restart local v17    # "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 913
    nop

    .line 912
    .end local v9    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$map":I
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v6    # "l":Ljava/util/List;
    .end local v7    # "$i$a$-variadicResultFunction-UtilsKt$variadicNullableValueFunction$1":I
    .end local v17    # "$i$a$-catch-UtilsKt$variadicResultFunction$1$1$1":I
    :goto_2
    nop

    .line 911
    goto :goto_3

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v5

    .line 919
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_3
    nop

    .line 622
    .end local v3    # "$i$f$catch":I
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 620
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
