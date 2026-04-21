.class final Lcom/google/firebase/firestore/pipeline/evaluation/Strings$evaluateRegexFind$3$1;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        ">;"
    }
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


# static fields
.field public static final INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/Strings$evaluateRegexFind$3$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$evaluateRegexFind$3$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$evaluateRegexFind$3$1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$evaluateRegexFind$3$1;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/Strings$evaluateRegexFind$3$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "patternString"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "patternString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    nop

    .line 327
    :try_start_0
    invoke-static {p2}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "<unused var>":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 326
    .end local v0    # "<unused var>":Ljava/lang/Exception;
    :goto_0
    nop

    .line 325
    nop

    .line 332
    .local v0, "pattern":Lcom/google/re2j/Pattern;
    if-nez v0, :cond_0

    .line 333
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_2

    .line 335
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/re2j/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;

    move-result-object v1

    .line 336
    .local v1, "matcher":Lcom/google/re2j/Matcher;
    invoke-virtual {v1}, Lcom/google/re2j/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    nop

    .line 338
    :try_start_1
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    sget-object v3, Lcom/google/firebase/firestore/util/RegexUtils;->Companion:Lcom/google/firebase/firestore/util/RegexUtils$Companion;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/util/RegexUtils$Companion;->handleMatch(Lcom/google/re2j/Matcher;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 339
    :catch_1
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v2, v3

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 343
    :cond_1
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v1, v2

    .line 345
    .end local v1    # "matcher":Lcom/google/re2j/Matcher;
    :goto_2
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 324
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$evaluateRegexFind$3$1;->invoke(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
