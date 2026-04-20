.class public final Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Strings.kt\ncom/google/firebase/firestore/pipeline/evaluation/Strings\n*L\n1#1,905:1\n31#2,2:906\n377#2,3:908\n33#2,3:912\n46#3:911\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1\n*L\n482#1:906,2\n482#1:912,3\n*E\n"
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

.field final synthetic $valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field final synthetic $valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;->$params:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 16
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;->$params:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 465
    .local v4, "p1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    :cond_0
    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    .line 466
    .local v5, "v1":Lcom/google/firestore/v1/Value;
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;->$params:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 467
    .local v7, "p2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v7}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    :cond_1
    invoke-virtual {v7}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v8

    .line 469
    .local v8, "v2":Lcom/google/firestore/v1/Value;
    const/4 v0, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object v9, v0

    :goto_0
    const/4 v10, -0x1

    if-nez v9, :cond_3

    move v11, v10

    goto :goto_1

    :cond_3
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v12

    aget v11, v11, v12

    .line 470
    :goto_1
    if-eq v11, v10, :cond_b

    .line 471
    if-ne v11, v6, :cond_4

    goto :goto_6

    .line 472
    :cond_4
    iget-object v11, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-eq v9, v11, :cond_5

    .line 473
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 476
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v9

    goto :goto_2

    :cond_6
    move-object v9, v0

    :goto_2
    if-nez v9, :cond_7

    move v11, v10

    goto :goto_3

    :cond_7
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v12

    aget v11, v11, v12

    .line 477
    :goto_3
    if-eq v11, v10, :cond_a

    .line 478
    if-ne v11, v6, :cond_8

    goto :goto_5

    .line 479
    :cond_8
    iget-object v6, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-eq v9, v6, :cond_9

    .line 480
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 482
    :cond_9
    const/4 v6, 0x0

    .line 906
    .local v6, "$i$f$catch":I
    nop

    .line 907
    const/4 v9, 0x0

    .line 482
    .local v9, "$i$a$-catch-UtilsKt$binaryFunctionType$1$1$1":I
    move-object v10, v5

    .local v10, "p0":Lcom/google/firestore/v1/Value;
    const/4 v11, 0x0

    .local v11, "$i$f$binaryFunction$stub_for_inlining$14":I
    const/4 v12, 0x0

    .line 908
    .local v12, "$i$a$-binaryFunctionType-UtilsKt$binaryFunction$5":I
    :try_start_0
    invoke-virtual {v10}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v13

    .line 482
    .end local v10    # "p0":Lcom/google/firestore/v1/Value;
    .end local v11    # "$i$f$binaryFunction$stub_for_inlining$14":I
    .end local v12    # "$i$a$-binaryFunctionType-UtilsKt$binaryFunction$5":I
    move-object v10, v8

    .restart local v10    # "p0":Lcom/google/firestore/v1/Value;
    const/4 v11, 0x0

    .local v11, "$i$f$binaryFunction$stub_for_inlining$15":I
    const/4 v12, 0x0

    .line 910
    .local v12, "$i$a$-binaryFunctionType-UtilsKt$binaryFunction$6":I
    invoke-virtual {v10}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v14

    .line 482
    .end local v10    # "p0":Lcom/google/firestore/v1/Value;
    .end local v11    # "$i$f$binaryFunction$stub_for_inlining$15":I
    .end local v12    # "$i$a$-binaryFunctionType-UtilsKt$binaryFunction$6":I
    nop

    .local v13, "value":Ljava/lang/String;
    .local v14, "substring":Ljava/lang/String;
    const/4 v10, 0x0

    .line 911
    .local v10, "$i$a$-binaryStringStringFunction-Strings$evaluateStrContains$1":I
    sget-object v11, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-object v12, v13

    check-cast v12, Ljava/lang/CharSequence;

    move-object v15, v14

    check-cast v15, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-static {v12, v15, v3, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->boolean(Z)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v9    # "$i$a$-catch-UtilsKt$binaryFunctionType$1$1$1":I
    .end local v10    # "$i$a$-binaryStringStringFunction-Strings$evaluateStrContains$1":I
    .end local v13    # "value":Ljava/lang/String;
    .end local v14    # "substring":Ljava/lang/String;
    nop

    .line 907
    goto :goto_4

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v1

    .line 914
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_4
    nop

    .line 482
    .end local v6    # "$i$f$catch":I
    return-object v0

    .line 478
    :cond_a
    :goto_5
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 471
    :cond_b
    :goto_6
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 463
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
