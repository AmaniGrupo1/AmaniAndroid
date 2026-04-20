package com.google.firebase.firestore.pipeline.evaluation;

import android.os.Build;
import androidx.autofill.HintConstants;
import androidx.media3.common.C;
import com.google.common.math.LongMath;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;
import com.google.protobuf.Timestamp;
import j$.time.Instant;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Timestamp.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\u001a'\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001f\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0007\u001a'\u0010\b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\b\u0010\u0006\u001a\u001f\u0010\b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\b\u0010\u0007\u001a\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\r\u001a\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0015\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0015\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0014\u001a\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0014\"\u0014\u0010\u0018\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019\"\u0014\u0010\u001a\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b\"\u0014\u0010\u001c\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0019\"\u0014\u0010\u001d\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001b\"\u0014\u0010\u001e\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0019\"\u0014\u0010\u001f\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001b\"\u0014\u0010 \u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u0019\"\u0014\u0010!\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\u0019\"\u0014\u0010\"\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u0019\"\u0014\u0010#\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010\u0019\"\u0014\u0010$\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010\u0019\"\u0014\u0010%\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010\u0019\"}\u00100\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"}\u00104\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b4\u00101\u001a\u0004\b5\u00103\"}\u00106\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b6\u00101\u001a\u0004\b7\u00103\"}\u00108\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b8\u00101\u001a\u0004\b9\u00103\"}\u0010:\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b:\u00101\u001a\u0004\b;\u00103\"}\u0010<\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b<\u00101\u001a\u0004\b=\u00103\"}\u0010>\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b>\u00101\u001a\u0004\b?\u00103\"}\u0010@\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b@\u00101\u001a\u0004\bA\u00103\"}\u0010B\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0'¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(.\u0012#\u0012!\u0012\u0013\u0012\u00110(¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0&j\u0002`-0&j\u0002`/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bB\u00101\u001a\u0004\bC\u00103¨\u0006D"}, d2 = {"Lcom/google/protobuf/Timestamp;", "t", "", "seconds", "nanos", "plus", "(Lcom/google/protobuf/Timestamp;JJ)Lcom/google/protobuf/Timestamp;", "(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;", "minus", "", "unit", "j$/time/temporal/ChronoUnit", "convertUnit", "(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;", "", "", "isTimestampInBounds", "(JI)Z", "microseconds", "isMicrosecondsInTimestampBounds", "(J)Z", "milliseconds", "isMillisecondsInTimestampBounds", "isSecondsInTimestampBounds", "L_NANOS_PER_SECOND", "J", "I_NANOS_PER_SECOND", "I", "L_MICROS_PER_SECOND", "I_MICROS_PER_SECOND", "L_MILLIS_PER_SECOND", "I_MILLIS_PER_SECOND", "TIMESTAMP_MIN_SECONDS", "TIMESTAMP_MAX_SECONDS", "TIMESTAMP_MIN_MILLISECONDS", "TIMESTAMP_MAX_MILLISECONDS", "TIMESTAMP_MIN_MICROSECONDS", "TIMESTAMP_MAX_MICROSECONDS", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "evaluateTimestampAdd", "Lkotlin/jvm/functions/Function1;", "getEvaluateTimestampAdd", "()Lkotlin/jvm/functions/Function1;", "evaluateTimestampSub", "getEvaluateTimestampSub", "evaluateTimestampTrunc", "getEvaluateTimestampTrunc", "evaluateTimestampToUnixMicros", "getEvaluateTimestampToUnixMicros", "evaluateTimestampToUnixMillis", "getEvaluateTimestampToUnixMillis", "evaluateTimestampToUnixSeconds", "getEvaluateTimestampToUnixSeconds", "evaluateUnixMicrosToTimestamp", "getEvaluateUnixMicrosToTimestamp", "evaluateUnixMillisToTimestamp", "getEvaluateUnixMillisToTimestamp", "evaluateUnixSecondsToTimestamp", "getEvaluateUnixSecondsToTimestamp", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TimestampKt {
    private static final int I_MICROS_PER_SECOND = 1000000;
    private static final int I_MILLIS_PER_SECOND = 1000;
    private static final int I_NANOS_PER_SECOND = 1000000000;
    private static final long L_MICROS_PER_SECOND = 1000000;
    private static final long L_MILLIS_PER_SECOND = 1000;
    private static final long L_NANOS_PER_SECOND = 1000000000;
    private static final long TIMESTAMP_MAX_MICROSECONDS = 253402300799999999L;
    private static final long TIMESTAMP_MAX_MILLISECONDS = 253402300799999L;
    private static final long TIMESTAMP_MAX_SECONDS = 253402300799L;
    private static final long TIMESTAMP_MIN_MICROSECONDS = -62135596800000000L;
    private static final long TIMESTAMP_MIN_MILLISECONDS = -62135596800000L;
    private static final long TIMESTAMP_MIN_SECONDS = -62135596800L;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampToUnixMicros;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampToUnixMillis;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampToUnixSeconds;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateUnixMicrosToTimestamp;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateUnixMillisToTimestamp;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateUnixSecondsToTimestamp;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampAdd = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$ternaryTimestampFunction$1
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 3) {
                throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function13 = params.get(2);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$ternaryTimestampFunction$1.1
                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                /* JADX WARN: Removed duplicated region for block: B:105:0x0280 A[Catch: Exception -> 0x02c5, TryCatch #3 {Exception -> 0x02c5, blocks: (B:29:0x00b4, B:113:0x02be, B:54:0x010c, B:111:0x02aa, B:110:0x02a0, B:73:0x0185, B:76:0x019d, B:77:0x01a9, B:108:0x028e, B:79:0x01b6, B:82:0x01c8, B:103:0x0270, B:105:0x0280, B:106:0x0286, B:83:0x01e0, B:86:0x01f2, B:87:0x01fe, B:90:0x020f, B:91:0x021b, B:94:0x022c, B:95:0x023f, B:98:0x0250, B:99:0x0255, B:102:0x0266, B:112:0x02ae), top: B:128:0x00a5 }] */
                /* JADX WARN: Removed duplicated region for block: B:106:0x0286 A[Catch: Exception -> 0x02c5, TryCatch #3 {Exception -> 0x02c5, blocks: (B:29:0x00b4, B:113:0x02be, B:54:0x010c, B:111:0x02aa, B:110:0x02a0, B:73:0x0185, B:76:0x019d, B:77:0x01a9, B:108:0x028e, B:79:0x01b6, B:82:0x01c8, B:103:0x0270, B:105:0x0280, B:106:0x0286, B:83:0x01e0, B:86:0x01f2, B:87:0x01fe, B:90:0x020f, B:91:0x021b, B:94:0x022c, B:95:0x023f, B:98:0x0250, B:99:0x0255, B:102:0x0266, B:112:0x02ae), top: B:128:0x00a5 }] */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final EvaluateResult invoke(final MutableDocument input) {
                    Function0<EvaluateResult> function0;
                    Function0<EvaluateResult> function02;
                    Function0<EvaluateResult> function03;
                    Timestamp t;
                    Value.ValueTypeCase valueTypeCase;
                    Long n;
                    Timestamp result;
                    EvaluateResult evaluateResultTimestamp;
                    Intrinsics.checkNotNullParameter(input, "input");
                    final Function1 function14 = function1;
                    final Function1 function15 = function12;
                    final Function1 function16 = function13;
                    try {
                        Function0<EvaluateResult> function04 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.1.1.1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function14.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function05 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.1.1.2
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function15.invoke(input);
                            }
                        };
                        function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.1.1.3
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function16.invoke(input);
                            }
                        };
                        function02 = function05;
                        function03 = function04;
                    } catch (Exception e) {
                    }
                    if (function03.invoke().getIsError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    Value v1 = function03.invoke().getValue();
                    if (function02.invoke().getIsError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    Value v2 = function02.invoke().getValue();
                    if (function0.invoke().getIsError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    Value v3 = function0.invoke().getValue();
                    Value.ValueTypeCase valueTypeCase2 = v1 != null ? v1.getValueTypeCase() : null;
                    try {
                        switch (valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()]) {
                            case -1:
                            case 1:
                                t = null;
                                break;
                            case 0:
                            case 2:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 3:
                                t = v1.getTimestampValue();
                                break;
                        }
                        valueTypeCase = v2 != null ? v2.getValueTypeCase() : null;
                    } catch (Exception e2) {
                    }
                    if ((valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) != 4) {
                        return EvaluateResultError.INSTANCE;
                    }
                    String u = v2.getStringValue();
                    Intrinsics.checkNotNullExpressionValue(u, "getStringValue(...)");
                    Value.ValueTypeCase valueTypeCase3 = v3 != null ? v3.getValueTypeCase() : null;
                    switch (valueTypeCase3 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()] : -1) {
                        case -1:
                        case 1:
                            n = null;
                            break;
                        case 5:
                            n = Long.valueOf(v3.getIntegerValue());
                            break;
                        default:
                            return EvaluateResultError.INSTANCE;
                    }
                    if (t == null || n == null) {
                        return EvaluateResult.INSTANCE.getNULL();
                    }
                    long n2 = n.longValue();
                    Timestamp t2 = t;
                    if (Build.VERSION.SDK_INT < 26) {
                        switch (u.hashCode()) {
                            case -1074026988:
                                if (u.equals("minute")) {
                                    result = TimestampKt.plus(t2, LongMath.checkedMultiply(n2, 60L));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                        evaluateResultTimestamp = EvaluateResult.INSTANCE.timestamp(result);
                                    }
                                }
                                break;
                            case -906279820:
                                if (!u.equals("second")) {
                                    break;
                                } else {
                                    result = TimestampKt.plus(t2, n2);
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                            case -368353224:
                                if (!u.equals("microsecond")) {
                                    break;
                                } else {
                                    result = TimestampKt.plus(t2, n2 / 1000000, ((long) 1000) * (n2 % 1000000));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                            case 99228:
                                if (!u.equals("day")) {
                                    break;
                                } else {
                                    result = TimestampKt.plus(t2, LongMath.checkedMultiply(n2, 86400L));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                            case 3208676:
                                if (!u.equals("hour")) {
                                    break;
                                } else {
                                    result = TimestampKt.plus(t2, LongMath.checkedMultiply(n2, 3600L));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                            case 1942410881:
                                if (!u.equals("millisecond")) {
                                    break;
                                } else {
                                    result = TimestampKt.plus(t2, n2 / 1000, ((long) 1000000) * (n2 % 1000));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                    Instant result2 = Instant.ofEpochSecond(t2.getSeconds(), t2.getNanos()).plus(n2, (TemporalUnit) TimestampKt.convertUnit(u));
                    if (!TimestampKt.isTimestampInBounds(result2.getEpochSecond(), result2.getNano())) {
                        return EvaluateResultError.INSTANCE;
                    }
                    EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                    try {
                        long epochSecond = result2.getEpochSecond();
                        int $i$f$catch = result2.getNano();
                        evaluateResultTimestamp = companion.timestamp(epochSecond, $i$f$catch);
                    } catch (Exception e3) {
                    }
                    return evaluateResultTimestamp;
                    return EvaluateResultError.INSTANCE;
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampSub = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$ternaryTimestampFunction$2
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 3) {
                throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function13 = params.get(2);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$ternaryTimestampFunction$2.1
                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                /* JADX WARN: Removed duplicated region for block: B:105:0x0280 A[Catch: Exception -> 0x02c5, TryCatch #3 {Exception -> 0x02c5, blocks: (B:29:0x00b4, B:113:0x02be, B:54:0x010c, B:111:0x02aa, B:110:0x02a0, B:73:0x0185, B:76:0x019d, B:77:0x01a9, B:108:0x028e, B:79:0x01b6, B:82:0x01c8, B:103:0x0270, B:105:0x0280, B:106:0x0286, B:83:0x01e0, B:86:0x01f2, B:87:0x01fe, B:90:0x020f, B:91:0x021b, B:94:0x022c, B:95:0x023f, B:98:0x0250, B:99:0x0255, B:102:0x0266, B:112:0x02ae), top: B:128:0x00a5 }] */
                /* JADX WARN: Removed duplicated region for block: B:106:0x0286 A[Catch: Exception -> 0x02c5, TryCatch #3 {Exception -> 0x02c5, blocks: (B:29:0x00b4, B:113:0x02be, B:54:0x010c, B:111:0x02aa, B:110:0x02a0, B:73:0x0185, B:76:0x019d, B:77:0x01a9, B:108:0x028e, B:79:0x01b6, B:82:0x01c8, B:103:0x0270, B:105:0x0280, B:106:0x0286, B:83:0x01e0, B:86:0x01f2, B:87:0x01fe, B:90:0x020f, B:91:0x021b, B:94:0x022c, B:95:0x023f, B:98:0x0250, B:99:0x0255, B:102:0x0266, B:112:0x02ae), top: B:128:0x00a5 }] */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final EvaluateResult invoke(final MutableDocument input) {
                    Function0<EvaluateResult> function0;
                    Function0<EvaluateResult> function02;
                    Function0<EvaluateResult> function03;
                    Timestamp t;
                    Value.ValueTypeCase valueTypeCase;
                    Long n;
                    Timestamp result;
                    EvaluateResult evaluateResultTimestamp;
                    Intrinsics.checkNotNullParameter(input, "input");
                    final Function1 function14 = function1;
                    final Function1 function15 = function12;
                    final Function1 function16 = function13;
                    try {
                        Function0<EvaluateResult> function04 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.2.1.1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function14.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function05 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.2.1.2
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function15.invoke(input);
                            }
                        };
                        function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.2.1.3
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function16.invoke(input);
                            }
                        };
                        function02 = function05;
                        function03 = function04;
                    } catch (Exception e) {
                    }
                    if (function03.invoke().getIsError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    Value v1 = function03.invoke().getValue();
                    if (function02.invoke().getIsError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    Value v2 = function02.invoke().getValue();
                    if (function0.invoke().getIsError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    Value v3 = function0.invoke().getValue();
                    Value.ValueTypeCase valueTypeCase2 = v1 != null ? v1.getValueTypeCase() : null;
                    try {
                        switch (valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()]) {
                            case -1:
                            case 1:
                                t = null;
                                break;
                            case 0:
                            case 2:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 3:
                                t = v1.getTimestampValue();
                                break;
                        }
                        valueTypeCase = v2 != null ? v2.getValueTypeCase() : null;
                    } catch (Exception e2) {
                    }
                    if ((valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) != 4) {
                        return EvaluateResultError.INSTANCE;
                    }
                    String u = v2.getStringValue();
                    Intrinsics.checkNotNullExpressionValue(u, "getStringValue(...)");
                    Value.ValueTypeCase valueTypeCase3 = v3 != null ? v3.getValueTypeCase() : null;
                    switch (valueTypeCase3 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()] : -1) {
                        case -1:
                        case 1:
                            n = null;
                            break;
                        case 5:
                            n = Long.valueOf(v3.getIntegerValue());
                            break;
                        default:
                            return EvaluateResultError.INSTANCE;
                    }
                    if (t == null || n == null) {
                        return EvaluateResult.INSTANCE.getNULL();
                    }
                    long n2 = n.longValue();
                    Timestamp t2 = t;
                    if (Build.VERSION.SDK_INT < 26) {
                        switch (u.hashCode()) {
                            case -1074026988:
                                if (u.equals("minute")) {
                                    result = TimestampKt.minus(t2, LongMath.checkedMultiply(n2, 60L));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                        evaluateResultTimestamp = EvaluateResult.INSTANCE.timestamp(result);
                                    }
                                }
                                break;
                            case -906279820:
                                if (!u.equals("second")) {
                                    break;
                                } else {
                                    result = TimestampKt.minus(t2, n2);
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                            case -368353224:
                                if (!u.equals("microsecond")) {
                                    break;
                                } else {
                                    result = TimestampKt.minus(t2, n2 / 1000000, ((long) 1000) * (n2 % 1000000));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                            case 99228:
                                if (!u.equals("day")) {
                                    break;
                                } else {
                                    result = TimestampKt.minus(t2, LongMath.checkedMultiply(n2, 86400L));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                            case 3208676:
                                if (!u.equals("hour")) {
                                    break;
                                } else {
                                    result = TimestampKt.minus(t2, LongMath.checkedMultiply(n2, 3600L));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                            case 1942410881:
                                if (!u.equals("millisecond")) {
                                    break;
                                } else {
                                    result = TimestampKt.minus(t2, n2 / 1000, ((long) 1000000) * (n2 % 1000));
                                    if (!TimestampKt.isTimestampInBounds(result.getSeconds(), result.getNanos())) {
                                    }
                                }
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                    Instant result2 = Instant.ofEpochSecond(t2.getSeconds(), t2.getNanos()).minus(n2, (TemporalUnit) TimestampKt.convertUnit(u));
                    if (!TimestampKt.isTimestampInBounds(result2.getEpochSecond(), result2.getNano())) {
                        return EvaluateResultError.INSTANCE;
                    }
                    EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                    try {
                        long epochSecond = result2.getEpochSecond();
                        int $i$f$catch = result2.getNano();
                        evaluateResultTimestamp = companion.timestamp(epochSecond, $i$f$catch);
                    } catch (Exception e3) {
                    }
                    return evaluateResultTimestamp;
                    return EvaluateResultError.INSTANCE;
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampTrunc = UtilsKt.getNotImplemented();

    public static final Timestamp plus(Timestamp t, long seconds, long nanos) {
        Intrinsics.checkNotNullParameter(t, "t");
        if (nanos == 0) {
            return plus(t, seconds);
        }
        long nanoSum = ((long) t.getNanos()) + nanos;
        long secondsSum = LongMath.checkedAdd(LongMath.checkedAdd(t.getSeconds(), seconds), nanoSum / 1000000000);
        return Values.timestamp(secondsSum, (int) (nanoSum % ((long) 1000000000)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Timestamp plus(Timestamp t, long seconds) {
        return seconds == 0 ? t : Values.timestamp(LongMath.checkedAdd(t.getSeconds(), seconds), t.getNanos());
    }

    public static final Timestamp minus(Timestamp t, long seconds, long nanos) {
        Intrinsics.checkNotNullParameter(t, "t");
        if (nanos == 0) {
            return minus(t, seconds);
        }
        long nanoSum = ((long) t.getNanos()) - nanos;
        long secondsSum = LongMath.checkedSubtract(t.getSeconds(), LongMath.checkedSubtract(seconds, nanoSum / 1000000000));
        return Values.timestamp(secondsSum, (int) (nanoSum % ((long) 1000000000)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Timestamp minus(Timestamp t, long seconds) {
        return seconds == 0 ? t : Values.timestamp(LongMath.checkedSubtract(t.getSeconds(), seconds), t.getNanos());
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final ChronoUnit convertUnit(String unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        switch (unit.hashCode()) {
            case -1074026988:
                if (unit.equals("minute")) {
                    return ChronoUnit.MINUTES;
                }
                break;
            case -906279820:
                if (unit.equals("second")) {
                    return ChronoUnit.SECONDS;
                }
                break;
            case -368353224:
                if (unit.equals("microsecond")) {
                    return ChronoUnit.MICROS;
                }
                break;
            case 99228:
                if (unit.equals("day")) {
                    return ChronoUnit.DAYS;
                }
                break;
            case 3208676:
                if (unit.equals("hour")) {
                    return ChronoUnit.HOURS;
                }
                break;
            case 1942410881:
                if (unit.equals("millisecond")) {
                    return ChronoUnit.MILLIS;
                }
                break;
        }
        throw new IllegalArgumentException("Unexpected timestamp unit: " + unit);
    }

    public static final boolean isTimestampInBounds(long seconds, int nanos) {
        return seconds >= TIMESTAMP_MIN_SECONDS && seconds <= TIMESTAMP_MAX_SECONDS && nanos >= 0 && ((long) nanos) < 1000000000;
    }

    static {
        final Value.ValueTypeCase valueTypeCase$iv$iv = Value.ValueTypeCase.TIMESTAMP_VALUE;
        evaluateTimestampToUnixMicros = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultError evaluateResultErrorM8438long;
                        long micros;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase2 != valueTypeCase) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    Timestamp t = v.getTimestampValue();
                                    if (TimestampKt.isTimestampInBounds(t.getSeconds(), t.getNanos())) {
                                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                        if (t.getSeconds() < -9223372036854L) {
                                            long micros2 = LongMath.checkedMultiply(t.getSeconds() + 1, 1000000L);
                                            long adjustment = (((long) t.getNanos()) / 1000) - 1000000;
                                            micros = LongMath.checkedAdd(micros2, adjustment);
                                        } else {
                                            long micros3 = LongMath.checkedMultiply(t.getSeconds(), 1000000L);
                                            micros = LongMath.checkedAdd(micros3, ((long) t.getNanos()) / 1000);
                                        }
                                        evaluateResultErrorM8438long = companion.m8438long(micros);
                                    } else {
                                        evaluateResultErrorM8438long = EvaluateResultError.INSTANCE;
                                    }
                                } catch (Exception e) {
                                    evaluateResultErrorM8438long = EvaluateResultError.INSTANCE;
                                }
                                return evaluateResultErrorM8438long;
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase$iv$iv2 = Value.ValueTypeCase.TIMESTAMP_VALUE;
        evaluateTimestampToUnixMillis = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultError evaluateResultErrorM8438long;
                        long millis;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase2 != valueTypeCase) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    Timestamp t = v.getTimestampValue();
                                    if (TimestampKt.isTimestampInBounds(t.getSeconds(), t.getNanos())) {
                                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                        if (t.getSeconds() >= 0 || t.getNanos() <= 0) {
                                            long millis2 = LongMath.checkedMultiply(t.getSeconds(), 1000L);
                                            millis = LongMath.checkedAdd(millis2, ((long) t.getNanos()) / 1000000);
                                        } else {
                                            long millis3 = LongMath.checkedMultiply(t.getSeconds() + 1, 1000L);
                                            long adjustment = (((long) t.getNanos()) / 1000000) - 1000;
                                            millis = LongMath.checkedAdd(millis3, adjustment);
                                        }
                                        evaluateResultErrorM8438long = companion.m8438long(millis);
                                    } else {
                                        evaluateResultErrorM8438long = EvaluateResultError.INSTANCE;
                                    }
                                } catch (Exception e) {
                                    evaluateResultErrorM8438long = EvaluateResultError.INSTANCE;
                                }
                                return evaluateResultErrorM8438long;
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase$iv$iv3 = Value.ValueTypeCase.TIMESTAMP_VALUE;
        evaluateTimestampToUnixSeconds = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv3;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultError evaluateResultErrorM8438long;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i != -1) {
                                boolean z = true;
                                if (i != 1) {
                                    if (valueTypeCase2 != valueTypeCase) {
                                        return EvaluateResultError.INSTANCE;
                                    }
                                    try {
                                        Timestamp t = v.getTimestampValue();
                                        if (TimestampKt.isTimestampInBounds(t.getSeconds(), t.getNanos())) {
                                            long nanos = t.getNanos();
                                            if (0 > nanos || nanos >= C.NANOS_PER_SECOND) {
                                                z = false;
                                            }
                                            evaluateResultErrorM8438long = !z ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8438long(t.getSeconds());
                                        } else {
                                            evaluateResultErrorM8438long = EvaluateResultError.INSTANCE;
                                        }
                                    } catch (Exception e) {
                                        evaluateResultErrorM8438long = EvaluateResultError.INSTANCE;
                                    }
                                    return evaluateResultErrorM8438long;
                                }
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase$iv$iv4 = Value.ValueTypeCase.INTEGER_VALUE;
        evaluateUnixMicrosToTimestamp = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv4;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultErrorTimestamp;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                evaluateResultValue = EvaluateResult.INSTANCE.getNULL();
                            } else if (valueTypeCase2 == valueTypeCase) {
                                try {
                                    long micros = v.getIntegerValue();
                                    evaluateResultErrorTimestamp = !TimestampKt.isMicrosecondsInTimestampBounds(micros) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.timestamp(Math.floorDiv(micros, 1000000L), TimestampKt$special$$inlined$unaryLongFunction$1$1$$ExternalSyntheticBackport0.m(micros, 1000000) * 1000);
                                } catch (Exception e) {
                                    evaluateResultErrorTimestamp = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultErrorTimestamp;
                            } else {
                                evaluateResultValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValue;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase$iv$iv5 = Value.ValueTypeCase.INTEGER_VALUE;
        evaluateUnixMillisToTimestamp = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv5;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultError evaluateResultErrorTimestamp;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase2 != valueTypeCase) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    long millis = v.getIntegerValue();
                                    evaluateResultErrorTimestamp = !TimestampKt.isMillisecondsInTimestampBounds(millis) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.timestamp(Math.floorDiv(millis, 1000L), TimestampKt$special$$inlined$unaryLongFunction$1$1$$ExternalSyntheticBackport0.m(millis, 1000) * 1000000);
                                } catch (Exception e) {
                                    evaluateResultErrorTimestamp = EvaluateResultError.INSTANCE;
                                }
                                return evaluateResultErrorTimestamp;
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase$iv$iv6 = Value.ValueTypeCase.INTEGER_VALUE;
        evaluateUnixSecondsToTimestamp = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv6;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultErrorTimestamp;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                evaluateResultValue = EvaluateResult.INSTANCE.getNULL();
                            } else if (valueTypeCase2 == valueTypeCase) {
                                try {
                                    long seconds = v.getIntegerValue();
                                    evaluateResultErrorTimestamp = !TimestampKt.isSecondsInTimestampBounds(seconds) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.timestamp(seconds, 0);
                                } catch (Exception e) {
                                    evaluateResultErrorTimestamp = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultErrorTimestamp;
                            } else {
                                evaluateResultValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValue;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampAdd() {
        return evaluateTimestampAdd;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampSub() {
        return evaluateTimestampSub;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampTrunc() {
        return evaluateTimestampTrunc;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampToUnixMicros() {
        return evaluateTimestampToUnixMicros;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampToUnixMillis() {
        return evaluateTimestampToUnixMillis;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampToUnixSeconds() {
        return evaluateTimestampToUnixSeconds;
    }

    public static final boolean isMicrosecondsInTimestampBounds(long microseconds) {
        return microseconds >= TIMESTAMP_MIN_MICROSECONDS && microseconds <= TIMESTAMP_MAX_MICROSECONDS;
    }

    public static final boolean isMillisecondsInTimestampBounds(long milliseconds) {
        return milliseconds >= TIMESTAMP_MIN_MILLISECONDS && milliseconds <= 253402300799999L;
    }

    public static final boolean isSecondsInTimestampBounds(long seconds) {
        return seconds >= TIMESTAMP_MIN_SECONDS && seconds <= TIMESTAMP_MAX_SECONDS;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateUnixMicrosToTimestamp() {
        return evaluateUnixMicrosToTimestamp;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateUnixMillisToTimestamp() {
        return evaluateUnixMillisToTimestamp;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateUnixSecondsToTimestamp() {
        return evaluateUnixSecondsToTimestamp;
    }
}
