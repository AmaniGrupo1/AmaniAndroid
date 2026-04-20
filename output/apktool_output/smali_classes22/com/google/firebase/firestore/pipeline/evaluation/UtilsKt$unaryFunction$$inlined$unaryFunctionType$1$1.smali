.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n31#2,2:906\n215#2,7:908\n31#2,2:915\n84#2:917\n33#2,3:918\n222#2,2:921\n33#2,3:923\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n48#1:906,2\n48#1:923,3\n221#2:915,2\n221#2:918,3\n*E\n"
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

.field final synthetic $p:Lkotlin/jvm/functions/Function1;

.field final synthetic $valueTypeCase$inlined:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1$1;->$p:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1$1;->$valueTypeCase$inlined:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1$1;->$function$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 12
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1$1;->$p:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    .line 906
    .local v1, "$i$f$catch":I
    nop

    .line 907
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$a$-catch-UtilsKt$unaryFunction$1$1$1":I
    :try_start_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .local v0, "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    const/4 v3, 0x0

    .line 908
    .local v3, "$i$a$-unaryFunction-UtilsKt$unaryFunctionType$1":I
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    .line 910
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 911
    .local v4, "v":Lcom/google/firestore/v1/Value;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-nez v5, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v8

    aget v7, v7, v8

    .line 912
    :goto_1
    if-eq v7, v6, :cond_5

    .line 913
    const/4 v6, 0x1

    if-ne v7, v6, :cond_3

    goto :goto_3

    .line 914
    :cond_3
    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1$1;->$valueTypeCase$inlined:Lcom/google/firestore/v1/Value$ValueTypeCase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v5, v6, :cond_4

    const/4 v5, 0x0

    .line 915
    .local v5, "$i$f$catch":I
    nop

    .line 916
    const/4 v6, 0x0

    .line 914
    .local v6, "$i$a$-catch-UtilsKt$unaryFunctionType$1$1":I
    :try_start_1
    iget-object v7, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1$1;->$function$inlined:Lkotlin/jvm/functions/Function1;

    move-object v8, v4

    .local v8, "p0":Lcom/google/firestore/v1/Value;
    const/4 v9, 0x0

    .local v9, "$i$f$unaryFunction$stub_for_inlining":I
    const/4 v10, 0x0

    .line 917
    .local v10, "$i$a$-unaryFunctionType-UtilsKt$unaryFunction$3":I
    invoke-virtual {v8}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v11

    .end local v8    # "p0":Lcom/google/firestore/v1/Value;
    .end local v9    # "$i$f$unaryFunction$stub_for_inlining":I
    .end local v10    # "$i$a$-unaryFunctionType-UtilsKt$unaryFunction$3":I
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 914
    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 916
    .end local v6    # "$i$a$-catch-UtilsKt$unaryFunctionType$1$1":I
    goto :goto_2

    .line 918
    :catch_0
    move-exception v6

    .line 919
    .local v6, "e$iv":Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 920
    .end local v6    # "e$iv":Ljava/lang/Exception;
    :goto_2
    move-object v5, v7

    .end local v5    # "$i$f$catch":I
    goto :goto_4

    .line 921
    :cond_4
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_4

    .line 913
    :cond_5
    :goto_3
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 922
    :goto_4
    move-object v4, v5

    .line 48
    .end local v0    # "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v2    # "$i$a$-catch-UtilsKt$unaryFunction$1$1$1":I
    .end local v3    # "$i$a$-unaryFunction-UtilsKt$unaryFunctionType$1":I
    .end local v4    # "v":Lcom/google/firestore/v1/Value;
    :goto_5
    nop

    .line 907
    goto :goto_6

    .line 923
    :catch_1
    move-exception v0

    .line 924
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v4, v2

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 925
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_6
    nop

    .line 48
    .end local v1    # "$i$f$catch":I
    return-object v4
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$$inlined$unaryFunctionType$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
