package com.google.firebase.firestore.pipeline.evaluation;

import androidx.autofill.HintConstants;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.GenericsKt;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;
import com.google.protobuf.ByteString;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Generics.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002H\u0002\u001a\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0000\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u0017"}, d2 = {"evaluateLength", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateLength", "()Lkotlin/jvm/functions/Function1;", "evaluateConcat", "getEvaluateConcat", "bytesConcat", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;", "byteStrings", "Lcom/google/protobuf/ByteString;", "vectorLengthImpl", "", Values.VECTOR_MAP_VECTORS_KEY, "Lcom/google/firestore/v1/Value;", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class GenericsKt {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLength = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.GenericsKt$special$$inlined$unaryValueFunction$1
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 1) {
                throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.GenericsKt$special$$inlined$unaryValueFunction$1.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(MutableDocument input) {
                    EvaluateResult r;
                    EvaluateResultValue evaluateResultValueM8437long;
                    Intrinsics.checkNotNullParameter(input, "input");
                    try {
                        r = (EvaluateResult) function1.invoke(input);
                    } catch (Exception e) {
                        return EvaluateResultError.INSTANCE;
                    }
                    if (r.getIsError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    Value value = r.getValue();
                    Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                    switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                        case -1:
                        case 1:
                            break;
                        case 0:
                        default:
                            Value value2 = r.getValue();
                            Intrinsics.checkNotNull(value2);
                            Value.ValueTypeCase valueTypeCase2 = value2.getValueTypeCase();
                            switch (valueTypeCase2 != null ? GenericsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                case 1:
                                    EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                    String stringValue = value2.getStringValue();
                                    Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                    evaluateResultValueM8437long = companion.m8437long(stringValue.codePointCount(0, value2.getStringValue().length()));
                                    break;
                                case 2:
                                    evaluateResultValueM8437long = EvaluateResult.INSTANCE.m8437long(value2.getBytesValue().size());
                                    break;
                                case 3:
                                    evaluateResultValueM8437long = EvaluateResult.INSTANCE.m8437long(value2.getArrayValue().getValuesCount());
                                    break;
                                case 4:
                                    evaluateResultValueM8437long = Values.isVectorValue(value2) ? EvaluateResult.INSTANCE.m8438long(GenericsKt.vectorLengthImpl(value2)) : EvaluateResult.INSTANCE.m8437long(value2.getMapValue().getFieldsMap().size());
                                    break;
                                default:
                                    evaluateResultValueM8437long = EvaluateResultError.INSTANCE;
                                    break;
                            }
                            break;
                    }
                    return EvaluateResultError.INSTANCE;
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateConcat = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.GenericsKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return GenericsKt.evaluateConcat$lambda$6((List) obj);
        }
    };

    /* JADX INFO: compiled from: Generics.kt */
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
                iArr[Value.ValueTypeCase.ARRAY_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[Value.ValueTypeCase.MAP_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLength() {
        return evaluateLength;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateConcat() {
        return evaluateConcat;
    }

    static final Function1 evaluateConcat$lambda$6(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.GenericsKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GenericsKt.evaluateConcat$lambda$6$lambda$5(params, (MutableDocument) obj);
            }
        };
    }

    static final EvaluateResult evaluateConcat$lambda$6$lambda$5(List $params, MutableDocument input) {
        Value.ValueTypeCase valueTypeCase;
        Value value;
        Intrinsics.checkNotNullParameter(input, "input");
        if ($params.size() < 2) {
            throw Assert.fail("Function should have at least 2 params, but %d were given.", Integer.valueOf($params.size()));
        }
        boolean hasNull = false;
        Value firstTypeValue = null;
        List values = new ArrayList();
        Iterator it = $params.iterator();
        while (true) {
            if (!it.hasNext()) {
                if (hasNull) {
                    return EvaluateResult.INSTANCE.getNULL();
                }
                valueTypeCase = firstTypeValue != null ? firstTypeValue.getValueTypeCase() : null;
                switch (valueTypeCase != null ? WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()] : -1) {
                    case 1:
                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                        StringBuilder $this$evaluateConcat_u24lambda_u246_u24lambda_u245_u24lambda_u243 = new StringBuilder();
                        List $this$forEach$iv = values;
                        for (Object element$iv : $this$forEach$iv) {
                            Value it2 = (Value) element$iv;
                            $this$evaluateConcat_u24lambda_u246_u24lambda_u245_u24lambda_u243.append(it2.getStringValue());
                        }
                        String string = $this$evaluateConcat_u24lambda_u246_u24lambda_u245_u24lambda_u243.toString();
                        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                        return companion.string(string);
                    case 2:
                        List $this$map$iv = values;
                        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                        for (Object item$iv$iv : $this$map$iv) {
                            Value it3 = (Value) item$iv$iv;
                            destination$iv$iv.add(it3.getBytesValue());
                        }
                        return bytesConcat((List) destination$iv$iv);
                    case 3:
                        List $this$map$iv2 = values;
                        Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv2, 10));
                        for (Object item$iv$iv2 : $this$map$iv2) {
                            Value it4 = (Value) item$iv$iv2;
                            destination$iv$iv2.add(it4.getArrayValue().getValuesList());
                        }
                        return ArrayKt.arrayConcatImpl((List) destination$iv$iv2);
                    default:
                        throw new IllegalStateException("Unreachable");
                }
            }
            Function1 param = (Function1) it.next();
            EvaluateResult result = (EvaluateResult) param.invoke(input);
            if (result instanceof EvaluateResultError) {
                return EvaluateResultError.INSTANCE;
            }
            if (result instanceof EvaluateResultUnset) {
                hasNull = true;
            } else if (Intrinsics.areEqual(result, EvaluateResult.INSTANCE.getNULL())) {
                hasNull = true;
            } else {
                if (firstTypeValue == null) {
                    Value value2 = result.getValue();
                    valueTypeCase = value2 != null ? value2.getValueTypeCase() : null;
                    switch (valueTypeCase != null ? WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()] : -1) {
                        case 1:
                            value = result.getValue();
                            break;
                        case 2:
                            value = result.getValue();
                            break;
                        case 3:
                            value = result.getValue();
                            break;
                        default:
                            return EvaluateResultError.INSTANCE;
                    }
                    firstTypeValue = value;
                } else {
                    Value.ValueTypeCase valueTypeCase2 = firstTypeValue.getValueTypeCase();
                    Value value3 = result.getValue();
                    if (valueTypeCase2 != (value3 != null ? value3.getValueTypeCase() : null)) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
                Value value4 = result.getValue();
                Intrinsics.checkNotNull(value4);
                values.add(value4);
            }
        }
    }

    private static final EvaluateResultValue bytesConcat(List<? extends ByteString> list) {
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        List<? extends ByteString> $this$map$iv = list;
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            ByteString it = (ByteString) item$iv$iv;
            destination$iv$iv.add(it.toByteArray());
        }
        Iterable $this$reduce$iv = (List) destination$iv$iv;
        Iterator iterator$iv = $this$reduce$iv.iterator();
        if (!iterator$iv.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object accumulator$iv = iterator$iv.next();
        while (iterator$iv.hasNext()) {
            byte[] bytes = (byte[]) iterator$iv.next();
            byte[] acc = (byte[]) accumulator$iv;
            Intrinsics.checkNotNull(acc);
            Intrinsics.checkNotNull(bytes);
            accumulator$iv = ArraysKt.plus(acc, bytes);
        }
        Intrinsics.checkNotNullExpressionValue(accumulator$iv, "reduce(...)");
        return companion.value(Values.encodeValue((byte[]) accumulator$iv));
    }

    public static final long vectorLengthImpl(Value value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNull(value.getMapValue().getFieldsMap().get(Values.VECTOR_MAP_VECTORS_KEY));
        return r0.getArrayValue().getValuesCount();
    }
}
