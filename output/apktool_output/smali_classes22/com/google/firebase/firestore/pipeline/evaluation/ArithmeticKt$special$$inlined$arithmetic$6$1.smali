.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1$WhenMappings;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n795#2:908\n777#2:909\n33#2,3:911\n31#2,2:914\n798#2:916\n33#2,3:917\n178#3:910\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1\n*L\n255#1:906,2\n255#1:911,3\n256#1:914,2\n256#1:917,3\n*E\n"
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
.field final synthetic $p:Lkotlin/jvm/functions/Function1;

.field final synthetic $valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field final synthetic $valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6$1;->$p:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 14
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6$1;->$p:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 249
    .local v0, "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    .line 252
    .local v1, "v":Lcom/google/firestore/v1/Value;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-nez v2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunctionType$2$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v5

    aget v4, v4, v5

    .line 253
    :goto_1
    if-eq v4, v3, :cond_8

    .line 254
    const/4 v3, 0x1

    if-ne v4, v3, :cond_3

    goto/16 :goto_8

    .line 255
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    .line 906
    .local v2, "$i$f$catch":I
    nop

    .line 907
    const/4 v3, 0x0

    .line 255
    .local v3, "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$1":I
    move-object v6, v1

    .local v6, "p0":Lcom/google/firestore/v1/Value;
    const/4 v7, 0x0

    .local v7, "$i$f$arithmetic$stub_for_inlining$27":I
    const/4 v8, 0x0

    .line 908
    .local v8, "$i$a$-unaryFunctionType-UtilsKt$arithmetic$2":I
    :try_start_0
    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v9

    .line 255
    .end local v6    # "p0":Lcom/google/firestore/v1/Value;
    .end local v7    # "$i$f$arithmetic$stub_for_inlining$27":I
    .end local v8    # "$i$a$-unaryFunctionType-UtilsKt$arithmetic$2":I
    nop

    .local v9, "n":J
    const/4 v6, 0x0

    .line 909
    .local v6, "$i$a$-arithmetic-UtilsKt$arithmetic$1":I
    long-to-double v7, v9

    .local v7, "value":D
    const/4 v11, 0x0

    .line 910
    .local v11, "$i$a$-arithmetic-ArithmeticKt$evaluateSqrt$1":I
    cmpg-double v4, v7, v4

    if-gez v4, :cond_4

    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    :goto_2
    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 909
    .end local v3    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$1":I
    .end local v6    # "$i$a$-arithmetic-UtilsKt$arithmetic$1":I
    .end local v7    # "value":D
    .end local v9    # "n":J
    .end local v11    # "$i$a$-arithmetic-ArithmeticKt$evaluateSqrt$1":I
    :goto_3
    nop

    .line 255
    nop

    .line 907
    goto :goto_4

    .line 911
    :catch_0
    move-exception v3

    .line 912
    .local v3, "e$iv":Ljava/lang/Exception;
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 913
    .end local v3    # "e$iv":Ljava/lang/Exception;
    :goto_4
    nop

    .end local v2    # "$i$f$catch":I
    goto :goto_9

    .line 256
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    .line 914
    .restart local v2    # "$i$f$catch":I
    nop

    .line 915
    const/4 v3, 0x0

    .line 256
    .local v3, "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    move-object v6, v1

    .local v6, "p0":Lcom/google/firestore/v1/Value;
    const/4 v7, 0x0

    .local v7, "$i$f$arithmetic$stub_for_inlining$28":I
    const/4 v8, 0x0

    .line 916
    .local v8, "$i$a$-unaryFunctionType-UtilsKt$arithmetic$3":I
    :try_start_1
    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v9

    .line 256
    .end local v6    # "p0":Lcom/google/firestore/v1/Value;
    .end local v7    # "$i$f$arithmetic$stub_for_inlining$28":I
    .end local v8    # "$i$a$-unaryFunctionType-UtilsKt$arithmetic$3":I
    nop

    .local v9, "value":D
    const/4 v6, 0x0

    .line 910
    .local v6, "$i$a$-arithmetic-ArithmeticKt$evaluateSqrt$1":I
    cmpg-double v4, v9, v4

    if-gez v4, :cond_6

    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    :goto_5
    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    :cond_6
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 256
    .end local v3    # "$i$a$-catch-UtilsKt$unaryFunctionType$2$1$2":I
    .end local v6    # "$i$a$-arithmetic-ArithmeticKt$evaluateSqrt$1":I
    .end local v9    # "value":D
    :goto_6
    nop

    .line 915
    goto :goto_7

    .line 917
    :catch_1
    move-exception v3

    .line 918
    .local v3, "e$iv":Ljava/lang/Exception;
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 919
    .end local v3    # "e$iv":Ljava/lang/Exception;
    :goto_7
    nop

    .end local v2    # "$i$f$catch":I
    goto :goto_9

    .line 257
    :cond_7
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v4, v2

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_9

    .line 254
    :cond_8
    :goto_8
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 258
    :goto_9
    return-object v4
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 247
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
