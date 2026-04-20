.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunctionType$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n651#2:906\n31#2,5:907\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunctionType$1$1\n*L\n680#1:907,5\n*E\n"
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
.field final synthetic $function:Lkotlin/jvm/functions/Function1;

.field final synthetic $params:Ljava/util/List;

.field final synthetic $valueTypeCase:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;->$params:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;->$valueTypeCase:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;->$function:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 9
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;->$params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    .local v0, "values":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 670
    .local v1, "nullFound":Z
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;->$params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 671
    .local v3, "param":Lkotlin/jvm/functions/Function1;
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 672
    .local v4, "p":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 673
    :cond_0
    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, -0x1

    if-nez v5, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunctionType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v8

    aget v7, v7, v8

    .line 674
    :goto_2
    if-eq v7, v6, :cond_5

    .line 675
    const/4 v6, 0x1

    if-ne v7, v6, :cond_3

    goto :goto_3

    .line 676
    :cond_3
    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;->$valueTypeCase:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v5, "p0":Lcom/google/firestore/v1/Value;
    const/4 v6, 0x0

    .local v6, "$i$f$variadicFunction$stub_for_inlining$20":I
    const/4 v7, 0x0

    .line 906
    .local v7, "$i$a$-variadicFunctionType-UtilsKt$variadicFunction$1":I
    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v5

    .line 676
    .end local v5    # "p0":Lcom/google/firestore/v1/Value;
    .end local v6    # "$i$f$variadicFunction$stub_for_inlining$20":I
    .end local v7    # "$i$a$-variadicFunctionType-UtilsKt$variadicFunction$1":I
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    :cond_4
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 675
    :cond_5
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 680
    .end local v3    # "param":Lkotlin/jvm/functions/Function1;
    .end local v4    # "p":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :cond_6
    if-eqz v1, :cond_7

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;->$function:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    .line 907
    .local v3, "$i$f$catch":I
    nop

    .line 908
    const/4 v4, 0x0

    .line 680
    .local v4, "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    :try_start_0
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .end local v4    # "$i$a$-catch-UtilsKt$variadicFunctionType$1$1$1":I
    goto :goto_4

    .line 909
    :catch_0
    move-exception v2

    .line 910
    .local v2, "e$iv":Ljava/lang/Exception;
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v2, v4

    .line 911
    .end local v2    # "e$iv":Ljava/lang/Exception;
    :goto_4
    nop

    .line 680
    .end local v3    # "$i$f$catch":I
    :goto_5
    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 667
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$$inlined$variadicFunctionType$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
