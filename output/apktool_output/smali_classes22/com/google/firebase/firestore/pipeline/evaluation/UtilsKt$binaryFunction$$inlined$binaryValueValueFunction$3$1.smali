.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n31#2,2:906\n346#2,5:908\n345#2,17:913\n31#2,5:930\n33#2,3:935\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n283#1:906,2\n283#1:935,3\n361#2:930,5\n*E\n"
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
.field final synthetic $function$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3$1;->$function$inlined:Lkotlin/jvm/functions/Function2;

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
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3$1;->$p1:Lkotlin/jvm/functions/Function1;

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
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3$1;->$p2:Lkotlin/jvm/functions/Function1;

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

    .local v4, "left":Lcom/google/firestore/v1/Value;
    .local v5, "right":Lcom/google/firestore/v1/Value;
    const/4 v6, 0x0

    .line 908
    .local v6, "$i$a$-binaryValueValueFunction-UtilsKt$binaryFunction$4":I
    nop

    .line 909
    const/4 v7, 0x0

    if-nez v4, :cond_2

    move-object v8, v7

    goto :goto_0

    .line 910
    :cond_2
    invoke-static {v4}, Lcom/google/firebase/firestore/model/Values;->isNullValue(Lcom/google/firestore/v1/Value;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v7

    goto :goto_0

    .line 911
    :cond_3
    invoke-static {v4}, Lcom/google/firebase/firestore/model/Values;->isVectorValue(Lcom/google/firestore/v1/Value;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v4}, Lcom/google/firebase/firestore/model/Values;->getVectorValue(Lcom/google/firestore/v1/Value;)[D

    move-result-object v8

    .line 908
    :goto_0
    nop

    .line 913
    nop

    .line 921
    .local v8, "leftVector":[D
    nop

    .line 922
    if-nez v5, :cond_4

    goto :goto_1

    .line 923
    :cond_4
    invoke-static {v5}, Lcom/google/firebase/firestore/model/Values;->isNullValue(Lcom/google/firestore/v1/Value;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    .line 924
    :cond_5
    invoke-static {v5}, Lcom/google/firebase/firestore/model/Values;->isVectorValue(Lcom/google/firestore/v1/Value;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v5}, Lcom/google/firebase/firestore/model/Values;->getVectorValue(Lcom/google/firestore/v1/Value;)[D

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 921
    :goto_1
    nop

    .line 920
    nop

    .line 928
    .local v7, "rightVector":[D
    if-eqz v8, :cond_7

    if-nez v7, :cond_6

    goto :goto_3

    .line 929
    :cond_6
    const/4 v9, 0x0

    .line 930
    .local v9, "$i$f$catch":I
    nop

    .line 931
    const/4 v10, 0x0

    .line 929
    .local v10, "$i$a$-catch-UtilsKt$binaryFunction$4$1":I
    :try_start_1
    iget-object v11, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3$1;->$function$inlined:Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v8, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 931
    .end local v10    # "$i$a$-catch-UtilsKt$binaryFunction$4$1":I
    goto :goto_2

    .line 932
    :catch_0
    move-exception v10

    .line 933
    .local v10, "e$iv":Ljava/lang/Exception;
    :try_start_2
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 934
    .end local v10    # "e$iv":Ljava/lang/Exception;
    :goto_2
    nop

    .line 929
    .end local v9    # "$i$f$catch":I
    goto :goto_4

    .line 928
    :cond_7
    :goto_3
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v9}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_4

    .line 925
    .end local v7    # "rightVector":[D
    :cond_8
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v11, v7

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_4

    .line 912
    .end local v8    # "leftVector":[D
    :cond_9
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v11, v7

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 283
    .end local v3    # "$i$a$-catch-UtilsKt$binaryFunction$1$1$1":I
    .end local v4    # "left":Lcom/google/firestore/v1/Value;
    .end local v5    # "right":Lcom/google/firestore/v1/Value;
    .end local v6    # "$i$a$-binaryValueValueFunction-UtilsKt$binaryFunction$4":I
    :goto_4
    nop

    .line 907
    goto :goto_5

    .line 935
    :catch_1
    move-exception v3

    .line 936
    .local v3, "e$iv":Ljava/lang/Exception;
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v11, v4

    check-cast v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 937
    .end local v3    # "e$iv":Ljava/lang/Exception;
    :goto_5
    nop

    .line 283
    .end local v2    # "$i$f$catch":I
    return-object v11
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 277
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
