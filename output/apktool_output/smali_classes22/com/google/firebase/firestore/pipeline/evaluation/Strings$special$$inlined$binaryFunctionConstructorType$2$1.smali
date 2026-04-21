.class public final Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1$WhenMappings;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1\n+ 2 Strings.kt\ncom/google/firebase/firestore/pipeline/evaluation/Strings\n*L\n1#1,531:1\n302#2,3:532\n*E\n"
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
.field final synthetic $f:Lkotlin/jvm/functions/Function2;

.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;

.field final synthetic $valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field final synthetic $valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p5, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$f:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 9
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$p1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 512
    .local v0, "v1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 514
    .local v1, "v2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 517
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    const/4 v4, -0x1

    if-nez v2, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v6

    aget v5, v5, v6

    .line 518
    :goto_1
    const/4 v6, 0x1

    if-eq v5, v4, :cond_6

    .line 519
    if-ne v5, v6, :cond_4

    goto :goto_2

    .line 520
    :cond_4
    iget-object v5, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v2, v5, :cond_5

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v2

    goto :goto_3

    .line 521
    :cond_5
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 519
    :cond_6
    :goto_2
    move-object v2, v3

    .line 517
    :goto_3
    nop

    .line 516
    nop

    .line 524
    .local v2, "v1Ready":Lcom/google/firestore/v1/Value;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v3

    :goto_4
    if-nez v5, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    sget-object v7, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v8

    aget v7, v7, v8

    .line 525
    :goto_5
    if-eq v7, v4, :cond_b

    .line 526
    if-ne v7, v6, :cond_9

    goto :goto_6

    .line 527
    :cond_9
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v5, v3, :cond_a

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v3

    goto :goto_7

    .line 528
    :cond_a
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 526
    :cond_b
    :goto_6
    nop

    .line 524
    :goto_7
    nop

    .line 523
    nop

    .line 530
    .local v3, "v2Ready":Lcom/google/firestore/v1/Value;
    if-eqz v2, :cond_d

    if-nez v3, :cond_c

    goto :goto_8

    .line 531
    :cond_c
    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->$f:Lkotlin/jvm/functions/Function2;

    move-object v5, v2

    .local v5, "p0":Lcom/google/firestore/v1/Value;
    const/4 v6, 0x0

    .local v6, "$i$a$-binaryFunctionConstructorType-Strings$evaluateRegexMatch$1":I
    const/4 v7, 0x0

    .line 532
    .local v7, "$i$f$evaluateRegexMatch$stub_for_inlining$16":I
    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v5

    .line 531
    .end local v5    # "p0":Lcom/google/firestore/v1/Value;
    .end local v6    # "$i$a$-binaryFunctionConstructorType-Strings$evaluateRegexMatch$1":I
    .end local v7    # "$i$f$evaluateRegexMatch$stub_for_inlining$16":I
    move-object v6, v3

    .local v6, "p0":Lcom/google/firestore/v1/Value;
    const/4 v7, 0x0

    .local v7, "$i$a$-binaryFunctionConstructorType-Strings$evaluateRegexMatch$2":I
    const/4 v8, 0x0

    .line 534
    .local v8, "$i$f$evaluateRegexMatch$stub_for_inlining$17":I
    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v6

    .line 531
    .end local v6    # "p0":Lcom/google/firestore/v1/Value;
    .end local v7    # "$i$a$-binaryFunctionConstructorType-Strings$evaluateRegexMatch$2":I
    .end local v8    # "$i$f$evaluateRegexMatch$stub_for_inlining$17":I
    invoke-interface {v4, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_9

    .line 530
    :cond_d
    :goto_8
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 531
    :goto_9
    return-object v4
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 510
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
