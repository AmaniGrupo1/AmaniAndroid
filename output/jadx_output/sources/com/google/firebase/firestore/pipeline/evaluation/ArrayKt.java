package com.google.firebase.firestore.pipeline.evaluation;

import androidx.autofill.HintConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$7;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.ArrayValue;
import com.google.firestore.v1.Value;
import com.google.protobuf.ByteString;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Array.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001e\u0010\u001d\u001a\u00020\u00072\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00022\u0006\u0010 \u001a\u00020!H\u0002\u001a\u001e\u0010\"\u001a\u00020\u00072\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00022\u0006\u0010 \u001a\u00020#H\u0002\u001a\u001c\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u00020\u0002H\u0000\u001a\u001e\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u001f2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0002H\u0002\u001a\u001e\u0010.\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u001f2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0002H\u0002\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\f\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\f\"w\u0010\u0017\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\f\"w\u0010\u0019\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\f\"w\u0010\u001b\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\f\"w\u0010$\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\f\"w\u0010&\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\f¨\u0006/"}, d2 = {"evaluateArray", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateArray", "()Lkotlin/jvm/functions/Function1;", "evaluateEqAny", "getEvaluateEqAny", "evaluateNotEqAny", "getEvaluateNotEqAny", "evaluateArrayContains", "getEvaluateArrayContains", "evaluateArrayContainsAny", "getEvaluateArrayContainsAny", "evaluateArrayContainsAll", "getEvaluateArrayContainsAll", "evaluateArrayLength", "getEvaluateArrayLength", "evaluateArrayReverse", "getEvaluateArrayReverse", "evaluateJoin", "getEvaluateJoin", "joinStrings", "array", "Lcom/google/firestore/v1/Value;", TtmlNode.RUBY_DELIMITER, "", "joinBytes", "Lcom/google/protobuf/ByteString;", "evaluateArrayGet", "getEvaluateArrayGet", "evaluateArrayConcat", "getEvaluateArrayConcat", "arrayConcatImpl", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;", "arrays", "equalAny", Values.VECTOR_MAP_VECTORS_KEY, "list", "notEqualAny", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ArrayKt {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArray;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayConcat;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayContains;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayContainsAll;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayContainsAny;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayGet;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayLength;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayReverse;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateEqAny;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateJoin;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateNotEqAny;

    /* JADX INFO: compiled from: Array.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Value.ValueTypeCase.values().length];
            try {
                iArr[Value.ValueTypeCase.STRING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Value.ValueTypeCase.BYTES_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        final EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        evaluateArray = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$variadicNullableValueFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final EvaluateResult.Companion companion2 = companion;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$variadicNullableValueFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        Iterable $this$map$iv = params;
                        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                        for (Object item$iv$iv : $this$map$iv) {
                            Function1 it = (Function1) item$iv$iv;
                            destination$iv$iv.add((EvaluateResult) it.invoke(input));
                        }
                        Iterable results = (List) destination$iv$iv;
                        int i = 0;
                        try {
                            Iterable $this$map$iv2 = results;
                            Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv2, 10));
                            for (Object item$iv$iv2 : $this$map$iv2) {
                                EvaluateResult it2 = (EvaluateResult) item$iv$iv2;
                                int i2 = i;
                                Value value = it2.getValue();
                                if (value == null) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                destination$iv$iv2.add(value);
                                i = i2;
                            }
                            List p0 = (List) destination$iv$iv2;
                            return companion2.list(p0);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateEqAny = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryValueArrayFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryValueArrayFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value v12 = v1.getValue();
                            Value v22 = v2.getValue();
                            Value.ValueTypeCase valueTypeCase = v22 != null ? v22.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case 2:
                                    List<Value> valuesList = v22.getArrayValue().getValuesList();
                                    Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                    break;
                            }
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateNotEqAny = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryValueArrayFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryValueArrayFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value v12 = v1.getValue();
                            Value v22 = v2.getValue();
                            Value.ValueTypeCase valueTypeCase = v22 != null ? v22.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case 2:
                                    List<Value> valuesList = v22.getArrayValue().getValuesList();
                                    Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                    break;
                            }
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateArrayContains = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayValueFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayValueFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value v12 = v1.getValue();
                            Value v22 = v2.getValue();
                            Value.ValueTypeCase valueTypeCase = v12 != null ? v12.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case 2:
                                    List<Value> valuesList = v12.getArrayValue().getValuesList();
                                    Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                    break;
                            }
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateArrayContainsAny = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayArrayFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayArrayFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        List<Value> valuesList;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult p1 = (EvaluateResult) ((Function1) params.get(0)).invoke(input);
                        if (p1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v1 = p1.getValue();
                        boolean z = true;
                        EvaluateResult p2 = (EvaluateResult) ((Function1) params.get(1)).invoke(input);
                        if (p2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v2 = p2.getValue();
                        List<Value> valuesList2 = null;
                        Value.ValueTypeCase valueTypeCase = v1 != null ? v1.getValueTypeCase() : null;
                        switch (valueTypeCase == null ? -1 : UtilsKt$binaryFunction$7.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case -1:
                            case 1:
                                valuesList = null;
                                break;
                            case 0:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 2:
                                valuesList = v1.getArrayValue().getValuesList();
                                break;
                        }
                        Value.ValueTypeCase valueTypeCase2 = v2 != null ? v2.getValueTypeCase() : null;
                        switch (valueTypeCase2 != null ? UtilsKt$binaryFunction$7.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                break;
                            case 0:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 2:
                                valuesList2 = v2.getArrayValue().getValuesList();
                                break;
                        }
                        if (valuesList == null || valuesList2 == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        List<Value> list = valuesList2;
                        for (Value value : valuesList) {
                            for (Value search : list) {
                                boolean zEquals$com_google_firebase_firebase_firestore = Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(value, search);
                                if (zEquals$com_google_firebase_firebase_firestore) {
                                    return EvaluateResult.INSTANCE.getTRUE();
                                }
                                if (zEquals$com_google_firebase_firebase_firestore) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                z = true;
                            }
                        }
                        return EvaluateResult.INSTANCE.getFALSE();
                    }
                };
            }
        };
        evaluateArrayContainsAll = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayArrayFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayArrayFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        List<Value> valuesList;
                        boolean z;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult p1 = (EvaluateResult) ((Function1) params.get(0)).invoke(input);
                        if (p1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v1 = p1.getValue();
                        boolean z2 = true;
                        EvaluateResult p2 = (EvaluateResult) ((Function1) params.get(1)).invoke(input);
                        if (p2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v2 = p2.getValue();
                        List<Value> valuesList2 = null;
                        Value.ValueTypeCase valueTypeCase = v1 != null ? v1.getValueTypeCase() : null;
                        switch (valueTypeCase == null ? -1 : UtilsKt$binaryFunction$7.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case -1:
                            case 1:
                                valuesList = null;
                                break;
                            case 0:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 2:
                                valuesList = v1.getArrayValue().getValuesList();
                                break;
                        }
                        Value.ValueTypeCase valueTypeCase2 = v2 != null ? v2.getValueTypeCase() : null;
                        switch (valueTypeCase2 != null ? UtilsKt$binaryFunction$7.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                break;
                            case 0:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 2:
                                valuesList2 = v2.getArrayValue().getValuesList();
                                break;
                        }
                        if (valuesList == null || valuesList2 == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        List<Value> list = valuesList;
                        for (Value search : valuesList2) {
                            boolean found = false;
                            Iterator<Value> it = list.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Value value = it.next();
                                    boolean zEquals$com_google_firebase_firebase_firestore = Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(value, search);
                                    z = true;
                                    if (zEquals$com_google_firebase_firebase_firestore) {
                                        found = true;
                                    } else {
                                        if (zEquals$com_google_firebase_firebase_firestore) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        z2 = true;
                                    }
                                } else {
                                    z = z2;
                                }
                            }
                            if (!found) {
                                return EvaluateResult.INSTANCE.getFALSE();
                            }
                            z2 = z;
                        }
                        return EvaluateResult.INSTANCE.getTRUE();
                    }
                };
            }
        };
        evaluateArrayLength = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$unaryArrayFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$unaryArrayFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value v;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            v = r.getValue();
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        if (v == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        Value.ValueTypeCase valueTypeCase = v.getValueTypeCase();
                        switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case 2:
                                List<Value> valuesList = v.getArrayValue().getValuesList();
                                Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateArrayReverse = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$unaryArrayFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$unaryArrayFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value v;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            v = r.getValue();
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        if (v == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        Value.ValueTypeCase valueTypeCase = v.getValueTypeCase();
                        switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case 2:
                                List<Value> valuesList = v.getArrayValue().getValuesList();
                                Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateJoin = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateJoin$lambda$8((List) obj);
            }
        };
        evaluateArrayGet = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayGet$lambda$12((List) obj);
            }
        };
        evaluateArrayConcat = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayConcat$lambda$14((List) obj);
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArray() {
        return evaluateArray;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateEqAny() {
        return evaluateEqAny;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateNotEqAny() {
        return evaluateNotEqAny;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayContains() {
        return evaluateArrayContains;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayContainsAny() {
        return evaluateArrayContainsAny;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayContainsAll() {
        return evaluateArrayContainsAll;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayLength() {
        return evaluateArrayLength;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayReverse() {
        return evaluateArrayReverse;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateJoin() {
        return evaluateJoin;
    }

    static final Function1 evaluateJoin$lambda$8(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateJoin$lambda$8$lambda$7(params, (MutableDocument) obj);
            }
        };
    }

    static final EvaluateResult evaluateJoin$lambda$8$lambda$7(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        boolean z = false;
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        if (!(evaluateResult instanceof EvaluateResultError) && !(evaluateResult instanceof EvaluateResultUnset)) {
            if (Intrinsics.areEqual(evaluateResult, EvaluateResult.INSTANCE.getNULL())) {
                z = true;
            } else {
                Value value = evaluateResult.getValue();
                if ((value != null ? value.getValueTypeCase() : null) != Value.ValueTypeCase.ARRAY_VALUE) {
                    return EvaluateResultError.INSTANCE;
                }
            }
            EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
            if (!(evaluateResult2 instanceof EvaluateResultError) && !(evaluateResult2 instanceof EvaluateResultUnset)) {
                if (Intrinsics.areEqual(evaluateResult2, EvaluateResult.INSTANCE.getNULL())) {
                    return EvaluateResult.INSTANCE.getNULL();
                }
                Value value2 = evaluateResult2.getValue();
                Value.ValueTypeCase valueTypeCase = value2 != null ? value2.getValueTypeCase() : null;
                switch (valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                    case 1:
                        if (!z) {
                            Value value3 = evaluateResult.getValue();
                            ArrayValue arrayValue = value3 != null ? value3.getArrayValue() : null;
                            Intrinsics.checkNotNull(arrayValue);
                            List<Value> valuesList = arrayValue.getValuesList();
                            Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                            Value value4 = evaluateResult2.getValue();
                            String stringValue = value4 != null ? value4.getStringValue() : null;
                            Intrinsics.checkNotNull(stringValue);
                            return joinStrings(valuesList, stringValue);
                        }
                        return EvaluateResult.INSTANCE.getNULL();
                    case 2:
                        if (!z) {
                            Value value5 = evaluateResult.getValue();
                            ArrayValue arrayValue2 = value5 != null ? value5.getArrayValue() : null;
                            Intrinsics.checkNotNull(arrayValue2);
                            List<Value> valuesList2 = arrayValue2.getValuesList();
                            Intrinsics.checkNotNullExpressionValue(valuesList2, "getValuesList(...)");
                            Value value6 = evaluateResult2.getValue();
                            ByteString bytesValue = value6 != null ? value6.getBytesValue() : null;
                            Intrinsics.checkNotNull(bytesValue);
                            return joinBytes(valuesList2, bytesValue);
                        }
                        return EvaluateResult.INSTANCE.getNULL();
                    default:
                        return EvaluateResultError.INSTANCE;
                }
            }
            return EvaluateResultError.INSTANCE;
        }
        return EvaluateResultError.INSTANCE;
    }

    private static final EvaluateResult joinStrings(List<Value> list, String delimiter) {
        StringBuilder builder = new StringBuilder();
        boolean isFirstElement = true;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Value element = list.get(i);
            Value.ValueTypeCase valueTypeCase = element.getValueTypeCase();
            switch (valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                case 1:
                    if (!isFirstElement) {
                        builder.append(delimiter);
                    }
                    builder.append(element.getStringValue());
                    isFirstElement = false;
                    break;
                case 2:
                default:
                    return EvaluateResultError.INSTANCE;
                case 3:
                    break;
            }
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        String string = builder.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return companion.string(string);
    }

    private static final EvaluateResult joinBytes(List<Value> list, ByteString delimiter) {
        List builder = new ArrayList();
        boolean isFirstElement = true;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Value.ValueTypeCase valueTypeCase = list.get(i).getValueTypeCase();
            switch (valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                case 2:
                    if (!isFirstElement) {
                        ByteString $this$forEach$iv = delimiter;
                        for (Object element$iv : $this$forEach$iv) {
                            Byte it = (Byte) element$iv;
                            Intrinsics.checkNotNull(it);
                            builder.add(it);
                        }
                    }
                    Iterable bytesValue = list.get(i).getBytesValue();
                    Intrinsics.checkNotNullExpressionValue(bytesValue, "getBytesValue(...)");
                    Iterable $this$forEach$iv2 = bytesValue;
                    for (Object element$iv2 : $this$forEach$iv2) {
                        Byte it2 = (Byte) element$iv2;
                        Intrinsics.checkNotNull(it2);
                        builder.add(it2);
                    }
                    isFirstElement = false;
                    break;
                case 3:
                    break;
                default:
                    return EvaluateResultError.INSTANCE;
            }
        }
        return EvaluateResult.INSTANCE.value(Values.encodeValue(CollectionsKt.toByteArray(builder)));
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayGet() {
        return evaluateArrayGet;
    }

    static final Function1 evaluateArrayGet$lambda$12(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayGet$lambda$12$lambda$11(params, (MutableDocument) obj);
            }
        };
    }

    static final EvaluateResult evaluateArrayGet$lambda$12$lambda$11(List $params, MutableDocument input) {
        long index;
        Value value;
        ArrayValue arrayValue;
        Intrinsics.checkNotNullParameter(input, "input");
        if ($params.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf($params.size()));
        }
        boolean z = false;
        EvaluateResult p1 = (EvaluateResult) ((Function1) $params.get(0)).invoke(input);
        Value value2 = p1.getValue();
        List<Value> valuesList = (!(value2 != null && value2.hasArrayValue()) || (value = p1.getValue()) == null || (arrayValue = value.getArrayValue()) == null) ? null : arrayValue.getValuesList();
        EvaluateResult p2 = (EvaluateResult) ((Function1) $params.get(1)).invoke(input);
        Value value3 = p2.getValue();
        if (value3 != null && value3.hasIntegerValue()) {
            z = true;
        }
        if (z) {
            Value value4 = p2.getValue();
            Long offset = value4 != null ? Long.valueOf(value4.getIntegerValue()) : null;
            if (valuesList == null) {
                return EvaluateResultUnset.INSTANCE;
            }
            Intrinsics.checkNotNull(offset);
            long index2 = offset.longValue();
            if (index2 >= valuesList.size() || index2 < (-valuesList.size())) {
                return EvaluateResultUnset.INSTANCE;
            }
            if (index2 < 0) {
                index = ((long) valuesList.size()) + index2;
            } else {
                index = index2;
            }
            EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
            Value value5 = valuesList.get((int) index);
            Intrinsics.checkNotNullExpressionValue(value5, "get(...)");
            return companion.value(value5);
        }
        return EvaluateResultError.INSTANCE;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayConcat() {
        return evaluateArrayConcat;
    }

    static final Function1 evaluateArrayConcat$lambda$14(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayConcat$lambda$14$lambda$13(params, (MutableDocument) obj);
            }
        };
    }

    static final EvaluateResult evaluateArrayConcat$lambda$14$lambda$13(List $params, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if ($params.size() < 2) {
            throw Assert.fail("Function should have at least 2 params, but %d were given.", Integer.valueOf($params.size()));
        }
        List allArraysValues = new ArrayList();
        boolean hasNull = false;
        Iterator it = $params.iterator();
        while (it.hasNext()) {
            Function1 param = (Function1) it.next();
            EvaluateResult result = (EvaluateResult) param.invoke(input);
            if (result instanceof EvaluateResultValue) {
                Value value = ((EvaluateResultValue) result).getValue();
                if (value != null && value.hasArrayValue()) {
                    List<Value> valuesList = ((EvaluateResultValue) result).getValue().getArrayValue().getValuesList();
                    Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                    allArraysValues.add(valuesList);
                } else {
                    Value value2 = ((EvaluateResultValue) result).getValue();
                    if (value2 != null && value2.hasNullValue()) {
                        hasNull = true;
                    } else {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            } else {
                if (!Intrinsics.areEqual(result, EvaluateResultUnset.INSTANCE)) {
                    if (Intrinsics.areEqual(result, EvaluateResultError.INSTANCE)) {
                        return EvaluateResultError.INSTANCE;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                hasNull = true;
            }
        }
        if (hasNull) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        return arrayConcatImpl(allArraysValues);
    }

    public static final EvaluateResultValue arrayConcatImpl(List<? extends List<Value>> arrays) {
        Intrinsics.checkNotNullParameter(arrays, "arrays");
        return EvaluateResult.INSTANCE.value(Values.encodeValue(CollectionsKt.flatten(arrays)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult equalAny(Value value, List<Value> list) {
        for (Value element : list) {
            boolean zEquals$com_google_firebase_firebase_firestore = Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(value, element);
            if (zEquals$com_google_firebase_firebase_firestore) {
                return EvaluateResult.INSTANCE.getTRUE();
            }
            if (zEquals$com_google_firebase_firebase_firestore) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return EvaluateResult.INSTANCE.getFALSE();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult notEqualAny(Value value, List<Value> list) {
        for (Value element : list) {
            boolean zEquals$com_google_firebase_firebase_firestore = Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(value, element);
            if (zEquals$com_google_firebase_firebase_firestore) {
                return EvaluateResult.INSTANCE.getFALSE();
            }
            if (zEquals$com_google_firebase_firebase_firestore) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return EvaluateResult.INSTANCE.getTRUE();
    }
}
