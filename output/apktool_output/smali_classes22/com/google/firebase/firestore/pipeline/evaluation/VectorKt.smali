.class public final Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;
.super Ljava/lang/Object;
.source "Vector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/firebase/firestore/pipeline/evaluation/VectorKt\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,203:1\n61#2:204\n44#2,6:205\n69#2:211\n344#2:212\n272#2:213\n285#2:214\n362#2:215\n344#2:216\n272#2:217\n285#2:218\n362#2:219\n344#2:220\n272#2:221\n285#2:222\n362#2:223\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/firebase/firestore/pipeline/evaluation/VectorKt\n*L\n25#1:204\n25#1:205,6\n25#1:211\n31#1:212\n31#1:213\n31#1:214\n31#1:215\n35#1:216\n35#1:217\n35#1:218\n35#1:219\n39#1:220\n39#1:221\n39#1:222\n39#1:223\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0013\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0005\u001a\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a\u0018\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a \u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002\u001a \u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0003\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "evaluateVectorLength",
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
        "getEvaluateVectorLength",
        "()Lkotlin/jvm/functions/Function1;",
        "evaluateCosineDistance",
        "getEvaluateCosineDistance",
        "evaluateDotProductDistance",
        "getEvaluateDotProductDistance",
        "evaluateEuclideanDistance",
        "getEvaluateEuclideanDistance",
        "cosineDistance",
        "vector1",
        "",
        "vector2",
        "euclideanDistance",
        "dotProductDistance",
        "fma",
        "",
        "a",
        "b",
        "c",
        "nativeFma",
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
.field private static final evaluateCosineDistance:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateDotProductDistance:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateEuclideanDistance:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateVectorLength:Lkotlin/jvm/functions/Function1;
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
    .locals 3

    .line 25
    const/4 v0, 0x0

    .line 204
    .local v0, "$i$f$unaryValueFunction":I
    const/4 v1, 0x0

    .line 205
    .local v1, "$i$f$unaryFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$unaryValueFunction$1;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$unaryValueFunction$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 210
    nop

    .line 211
    .end local v1    # "$i$f$unaryFunction":I
    nop

    .line 25
    .end local v0    # "$i$f$unaryValueFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateVectorLength:Lkotlin/jvm/functions/Function1;

    .line 31
    const/4 v0, 0x0

    .line 212
    .local v0, "$i$f$binaryVectorVectorFunction":I
    const/4 v1, 0x0

    .line 213
    .local v1, "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$1;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 214
    nop

    .line 215
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 31
    .end local v0    # "$i$f$binaryVectorVectorFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateCosineDistance:Lkotlin/jvm/functions/Function1;

    .line 35
    const/4 v0, 0x0

    .line 216
    .restart local v0    # "$i$f$binaryVectorVectorFunction":I
    const/4 v1, 0x0

    .line 217
    .restart local v1    # "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 218
    nop

    .line 219
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 35
    .end local v0    # "$i$f$binaryVectorVectorFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateDotProductDistance:Lkotlin/jvm/functions/Function1;

    .line 39
    const/4 v0, 0x0

    .line 220
    .restart local v0    # "$i$f$binaryVectorVectorFunction":I
    const/4 v1, 0x0

    .line 221
    .restart local v1    # "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$3;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$3;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 222
    nop

    .line 223
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 39
    .end local v0    # "$i$f$binaryVectorVectorFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateEuclideanDistance:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final cosineDistance([D[D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 76
    .param p0, "vector1"    # [D
    .param p1, "vector2"    # [D

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "vector1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vector2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 56
    :cond_0
    const-wide/16 v2, 0x0

    .line 57
    .local v2, "sum1":D
    const-wide/16 v4, 0x0

    .line 58
    .local v4, "sum2":D
    const-wide/16 v6, 0x0

    .line 59
    .local v6, "sum3":D
    const-wide/16 v8, 0x0

    .line 61
    .local v8, "sum4":D
    const-wide/16 v10, 0x0

    .line 62
    .local v10, "norm11":D
    const-wide/16 v12, 0x0

    .line 63
    .local v12, "norm12":D
    const-wide/16 v14, 0x0

    .line 64
    .local v14, "norm13":D
    const-wide/16 v16, 0x0

    .line 66
    .local v16, "norm14":D
    const-wide/16 v18, 0x0

    .line 67
    .local v18, "norm21":D
    const-wide/16 v20, 0x0

    .line 68
    .local v20, "norm22":D
    const-wide/16 v22, 0x0

    .line 69
    .local v22, "norm23":D
    const-wide/16 v24, 0x0

    .line 71
    .local v24, "norm24":D
    array-length v1, v0

    and-int/lit8 v1, v1, -0x4

    .line 72
    .local v1, "limit":I
    const/16 v26, 0x0

    .line 73
    .local v26, "$i$a$-run-VectorKt$cosineDistance$1":I
    const/16 v27, 0x0

    move-wide/from16 v32, v2

    move-wide/from16 v38, v12

    move-wide/from16 v44, v14

    move-wide/from16 v50, v16

    move-wide/from16 v56, v18

    move-wide/from16 v62, v20

    move-wide/from16 v68, v22

    move-wide/from16 v74, v24

    move/from16 v14, v27

    move-wide v12, v6

    move-wide/from16 v18, v8

    move-wide/from16 v24, v10

    move-wide v6, v4

    .line 74
    .end local v2    # "sum1":D
    .end local v4    # "sum2":D
    .end local v8    # "sum4":D
    .end local v10    # "norm11":D
    .end local v16    # "norm14":D
    .end local v20    # "norm22":D
    .end local v22    # "norm23":D
    .local v6, "sum2":D
    .local v12, "sum3":D
    .local v14, "i":I
    .local v18, "sum4":D
    .local v24, "norm11":D
    .local v32, "sum1":D
    .local v38, "norm12":D
    .local v44, "norm13":D
    .local v50, "norm14":D
    .local v56, "norm21":D
    .local v62, "norm22":D
    .local v68, "norm23":D
    .local v74, "norm24":D
    :goto_0
    if-ge v14, v1, :cond_1

    .line 75
    add-int/lit8 v2, v14, 0x0

    aget-wide v28, v0, v2

    add-int/lit8 v2, v14, 0x0

    aget-wide v30, p1, v2

    invoke-static/range {v28 .. v33}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v32

    .line 76
    add-int/lit8 v2, v14, 0x1

    aget-wide v2, v0, v2

    add-int/lit8 v4, v14, 0x1

    aget-wide v4, p1, v4

    invoke-static/range {v2 .. v7}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v6

    .line 77
    add-int/lit8 v2, v14, 0x2

    aget-wide v8, v0, v2

    add-int/lit8 v2, v14, 0x2

    aget-wide v10, p1, v2

    invoke-static/range {v8 .. v13}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v12

    .line 78
    add-int/lit8 v2, v14, 0x3

    aget-wide v2, v0, v2

    add-int/lit8 v4, v14, 0x3

    aget-wide v16, p1, v4

    move/from16 v27, v14

    move-wide v14, v2

    .end local v14    # "i":I
    .local v27, "i":I
    invoke-static/range {v14 .. v19}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v18

    .line 80
    add-int/lit8 v14, v27, 0x0

    aget-wide v20, v0, v14

    add-int/lit8 v14, v27, 0x0

    aget-wide v22, v0, v14

    invoke-static/range {v20 .. v25}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v24

    .line 81
    add-int/lit8 v14, v27, 0x1

    aget-wide v34, v0, v14

    add-int/lit8 v14, v27, 0x1

    aget-wide v36, v0, v14

    invoke-static/range {v34 .. v39}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v38

    .line 82
    add-int/lit8 v14, v27, 0x2

    aget-wide v40, v0, v14

    add-int/lit8 v14, v27, 0x2

    aget-wide v42, v0, v14

    invoke-static/range {v40 .. v45}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v44

    .line 83
    add-int/lit8 v14, v27, 0x3

    aget-wide v46, v0, v14

    add-int/lit8 v14, v27, 0x3

    aget-wide v48, v0, v14

    invoke-static/range {v46 .. v51}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v50

    .line 85
    add-int/lit8 v14, v27, 0x0

    aget-wide v52, p1, v14

    add-int/lit8 v14, v27, 0x0

    aget-wide v54, p1, v14

    invoke-static/range {v52 .. v57}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v56

    .line 86
    add-int/lit8 v14, v27, 0x1

    aget-wide v58, p1, v14

    add-int/lit8 v14, v27, 0x1

    aget-wide v60, p1, v14

    invoke-static/range {v58 .. v63}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v62

    .line 87
    add-int/lit8 v14, v27, 0x2

    aget-wide v64, p1, v14

    add-int/lit8 v14, v27, 0x2

    aget-wide v66, p1, v14

    invoke-static/range {v64 .. v69}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v68

    .line 88
    add-int/lit8 v14, v27, 0x3

    aget-wide v70, p1, v14

    add-int/lit8 v14, v27, 0x3

    aget-wide v72, p1, v14

    invoke-static/range {v70 .. v75}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v74

    .line 89
    add-int/lit8 v14, v27, 0x4

    .end local v27    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_0

    .line 91
    :cond_1
    move/from16 v27, v14

    .line 72
    .end local v14    # "i":I
    .end local v26    # "$i$a$-run-VectorKt$cosineDistance$1":I
    nop

    .line 93
    add-double v2, v32, v6

    add-double/2addr v2, v12

    add-double v2, v2, v18

    .line 94
    .local v2, "sum":D
    add-double v4, v24, v38

    add-double v4, v4, v44

    add-double v4, v4, v50

    .line 95
    .local v4, "norm1":D
    add-double v8, v56, v62

    add-double v8, v8, v68

    add-double v8, v8, v74

    .line 97
    .local v8, "norm2":D
    move v10, v1

    .local v10, "i":I
    array-length v11, v0

    :goto_1
    if-ge v10, v11, :cond_2

    .line 98
    aget-wide v14, v0, v10

    .line 99
    .local v14, "val1":D
    aget-wide v16, p1, v10

    .line 100
    .local v16, "val2":D
    mul-double v20, v14, v16

    add-double v2, v2, v20

    .line 101
    mul-double v20, v14, v14

    add-double v4, v4, v20

    .line 102
    mul-double v20, v16, v16

    add-double v8, v8, v20

    .line 97
    .end local v14    # "val1":D
    .end local v16    # "val2":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 104
    .end local v10    # "i":I
    :cond_2
    mul-double v10, v4, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double v10, v2, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    .line 105
    .local v14, "result":D
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v10

    .line 106
    :cond_3
    sget-object v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v10, v14, v15}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v10
