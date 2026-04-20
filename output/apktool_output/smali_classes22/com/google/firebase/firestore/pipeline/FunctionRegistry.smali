.class public final Lcom/google/firebase/firestore/pipeline/FunctionRegistry;
.super Ljava/lang/Object;
.source "FunctionRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0080\u0001\u0010\u0004\u001aq\u0012\u0004\u0012\u00020\u0006\u0012g\u0012e\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0007j\u0002`\u000e0\u0008\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000f\u0012#\u0012!\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0007j\u0002`\u000e0\u0007j\u0002`\u00100\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/FunctionRegistry;",
        "",
        "<init>",
        "()V",
        "functions",
        "",
        "",
        "Lkotlin/Function1;",
        "",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lkotlin/ParameterName;",
        "name",
        "input",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;",
        "params",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;",
        "getFunctions",
        "()Ljava/util/Map;",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/firestore/pipeline/FunctionRegistry;

.field private static final functions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/firestore/pipeline/FunctionRegistry;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/FunctionRegistry;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/FunctionRegistry;->INSTANCE:Lcom/google/firebase/firestore/pipeline/FunctionRegistry;

    .line 27
    nop

    .line 28
    const/16 v0, 0x51

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "and"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateAnd()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 29
    const-string v1, "or"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateOr()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 28
    nop

    .line 30
    const-string v1, "xor"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateXor()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 28
    nop

    .line 31
    const-string v1, "not"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->getEvaluateNot()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 28
    nop

    .line 32
    const-string v1, "round"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateRound()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 28
    nop

    .line 33
    const-string v1, "ceil"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateCeil()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    nop

    .line 34
    const-string v1, "floor"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateFloor()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 28
    nop

    .line 35
    const-string v1, "pow"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluatePow()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 28
    nop

    .line 36
    const-string v1, "sqrt"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateSqrt()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 28
    nop

    .line 37
    const-string v1, "add"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateAdd()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 28
    nop

    .line 38
    const-string v1, "subtract"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateSubtract()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 28
    nop

    .line 39
    const-string v1, "multiply"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateMultiply()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 28
    nop

    .line 40
    const-string v1, "divide"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateDivide()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 28
    nop

    .line 41
    const-string v1, "mod"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->getEvaluateMod()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 28
    nop

    .line 42
    const-string v1, "eq_any"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->getEvaluateEqAny()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 28
    nop

    .line 43
    const-string v1, "not_eq_any"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->getEvaluateNotEqAny()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 28
    nop

    .line 44
    const-string v1, "is_nan"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateIsNaN()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 28
    nop

    .line 45
    const-string v1, "is_not_nan"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateIsNotNaN()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 28
    nop

    .line 46
    const-string v1, "is_null"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateIsNull()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 28
    nop

    .line 47
    const-string v1, "is_not_null"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateIsNotNull()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 28
    nop

    .line 48
    const-string v1, "replace_first"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateReplaceFirst()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 28
    nop

    .line 49
    const-string v1, "replace_all"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateReplaceAll()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 28
    nop

    .line 50
    const-string v1, "char_length"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateCharLength()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 28
    nop

    .line 51
    const-string v1, "byte_length"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateByteLength()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 28
    nop

    .line 52
    const-string v1, "like"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateLike()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 28
    nop

    .line 53
    const-string v1, "regex_contains"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateRegexContains()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 28
    nop

    .line 54
    const-string v1, "regex_find"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateRegexFind()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 28
    nop

    .line 55
    const-string v1, "regex_find_all"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateRegexFindAll()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 28
    nop

    .line 56
    const-string v1, "regex_match"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateRegexMatch()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 28
    nop

    .line 57
    const-string v1, "logical_max"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateLogicalMaximum()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 28
    nop

    .line 58
    const-string v1, "logical_min"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateLogicalMinimum()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 28
    nop

    .line 59
    const-string v1, "reverse"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateReverse()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 28
    nop

    .line 60
    const-string v1, "str_contains"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateStrContains()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 28
    nop

    .line 61
    const-string v1, "starts_with"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateStartsWith()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 28
    nop

    .line 62
    const-string v1, "ends_with"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateEndsWith()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 28
    nop

    .line 63
    const-string v1, "to_lowercase"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateToLowercase()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 28
    nop

    .line 64
    const-string v1, "to_uppercase"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateToUppercase()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 28
    nop

    .line 65
    const-string v1, "trim"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateTrim()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 28
    nop

    .line 66
    const-string v1, "str_concat"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateStrConcat()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 28
    nop

    .line 67
    const-string v1, "map"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/MapsKt;->getEvaluateMap()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 28
    nop

    .line 68
    const-string v1, "map_get"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/MapsKt;->getEvaluateMapGet()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 28
    nop

    .line 71
    const-string v1, "is_error"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/DebugKt;->getEvaluateIsError()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 28
    nop

    .line 72
    const-string v1, "exists"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/DebugKt;->getEvaluateExists()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 28
    nop

    .line 73
    const-string v1, "cond"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;->getEvaluateCond()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 28
    nop

    .line 74
    const-string v1, "eq"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->getEvaluateEq()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 28
    nop

    .line 75
    const-string v1, "neq"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->getEvaluateNeq()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 28
    nop

    .line 76
    const-string v1, "gt"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->getEvaluateGt()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 28
    nop

    .line 77
    const-string v1, "gte"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->getEvaluateGte()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 28
    nop

    .line 78
    const-string v1, "lt"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->getEvaluateLt()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 28
    nop

    .line 79
    const-string v1, "lte"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->getEvaluateLte()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 28
    nop

    .line 80
    const-string v1, "array"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->getEvaluateArray()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 28
    nop

    .line 81
    const-string v1, "array_contains"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->getEvaluateArrayContains()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 28
    nop

    .line 82
    const-string v1, "array_contains_any"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->getEvaluateArrayContainsAny()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 28
    nop

    .line 83
    const-string v1, "array_contains_all"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->getEvaluateArrayContainsAll()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 28
    nop

    .line 84
    const-string v1, "array_get"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->getEvaluateArrayGet()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 28
    nop

    .line 85
    const-string v1, "array_length"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->getEvaluateArrayLength()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 28
    nop

    .line 86
    const-string v1, "timestamp_add"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->getEvaluateTimestampAdd()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 28
    nop

    .line 87
    const-string v1, "timestamp_sub"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->getEvaluateTimestampSub()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 28
    nop

    .line 88
    const-string v1, "timestamp_to_unix_micros"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->getEvaluateTimestampToUnixMicros()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 28
    nop

    .line 89
    const-string v1, "timestamp_to_unix_millis"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->getEvaluateTimestampToUnixMillis()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 28
    nop

    .line 90
    const-string v1, "timestamp_to_unix_seconds"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->getEvaluateTimestampToUnixSeconds()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 28
    nop

    .line 91
    const-string v1, "unix_micros_to_timestamp"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->getEvaluateUnixMicrosToTimestamp()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 28
    nop

    .line 92
    const-string v1, "unix_millis_to_timestamp"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->getEvaluateUnixMillisToTimestamp()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 28
    nop

    .line 93
    const-string v1, "unix_seconds_to_timestamp"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->getEvaluateUnixSecondsToTimestamp()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 28
    nop

    .line 96
    const-string v1, "bit_and"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 28
    nop

    .line 97
    const-string v1, "bit_or"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 28
    nop

    .line 98
    const-string v1, "bit_xor"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 28
    nop

    .line 99
    const-string v1, "bit_not"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 28
    nop

    .line 100
    const-string v1, "bit_left_shift"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 28
    nop

    .line 101
    const-string v1, "bit_right_shift"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 28
    nop

    .line 102
    const-string v1, "is_absent"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 28
    nop

    .line 103
    const-string v1, "rand"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 28
    nop

    .line 104
    const-string v1, "map_merge"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 28
    nop

    .line 105
    const-string v1, "map_remove"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 28
    nop

    .line 106
    const-string v1, "cosine_distance"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 28
    nop

    .line 107
    const-string v1, "dot_product"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 28
    nop

    .line 108
    const-string v1, "timestamp_trunc"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 28
    nop

    .line 109
    const-string v1, "split"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateSplit()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 28
    nop

    .line 110
    const-string v1, "substring"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateSubstring()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 28
    nop

    .line 111
    const-string v1, "ltrim"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateLTrim()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 28
    nop

    .line 112
    const-string v1, "rtrim"

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getEvaluateRTrim()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 28
    nop

    .line 27
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/FunctionRegistry;->functions:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFunctions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;>;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/google/firebase/firestore/pipeline/FunctionRegistry;->functions:Ljava/util/Map;

    return-object v0
.end method
