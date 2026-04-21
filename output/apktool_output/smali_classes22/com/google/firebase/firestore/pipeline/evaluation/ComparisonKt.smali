.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;
.super Ljava/lang/Object;
.source "Comparison.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparison.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparison.kt\ncom/google/firebase/firestore/pipeline/evaluation/ComparisonKt\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,63:1\n272#2:64\n285#2:65\n272#2:66\n285#2:67\n721#2:68\n272#2:69\n285#2:70\n723#2:71\n721#2:72\n272#2:73\n285#2:74\n723#2:75\n721#2:76\n272#2:77\n285#2:78\n723#2:79\n721#2:80\n272#2:81\n285#2:82\n723#2:83\n83#2:84\n82#2:85\n214#2:86\n44#2,6:87\n224#2:93\n86#2:94\n*S KotlinDebug\n*F\n+ 1 Comparison.kt\ncom/google/firebase/firestore/pipeline/evaluation/ComparisonKt\n*L\n22#1:64\n22#1:65\n26#1:66\n26#1:67\n30#1:68\n30#1:69\n30#1:70\n30#1:71\n37#1:72\n37#1:73\n37#1:74\n37#1:75\n45#1:76\n45#1:77\n45#1:78\n45#1:79\n52#1:80\n52#1:81\n52#1:82\n52#1:83\n60#1:84\n60#1:85\n60#1:86\n60#1:87,6\n60#1:93\n60#1:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000c\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"w\u0010\u0017\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "evaluateEq",
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
        "getEvaluateEq",
        "()Lkotlin/jvm/functions/Function1;",
        "evaluateNeq",
        "getEvaluateNeq",
        "evaluateGt",
        "getEvaluateGt",
        "evaluateGte",
        "getEvaluateGte",
        "evaluateLt",
        "getEvaluateLt",
        "evaluateLte",
        "getEvaluateLte",
        "evaluateNot",
        "getEvaluateNot",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final evaluateEq:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateGt:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateGte:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateLt:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateLte:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateNeq:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateNot:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    const/4 v0, 0x0

    .line 64
    .local v0, "$i$f$binaryValueValueFunction":I
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$binaryValueValueFunction$1;

    invoke-direct {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$binaryValueValueFunction$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 65
    nop

    .line 22
    .end local v0    # "$i$f$binaryValueValueFunction":I
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateEq:Lkotlin/jvm/functions/Function1;

    .line 26
    const/4 v0, 0x0

    .line 66
    .restart local v0    # "$i$f$binaryValueValueFunction":I
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$binaryValueValueFunction$2;

    invoke-direct {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$binaryValueValueFunction$2;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 67
    nop

    .line 26
    .end local v0    # "$i$f$binaryValueValueFunction":I
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateNeq:Lkotlin/jvm/functions/Function1;

    .line 30
    const/4 v0, 0x0

    .line 68
    .local v0, "$i$f$comparison":I
    const/4 v1, 0x0

    .line 69
    .local v1, "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$comparison$1;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$comparison$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 70
    nop

    .line 71
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 30
    .end local v0    # "$i$f$comparison":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateGt:Lkotlin/jvm/functions/Function1;

    .line 37
    const/4 v0, 0x0

    .line 72
    .restart local v0    # "$i$f$comparison":I
    const/4 v1, 0x0

    .line 73
    .restart local v1    # "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$comparison$2;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$comparison$2;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 74
    nop

    .line 75
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 37
    .end local v0    # "$i$f$comparison":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateGte:Lkotlin/jvm/functions/Function1;

    .line 45
    const/4 v0, 0x0

    .line 76
    .restart local v0    # "$i$f$comparison":I
    const/4 v1, 0x0

    .line 77
    .restart local v1    # "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$comparison$3;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$comparison$3;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 78
    nop

    .line 79
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 45
    .end local v0    # "$i$f$comparison":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateLt:Lkotlin/jvm/functions/Function1;

    .line 52
    const/4 v0, 0x0

    .line 80
    .restart local v0    # "$i$f$comparison":I
    const/4 v1, 0x0

    .line 81
    .restart local v1    # "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$comparison$4;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$comparison$4;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 82
    nop

    .line 83
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 52
    .end local v0    # "$i$f$comparison":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateLte:Lkotlin/jvm/functions/Function1;

    .line 60
    const/4 v0, 0x0

    .line 84
    .local v0, "$i$f$unaryBooleanFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 85
    nop

    .local v1, "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$f$unaryFunctionType":I
    const/4 v3, 0x0

    .line 87
    .local v3, "$i$f$unaryFunction":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$unaryBooleanFunction$1;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt$special$$inlined$unaryBooleanFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 92
    nop

    .line 93
    .end local v3    # "$i$f$unaryFunction":I
    nop

    .line 94
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$unaryFunctionType":I
    nop

    .line 60
    .end local v0    # "$i$f$unaryBooleanFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateNot:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getEvaluateEq()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
            ">;>;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateEq:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateGt()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
            ">;>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateGt:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateGte()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
            ">;>;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateGte:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateLt()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
            ">;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateLt:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateLte()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
            ">;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateLte:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateNeq()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
            ">;>;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateNeq:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateNot()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
            ">;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ComparisonKt;->evaluateNot:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
