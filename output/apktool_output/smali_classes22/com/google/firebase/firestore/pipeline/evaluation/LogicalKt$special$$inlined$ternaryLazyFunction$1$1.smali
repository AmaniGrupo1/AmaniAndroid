.class public final Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Logical.kt\ncom/google/firebase/firestore/pipeline/evaluation/LogicalKt\n*L\n1#1,905:1\n31#2,2:906\n33#2,3:918\n74#3,10:908\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n*L\n550#1:906,2\n550#1:918,3\n*E\n"
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
.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;

.field final synthetic $p3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

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
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    .line 906
    .local v3, "$i$f$catch":I
    nop

    .line 907
    const/4 v4, 0x0

    .line 550
    .local v4, "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    :try_start_0
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1$1;

    invoke-direct {v5, v0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1$2;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1$3;

    invoke-direct {v1, v2, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v0, "p2":Lkotlin/jvm/functions/Function0;
    .local v1, "p3":Lkotlin/jvm/functions/Function0;
    .local v5, "p1":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 908
    .local v2, "$i$a$-ternaryLazyFunction-LogicalKt$evaluateCond$1":I
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 909
    .local v6, "r1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    .line 911
    :cond_0
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v7

    .line 912
    .local v7, "v1":Lcom/google/firestore/v1/Value;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_2

    const/4 v8, -0x1

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v8

    aget v8, v9, v8

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 916
    :pswitch_0
    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    goto :goto_3

    .line 913
    :pswitch_1
    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    :goto_2
    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_4

    .line 915
    :pswitch_2
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_4

    .line 916
    :goto_3
    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_4
    move-object v7, v8

    .line 550
    .end local v0    # "p2":Lkotlin/jvm/functions/Function0;
    .end local v1    # "p3":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$a$-ternaryLazyFunction-LogicalKt$evaluateCond$1":I
    .end local v4    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v5    # "p1":Lkotlin/jvm/functions/Function0;
    .end local v6    # "r1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v7    # "v1":Lcom/google/firestore/v1/Value;
    :goto_5
    nop

    .line 907
    goto :goto_6

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v7, v1

    check-cast v7, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 920
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_6
    nop

    .line 550
    .end local v3    # "$i$f$catch":I
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 550
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$ternaryLazyFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
