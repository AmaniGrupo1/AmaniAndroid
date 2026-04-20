.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1$WhenMappings;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n31#2,2:906\n377#2,3:908\n33#2,3:911\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1\n*L\n482#1:906,2\n482#1:911,3\n*E\n"
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
.field final synthetic $function:Lkotlin/jvm/functions/Function2;

.field final synthetic $params:Ljava/util/List;

.field final synthetic $valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field final synthetic $valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$params:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$function:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 12
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$params:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 465
    .local v0, "p1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    .line 466
    .local v1, "v1":Lcom/google/firestore/v1/Value;
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$params:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 467
    .local v2, "p2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 469
    .local v4, "v2":Lcom/google/firestore/v1/Value;
    const/4 v5, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    const/4 v7, -0x1

    if-nez v6, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v9

    aget v8, v8, v9

    .line 470
    :goto_1
    if-eq v8, v7, :cond_b

    .line 471
    if-ne v8, v3, :cond_4

    goto :goto_5

    .line 472
    :cond_4
    iget-object v8, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-eq v6, v8, :cond_5

    .line 473
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 476
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v5

    :cond_6
    if-nez v5, :cond_7

    move v6, v7

    goto :goto_2

    :cond_7
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v8

    aget v6, v6, v8

    .line 477
    :goto_2
    if-eq v6, v7, :cond_a

    .line 478
    if-ne v6, v3, :cond_8

    goto :goto_4

    .line 479
    :cond_8
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-eq v5, v3, :cond_9

    .line 480
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 482
    :cond_9
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->$function:Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    .line 906
    .local v5, "$i$f$catch":I
    nop

    .line 907
    const/4 v6, 0x0

    .line 482
    .local v6, "$i$a$-catch-UtilsKt$binaryFunctionType$1$1$1":I
    move-object v7, v1

    .local v7, "p0":Lcom/google/firestore/v1/Value;
    const/4 v8, 0x0

    .local v8, "$i$f$binaryFunction$stub_for_inlining$14":I
    const/4 v9, 0x0

    .line 908
    .local v9, "$i$a$-binaryFunctionType-UtilsKt$binaryFunction$5":I
    :try_start_0
    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v10

    .line 482
    .end local v7    # "p0":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$f$binaryFunction$stub_for_inlining$14":I
    .end local v9    # "$i$a$-binaryFunctionType-UtilsKt$binaryFunction$5":I
    move-object v7, v4

    .restart local v7    # "p0":Lcom/google/firestore/v1/Value;
    const/4 v8, 0x0

    .local v8, "$i$f$binaryFunction$stub_for_inlining$15":I
    const/4 v9, 0x0

    .line 910
    .local v9, "$i$a$-binaryFunctionType-UtilsKt$binaryFunction$6":I
    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v11

    .line 482
    .end local v7    # "p0":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$f$binaryFunction$stub_for_inlining$15":I
    .end local v9    # "$i$a$-binaryFunctionType-UtilsKt$binaryFunction$6":I
    invoke-interface {v3, v10, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v6    # "$i$a$-catch-UtilsKt$binaryFunctionType$1$1$1":I
    goto :goto_3

    .line 911
    :catch_0
    move-exception v3

    .line 912
    .local v3, "e$iv":Ljava/lang/Exception;
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v3, v6

    .line 913
    .end local v3    # "e$iv":Ljava/lang/Exception;
    :goto_3
    nop

    .line 482
    .end local v5    # "$i$f$catch":I
    return-object v3

    .line 478
    :cond_a
    :goto_4
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 471
    :cond_b
    :goto_5
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 463
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$$inlined$binaryFunctionType$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
