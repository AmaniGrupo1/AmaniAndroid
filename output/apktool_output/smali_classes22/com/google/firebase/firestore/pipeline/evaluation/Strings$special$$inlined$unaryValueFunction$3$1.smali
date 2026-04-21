.class public final Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$3$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$3;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Strings.kt\ncom/google/firebase/firestore/pipeline/evaluation/Strings\n*L\n1#1,905:1\n31#2,2:906\n62#2,6:908\n68#2:922\n33#2,3:923\n132#3,8:914\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$unaryFunction$1$1\n*L\n48#1:906,2\n48#1:923,3\n*E\n"
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$3$1;->$p:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 9
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$3$1;->$p:Lkotlin/jvm/functions/Function1;

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
    .local v3, "$i$a$-unaryFunction-UtilsKt$unaryFunction$2":I
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_8

    .line 910
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v4

    aget v4, v6, v4

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 913
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    goto :goto_2

    .line 912
    :pswitch_1
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_7

    .line 913
    :goto_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v4, "value":Lcom/google/firestore/v1/Value;
    const/4 v6, 0x0

    .line 914
    .local v6, "$i$a$-unaryValueFunction-Strings$evaluateReverse$1":I
    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_3
    goto :goto_4

    :cond_3
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v7

    aget v5, v5, v7

    goto :goto_3

    :goto_4
    packed-switch v5, :pswitch_data_1

    .line 920
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    goto :goto_5

    .line 919
    :pswitch_2
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v7

    const-string v8, "getValuesList(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Value;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    .line 917
    :pswitch_3
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v7

    const-string v8, "getBytesValue(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->access$bytesReverse(Lcom/google/protobuf/ByteString;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/firebase/firestore/Blob;->fromBytes([B)Lcom/google/firebase/firestore/Blob;

    move-result-object v7

    const-string v8, "fromBytes(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/firebase/firestore/Blob;)Lcom/google/firestore/v1/Value;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    .line 915
    :pswitch_4
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getStringValue(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->access$stringReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->string(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    .line 920
    :goto_5
    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_6
    move-object v4, v5

    .line 913
    .end local v4    # "value":Lcom/google/firestore/v1/Value;
    .end local v6    # "$i$a$-unaryValueFunction-Strings$evaluateReverse$1":I
    :goto_7
    nop

    .line 922
    nop

    .line 48
    .end local v0    # "r":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v2    # "$i$a$-catch-UtilsKt$unaryFunction$1$1$1":I
    .end local v3    # "$i$a$-unaryFunction-UtilsKt$unaryFunction$2":I
    :goto_8
    nop

    .line 907
    goto :goto_9

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v4, v2

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 925
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_9
    nop

    .line 48
    .end local v1    # "$i$f$catch":I
    return-object v4

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$3$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
