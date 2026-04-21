.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,905:1\n31#2,5:906\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n*L\n550#1:906,5\n*E\n"
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
.field final synthetic $function:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $p1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $p3:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->$function:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 7
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->$function:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    .line 906
    .local v4, "$i$f$catch":I
    nop

    .line 907
    const/4 v5, 0x0

    .line 550
    .local v5, "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    :try_start_0
    new-instance v6, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1$1$1;

    invoke-direct {v6, v1, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1$1$2;

    invoke-direct {v1, v2, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1$1$3;

    invoke-direct {v2, v3, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1$1$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    invoke-interface {v0, v6, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v5    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v0, v1

    .line 910
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .line 550
    .end local v4    # "$i$f$catch":I
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 550
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
