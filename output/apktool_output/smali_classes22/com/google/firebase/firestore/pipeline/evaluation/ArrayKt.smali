.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;
.super Ljava/lang/Object;
.source "Array.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Array.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArrayKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,247:1\n1863#2,2:248\n1863#2,2:250\n635#3:252\n619#3,6:253\n637#3:259\n300#3:260\n272#3:261\n285#3:262\n307#3:263\n300#3:264\n272#3:265\n285#3:266\n307#3:267\n322#3:268\n272#3:269\n285#3:270\n329#3:271\n409#3:272\n441#3:273\n409#3:274\n441#3:275\n167#3:276\n44#3,6:277\n176#3:283\n167#3:284\n44#3,6:285\n176#3:291\n*S KotlinDebug\n*F\n+ 1 Array.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArrayKt\n*L\n149#1:248,2\n151#1:250,2\n28#1:252\n28#1:253,6\n28#1:259\n30#1:260\n30#1:261\n30#1:262\n30#1:263\n36#1:264\n36#1:265\n36#1:266\n36#1:267\n42#1:268\n42#1:269\n42#1:270\n42#1:271\n48#1:272\n48#1:273\n57#1:274\n57#1:275\n75#1:276\n75#1:277,6\n75#1:283\n79#1:284\n79#1:285,6\n79#1:291\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u001e\u0010\u001d\u001a\u00020\u00072\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00022\u0006\u0010 \u001a\u00020!H\u0002\u001a\u001e\u0010\"\u001a\u00020\u00072\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00022\u0006\u0010 \u001a\u00020#H\u0002\u001a\u001c\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u00020\u0002H\u0000\u001a\u001e\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u001f2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0002H\u0002\u001a\u001e\u0010.\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u001f2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0002H\u0002\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000c\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"w\u0010\u0017\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\"w\u0010\u0019\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000c\"w\u0010\u001b\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"w\u0010$\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u000c\"w\u0010&\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u000c\u00a8\u0006/"
    }
    d2 = {
        "evaluateArray",
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
        "getEvaluateArray",
        "()Lkotlin/jvm/functions/Function1;",
        "evaluateEqAny",
        "getEvaluateEqAny",
        "evaluateNotEqAny",
        "getEvaluateNotEqAny",
        "evaluateArrayContains",
        "getEvaluateArrayContains",
        "evaluateArrayContainsAny",
        "getEvaluateArrayContainsAny",
        "evaluateArrayContainsAll",
        "getEvaluateArrayContainsAll",
        "evaluateArrayLength",
        "getEvaluateArrayLength",
        "evaluateArrayReverse",
        "getEvaluateArrayReverse",
        "evaluateJoin",
        "getEvaluateJoin",
        "joinStrings",
        "array",
        "Lcom/google/firestore/v1/Value;",
        "delimiter",
        "",
        "joinBytes",
        "Lcom/google/protobuf/ByteString;",
        "evaluateArrayGet",
        "getEvaluateArrayGet",
        "evaluateArrayConcat",
        "getEvaluateArrayConcat",
        "arrayConcatImpl",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;",
        "arrays",
        "equalAny",
        "value",
        "list",
        "notEqualAny",
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
.field private static final evaluateArray:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateArrayConcat:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateArrayContains:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateArrayContainsAll:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateArrayContainsAny:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateArrayGet:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateArrayLength:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateArrayReverse:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateEqAny:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateJoin:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateNotEqAny:Lkotlin/jvm/functions/Function1;
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
    .locals 4

    .line 28
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const/4 v1, 0x0

    .line 252
    .local v1, "$i$f$variadicNullableValueFunction":I
    const/4 v2, 0x0

    .line 253
    .local v2, "$i$f$variadicResultFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$variadicNullableValueFunction$1;

    invoke-direct {v3, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$variadicNullableValueFunction$1;-><init>(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 258
    nop

    .line 259
    .end local v2    # "$i$f$variadicResultFunction":I
    nop

    .line 28
    .end local v1    # "$i$f$variadicNullableValueFunction":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArray:Lkotlin/jvm/functions/Function1;

    .line 30
    const/4 v0, 0x0

    .line 260
    .local v0, "$i$f$binaryValueArrayFunction":I
    const/4 v1, 0x0

    .line 261
    .local v1, "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryValueArrayFunction$1;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryValueArrayFunction$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 262
    nop

    .line 263
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 30
    .end local v0    # "$i$f$binaryValueArrayFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateEqAny:Lkotlin/jvm/functions/Function1;

    .line 36
    const/4 v0, 0x0

    .line 264
    .restart local v0    # "$i$f$binaryValueArrayFunction":I
    const/4 v1, 0x0

    .line 265
    .restart local v1    # "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryValueArrayFunction$2;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryValueArrayFunction$2;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 266
    nop

    .line 267
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 36
    .end local v0    # "$i$f$binaryValueArrayFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateNotEqAny:Lkotlin/jvm/functions/Function1;

    .line 42
    const/4 v0, 0x0

    .line 268
    .local v0, "$i$f$binaryArrayValueFunction":I
    const/4 v1, 0x0

    .line 269
    .restart local v1    # "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryArrayValueFunction$1;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryArrayValueFunction$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 270
    nop

    .line 271
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 42
    .end local v0    # "$i$f$binaryArrayValueFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayContains:Lkotlin/jvm/functions/Function1;

    .line 48
    const/4 v0, 0x0

    .line 272
    .local v0, "$i$f$binaryArrayArrayFunction":I
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryArrayArrayFunction$1;

    invoke-direct {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryArrayArrayFunction$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 273
    nop

    .line 48
    .end local v0    # "$i$f$binaryArrayArrayFunction":I
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayContainsAny:Lkotlin/jvm/functions/Function1;

    .line 57
    const/4 v0, 0x0

    .line 274
    .restart local v0    # "$i$f$binaryArrayArrayFunction":I
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryArrayArrayFunction$2;

    invoke-direct {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$binaryArrayArrayFunction$2;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 275
    nop

    .line 57
    .end local v0    # "$i$f$binaryArrayArrayFunction":I
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayContainsAll:Lkotlin/jvm/functions/Function1;

    .line 75
    const/4 v0, 0x0

    .line 276
    .local v0, "$i$f$unaryArrayFunction":I
    const/4 v1, 0x0

    .line 277
    .local v1, "$i$f$unaryFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$unaryArrayFunction$1;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$unaryArrayFunction$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 282
    nop

    .line 283
    .end local v1    # "$i$f$unaryFunction":I
    nop

    .line 75
    .end local v0    # "$i$f$unaryArrayFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayLength:Lkotlin/jvm/functions/Function1;

    .line 79
    const/4 v0, 0x0

    .line 284
    .restart local v0    # "$i$f$unaryArrayFunction":I
    const/4 v1, 0x0

    .line 285
    .restart local v1    # "$i$f$unaryFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$unaryArrayFunction$2;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$special$$inlined$unaryArrayFunction$2;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 290
    nop

    .line 291
    .end local v1    # "$i$f$unaryFunction":I
    nop

    .line 79
    .end local v0    # "$i$f$unaryArrayFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayReverse:Lkotlin/jvm/functions/Function1;

    .line 83
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateJoin:Lkotlin/jvm/functions/Function1;

    .line 161
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayGet:Lkotlin/jvm/functions/Function1;

    .line 196
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayConcat:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$equalAny(Lcom/google/firestore/v1/Value;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .param p1, "list"    # Ljava/util/List;

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->equalAny(Lcom/google/firestore/v1/Value;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$notEqualAny(Lcom/google/firestore/v1/Value;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .param p1, "list"    # Ljava/util/List;

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->notEqualAny(Lcom/google/firestore/v1/Value;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method

.method public static final arrayConcatImpl(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;
    .locals 2
    .param p0, "arrays"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;>;)",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;"
        }
    .end annotation

    const-string v0, "arrays"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    return-object v0
.end method

.method private static final equalAny(Lcom/google/firestore/v1/Value;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 4
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/Value;",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;"
        }
    .end annotation

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .local v1, "element":Lcom/google/firestore/v1/Value;
    sget-object v2, Lcom/google/firebase/firestore/model/Values$Enterprise;->INSTANCE:Lcom/google/firebase/firestore/model/Values$Enterprise;

    invoke-virtual {v2, p0, v1}, Lcom/google/firebase/firestore/model/Values$Enterprise;->equals$com_google_firebase_firebase_firestore(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v2

    .line 234
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getTRUE()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 235
    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 237
    .end local v1    # "element":Lcom/google/firestore/v1/Value;
    :cond_2
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getFALSE()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method

.method static final evaluateArrayConcat$lambda$14(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "params"    # Ljava/util/List;

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 226
    return-object v0
.end method

.method static final evaluateArrayConcat$lambda$14$lambda$13(Ljava/util/List;Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 8
    .param p0, "$params"    # Ljava/util/List;
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 202
    .local v0, "allArraysValues":Ljava/util/List;
    const/4 v1, 0x0

    .line 204
    .local v1, "hasNull":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 205
    .local v3, "param":Lkotlin/jvm/functions/Function1;
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 206
    .local v4, "result":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    nop

    .line 207
    instance-of v5, v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    if-eqz v5, :cond_4

    .line 208
    move-object v5, v4

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->hasArrayValue()Z

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    if-eqz v5, :cond_1

    .line 209
    move-object v5, v4

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v5

    const-string v6, "getValuesList(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_1
    move-object v5, v4

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->hasNullValue()Z

    move-result v5

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    if-eqz v6, :cond_3

    .line 211
    const/4 v1, 0x1

    goto :goto_0

    .line 213
    :cond_3
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 216
    :cond_4
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 217
    :cond_5
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 206
    :cond_6
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 221
    .end local v3    # "param":Lkotlin/jvm/functions/Function1;
    .end local v4    # "result":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :cond_7
    if-eqz v1, :cond_8

    .line 222
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 225
    :cond_8
    invoke-static {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->arrayConcatImpl(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 199
    .end local v0    # "allArraysValues":Ljava/util/List;
    .end local v1    # "hasNull":Z
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Function should have at least 2 params, but %d were given."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method static final evaluateArrayGet$lambda$12(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "params"    # Ljava/util/List;

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 193
    return-object v0
.end method

.method static final evaluateArrayGet$lambda$12$lambda$11(Ljava/util/List;Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 10
    .param p0, "$params"    # Ljava/util/List;
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 166
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 168
    .local v1, "p1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->hasArrayValue()Z

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    goto :goto_1

    .line 170
    :cond_2
    move-object v2, v4

    .line 168
    :goto_1
    nop

    .line 167
    nop

    .line 172
    .local v2, "array":Ljava/util/List;
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 174
    .local v5, "p2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->hasIntegerValue()Z

    move-result v6

    if-ne v6, v3, :cond_3

    move v0, v3

    :cond_3
    if-eqz v0, :cond_9

    .line 175
    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 174
    :cond_4
    nop

    .line 173
    nop

    .line 178
    .local v4, "offset":Ljava/lang/Long;
    if-nez v2, :cond_5

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 181
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 182
    .local v6, "index":J
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    neg-int v0, v0

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    goto :goto_3

    .line 188
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    .line 189
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v8, v6

    goto :goto_2

    .line 190
    :cond_7
    move-wide v8, v6

    .line 187
    :goto_2
    nop

    .line 192
    .end local v6    # "index":J
    .local v8, "index":J
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    long-to-int v3, v8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "get(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 183
    .end local v8    # "index":J
    .restart local v6    # "index":J
    :cond_8
    :goto_3
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 176
    .end local v4    # "offset":Ljava/lang/Long;
    .end local v6    # "index":J
    :cond_9
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 164
    .end local v1    # "p1":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v2    # "array":Ljava/util/List;
    .end local v5    # "p2":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Function should have exactly 2 params, but %d were given."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method static final evaluateJoin$lambda$8(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "params"    # Ljava/util/List;

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 119
    return-object v0
.end method

.method static final evaluateJoin$lambda$8$lambda$7(Ljava/util/List;Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 6
    .param p0, "$params"    # Ljava/util/List;
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "hasNull":Z
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 90
    .local v1, "array":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    nop

    .line 91
    instance-of v2, v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 92
    :cond_0
    instance-of v2, v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 93
    :cond_1
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/google/firestore/v1/Value$ValueTypeCase;->ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-eq v2, v4, :cond_4

    .line 96
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    .line 100
    :cond_4
    :goto_1
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 101
    .local v2, "delimiter":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    nop

    .line 102
    instance-of v4, v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    if-eqz v4, :cond_5

    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 103
    :cond_5
    instance-of v4, v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultUnset;

    if-eqz v4, :cond_6

    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 104
    :cond_6
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 106
    :cond_7
    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_9

    const/4 v4, -0x1

    goto :goto_3

    :cond_9
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v4

    aget v4, v5, v4

    :goto_3
    const-string v5, "getValuesList(...)"

    packed-switch v4, :pswitch_data_0

    .line 115
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    .line 112
    :pswitch_0
    if-nez v0, :cond_c

    .line 113
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v4

    goto :goto_4

    :cond_a
    move-object v4, v3

    :goto_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v3

    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->joinBytes(Ljava/util/List;Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v3

    goto :goto_6

    .line 114
    :cond_c
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_6

    .line 108
    :pswitch_1
    if-nez v0, :cond_f

    .line 109
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v4

    goto :goto_5

    :cond_d
    move-object v4, v3

    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v3

    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->joinStrings(Ljava/util/List;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v3

    goto :goto_6

    .line 110
    :cond_f
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 118
    :goto_6
    return-object v3

    .line 86
    .end local v0    # "hasNull":Z
    .end local v1    # "array":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .end local v2    # "delimiter":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Function should have exactly 2 params, but %d were given."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getEvaluateArray()Lkotlin/jvm/functions/Function1;
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

    .line 28
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArray:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateArrayConcat()Lkotlin/jvm/functions/Function1;
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

    .line 196
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayConcat:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateArrayContains()Lkotlin/jvm/functions/Function1;
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

    .line 42
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayContains:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateArrayContainsAll()Lkotlin/jvm/functions/Function1;
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

    .line 56
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayContainsAll:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateArrayContainsAny()Lkotlin/jvm/functions/Function1;
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

    .line 47
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayContainsAny:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateArrayGet()Lkotlin/jvm/functions/Function1;
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

    .line 161
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayGet:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateArrayLength()Lkotlin/jvm/functions/Function1;
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

    .line 75
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayLength:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateArrayReverse()Lkotlin/jvm/functions/Function1;
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

    .line 79
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateArrayReverse:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateEqAny()Lkotlin/jvm/functions/Function1;
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
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateEqAny:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateJoin()Lkotlin/jvm/functions/Function1;
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

    .line 83
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateJoin:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateNotEqAny()Lkotlin/jvm/functions/Function1;
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
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->evaluateNotEqAny:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private static final joinBytes(Ljava/util/List;Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 10
    .param p0, "array"    # Ljava/util/List;
    .param p1, "delimiter"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 144
    .local v0, "builder":Ljava/util/List;
    const/4 v1, 0x1

    .line 145
    .local v1, "isFirstElement":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 146
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v4

    aget v4, v5, v4

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 155
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 152
    :pswitch_0
    goto :goto_4

    .line 148
    :pswitch_1
    if-nez v1, :cond_2

    .line 149
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 248
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Byte;

    .local v8, "it":Ljava/lang/Byte;
    const/4 v9, 0x0

    .line 149
    .local v9, "$i$a$-forEach-ArrayKt$joinBytes$1":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v8    # "it":Ljava/lang/Byte;
    .end local v9    # "$i$a$-forEach-ArrayKt$joinBytes$1":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 249
    :cond_1
    nop

    .line 151
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v4

    const-string v5, "getBytesValue(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .restart local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 250
    .restart local v5    # "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Byte;

    .restart local v8    # "it":Ljava/lang/Byte;
    const/4 v9, 0x0

    .line 151
    .local v9, "$i$a$-forEach-ArrayKt$joinBytes$2":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v8    # "it":Ljava/lang/Byte;
    .end local v9    # "$i$a$-forEach-ArrayKt$joinBytes$2":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 251
    :cond_3
    nop

    .line 152
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    const/4 v1, 0x0

    .line 145
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_4
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/model/Values;->encodeValue([B)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final joinStrings(Ljava/util/List;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 7
    .param p0, "array"    # Ljava/util/List;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 125
    .local v1, "isFirstElement":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 126
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    .line 127
    .local v4, "element":Lcom/google/firestore/v1/Value;
    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, -0x1

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v5

    aget v5, v6, v5

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 136
    :pswitch_0
    sget-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v3

    .line 133
    :pswitch_1
    goto :goto_2

    .line 129
    :pswitch_2
    if-nez v1, :cond_1

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v1, 0x0

    .line 125
    .end local v4    # "element":Lcom/google/firestore/v1/Value;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "i":I
    :cond_2
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->string(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final notEqualAny(Lcom/google/firestore/v1/Value;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 4
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/Value;",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;"
        }
    .end annotation

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .local v1, "element":Lcom/google/firestore/v1/Value;
    sget-object v2, Lcom/google/firebase/firestore/model/Values$Enterprise;->INSTANCE:Lcom/google/firebase/firestore/model/Values$Enterprise;

    invoke-virtual {v2, p0, v1}, Lcom/google/firebase/firestore/model/Values$Enterprise;->equals$com_google_firebase_firebase_firestore(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v2

    .line 242
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getFALSE()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 243
    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 245
    .end local v1    # "element":Lcom/google/firestore/v1/Value;
    :cond_2
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getTRUE()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method
