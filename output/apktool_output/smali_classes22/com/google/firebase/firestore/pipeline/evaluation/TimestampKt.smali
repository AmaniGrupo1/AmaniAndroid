.class public final Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;
.super Ljava/lang/Object;
.source "Timestamp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimestamp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timestamp.kt\ncom/google/firebase/firestore/pipeline/evaluation/TimestampKt\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,235:1\n566#2:236\n602#2:237\n544#2,8:238\n610#2:246\n591#2:247\n566#2:248\n602#2:249\n544#2,8:250\n610#2:258\n591#2:259\n150#2:260\n149#2:261\n214#2:262\n44#2,6:263\n224#2:269\n153#2:270\n150#2:271\n149#2:272\n214#2:273\n44#2,6:274\n224#2:280\n153#2:281\n150#2:282\n149#2:283\n214#2:284\n44#2,6:285\n224#2:291\n153#2:292\n133#2:293\n132#2:294\n214#2:295\n44#2,6:296\n224#2:302\n136#2:303\n133#2:304\n132#2:305\n214#2:306\n44#2,6:307\n224#2:313\n136#2:314\n133#2:315\n132#2:316\n214#2:317\n44#2,6:318\n224#2:324\n136#2:325\n*S KotlinDebug\n*F\n+ 1 Timestamp.kt\ncom/google/firebase/firestore/pipeline/evaluation/TimestampKt\n*L\n111#1:236\n111#1:237\n111#1:238,8\n111#1:246\n111#1:247\n136#1:248\n136#1:249\n136#1:250,8\n136#1:258\n136#1:259\n163#1:260\n163#1:261\n163#1:262\n163#1:263,6\n163#1:269\n163#1:270\n180#1:271\n180#1:272\n180#1:273\n180#1:274,6\n180#1:280\n180#1:281\n194#1:282\n194#1:283\n194#1:284\n194#1:285,6\n194#1:291\n194#1:292\n215#1:293\n215#1:294\n215#1:295\n215#1:296,6\n215#1:302\n215#1:303\n223#1:304\n223#1:305\n223#1:306\n223#1:307,6\n223#1:313\n223#1:314\n231#1:315\n231#1:316\n231#1:317\n231#1:318,6\n231#1:324\n231#1:325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u001a\'\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u001f\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0007\u001a\'\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u001a\u001f\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0007\u001a\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\u0015\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u0015\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0014\u001a\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0014\"\u0014\u0010\u0018\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\"\u0014\u0010\u001a\u001a\u00020\u000e8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\"\u0014\u0010\u001c\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0019\"\u0014\u0010\u001d\u001a\u00020\u000e8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001b\"\u0014\u0010\u001e\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0019\"\u0014\u0010\u001f\u001a\u00020\u000e8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001b\"\u0014\u0010 \u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u0019\"\u0014\u0010!\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u0019\"\u0014\u0010\"\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u0019\"\u0014\u0010#\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u0019\"\u0014\u0010$\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u0019\"\u0014\u0010%\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u0019\"}\u00100\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"}\u00104\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00084\u00101\u001a\u0004\u00085\u00103\"}\u00106\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00086\u00101\u001a\u0004\u00087\u00103\"}\u00108\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00088\u00101\u001a\u0004\u00089\u00103\"}\u0010:\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008:\u00101\u001a\u0004\u0008;\u00103\"}\u0010<\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008<\u00101\u001a\u0004\u0008=\u00103\"}\u0010>\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008>\u00101\u001a\u0004\u0008?\u00103\"}\u0010@\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008@\u00101\u001a\u0004\u0008A\u00103\"}\u0010B\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0\'\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(.\u0012#\u0012!\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008B\u00101\u001a\u0004\u0008C\u00103\u00a8\u0006D"
    }
    d2 = {
        "Lcom/google/protobuf/Timestamp;",
        "t",
        "",
        "seconds",
        "nanos",
        "plus",
        "(Lcom/google/protobuf/Timestamp;JJ)Lcom/google/protobuf/Timestamp;",
        "(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;",
        "minus",
        "",
        "unit",
        "j$/time/temporal/ChronoUnit",
        "convertUnit",
        "(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;",
        "",
        "",
        "isTimestampInBounds",
        "(JI)Z",
        "microseconds",
        "isMicrosecondsInTimestampBounds",
        "(J)Z",
        "milliseconds",
        "isMillisecondsInTimestampBounds",
        "isSecondsInTimestampBounds",
        "L_NANOS_PER_SECOND",
        "J",
        "I_NANOS_PER_SECOND",
        "I",
        "L_MICROS_PER_SECOND",
        "I_MICROS_PER_SECOND",
        "L_MILLIS_PER_SECOND",
        "I_MILLIS_PER_SECOND",
        "TIMESTAMP_MIN_SECONDS",
        "TIMESTAMP_MAX_SECONDS",
        "TIMESTAMP_MIN_MILLISECONDS",
        "TIMESTAMP_MAX_MILLISECONDS",
        "TIMESTAMP_MIN_MICROSECONDS",
        "TIMESTAMP_MAX_MICROSECONDS",
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
        "evaluateTimestampAdd",
        "Lkotlin/jvm/functions/Function1;",
        "getEvaluateTimestampAdd",
        "()Lkotlin/jvm/functions/Function1;",
        "evaluateTimestampSub",
        "getEvaluateTimestampSub",
        "evaluateTimestampTrunc",
        "getEvaluateTimestampTrunc",
        "evaluateTimestampToUnixMicros",
        "getEvaluateTimestampToUnixMicros",
        "evaluateTimestampToUnixMillis",
        "getEvaluateTimestampToUnixMillis",
        "evaluateTimestampToUnixSeconds",
        "getEvaluateTimestampToUnixSeconds",
        "evaluateUnixMicrosToTimestamp",
        "getEvaluateUnixMicrosToTimestamp",
        "evaluateUnixMillisToTimestamp",
        "getEvaluateUnixMillisToTimestamp",
        "evaluateUnixSecondsToTimestamp",
        "getEvaluateUnixSecondsToTimestamp",
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
.field private static final I_MICROS_PER_SECOND:I = 0xf4240

.field private static final I_MILLIS_PER_SECOND:I = 0x3e8

.field private static final I_NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final L_MICROS_PER_SECOND:J = 0xf4240L

.field private static final L_MILLIS_PER_SECOND:J = 0x3e8L

.field private static final L_NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final TIMESTAMP_MAX_MICROSECONDS:J = 0x384440ccc735fffL

.field private static final TIMESTAMP_MAX_MILLISECONDS:J = 0xe677d21fdbffL

.field private static final TIMESTAMP_MAX_SECONDS:J = 0x3afff4417fL

.field private static final TIMESTAMP_MIN_MICROSECONDS:J = -0xdcbffeff2bc000L

.field private static final TIMESTAMP_MIN_MILLISECONDS:J = -0x3883122cd800L

.field private static final TIMESTAMP_MIN_SECONDS:J = -0xe7791f700L

.field private static final evaluateTimestampAdd:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateTimestampSub:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateTimestampToUnixMicros:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateTimestampToUnixMillis:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateTimestampToUnixSeconds:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateTimestampTrunc:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateUnixMicrosToTimestamp:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateUnixMillisToTimestamp:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateUnixSecondsToTimestamp:Lkotlin/jvm/functions/Function1;
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

    .line 111
    const/4 v0, 0x0

    .line 236
    .local v0, "$i$f$ternaryTimestampFunction":I
    const/4 v1, 0x0

    .line 237
    .local v1, "$i$f$ternaryNullableValueFunction":I
    const/4 v2, 0x0

    .line 238
    .local v2, "$i$f$ternaryLazyFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 245
    nop

    .line 246
    .end local v2    # "$i$f$ternaryLazyFunction":I
    nop

    .line 247
    .end local v1    # "$i$f$ternaryNullableValueFunction":I
    nop

    .line 111
    .end local v0    # "$i$f$ternaryTimestampFunction":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampAdd:Lkotlin/jvm/functions/Function1;

    .line 136
    const/4 v0, 0x0

    .line 248
    .restart local v0    # "$i$f$ternaryTimestampFunction":I
    const/4 v1, 0x0

    .line 249
    .restart local v1    # "$i$f$ternaryNullableValueFunction":I
    const/4 v2, 0x0

    .line 250
    .restart local v2    # "$i$f$ternaryLazyFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 257
    nop

    .line 258
    .end local v2    # "$i$f$ternaryLazyFunction":I
    nop

    .line 259
    .end local v1    # "$i$f$ternaryNullableValueFunction":I
    nop

    .line 136
    .end local v0    # "$i$f$ternaryTimestampFunction":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampSub:Lkotlin/jvm/functions/Function1;

    .line 161
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampTrunc:Lkotlin/jvm/functions/Function1;

    .line 163
    const/4 v0, 0x0

    .line 260
    .local v0, "$i$f$unaryTimestampFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 261
    nop

    .local v1, "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 262
    .local v2, "$i$f$unaryFunctionType":I
    const/4 v3, 0x0

    .line 263
    .local v3, "$i$f$unaryFunction":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$1;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 268
    nop

    .line 269
    .end local v3    # "$i$f$unaryFunction":I
    nop

    .line 270
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$unaryFunctionType":I
    nop

    .line 163
    .end local v0    # "$i$f$unaryTimestampFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixMicros:Lkotlin/jvm/functions/Function1;

    .line 180
    const/4 v0, 0x0

    .line 271
    .restart local v0    # "$i$f$unaryTimestampFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 272
    nop

    .restart local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 273
    .restart local v2    # "$i$f$unaryFunctionType":I
    const/4 v3, 0x0

    .line 274
    .restart local v3    # "$i$f$unaryFunction":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$2;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$2;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 279
    nop

    .line 280
    .end local v3    # "$i$f$unaryFunction":I
    nop

    .line 281
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$unaryFunctionType":I
    nop

    .line 180
    .end local v0    # "$i$f$unaryTimestampFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixMillis:Lkotlin/jvm/functions/Function1;

    .line 194
    const/4 v0, 0x0

    .line 282
    .restart local v0    # "$i$f$unaryTimestampFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 283
    nop

    .restart local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 284
    .restart local v2    # "$i$f$unaryFunctionType":I
    const/4 v3, 0x0

    .line 285
    .restart local v3    # "$i$f$unaryFunction":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 290
    nop

    .line 291
    .end local v3    # "$i$f$unaryFunction":I
    nop

    .line 292
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$unaryFunctionType":I
    nop

    .line 194
    .end local v0    # "$i$f$unaryTimestampFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixSeconds:Lkotlin/jvm/functions/Function1;

    .line 215
    const/4 v0, 0x0

    .line 293
    .local v0, "$i$f$unaryLongFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 294
    nop

    .restart local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 295
    .restart local v2    # "$i$f$unaryFunctionType":I
    const/4 v3, 0x0

    .line 296
    .restart local v3    # "$i$f$unaryFunction":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$1;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 301
    nop

    .line 302
    .end local v3    # "$i$f$unaryFunction":I
    nop

    .line 303
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$unaryFunctionType":I
    nop

    .line 215
    .end local v0    # "$i$f$unaryLongFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixMicrosToTimestamp:Lkotlin/jvm/functions/Function1;

    .line 223
    const/4 v0, 0x0

    .line 304
    .restart local v0    # "$i$f$unaryLongFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 305
    nop

    .restart local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 306
    .restart local v2    # "$i$f$unaryFunctionType":I
    const/4 v3, 0x0

    .line 307
    .restart local v3    # "$i$f$unaryFunction":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 312
    nop

    .line 313
    .end local v3    # "$i$f$unaryFunction":I
    nop

    .line 314
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$unaryFunctionType":I
    nop

    .line 223
    .end local v0    # "$i$f$unaryLongFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixMillisToTimestamp:Lkotlin/jvm/functions/Function1;

    .line 231
    const/4 v0, 0x0

    .line 315
    .restart local v0    # "$i$f$unaryLongFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 316
    nop

    .restart local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 317
    .restart local v2    # "$i$f$unaryFunctionType":I
    const/4 v3, 0x0

    .line 318
    .restart local v3    # "$i$f$unaryFunction":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$3;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$3;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 323
    nop

    .line 324
    .end local v3    # "$i$f$unaryFunction":I
    nop

    .line 325
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$unaryFunctionType":I
    nop

    .line 231
    .end local v0    # "$i$f$unaryLongFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixSecondsToTimestamp:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;
    .locals 1
    .param p0, "t"    # Lcom/google/protobuf/Timestamp;
    .param p1, "seconds"    # J

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$plus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;
    .locals 1
    .param p0, "t"    # Lcom/google/protobuf/Timestamp;
    .param p1, "seconds"    # J

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->plus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public static final convertUnit(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;
    .locals 3
    .param p0, "unit"    # Ljava/lang/String;

    const-string v0, "unit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v0, "millisecond"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    goto :goto_0

    .line 89
    :sswitch_1
    const-string v0, "hour"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    goto :goto_0

    .line 89
    :sswitch_2
    const-string v0, "day"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    goto :goto_0

    .line 89
    :sswitch_3
    const-string v0, "microsecond"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    goto :goto_0

    .line 89
    :sswitch_4
    const-string v0, "second"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    goto :goto_0

    .line 89
    :sswitch_5
    const-string v0, "minute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    .line 89
    :goto_0
    return-object v0

    .line 96
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected timestamp unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x400459ec -> :sswitch_5
        -0x3604bb8c -> :sswitch_4
        -0x15f49fc8 -> :sswitch_3
        0x1839c -> :sswitch_2
        0x30f5e4 -> :sswitch_1
        0x73c6d681 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getEvaluateTimestampAdd()Lkotlin/jvm/functions/Function1;
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

    .line 111
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampAdd:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampSub()Lkotlin/jvm/functions/Function1;
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

    .line 136
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampSub:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampToUnixMicros()Lkotlin/jvm/functions/Function1;
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

    .line 163
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixMicros:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampToUnixMillis()Lkotlin/jvm/functions/Function1;
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

    .line 180
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixMillis:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampToUnixSeconds()Lkotlin/jvm/functions/Function1;
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

    .line 194
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixSeconds:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampTrunc()Lkotlin/jvm/functions/Function1;
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
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampTrunc:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateUnixMicrosToTimestamp()Lkotlin/jvm/functions/Function1;
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

    .line 215
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixMicrosToTimestamp:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateUnixMillisToTimestamp()Lkotlin/jvm/functions/Function1;
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

    .line 223
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixMillisToTimestamp:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateUnixSecondsToTimestamp()Lkotlin/jvm/functions/Function1;
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

    .line 231
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixSecondsToTimestamp:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final isMicrosecondsInTimestampBounds(J)Z
    .locals 2
    .param p0, "microseconds"    # J

    .line 202
    const-wide v0, -0xdcbffeff2bc000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 203
    const-wide v0, 0x384440ccc735fffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0
.end method

.method public static final isMillisecondsInTimestampBounds(J)Z
    .locals 2
    .param p0, "milliseconds"    # J

    .line 207
    const-wide v0, -0x3883122cd800L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 208
    const-wide v0, 0xe677d21fdbffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0
.end method

.method public static final isSecondsInTimestampBounds(J)Z
    .locals 2
    .param p0, "seconds"    # J

    .line 212
    const-wide v0, -0xe7791f700L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x3afff4417fL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isTimestampInBounds(JI)Z
    .locals 6
    .param p0, "seconds"    # J
    .param p2, "nanos"    # I

    .line 101
    const-wide v0, -0xe7791f700L

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    const-wide v2, 0x3afff4417fL

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    if-ltz p2, :cond_2

    int-to-long v2, p2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_2
    :goto_0
    return v1

    .line 102
    :cond_3
    :goto_1
    return v1
.end method

.method private static final minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;
    .locals 3
    .param p0, "t"    # Lcom/google/protobuf/Timestamp;
    .param p1, "seconds"    # J

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/LongMath;->checkedSubtract(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final minus(Lcom/google/protobuf/Timestamp;JJ)Lcom/google/protobuf/Timestamp;
    .locals 6
    .param p0, "t"    # Lcom/google/protobuf/Timestamp;
    .param p1, "seconds"    # J
    .param p3, "nanos"    # J

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p3

    .line 74
    .local v0, "nanoSum":J
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v2

    const-wide/32 v4, 0x3b9aca00

    div-long v4, v0, v4

    invoke-static {p1, p2, v4, v5}, Lcom/google/common/math/LongMath;->checkedSubtract(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->checkedSubtract(JJ)J

    move-result-wide v2

    .line 73
    nop

    .line 75
    .local v2, "secondsSum":J
    const v4, 0x3b9aca00

    int-to-long v4, v4

    rem-long v4, v0, v4

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object v4

    move-object v0, v4

    .line 76
    .end local v0    # "nanoSum":J
    .end local v2    # "secondsSum":J
    :goto_0
    return-object v0
.end method

.method private static final plus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;
    .locals 3
    .param p0, "t"    # Lcom/google/protobuf/Timestamp;
    .param p1, "seconds"    # J

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final plus(Lcom/google/protobuf/Timestamp;JJ)Lcom/google/protobuf/Timestamp;
    .locals 6
    .param p0, "t"    # Lcom/google/protobuf/Timestamp;
    .param p1, "seconds"    # J
    .param p3, "nanos"    # J

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->plus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 61
    .local v0, "nanoSum":J
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0x3b9aca00

    div-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v2

    .line 62
    .local v2, "secondsSum":J
    const v4, 0x3b9aca00

    int-to-long v4, v4

    rem-long v4, v0, v4

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object v4

    move-object v0, v4

    .line 63
    .end local v0    # "nanoSum":J
    .end local v2    # "secondsSum":J
    :goto_0
    return-object v0
.end method