.end method

.method public static final dotProductDistance([D[D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 31
    .param p0, "vector1"    # [D
    .param p1, "vector2"    # [D

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "vector1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vector2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 160
    :cond_0
    const-wide/16 v2, 0x0

    .line 161
    .local v2, "a1":D
    const-wide/16 v4, 0x0

    .line 162
    .local v4, "a2":D
    const-wide/16 v6, 0x0

    .line 163
    .local v6, "a3":D
    const-wide/16 v8, 0x0

    .line 166
    .local v8, "a4":D
    array-length v10, v0

    and-int/lit8 v10, v10, -0x4

    .line 167
    .local v10, "limit":I
    const/4 v11, 0x0

    .line 168
    .local v11, "$i$a$-run-VectorKt$dotProductDistance$1":I
    const/4 v12, 0x0

    move-wide/from16 v17, v2

    move-wide/from16 v23, v6

    move-wide/from16 v29, v8

    move-wide v6, v4

    .line 169
    .end local v2    # "a1":D
    .end local v4    # "a2":D
    .end local v8    # "a4":D
    .local v6, "a2":D
    .local v12, "i":I
    .local v17, "a1":D
    .local v23, "a3":D
    .local v29, "a4":D
    :goto_0
    if-ge v12, v10, :cond_1

    .line 170
    add-int/lit8 v2, v12, 0x0

    aget-wide v13, v0, v2

    add-int/lit8 v2, v12, 0x0

    aget-wide v15, v1, v2

    invoke-static/range {v13 .. v18}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v17

    .line 171
    add-int/lit8 v2, v12, 0x1

    aget-wide v2, v0, v2

    add-int/lit8 v4, v12, 0x1

    aget-wide v4, v1, v4

    invoke-static/range {v2 .. v7}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v6

    .line 172
    add-int/lit8 v2, v12, 0x2

    aget-wide v19, v0, v2

    add-int/lit8 v2, v12, 0x2

    aget-wide v21, v1, v2

    invoke-static/range {v19 .. v24}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v23

    .line 173
    add-int/lit8 v2, v12, 0x3

    aget-wide v25, v0, v2

    add-int/lit8 v2, v12, 0x3

    aget-wide v27, v1, v2

    invoke-static/range {v25 .. v30}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v29

    .line 174
    add-int/lit8 v12, v12, 0x4

    goto :goto_0

    .line 176
    :cond_1
    nop

    .line 167
    .end local v11    # "$i$a$-run-VectorKt$dotProductDistance$1":I
    .end local v12    # "i":I
    nop

    .line 178
    add-double v2, v17, v6

    add-double v2, v2, v23

    add-double v2, v2, v29

    .line 181
    .local v2, "result":D
    move v4, v10

    .local v4, "i":I
    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_2

    .line 182
    aget-wide v8, v0, v4

    aget-wide v11, v1, v4

    mul-double/2addr v8, v11

    add-double/2addr v2, v8

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 185
    .end local v4    # "i":I
    :cond_2
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v4, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v4
.end method

.method public static final euclideanDistance([D[D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 31
    .param p0, "vector1"    # [D
    .param p1, "vector2"    # [D

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "vector1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vector2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 119
    :cond_0
    const-wide/16 v2, 0x0

    .line 120
    .local v2, "a1":D
    const-wide/16 v4, 0x0

    .line 121
    .local v4, "a2":D
    const-wide/16 v6, 0x0

    .line 122
    .local v6, "a3":D
    const-wide/16 v8, 0x0

    .line 124
    .local v8, "a4":D
    array-length v10, v0

    and-int/lit8 v10, v10, -0x4

    .line 125
    .local v10, "limit":I
    const/4 v11, 0x0

    .line 126
    .local v11, "$i$a$-run-VectorKt$euclideanDistance$1":I
    const/4 v12, 0x0

    move-wide/from16 v17, v2

    move-wide/from16 v23, v6

    move-wide/from16 v29, v8

    move-wide v6, v4

    .line 127
    .end local v2    # "a1":D
    .end local v4    # "a2":D
    .end local v8    # "a4":D
    .local v6, "a2":D
    .local v12, "i":I
    .local v17, "a1":D
    .local v23, "a3":D
    .local v29, "a4":D
    :goto_0
    if-ge v12, v10, :cond_1

    .line 128
    add-int/lit8 v2, v12, 0x0

    aget-wide v2, v0, v2

    add-int/lit8 v4, v12, 0x0

    aget-wide v4, v1, v4

    sub-double v13, v2, v4

    .line 129
    .local v13, "diff1":D
    add-int/lit8 v2, v12, 0x1

    aget-wide v2, v0, v2

    add-int/lit8 v4, v12, 0x1

    aget-wide v4, v1, v4

    sub-double/2addr v2, v4

    .line 130
    .local v2, "diff2":D
    add-int/lit8 v4, v12, 0x2

    aget-wide v4, v0, v4

    add-int/lit8 v8, v12, 0x2

    aget-wide v8, v1, v8

    sub-double v19, v4, v8

    .line 131
    .local v19, "diff3":D
    add-int/lit8 v4, v12, 0x3

    aget-wide v4, v0, v4

    add-int/lit8 v8, v12, 0x3

    aget-wide v8, v1, v8

    sub-double v25, v4, v8

    .line 132
    .local v25, "diff4":D
    move-wide v15, v13

    invoke-static/range {v13 .. v18}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v17

    .line 133
    move-wide v4, v2

    invoke-static/range {v2 .. v7}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v6

    .line 134
    move-wide/from16 v21, v19

    invoke-static/range {v19 .. v24}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v23

    .line 135
    move-wide/from16 v27, v25

    invoke-static/range {v25 .. v30}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v29

    .line 136
    nop

    .end local v2    # "diff2":D
    .end local v13    # "diff1":D
    .end local v19    # "diff3":D
    .end local v25    # "diff4":D
    add-int/lit8 v12, v12, 0x4

    goto :goto_0

    .line 138
    :cond_1
    nop

    .line 125
    .end local v11    # "$i$a$-run-VectorKt$euclideanDistance$1":I
    .end local v12    # "i":I
    nop

    .line 140
    add-double v2, v17, v6

    add-double v2, v2, v23

    add-double v2, v2, v29

    .line 143
    .local v2, "result":D
    move v4, v10

    .local v4, "i":I
    array-length v5, v0

    move-wide v15, v2

    .end local v2    # "result":D
    .local v15, "result":D
    :goto_1
    if-ge v4, v5, :cond_2

    .line 144
    aget-wide v2, v0, v4

    aget-wide v8, v1, v4

    sub-double v11, v2, v8

    .line 145
    .local v11, "diff":D
    move-wide v13, v11

    invoke-static/range {v11 .. v16}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v15

    .line 143
    .end local v11    # "diff":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 147
    .end local v4    # "i":I
    :cond_2
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2
.end method

.method private static final fma(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 192
    invoke-static/range {p0 .. p5}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->nativeFma(DDD)D

    move-result-wide v0

    return-wide v0

    .line 195
    :cond_0
    mul-double v0, p0, p2

    add-double/2addr v0, p4

    return-wide v0
.end method

.method public static final getEvaluateCosineDistance()Lkotlin/jvm/functions/Function1;
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

    .line 31
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateCosineDistance:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateDotProductDistance()Lkotlin/jvm/functions/Function1;
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

    .line 35
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateDotProductDistance:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateEuclideanDistance()Lkotlin/jvm/functions/Function1;
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

    .line 39
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateEuclideanDistance:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateVectorLength()Lkotlin/jvm/functions/Function1;
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

    .line 25
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateVectorLength:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private static final nativeFma(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 201
    invoke-static/range {p0 .. p5}, Ljava/lang/Math;->fma(DDD)D

    move-result-wide v0

    return-wide v0
.end method
