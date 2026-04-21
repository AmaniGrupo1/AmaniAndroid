package com.google.firebase.firestore.pipeline.evaluation;

import android.os.Build;
import androidx.autofill.HintConstants;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Vector.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0013\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0005\u001a\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a\u0018\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a \u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002\u001a \u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0003\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"evaluateVectorLength", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateVectorLength", "()Lkotlin/jvm/functions/Function1;", "evaluateCosineDistance", "getEvaluateCosineDistance", "evaluateDotProductDistance", "getEvaluateDotProductDistance", "evaluateEuclideanDistance", "getEvaluateEuclideanDistance", "cosineDistance", "vector1", "", "vector2", "euclideanDistance", "dotProductDistance", "fma", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "nativeFma", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class VectorKt {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateVectorLength = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.VectorKt$special$$inlined$unaryValueFunction$1
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 1) {
                throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.VectorKt$special$$inlined$unaryValueFunction$1.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(MutableDocument input) {
                    EvaluateResult r;
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
                            if (value2.getValueTypeCase() != Value.ValueTypeCase.MAP_VALUE || !Values.isVectorValue(value2)) {
                            }
                            break;
                    }
                    return EvaluateResultError.INSTANCE;
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateCosineDistance = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.VectorKt$special$$inlined$binaryVectorVectorFunction$1
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 2) {
                throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.VectorKt$special$$inlined$binaryVectorVectorFunction$1.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(MutableDocument input) {
                    double[] leftVector;
                    EvaluateResultError evaluateResultErrorCosineDistance;
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
                        Value left = v1.getValue();
                        Value right = v2.getValue();
                        double[] vectorValue = null;
                        if (left == null || Values.isNullValue(left)) {
                            leftVector = null;
                        } else {
                            if (!Values.isVectorValue(left)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            leftVector = Values.getVectorValue(left);
                        }
                        if (right != null && !Values.isNullValue(right)) {
                            if (!Values.isVectorValue(right)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            vectorValue = Values.getVectorValue(right);
                        }
                        double[] rightVector = vectorValue;
                        if (leftVector == null || rightVector == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        try {
                            evaluateResultErrorCosineDistance = VectorKt.cosineDistance(leftVector, rightVector);
                        } catch (Exception e) {
                            evaluateResultErrorCosineDistance = EvaluateResultError.INSTANCE;
                        }
                        return evaluateResultErrorCosineDistance;
                    } catch (Exception e2) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateDotProductDistance = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.VectorKt$special$$inlined$binaryVectorVectorFunction$2
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 2) {
                throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.VectorKt$special$$inlined$binaryVectorVectorFunction$2.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(MutableDocument input) {
                    double[] leftVector;
                    EvaluateResultError evaluateResultErrorDotProductDistance;
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
                        Value left = v1.getValue();
                        Value right = v2.getValue();
                        double[] vectorValue = null;
                        if (left == null || Values.isNullValue(left)) {
                            leftVector = null;
                        } else {
                            if (!Values.isVectorValue(left)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            leftVector = Values.getVectorValue(left);
                        }
                        if (right != null && !Values.isNullValue(right)) {
                            if (!Values.isVectorValue(right)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            vectorValue = Values.getVectorValue(right);
                        }
                        double[] rightVector = vectorValue;
                        if (leftVector == null || rightVector == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        try {
                            evaluateResultErrorDotProductDistance = VectorKt.dotProductDistance(leftVector, rightVector);
                        } catch (Exception e) {
                            evaluateResultErrorDotProductDistance = EvaluateResultError.INSTANCE;
                        }
                        return evaluateResultErrorDotProductDistance;
                    } catch (Exception e2) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateEuclideanDistance = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.VectorKt$special$$inlined$binaryVectorVectorFunction$3
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 2) {
                throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.VectorKt$special$$inlined$binaryVectorVectorFunction$3.1
                @Override // kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(MutableDocument input) {
                    double[] leftVector;
                    EvaluateResultError evaluateResultErrorEuclideanDistance;
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
                        Value left = v1.getValue();
                        Value right = v2.getValue();
                        double[] vectorValue = null;
                        if (left == null || Values.isNullValue(left)) {
                            leftVector = null;
                        } else {
                            if (!Values.isVectorValue(left)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            leftVector = Values.getVectorValue(left);
                        }
                        if (right != null && !Values.isNullValue(right)) {
                            if (!Values.isVectorValue(right)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            vectorValue = Values.getVectorValue(right);
                        }
                        double[] rightVector = vectorValue;
                        if (leftVector == null || rightVector == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        try {
                            evaluateResultErrorEuclideanDistance = VectorKt.euclideanDistance(leftVector, rightVector);
                        } catch (Exception e) {
                            evaluateResultErrorEuclideanDistance = EvaluateResultError.INSTANCE;
                        }
                        return evaluateResultErrorEuclideanDistance;
                    } catch (Exception e2) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateVectorLength() {
        return evaluateVectorLength;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateCosineDistance() {
        return evaluateCosineDistance;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateDotProductDistance() {
        return evaluateDotProductDistance;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateEuclideanDistance() {
        return evaluateEuclideanDistance;
    }

    public static final EvaluateResult cosineDistance(double[] vector1, double[] vector2) {
        Intrinsics.checkNotNullParameter(vector1, "vector1");
        Intrinsics.checkNotNullParameter(vector2, "vector2");
        if (vector1.length != vector2.length) {
            return EvaluateResultError.INSTANCE;
        }
        int limit = vector1.length & (-4);
        double sum1 = 0.0d;
        double norm12 = 0.0d;
        double norm13 = 0.0d;
        double norm14 = 0.0d;
        double norm21 = 0.0d;
        double norm22 = 0.0d;
        double norm23 = 0.0d;
        double norm24 = 0.0d;
        int i = 0;
        double sum3 = 0.0d;
        double sum4 = 0.0d;
        double norm11 = 0.0d;
        double sum2 = 0.0d;
        while (i < limit) {
            sum1 = fma(vector1[i + 0], vector2[i + 0], sum1);
            sum2 = fma(vector1[i + 1], vector2[i + 1], sum2);
            sum3 = fma(vector1[i + 2], vector2[i + 2], sum3);
            int i2 = i;
            sum4 = fma(vector1[i + 3], vector2[i + 3], sum4);
            norm11 = fma(vector1[i2 + 0], vector1[i2 + 0], norm11);
            norm12 = fma(vector1[i2 + 1], vector1[i2 + 1], norm12);
            norm13 = fma(vector1[i2 + 2], vector1[i2 + 2], norm13);
            norm14 = fma(vector1[i2 + 3], vector1[i2 + 3], norm14);
            norm21 = fma(vector2[i2 + 0], vector2[i2 + 0], norm21);
            norm22 = fma(vector2[i2 + 1], vector2[i2 + 1], norm22);
            norm23 = fma(vector2[i2 + 2], vector2[i2 + 2], norm23);
            norm24 = fma(vector2[i2 + 3], vector2[i2 + 3], norm24);
            i = i2 + 4;
        }
        double sum = sum1 + sum2 + sum3 + sum4;
        double norm1 = norm11 + norm12 + norm13 + norm14;
        double norm2 = norm21 + norm22 + norm23 + norm24;
        int length = vector1.length;
        for (int i3 = limit; i3 < length; i3++) {
            double val1 = vector1[i3];
            double val2 = vector2[i3];
            sum += val1 * val2;
            norm1 += val1 * val1;
            norm2 += val2 * val2;
        }
        double result = 1.0d - (sum / Math.sqrt(norm1 * norm2));
        return Double.isNaN(result) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(result);
    }

    public static final EvaluateResult euclideanDistance(double[] vector1, double[] vector2) {
        Intrinsics.checkNotNullParameter(vector1, "vector1");
        Intrinsics.checkNotNullParameter(vector2, "vector2");
        if (vector1.length != vector2.length) {
            return EvaluateResultError.INSTANCE;
        }
        int limit = vector1.length & (-4);
        double a1 = 0.0d;
        double a3 = 0.0d;
        double a4 = 0.0d;
        double a2 = 0.0d;
        for (int i = 0; i < limit; i += 4) {
            double diff1 = vector1[i + 0] - vector2[i + 0];
            double diff2 = vector1[i + 1] - vector2[i + 1];
            double diff3 = vector1[i + 2] - vector2[i + 2];
            double diff4 = vector1[i + 3] - vector2[i + 3];
            a1 = fma(diff1, diff1, a1);
            a2 = fma(diff2, diff2, a2);
            a3 = fma(diff3, diff3, a3);
            a4 = fma(diff4, diff4, a4);
        }
        double result = a1 + a2 + a3 + a4;
        int length = vector1.length;
        double result2 = result;
        for (int i2 = limit; i2 < length; i2++) {
            double diff = vector1[i2] - vector2[i2];
            result2 = fma(diff, diff, result2);
        }
        return EvaluateResult.INSTANCE.m8436double(Math.sqrt(result2));
    }

    public static final EvaluateResult dotProductDistance(double[] vector1, double[] vector2) {
        Intrinsics.checkNotNullParameter(vector1, "vector1");
        Intrinsics.checkNotNullParameter(vector2, "vector2");
        if (vector1.length != vector2.length) {
            return EvaluateResultError.INSTANCE;
        }
        int limit = vector1.length & (-4);
        double a1 = 0.0d;
        double a3 = 0.0d;
        double a4 = 0.0d;
        double a2 = 0.0d;
        for (int i = 0; i < limit; i += 4) {
            a1 = fma(vector1[i + 0], vector2[i + 0], a1);
            a2 = fma(vector1[i + 1], vector2[i + 1], a2);
            a3 = fma(vector1[i + 2], vector2[i + 2], a3);
            a4 = fma(vector1[i + 3], vector2[i + 3], a4);
        }
        double result = a1 + a2 + a3 + a4;
        int length = vector1.length;
        for (int i2 = limit; i2 < length; i2++) {
            result += vector1[i2] * vector2[i2];
        }
        return EvaluateResult.INSTANCE.m8436double(result);
    }

    private static final double fma(double a, double b, double c) {
        if (Build.VERSION.SDK_INT >= 33) {
            return nativeFma(a, b, c);
        }
        return (a * b) + c;
    }

    private static final double nativeFma(double a, double b, double c) {
        return Math.fma(a, b, c);
    }
}
