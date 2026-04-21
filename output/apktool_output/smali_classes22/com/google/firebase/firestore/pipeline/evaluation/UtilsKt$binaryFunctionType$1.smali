.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->binaryFunctionType(Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function1;Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "+",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        ">;>;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "+",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        ">;>;"
    }
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT1;TT2;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueExtractor1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firestore/v1/Value;",
            "TT1;>;"
        }
    .end annotation
.end field

.field final synthetic $valueExtractor2:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firestore/v1/Value;",
            "TT2;>;"
        }
    .end annotation
.end field

.field final synthetic $valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field final synthetic $valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/Value$ValueTypeCase;",
            "Lcom/google/firestore/v1/Value$ValueTypeCase;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT1;-TT2;+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firestore/v1/Value;",
            "+TT1;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firestore/v1/Value;",
            "+TT2;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$function:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$valueExtractor1:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$valueExtractor2:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 460
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
    .locals 9
    .param p1, "params"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 463
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1;

    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iget-object v5, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$function:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$valueExtractor1:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1;->$valueExtractor2:Lkotlin/jvm/functions/Function1;

    move-object v3, p1

    .end local p1    # "params":Ljava/util/List;
    .local v3, "params":Ljava/util/List;
    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionType$1$1;-><init>(Ljava/util/List;Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 483
    return-object v2

    .line 462
    .end local v3    # "params":Ljava/util/List;
    .restart local p1    # "params":Ljava/util/List;
    :cond_0
    move-object v3, p1

    .end local p1    # "params":Ljava/util/List;
    .restart local v3    # "params":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Function should have exactly 2 params, but %d were given."

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method
