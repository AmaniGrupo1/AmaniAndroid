package com.google.firebase.firestore.pipeline.evaluation;

import androidx.autofill.HintConstants;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.LogicalKt;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicFunction$2;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Logical.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\f\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\f\"w\u0010\u0017\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\f\"w\u0010\u0019\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\f\"w\u0010\u001b\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\f\"w\u0010\u001d\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\f¨\u0006\u001f"}, d2 = {"evaluateAnd", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateAnd", "()Lkotlin/jvm/functions/Function1;", "evaluateOr", "getEvaluateOr", "evaluateXor", "getEvaluateXor", "evaluateCond", "getEvaluateCond", "evaluateLogicalMaximum", "getEvaluateLogicalMaximum", "evaluateLogicalMinimum", "getEvaluateLogicalMinimum", "evaluateIsNaN", "getEvaluateIsNaN", "evaluateIsNotNaN", "getEvaluateIsNotNaN", "evaluateIsNull", "getEvaluateIsNull", "evaluateIsNotNull", "getEvaluateIsNotNull", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LogicalKt {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateIsNaN;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateIsNotNaN;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateIsNotNull;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateIsNull;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateAnd = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return LogicalKt.evaluateAnd$lambda$1((List) obj);
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateOr = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return LogicalKt.evaluateOr$lambda$3((List) obj);
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateXor = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$variadicBooleanFunction$1
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$variadicBooleanFunction$1.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(MutableDocument input) {
                    Intrinsics.checkNotNullParameter(input, "input");
                    boolean[] values = new boolean[params.size()];
                    Iterable $this$forEachIndexed$iv = params;
                    int index$iv = 0;
                    int i = 0;
                    for (Object item$iv : $this$forEachIndexed$iv) {
                        int index$iv2 = i + 1;
                        if (i < 0) {
                            CollectionsKt.throwIndexOverflow();
                        }
                        Function1 param = (Function1) item$iv;
                        EvaluateResult result = (EvaluateResult) param.invoke(input);
                        if (result.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = result.getValue();
                        Value.ValueTypeCase valueTypeCase = v != null ? v.getValueTypeCase() : null;
                        switch (valueTypeCase == null ? -1 : UtilsKt$variadicFunction$2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case -1:
                            case 1:
                                index$iv = 1;
                                break;
                            case 0:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 2:
                                values[i] = v.getBooleanValue();
                                break;
                        }
                        i = index$iv2;
                    }
                    if (index$iv != 0) {
                        return EvaluateResult.INSTANCE.getNULL();
                    }
                    try {
                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                        Boolean boolValueOf = false;
                        for (boolean element$iv : values) {
                            boolean p0 = boolValueOf.booleanValue();
                            boolValueOf = Boolean.valueOf(p0 ^ element$iv);
                        }
                        return companion.m8435boolean(boolValueOf.booleanValue());
                    } catch (Exception e) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateCond = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$ternaryLazyFunction$1
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 3) {
                throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function13 = params.get(2);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$ternaryLazyFunction$1.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(final MutableDocument input) {
                    EvaluateResult evaluateResultInvoke;
                    Intrinsics.checkNotNullParameter(input, "input");
                    final Function1 function14 = function1;
                    final Function1 function15 = function12;
                    final Function1 function16 = function13;
                    try {
                        Function0<EvaluateResult> function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$.inlined.ternaryLazyFunction.1.1.1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function14.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function02 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$.inlined.ternaryLazyFunction.1.1.2
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function15.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function03 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$.inlined.ternaryLazyFunction.1.1.3
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function16.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function04 = function02;
                        EvaluateResult r1 = function0.invoke();
                        if (r1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v1 = r1.getValue();
                        Value.ValueTypeCase valueTypeCase = v1 != null ? v1.getValueTypeCase() : null;
                        switch (valueTypeCase == null ? -1 : LogicalKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case -1:
                            case 1:
                                evaluateResultInvoke = function03.invoke();
                                break;
                            case 0:
                            default:
                                evaluateResultInvoke = EvaluateResultError.INSTANCE;
                                break;
                            case 2:
                                evaluateResultInvoke = v1.getBooleanValue() ? function04.invoke() : function03.invoke();
                                break;
                        }
                        return evaluateResultInvoke;
                    } catch (Exception e) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLogicalMaximum = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$variadicResultFunction$1
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$variadicResultFunction$1.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(MutableDocument input) {
                    Intrinsics.checkNotNullParameter(input, "input");
                    Iterable $this$map$iv = params;
                    Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                    for (Object item$iv$iv : $this$map$iv) {
                        Function1 it = (Function1) item$iv$iv;
                        destination$iv$iv.add((EvaluateResult) it.invoke(input));
                    }
                    List<EvaluateResult> results = (List) destination$iv$iv;
                    try {
                        if (results.size() < 2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Function2 maximum = new Function2<Value, Value, Value>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$evaluateLogicalMaximum$1$maximum$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Value invoke(Value a, Value b) {
                                int result;
                                Intrinsics.checkNotNullParameter(b, "b");
                                return (a != null && ((result = ((Number) ((Function2) Values.Enterprise.INSTANCE.getCompare$com_google_firebase_firebase_firestore()).invoke(a, b)).intValue()) == 0 || result > 0)) ? a : b;
                            }
                        };
                        Value maxResult = null;
                        for (EvaluateResult param : results) {
                            if (param.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = param.getValue();
                            Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : LogicalKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    break;
                                case 0:
                                default:
                                    maxResult = maximum.invoke(maxResult, value);
                                    break;
                            }
                        }
                        return maxResult == null ? EvaluateResult.INSTANCE.getNULL() : EvaluateResult.INSTANCE.value(maxResult);
                    } catch (Exception e) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLogicalMinimum = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$variadicResultFunction$2
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$variadicResultFunction$2.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(MutableDocument input) {
                    Intrinsics.checkNotNullParameter(input, "input");
                    Iterable $this$map$iv = params;
                    Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                    for (Object item$iv$iv : $this$map$iv) {
                        Function1 it = (Function1) item$iv$iv;
                        destination$iv$iv.add((EvaluateResult) it.invoke(input));
                    }
                    List<EvaluateResult> results = (List) destination$iv$iv;
                    try {
                        if (results.size() < 2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Function2 minimum = new Function2<Value, Value, Value>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$evaluateLogicalMinimum$1$minimum$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Value invoke(Value a, Value b) {
                                int result;
                                Intrinsics.checkNotNullParameter(b, "b");
                                return (a != null && ((result = ((Number) ((Function2) Values.Enterprise.INSTANCE.getCompare$com_google_firebase_firebase_firestore()).invoke(a, b)).intValue()) == 0 || result <= 0)) ? a : b;
                            }
                        };
                        Value minResult = null;
                        for (EvaluateResult param : results) {
                            if (param.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = param.getValue();
                            Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : LogicalKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    break;
                                case 0:
                                default:
                                    minResult = minimum.invoke(minResult, value);
                                    break;
                            }
                        }
                        return minResult == null ? EvaluateResult.INSTANCE.getNULL() : EvaluateResult.INSTANCE.value(minResult);
                    } catch (Exception e) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };

    /* JADX INFO: compiled from: Logical.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Value.ValueTypeCase.values().length];
            try {
                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Value.ValueTypeCase.BOOLEAN_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        final Value.ValueTypeCase valueTypeCase1$iv$iv = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateIsNaN = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$arithmetic$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$arithmetic$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = r.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase3 == valueTypeCase) {
                            try {
                                v.getIntegerValue();
                                return EvaluateResult.INSTANCE.getFALSE();
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            return EvaluateResult.INSTANCE.m8435boolean(Double.isNaN(v.getDoubleValue()));
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv2 = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv2 = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateIsNotNaN = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$arithmetic$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv2;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$special$$inlined$arithmetic$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = r.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i != -1) {
                            boolean z = true;
                            if (i != 1) {
                                if (valueTypeCase3 == valueTypeCase) {
                                    try {
                                        v.getIntegerValue();
                                        return EvaluateResult.INSTANCE.getTRUE();
                                    } catch (Exception e) {
                                        return EvaluateResultError.INSTANCE;
                                    }
                                }
                                if (valueTypeCase3 != valueTypeCase2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    double v2 = v.getDoubleValue();
                                    EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                    if (Double.isNaN(v2)) {
                                        z = false;
                                    }
                                    return companion.m8435boolean(z);
                                } catch (Exception e2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                            }
                        }
                        return EvaluateResult.INSTANCE.getNULL();
                    }
                };
            }
        };
        evaluateIsNull = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LogicalKt.evaluateIsNull$lambda$13((List) obj);
            }
        };
        evaluateIsNotNull = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LogicalKt.evaluateIsNotNull$lambda$15((List) obj);
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateAnd() {
        return evaluateAnd;
    }

    static final Function1 evaluateAnd$lambda$1(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LogicalKt.evaluateAnd$lambda$1$lambda$0(params, (MutableDocument) obj);
            }
        };
    }

    static final EvaluateResult evaluateAnd$lambda$1$lambda$0(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> list, MutableDocument input) {
        boolean isNull = false;
        Iterator<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> it = list.iterator();
        while (it.hasNext()) {
            EvaluateResult result = it.next().invoke(input);
            if (!result.getIsError()) {
                Value value = result.getValue();
                Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                switch (valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                    case -1:
                    case 1:
                        isNull = true;
                        break;
                    case 0:
                    default:
                        return EvaluateResultError.INSTANCE;
                    case 2:
                        if (!value.getBooleanValue()) {
                            return EvaluateResult.INSTANCE.getFALSE();
                        }
                        break;
                        break;
                }
            } else {
                return EvaluateResultError.INSTANCE;
            }
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        return isNull ? companion.getNULL() : companion.getTRUE();
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateOr() {
        return evaluateOr;
    }

    static final Function1 evaluateOr$lambda$3(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LogicalKt.evaluateOr$lambda$3$lambda$2(params, (MutableDocument) obj);
            }
        };
    }

    static final EvaluateResult evaluateOr$lambda$3$lambda$2(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> list, MutableDocument input) {
        boolean isNull = false;
        Iterator<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> it = list.iterator();
        while (it.hasNext()) {
            EvaluateResult result = it.next().invoke(input);
            if (result.getIsError()) {
                return EvaluateResultError.INSTANCE;
            }
            Value value = result.getValue();
            Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
            switch (valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                case -1:
                case 1:
                    isNull = true;
                    break;
                case 0:
                default:
                    return EvaluateResultError.INSTANCE;
                case 2:
                    if (value.getBooleanValue()) {
                        return EvaluateResult.INSTANCE.getTRUE();
                    }
                    break;
            }
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        return isNull ? companion.getNULL() : companion.getFALSE();
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateXor() {
        return evaluateXor;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateCond() {
        return evaluateCond;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLogicalMaximum() {
        return evaluateLogicalMaximum;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLogicalMinimum() {
        return evaluateLogicalMinimum;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateIsNaN() {
        return evaluateIsNaN;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateIsNotNaN() {
        return evaluateIsNotNaN;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateIsNull() {
        return evaluateIsNull;
    }

    static final Function1 evaluateIsNull$lambda$13(List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        if (params.size() != 1) {
            throw Assert.fail("IsNull function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
        }
        final Function1 p = (Function1) params.get(0);
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LogicalKt.evaluateIsNull$lambda$13$lambda$12(p, (MutableDocument) obj);
            }
        };
    }

    static final EvaluateResult evaluateIsNull$lambda$13$lambda$12(Function1<? super MutableDocument, ? extends EvaluateResult> function1, MutableDocument input) {
        Value v = function1.invoke(input).getValue();
        return v == null ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8435boolean(v.hasNullValue());
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateIsNotNull() {
        return evaluateIsNotNull;
    }

    static final Function1 evaluateIsNotNull$lambda$15(List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        if (params.size() != 1) {
            throw Assert.fail("IsNotNull function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
        }
        final Function1 p = (Function1) params.get(0);
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.LogicalKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LogicalKt.evaluateIsNotNull$lambda$15$lambda$14(p, (MutableDocument) obj);
            }
        };
    }

    static final EvaluateResult evaluateIsNotNull$lambda$15$lambda$14(Function1<? super MutableDocument, ? extends EvaluateResult> function1, MutableDocument input) {
        Value v = function1.invoke(input).getValue();
        return v == null ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8435boolean(!v.hasNullValue());
    }
}
