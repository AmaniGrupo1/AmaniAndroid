.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n31#2,2:906\n603#2,7:908\n33#2,3:915\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n*L\n550#1:906,2\n550#1:915,3\n*E\n"
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
.field final synthetic $function$inlined:Lkotlin/jvm/functions/Function3;

.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;

.field final synthetic $p3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->$function$inlined:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 10
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    .line 906
    .local v3, "$i$f$catch":I
    nop

    .line 907
    const/4 v4, 0x0

    .line 550
    .local v4, "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    :try_start_0
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1$1;

    invoke-direct {v5, v0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1$2;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1$3;

    invoke-direct {v1, v2, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v0, "p2":Lkotlin/jvm/functions/Function0;
    .local v1, "p3":Lkotlin/jvm/functions/Function0;
    .local v5, "p1":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 908
    .local v2, "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v6

    .line 910
    .local v6, "v1":Lcom/google/firestore/v1/Value;
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v6, v7

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v7

    .line 912
    .local v7, "v2":Lcom/google/firestore/v1/Value;
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v6, v8

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v8

    .line 914
    .local v8, "v3":Lcom/google/firestore/v1/Value;
    iget-object v9, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->$function$inlined:Lkotlin/jvm/functions/Function3;

    invoke-interface {v9, v6, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 550
    .end local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .end local v1    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$a$-ternaryLazyFunction-UtilsKt$ternaryNullableValueFunction$1":I
    .end local v4    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v5    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v6    # "v1":Lcom/google/firestore/v1/Value;
    .end local v7    # "v2":Lcom/google/firestore/v1/Value;
    .end local v8    # "v3":Lcom/google/firestore/v1/Value;
    :goto_0
    nop

    .line 907
    goto :goto_1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v6, v1

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 917
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 550
    .end local v3    # "$i$f$catch":I
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 550
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
