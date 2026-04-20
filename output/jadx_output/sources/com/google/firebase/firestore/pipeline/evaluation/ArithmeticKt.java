package com.google.firebase.firestore.pipeline.evaluation;

import androidx.autofill.HintConstants;
import androidx.media3.common.C;
import com.google.common.math.DoubleMath;
import com.google.common.math.LongMath;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: Arithmetic.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b!\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\f\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\f\"w\u0010\u0017\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\f\"w\u0010\u0019\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\f\"w\u0010\u001b\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\f\"w\u0010\u001d\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\f\"w\u0010\u001f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\f\"w\u0010!\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\f\"w\u0010#\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\f\"w\u0010%\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\f\"w\u0010'\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\f\"w\u0010)\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\f¨\u0006+"}, d2 = {"evaluateAdd", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateAdd", "()Lkotlin/jvm/functions/Function1;", "evaluateCeil", "getEvaluateCeil", "evaluateDivide", "getEvaluateDivide", "evaluateFloor", "getEvaluateFloor", "evaluateMod", "getEvaluateMod", "evaluateMultiply", "getEvaluateMultiply", "evaluatePow", "getEvaluatePow", "evaluateRound", "getEvaluateRound", "evaluateRoundToPrecision", "getEvaluateRoundToPrecision", "evaluateAbs", "getEvaluateAbs", "evaluateExp", "getEvaluateExp", "evaluateLn", "getEvaluateLn", "evaluateLog", "getEvaluateLog", "evaluateLog10", "getEvaluateLog10", "evaluateSqrt", "getEvaluateSqrt", "evaluateSubtract", "getEvaluateSubtract", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ArithmeticKt {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateAbs;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateAdd = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$1
        @Override // kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 2) {
                throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$1.1
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                /* JADX WARN: Removed duplicated region for block: B:49:0x00ca A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:75:0x01a8 A[ADDED_TO_REGION, REMOVE] */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final EvaluateResult invoke(MutableDocument input) {
                    Value p2;
                    LongValue n2;
                    Value.ValueTypeCase valueTypeCase;
                    LongValue n1;
                    Value.ValueTypeCase valueTypeCase2;
                    Intrinsics.checkNotNullParameter(input, "input");
                    EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                    if (v1.isError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                    if (v2.isError()) {
                        return EvaluateResultError.INSTANCE;
                    }
                    try {
                        Value p1 = v1.getValue();
                        p2 = v2.getValue();
                        n2 = null;
                        if (p1 != null) {
                            try {
                                valueTypeCase = p1.getValueTypeCase();
                            } catch (Exception e) {
                            }
                        } else {
                            valueTypeCase = null;
                        }
                        try {
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    n1 = null;
                                    break;
                                case 5:
                                    n1 = new LongValue(p1.getIntegerValue());
                                    break;
                                case 6:
                                    n1 = new DoubleValue(p1.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                        } catch (Exception e2) {
                        }
                    } catch (Exception e3) {
                    }
                    switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                        case -1:
                        case 1:
                            if (n1 == null || n2 == null) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            if (n1 instanceof LongValue) {
                                if (n2 instanceof LongValue) {
                                    long x = ((LongValue) n1).getValue();
                                    long y = ((LongValue) n2).getValue();
                                    return EvaluateResult.INSTANCE.m8438long(LongMath.checkedAdd(x, y));
                                }
                                if (!(n2 instanceof DoubleValue)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                double x2 = ((LongValue) n1).getValue();
                                double y2 = ((DoubleValue) n2).getValue();
                                double p0 = x2 + y2;
                                return EvaluateResult.INSTANCE.m8436double(p0);
                            }
                            if (!(n1 instanceof DoubleValue)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            if (n2 instanceof DoubleValue) {
                                double x3 = ((DoubleValue) n1).getValue();
                                double y3 = ((DoubleValue) n2).getValue();
                                double p02 = x3 + y3;
                                return EvaluateResult.INSTANCE.m8436double(p02);
                            }
                            if (!(n2 instanceof LongValue)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            double x4 = ((DoubleValue) n1).getValue();
                            double y4 = ((LongValue) n2).getValue();
                            double p03 = x4 + y4;
                            return EvaluateResult.INSTANCE.m8436double(p03);
                            return EvaluateResultError.INSTANCE;
                        case 5:
                            n2 = new LongValue(p2.getIntegerValue());
                            if (n1 == null) {
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        case 6:
                            n2 = new DoubleValue(p2.getDoubleValue());
                            if (n1 == null) {
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        default:
                            return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateCeil;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateDivide;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateExp;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateFloor;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLn;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLog;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLog10;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateMod;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateMultiply;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluatePow;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRound;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRoundToPrecision;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateSqrt;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateSubtract;

    static {
        final Value.ValueTypeCase valueTypeCase1$iv$iv$iv = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv$iv = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateCeil = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv$iv;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.isError()) {
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
                                long x = v.getIntegerValue();
                                return EvaluateResult.INSTANCE.m8438long(x);
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            double x2 = v.getDoubleValue();
                            return EvaluateResult.INSTANCE.m8436double(Math.ceil(x2));
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateDivide = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        LongValue n1;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            Value p2 = v2.getValue();
                            LongValue n2 = null;
                            Value.ValueTypeCase valueTypeCase = p1 != null ? p1.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    n1 = null;
                                    break;
                                case 5:
                                    n1 = new LongValue(p1.getIntegerValue());
                                    break;
                                case 6:
                                    n1 = new DoubleValue(p1.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            Value.ValueTypeCase valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                case -1:
                                case 1:
                                    break;
                                case 5:
                                    n2 = new LongValue(p2.getIntegerValue());
                                    break;
                                case 6:
                                    n2 = new DoubleValue(p2.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            if (n1 == null || n2 == null) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            if (n1 instanceof LongValue) {
                                if (n2 instanceof LongValue) {
                                    long x = ((LongValue) n1).getValue();
                                    long y = ((LongValue) n2).getValue();
                                    return EvaluateResult.INSTANCE.m8438long(x / y);
                                }
                                if (!(n2 instanceof DoubleValue)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                double x2 = ((LongValue) n1).getValue();
                                double y2 = ((DoubleValue) n2).getValue();
                                return EvaluateResult.INSTANCE.m8436double(x2 / y2);
                            }
                            if (!(n1 instanceof DoubleValue)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            if (n2 instanceof DoubleValue) {
                                double x3 = ((DoubleValue) n1).getValue();
                                double y3 = ((DoubleValue) n2).getValue();
                                return EvaluateResult.INSTANCE.m8436double(x3 / y3);
                            }
                            if (!(n2 instanceof LongValue)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            double x4 = ((DoubleValue) n1).getValue();
                            double y4 = ((LongValue) n2).getValue();
                            return EvaluateResult.INSTANCE.m8436double(x4 / y4);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv$iv2 = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv$iv2 = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateFloor = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$4
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv$iv2;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv$iv2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$4.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.isError()) {
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
                                long x = v.getIntegerValue();
                                return EvaluateResult.INSTANCE.m8438long(x);
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            double x2 = v.getDoubleValue();
                            return EvaluateResult.INSTANCE.m8436double(Math.floor(x2));
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateMod = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$5
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$5.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        LongValue n1;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            Value p2 = v2.getValue();
                            LongValue n2 = null;
                            Value.ValueTypeCase valueTypeCase = p1 != null ? p1.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    n1 = null;
                                    break;
                                case 5:
                                    n1 = new LongValue(p1.getIntegerValue());
                                    break;
                                case 6:
                                    n1 = new DoubleValue(p1.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            Value.ValueTypeCase valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                case -1:
                                case 1:
                                    break;
                                case 5:
                                    n2 = new LongValue(p2.getIntegerValue());
                                    break;
                                case 6:
                                    n2 = new DoubleValue(p2.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            if (n1 == null || n2 == null) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            if (n1 instanceof LongValue) {
                                if (n2 instanceof LongValue) {
                                    long x = ((LongValue) n1).getValue();
                                    long y = ((LongValue) n2).getValue();
                                    return EvaluateResult.INSTANCE.m8438long(x % y);
                                }
                                if (!(n2 instanceof DoubleValue)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                double x2 = ((LongValue) n1).getValue();
                                double y2 = ((DoubleValue) n2).getValue();
                                return EvaluateResult.INSTANCE.m8436double(x2 % y2);
                            }
                            if (!(n1 instanceof DoubleValue)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            if (n2 instanceof DoubleValue) {
                                double x3 = ((DoubleValue) n1).getValue();
                                double y3 = ((DoubleValue) n2).getValue();
                                return EvaluateResult.INSTANCE.m8436double(x3 % y3);
                            }
                            if (!(n2 instanceof LongValue)) {
                                return EvaluateResultError.INSTANCE;
                            }
                            double x4 = ((DoubleValue) n1).getValue();
                            double y4 = ((LongValue) n2).getValue();
                            return EvaluateResult.INSTANCE.m8436double(x4 % y4);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateMultiply = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$6
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$6.1
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x00ca A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:75:0x01a8 A[ADDED_TO_REGION, REMOVE] */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value p2;
                        LongValue n2;
                        Value.ValueTypeCase valueTypeCase;
                        LongValue n1;
                        Value.ValueTypeCase valueTypeCase2;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            p2 = v2.getValue();
                            n2 = null;
                            if (p1 != null) {
                                try {
                                    valueTypeCase = p1.getValueTypeCase();
                                } catch (Exception e) {
                                }
                            } else {
                                valueTypeCase = null;
                            }
                            try {
                                switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                    case -1:
                                    case 1:
                                        n1 = null;
                                        break;
                                    case 5:
                                        n1 = new LongValue(p1.getIntegerValue());
                                        break;
                                    case 6:
                                        n1 = new DoubleValue(p1.getDoubleValue());
                                        break;
                                    default:
                                        return EvaluateResultError.INSTANCE;
                                }
                                valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            } catch (Exception e2) {
                            }
                        } catch (Exception e3) {
                        }
                        switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                if (n1 == null || n2 == null) {
                                    return EvaluateResult.INSTANCE.getNULL();
                                }
                                if (n1 instanceof LongValue) {
                                    if (n2 instanceof LongValue) {
                                        long x = ((LongValue) n1).getValue();
                                        long y = ((LongValue) n2).getValue();
                                        return EvaluateResult.INSTANCE.m8438long(LongMath.checkedMultiply(x, y));
                                    }
                                    if (!(n2 instanceof DoubleValue)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    double x2 = ((LongValue) n1).getValue();
                                    double y2 = ((DoubleValue) n2).getValue();
                                    double p0 = x2 * y2;
                                    return EvaluateResult.INSTANCE.m8436double(p0);
                                }
                                if (!(n1 instanceof DoubleValue)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                if (n2 instanceof DoubleValue) {
                                    double x3 = ((DoubleValue) n1).getValue();
                                    double y3 = ((DoubleValue) n2).getValue();
                                    double p02 = x3 * y3;
                                    return EvaluateResult.INSTANCE.m8436double(p02);
                                }
                                if (!(n2 instanceof LongValue)) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                double x4 = ((DoubleValue) n1).getValue();
                                double y4 = ((LongValue) n2).getValue();
                                double p03 = x4 * y4;
                                return EvaluateResult.INSTANCE.m8436double(p03);
                                return EvaluateResultError.INSTANCE;
                            case 5:
                                n2 = new LongValue(p2.getIntegerValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            case 6:
                                n2 = new DoubleValue(p2.getDoubleValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            default:
                                return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluatePow = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$1.1
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Removed duplicated region for block: B:107:0x0190  */
                    /* JADX WARN: Removed duplicated region for block: B:110:0x0199 A[Catch: Exception -> 0x0434, TryCatch #2 {Exception -> 0x0434, blocks: (B:25:0x0065, B:290:0x0430, B:41:0x00a2, B:289:0x042d, B:288:0x0424, B:113:0x01b6, B:77:0x013a, B:80:0x0148, B:82:0x0153, B:87:0x015e, B:89:0x0164, B:94:0x0171, B:96:0x0177, B:110:0x0199, B:109:0x0194, B:111:0x01a6, B:115:0x01c4, B:117:0x01cf, B:133:0x0204, B:135:0x020a, B:136:0x0216, B:138:0x021c, B:143:0x0227, B:145:0x022d, B:150:0x023a, B:152:0x0240, B:166:0x0262, B:165:0x025d, B:167:0x026f, B:168:0x027a, B:170:0x0288, B:171:0x028d, B:172:0x028e, B:174:0x029a, B:176:0x029e, B:192:0x02d2, B:194:0x02d8, B:195:0x02e4, B:197:0x02ea, B:202:0x02f5, B:204:0x02fb, B:209:0x0308, B:211:0x030e, B:225:0x0330, B:224:0x032b, B:226:0x033d, B:227:0x0348, B:229:0x0356, B:231:0x035a, B:247:0x038f, B:249:0x0395, B:250:0x03a1, B:252:0x03a7, B:257:0x03b2, B:259:0x03b8, B:264:0x03c5, B:266:0x03cb, B:280:0x03ed, B:279:0x03e8, B:281:0x03fa, B:282:0x0405, B:284:0x0412, B:285:0x0417, B:286:0x041c), top: B:302:0x005b }] */
                    /* JADX WARN: Removed duplicated region for block: B:153:0x0245  */
                    /* JADX WARN: Removed duplicated region for block: B:163:0x0259  */
                    /* JADX WARN: Removed duplicated region for block: B:166:0x0262 A[Catch: Exception -> 0x0434, TryCatch #2 {Exception -> 0x0434, blocks: (B:25:0x0065, B:290:0x0430, B:41:0x00a2, B:289:0x042d, B:288:0x0424, B:113:0x01b6, B:77:0x013a, B:80:0x0148, B:82:0x0153, B:87:0x015e, B:89:0x0164, B:94:0x0171, B:96:0x0177, B:110:0x0199, B:109:0x0194, B:111:0x01a6, B:115:0x01c4, B:117:0x01cf, B:133:0x0204, B:135:0x020a, B:136:0x0216, B:138:0x021c, B:143:0x0227, B:145:0x022d, B:150:0x023a, B:152:0x0240, B:166:0x0262, B:165:0x025d, B:167:0x026f, B:168:0x027a, B:170:0x0288, B:171:0x028d, B:172:0x028e, B:174:0x029a, B:176:0x029e, B:192:0x02d2, B:194:0x02d8, B:195:0x02e4, B:197:0x02ea, B:202:0x02f5, B:204:0x02fb, B:209:0x0308, B:211:0x030e, B:225:0x0330, B:224:0x032b, B:226:0x033d, B:227:0x0348, B:229:0x0356, B:231:0x035a, B:247:0x038f, B:249:0x0395, B:250:0x03a1, B:252:0x03a7, B:257:0x03b2, B:259:0x03b8, B:264:0x03c5, B:266:0x03cb, B:280:0x03ed, B:279:0x03e8, B:281:0x03fa, B:282:0x0405, B:284:0x0412, B:285:0x0417, B:286:0x041c), top: B:302:0x005b }] */
                    /* JADX WARN: Removed duplicated region for block: B:212:0x0313  */
                    /* JADX WARN: Removed duplicated region for block: B:222:0x0327  */
                    /* JADX WARN: Removed duplicated region for block: B:225:0x0330 A[Catch: Exception -> 0x0434, TryCatch #2 {Exception -> 0x0434, blocks: (B:25:0x0065, B:290:0x0430, B:41:0x00a2, B:289:0x042d, B:288:0x0424, B:113:0x01b6, B:77:0x013a, B:80:0x0148, B:82:0x0153, B:87:0x015e, B:89:0x0164, B:94:0x0171, B:96:0x0177, B:110:0x0199, B:109:0x0194, B:111:0x01a6, B:115:0x01c4, B:117:0x01cf, B:133:0x0204, B:135:0x020a, B:136:0x0216, B:138:0x021c, B:143:0x0227, B:145:0x022d, B:150:0x023a, B:152:0x0240, B:166:0x0262, B:165:0x025d, B:167:0x026f, B:168:0x027a, B:170:0x0288, B:171:0x028d, B:172:0x028e, B:174:0x029a, B:176:0x029e, B:192:0x02d2, B:194:0x02d8, B:195:0x02e4, B:197:0x02ea, B:202:0x02f5, B:204:0x02fb, B:209:0x0308, B:211:0x030e, B:225:0x0330, B:224:0x032b, B:226:0x033d, B:227:0x0348, B:229:0x0356, B:231:0x035a, B:247:0x038f, B:249:0x0395, B:250:0x03a1, B:252:0x03a7, B:257:0x03b2, B:259:0x03b8, B:264:0x03c5, B:266:0x03cb, B:280:0x03ed, B:279:0x03e8, B:281:0x03fa, B:282:0x0405, B:284:0x0412, B:285:0x0417, B:286:0x041c), top: B:302:0x005b }] */
                    /* JADX WARN: Removed duplicated region for block: B:267:0x03d0  */
                    /* JADX WARN: Removed duplicated region for block: B:277:0x03e4  */
                    /* JADX WARN: Removed duplicated region for block: B:280:0x03ed A[Catch: Exception -> 0x0434, TryCatch #2 {Exception -> 0x0434, blocks: (B:25:0x0065, B:290:0x0430, B:41:0x00a2, B:289:0x042d, B:288:0x0424, B:113:0x01b6, B:77:0x013a, B:80:0x0148, B:82:0x0153, B:87:0x015e, B:89:0x0164, B:94:0x0171, B:96:0x0177, B:110:0x0199, B:109:0x0194, B:111:0x01a6, B:115:0x01c4, B:117:0x01cf, B:133:0x0204, B:135:0x020a, B:136:0x0216, B:138:0x021c, B:143:0x0227, B:145:0x022d, B:150:0x023a, B:152:0x0240, B:166:0x0262, B:165:0x025d, B:167:0x026f, B:168:0x027a, B:170:0x0288, B:171:0x028d, B:172:0x028e, B:174:0x029a, B:176:0x029e, B:192:0x02d2, B:194:0x02d8, B:195:0x02e4, B:197:0x02ea, B:202:0x02f5, B:204:0x02fb, B:209:0x0308, B:211:0x030e, B:225:0x0330, B:224:0x032b, B:226:0x033d, B:227:0x0348, B:229:0x0356, B:231:0x035a, B:247:0x038f, B:249:0x0395, B:250:0x03a1, B:252:0x03a7, B:257:0x03b2, B:259:0x03b8, B:264:0x03c5, B:266:0x03cb, B:280:0x03ed, B:279:0x03e8, B:281:0x03fa, B:282:0x0405, B:284:0x0412, B:285:0x0417, B:286:0x041c), top: B:302:0x005b }] */
                    /* JADX WARN: Removed duplicated region for block: B:287:0x041d A[ADDED_TO_REGION, REMOVE] */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x00c3 A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:80:0x0148 A[Catch: Exception -> 0x0434, TryCatch #2 {Exception -> 0x0434, blocks: (B:25:0x0065, B:290:0x0430, B:41:0x00a2, B:289:0x042d, B:288:0x0424, B:113:0x01b6, B:77:0x013a, B:80:0x0148, B:82:0x0153, B:87:0x015e, B:89:0x0164, B:94:0x0171, B:96:0x0177, B:110:0x0199, B:109:0x0194, B:111:0x01a6, B:115:0x01c4, B:117:0x01cf, B:133:0x0204, B:135:0x020a, B:136:0x0216, B:138:0x021c, B:143:0x0227, B:145:0x022d, B:150:0x023a, B:152:0x0240, B:166:0x0262, B:165:0x025d, B:167:0x026f, B:168:0x027a, B:170:0x0288, B:171:0x028d, B:172:0x028e, B:174:0x029a, B:176:0x029e, B:192:0x02d2, B:194:0x02d8, B:195:0x02e4, B:197:0x02ea, B:202:0x02f5, B:204:0x02fb, B:209:0x0308, B:211:0x030e, B:225:0x0330, B:224:0x032b, B:226:0x033d, B:227:0x0348, B:229:0x0356, B:231:0x035a, B:247:0x038f, B:249:0x0395, B:250:0x03a1, B:252:0x03a7, B:257:0x03b2, B:259:0x03b8, B:264:0x03c5, B:266:0x03cb, B:280:0x03ed, B:279:0x03e8, B:281:0x03fa, B:282:0x0405, B:284:0x0412, B:285:0x0417, B:286:0x041c), top: B:302:0x005b }] */
                    /* JADX WARN: Removed duplicated region for block: B:97:0x017c  */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value p2;
                        LongValue n2;
                        Value.ValueTypeCase valueTypeCase;
                        LongValue n1;
                        Value.ValueTypeCase valueTypeCase2;
                        EvaluateResultValue evaluateResultValueM8436double;
                        EvaluateResultValue evaluateResultValueM8436double2;
                        EvaluateResultValue evaluateResultValueM8436double3;
                        EvaluateResultValue evaluateResultValueM8436double4;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            p2 = v2.getValue();
                            n2 = null;
                            if (p1 != null) {
                                try {
                                    valueTypeCase = p1.getValueTypeCase();
                                } catch (Exception e) {
                                }
                            } else {
                                valueTypeCase = null;
                            }
                            try {
                                switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                    case -1:
                                    case 1:
                                        n1 = null;
                                        break;
                                    case 5:
                                        n1 = new LongValue(p1.getIntegerValue());
                                        break;
                                    case 6:
                                        n1 = new DoubleValue(p1.getDoubleValue());
                                        break;
                                    default:
                                        return EvaluateResultError.INSTANCE;
                                }
                                valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            } catch (Exception e2) {
                            }
                        } catch (Exception e3) {
                        }
                        switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                if (n1 == null || n2 == null) {
                                    return EvaluateResult.INSTANCE.getNULL();
                                }
                                boolean z = true;
                                if (n1 instanceof LongValue) {
                                    if (n2 instanceof LongValue) {
                                        long l1 = ((LongValue) n1).getValue();
                                        long l2 = ((LongValue) n2).getValue();
                                        double base = l1;
                                        double exponent = l2;
                                        if (!(exponent == 0.0d)) {
                                            if (!(base == 1.0d)) {
                                                if (base == -1.0d) {
                                                    try {
                                                        if (Double.isInfinite(exponent)) {
                                                            evaluateResultValueM8436double4 = EvaluateResult.INSTANCE.m8436double(1.0d);
                                                        } else if (Double.isNaN(exponent) || Double.isNaN(base)) {
                                                            evaluateResultValueM8436double4 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                                        } else if (base >= 0.0d) {
                                                            if (base == 0.0d) {
                                                                evaluateResultValueM8436double4 = exponent < 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.pow(base, exponent));
                                                            } else {
                                                                if (base != -0.0d) {
                                                                    z = false;
                                                                }
                                                                if (z) {
                                                                }
                                                            }
                                                        } else {
                                                            if (((Double.isInfinite(base) || Double.isNaN(base)) ? false : true) && !DoubleMath.isMathematicalInteger(exponent)) {
                                                                evaluateResultValueM8436double4 = EvaluateResultError.INSTANCE;
                                                            }
                                                        }
                                                    } catch (Exception e4) {
                                                    }
                                                }
                                                return evaluateResultValueM8436double4;
                                            }
                                        }
                                        evaluateResultValueM8436double4 = EvaluateResult.INSTANCE.m8436double(1.0d);
                                        return evaluateResultValueM8436double4;
                                    }
                                    if (!(n2 instanceof DoubleValue)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    double base2 = ((LongValue) n1).getValue();
                                    double exponent2 = ((DoubleValue) n2).getValue();
                                    if (exponent2 == 0.0d) {
                                        evaluateResultValueM8436double3 = EvaluateResult.INSTANCE.m8436double(1.0d);
                                    } else {
                                        if (base2 == 1.0d) {
                                            evaluateResultValueM8436double3 = EvaluateResult.INSTANCE.m8436double(1.0d);
                                        } else {
                                            if ((base2 == -1.0d) && Double.isInfinite(exponent2)) {
                                                evaluateResultValueM8436double3 = EvaluateResult.INSTANCE.m8436double(1.0d);
                                            } else if (Double.isNaN(exponent2) || Double.isNaN(base2)) {
                                                evaluateResultValueM8436double3 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                            } else if (base2 >= 0.0d) {
                                                if (base2 == 0.0d) {
                                                    evaluateResultValueM8436double3 = exponent2 < 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.pow(base2, exponent2));
                                                } else {
                                                    if (base2 != -0.0d) {
                                                        z = false;
                                                    }
                                                    if (z) {
                                                    }
                                                }
                                            } else {
                                                if (((Double.isInfinite(base2) || Double.isNaN(base2)) ? false : true) && !DoubleMath.isMathematicalInteger(exponent2)) {
                                                    evaluateResultValueM8436double3 = EvaluateResultError.INSTANCE;
                                                }
                                            }
                                        }
                                    }
                                    return evaluateResultValueM8436double3;
                                }
                                if (!(n1 instanceof DoubleValue)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                if (n2 instanceof DoubleValue) {
                                    double base3 = ((DoubleValue) n1).getValue();
                                    double exponent3 = ((DoubleValue) n2).getValue();
                                    if (exponent3 == 0.0d) {
                                        evaluateResultValueM8436double2 = EvaluateResult.INSTANCE.m8436double(1.0d);
                                    } else {
                                        if (base3 == 1.0d) {
                                            evaluateResultValueM8436double2 = EvaluateResult.INSTANCE.m8436double(1.0d);
                                        } else {
                                            if ((base3 == -1.0d) && Double.isInfinite(exponent3)) {
                                                evaluateResultValueM8436double2 = EvaluateResult.INSTANCE.m8436double(1.0d);
                                            } else if (Double.isNaN(exponent3) || Double.isNaN(base3)) {
                                                evaluateResultValueM8436double2 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                            } else if (base3 >= 0.0d) {
                                                if (base3 == 0.0d) {
                                                    evaluateResultValueM8436double2 = exponent3 < 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.pow(base3, exponent3));
                                                } else {
                                                    if (base3 != -0.0d) {
                                                        z = false;
                                                    }
                                                    if (z) {
                                                    }
                                                }
                                            } else {
                                                if (((Double.isInfinite(base3) || Double.isNaN(base3)) ? false : true) && !DoubleMath.isMathematicalInteger(exponent3)) {
                                                    evaluateResultValueM8436double2 = EvaluateResultError.INSTANCE;
                                                }
                                            }
                                        }
                                    }
                                    return evaluateResultValueM8436double2;
                                }
                                if (!(n2 instanceof LongValue)) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                double base4 = ((DoubleValue) n1).getValue();
                                double exponent4 = ((LongValue) n2).getValue();
                                if (exponent4 == 0.0d) {
                                    evaluateResultValueM8436double = EvaluateResult.INSTANCE.m8436double(1.0d);
                                } else {
                                    if (base4 == 1.0d) {
                                        evaluateResultValueM8436double = EvaluateResult.INSTANCE.m8436double(1.0d);
                                    } else {
                                        if ((base4 == -1.0d) && Double.isInfinite(exponent4)) {
                                            evaluateResultValueM8436double = EvaluateResult.INSTANCE.m8436double(1.0d);
                                        } else if (Double.isNaN(exponent4) || Double.isNaN(base4)) {
                                            evaluateResultValueM8436double = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                        } else if (base4 >= 0.0d) {
                                            if (base4 == 0.0d) {
                                                evaluateResultValueM8436double = exponent4 < 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.pow(base4, exponent4));
                                            } else {
                                                if (base4 != -0.0d) {
                                                    z = false;
                                                }
                                                if (z) {
                                                }
                                            }
                                        } else {
                                            if (((Double.isInfinite(base4) || Double.isNaN(base4)) ? false : true) && !DoubleMath.isMathematicalInteger(exponent4)) {
                                                evaluateResultValueM8436double = EvaluateResultError.INSTANCE;
                                            }
                                        }
                                    }
                                }
                                return evaluateResultValueM8436double;
                                return EvaluateResultError.INSTANCE;
                            case 5:
                                n2 = new LongValue(p2.getIntegerValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            case 6:
                                n2 = new DoubleValue(p2.getDoubleValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            default:
                                return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv$iv3 = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv$iv3 = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateRound = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$7
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv$iv3;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv$iv3;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$7.1
                    /* JADX WARN: Removed duplicated region for block: B:36:0x0088  */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = r.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i != -1) {
                            if (i != 1) {
                                if (valueTypeCase3 == valueTypeCase) {
                                    try {
                                        long x = v.getIntegerValue();
                                        return EvaluateResult.INSTANCE.m8438long(x);
                                    } catch (Exception e) {
                                        return EvaluateResultError.INSTANCE;
                                    }
                                }
                                if (valueTypeCase3 != valueTypeCase2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    double x2 = v.getDoubleValue();
                                    EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                    double input2 = x2;
                                    if (!Double.isInfinite(input2)) {
                                        try {
                                            boolean z = !Double.isNaN(input2);
                                            if (z) {
                                                double remainder = input2 % ((double) 1);
                                                double truncated = input2 - remainder;
                                                try {
                                                    if (Math.abs(remainder) >= 0.5d) {
                                                        input2 = truncated + ((double) (input2 < 0.0d ? -1 : 1));
                                                    } else {
                                                        input2 = truncated;
                                                    }
                                                } catch (Exception e2) {
                                                }
                                            }
                                            return companion.m8436double(input2);
                                        } catch (Exception e3) {
                                        }
                                    }
                                } catch (Exception e4) {
                                }
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        return EvaluateResult.INSTANCE.getNULL();
                    }
                };
            }
        };
        evaluateRoundToPrecision = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticNumberLong$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticNumberLong$1.1
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Removed duplicated region for block: B:107:0x0211 A[ADDED_TO_REGION, REMOVE] */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x00b5 A[ADDED_TO_REGION] */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value p2;
                        Long n2;
                        Value.ValueTypeCase valueTypeCase;
                        LongValue n1;
                        Value.ValueTypeCase valueTypeCase2;
                        EvaluateResultValue evaluateResultValueM8436double;
                        EvaluateResultValue evaluateResultValueM8438long;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            p2 = v2.getValue();
                            n2 = null;
                            if (p1 != null) {
                                try {
                                    valueTypeCase = p1.getValueTypeCase();
                                } catch (Exception e) {
                                }
                            } else {
                                valueTypeCase = null;
                            }
                            try {
                                switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                    case -1:
                                    case 1:
                                        n1 = null;
                                        break;
                                    case 5:
                                        n1 = new LongValue(p1.getIntegerValue());
                                        break;
                                    case 6:
                                        n1 = new DoubleValue(p1.getDoubleValue());
                                        break;
                                    default:
                                        return EvaluateResultError.INSTANCE;
                                }
                                valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            } catch (Exception e2) {
                            }
                        } catch (Exception e3) {
                        }
                        switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                if (n1 == null || n2 == null) {
                                    return EvaluateResult.INSTANCE.getNULL();
                                }
                                if (n1 instanceof LongValue) {
                                    long value = ((LongValue) n1).getValue();
                                    long places = n2.longValue();
                                    if (places >= 0) {
                                        evaluateResultValueM8438long = EvaluateResult.INSTANCE.m8438long(value);
                                    } else {
                                        long numDigits = ((long) Math.floor(Math.log10(Math.abs(value)))) + 1;
                                        if ((-places) >= numDigits) {
                                            evaluateResultValueM8438long = EvaluateResult.INSTANCE.getLONG_ZERO();
                                        } else {
                                            long roundingFactor = (long) Math.pow(10.0d, -places);
                                            long truncated = value - (value % roundingFactor);
                                            if (Math.abs(truncated) < Math.abs(roundingFactor / ((long) 2))) {
                                                evaluateResultValueM8438long = EvaluateResult.INSTANCE.m8438long(truncated);
                                            } else {
                                                evaluateResultValueM8438long = value < 0 ? value < roundingFactor + C.TIME_UNSET ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8438long(truncated - roundingFactor) : value > Long.MAX_VALUE - roundingFactor ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8438long(truncated + roundingFactor);
                                            }
                                        }
                                    }
                                    return evaluateResultValueM8438long;
                                }
                                if (!(n1 instanceof DoubleValue)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                double value2 = ((DoubleValue) n1).getValue();
                                long places2 = n2.longValue();
                                if (places2 >= 16) {
                                    evaluateResultValueM8436double = EvaluateResult.INSTANCE.m8436double(value2);
                                } else {
                                    if ((Double.isInfinite(value2) || Double.isNaN(value2)) ? false : true) {
                                        long numDigits2 = ((long) Math.floor(Math.log10(Math.abs(value2)))) + 1;
                                        if ((-places2) >= numDigits2) {
                                            evaluateResultValueM8436double = EvaluateResult.INSTANCE.getDOUBLE_ZERO();
                                        } else {
                                            BigDecimal rounded = BigDecimal.valueOf(value2).setScale((int) places2, RoundingMode.HALF_UP);
                                            Intrinsics.checkNotNullExpressionValue(rounded, "setScale(...)");
                                            double result = rounded.doubleValue();
                                            evaluateResultValueM8436double = !Double.isInfinite(result) && !Double.isNaN(result) ? EvaluateResult.INSTANCE.m8436double(result) : EvaluateResultError.INSTANCE;
                                        }
                                    } else {
                                        evaluateResultValueM8436double = EvaluateResult.INSTANCE.m8436double(value2);
                                    }
                                }
                                return evaluateResultValueM8436double;
                                return EvaluateResultError.INSTANCE;
                            case 5:
                                n2 = Long.valueOf(p2.getIntegerValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            case 6:
                                n2 = Long.valueOf((long) p2.getDoubleValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            default:
                                return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv$iv4 = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv$iv4 = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateAbs = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$8
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv$iv4;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv$iv4;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$8.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = r.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase3 != valueTypeCase) {
                            if (valueTypeCase3 != valueTypeCase2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            try {
                                return EvaluateResult.INSTANCE.m8436double(Math.abs(v.getDoubleValue()));
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        try {
                            long x = v.getIntegerValue();
                            EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                            if (x != Long.MIN_VALUE) {
                                return companion.m8438long(Math.abs(x));
                            }
                            throw new ArithmeticException("long overflow");
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv$iv5 = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv$iv5 = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateExp = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv$iv5;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv$iv5;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.isError()) {
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
                                        long n = v.getIntegerValue();
                                        double value = n;
                                        double result = Math.exp(value);
                                        if (result == Double.POSITIVE_INFINITY) {
                                            if (value != Double.POSITIVE_INFINITY) {
                                                z = false;
                                            }
                                            if (!z) {
                                                throw new Exception("exp(...) exponent overflow");
                                            }
                                        }
                                        return EvaluateResult.INSTANCE.m8436double(Math.exp(value));
                                    } catch (Exception e) {
                                        return EvaluateResultError.INSTANCE;
                                    }
                                }
                                if (valueTypeCase3 != valueTypeCase2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    double value2 = v.getDoubleValue();
                                    double result2 = Math.exp(value2);
                                    if (result2 == Double.POSITIVE_INFINITY) {
                                        if (value2 != Double.POSITIVE_INFINITY) {
                                            z = false;
                                        }
                                        if (!z) {
                                            throw new Exception("exp(...) exponent overflow");
                                        }
                                    }
                                    return EvaluateResult.INSTANCE.m8436double(Math.exp(value2));
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
        final Value.ValueTypeCase valueTypeCase1$iv$iv$iv6 = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv$iv6 = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateLn = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv$iv6;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv$iv6;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.isError()) {
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
                                long n = v.getIntegerValue();
                                double value = n;
                                return value <= 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.log(value));
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            double value2 = v.getDoubleValue();
                            return value2 <= 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.log(value2));
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateLog = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$4
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$4.1
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Removed duplicated region for block: B:175:0x02c1 A[ADDED_TO_REGION, REMOVE] */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x00c3 A[ADDED_TO_REGION] */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value p2;
                        LongValue n2;
                        Value.ValueTypeCase valueTypeCase;
                        LongValue n1;
                        Value.ValueTypeCase valueTypeCase2;
                        EvaluateResultError evaluateResultErrorM8436double;
                        EvaluateResultError evaluateResultErrorM8436double2;
                        EvaluateResultError evaluateResultErrorM8436double3;
                        EvaluateResultError evaluateResultErrorM8436double4;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            p2 = v2.getValue();
                            n2 = null;
                            if (p1 != null) {
                                try {
                                    valueTypeCase = p1.getValueTypeCase();
                                } catch (Exception e) {
                                }
                            } else {
                                valueTypeCase = null;
                            }
                            try {
                                switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                    case -1:
                                    case 1:
                                        n1 = null;
                                        break;
                                    case 5:
                                        n1 = new LongValue(p1.getIntegerValue());
                                        break;
                                    case 6:
                                        n1 = new DoubleValue(p1.getDoubleValue());
                                        break;
                                    default:
                                        return EvaluateResultError.INSTANCE;
                                }
                                valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            } catch (Exception e2) {
                            }
                        } catch (Exception e3) {
                        }
                        switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                if (n1 == null || n2 == null) {
                                    return EvaluateResult.INSTANCE.getNULL();
                                }
                                boolean z = true;
                                if (n1 instanceof LongValue) {
                                    if (n2 instanceof LongValue) {
                                        long l1 = ((LongValue) n1).getValue();
                                        long l2 = ((LongValue) n2).getValue();
                                        double value = l1;
                                        double base = l2;
                                        if (value == Double.NEGATIVE_INFINITY) {
                                            try {
                                                evaluateResultErrorM8436double4 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                            } catch (Exception e4) {
                                            }
                                        } else {
                                            if (base == Double.POSITIVE_INFINITY) {
                                                evaluateResultErrorM8436double4 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                            } else if (base > 0.0d && value > 0.0d) {
                                                if (base != 1.0d) {
                                                    z = false;
                                                }
                                                evaluateResultErrorM8436double4 = z ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(MathKt.log(value, base));
                                            }
                                        }
                                        return evaluateResultErrorM8436double4;
                                    }
                                    if (!(n2 instanceof DoubleValue)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    double value2 = ((LongValue) n1).getValue();
                                    double base2 = ((DoubleValue) n2).getValue();
                                    if (value2 == Double.NEGATIVE_INFINITY) {
                                        evaluateResultErrorM8436double3 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                    } else {
                                        if (base2 == Double.POSITIVE_INFINITY) {
                                            evaluateResultErrorM8436double3 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                        } else if (base2 > 0.0d && value2 > 0.0d) {
                                            if (base2 != 1.0d) {
                                                z = false;
                                            }
                                            evaluateResultErrorM8436double3 = z ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(MathKt.log(value2, base2));
                                        }
                                    }
                                    return evaluateResultErrorM8436double3;
                                }
                                if (!(n1 instanceof DoubleValue)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                if (n2 instanceof DoubleValue) {
                                    double value3 = ((DoubleValue) n1).getValue();
                                    double base3 = ((DoubleValue) n2).getValue();
                                    if (value3 == Double.NEGATIVE_INFINITY) {
                                        evaluateResultErrorM8436double2 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                    } else {
                                        if (base3 == Double.POSITIVE_INFINITY) {
                                            evaluateResultErrorM8436double2 = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                        } else if (base3 > 0.0d && value3 > 0.0d) {
                                            if (base3 != 1.0d) {
                                                z = false;
                                            }
                                            evaluateResultErrorM8436double2 = z ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(MathKt.log(value3, base3));
                                        }
                                    }
                                    return evaluateResultErrorM8436double2;
                                }
                                if (!(n2 instanceof LongValue)) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                double value4 = ((DoubleValue) n1).getValue();
                                double base4 = ((LongValue) n2).getValue();
                                if (value4 == Double.NEGATIVE_INFINITY) {
                                    evaluateResultErrorM8436double = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                } else {
                                    if (base4 == Double.POSITIVE_INFINITY) {
                                        evaluateResultErrorM8436double = EvaluateResult.INSTANCE.m8436double(Double.NaN);
                                    } else if (base4 > 0.0d && value4 > 0.0d) {
                                        if (base4 != 1.0d) {
                                            z = false;
                                        }
                                        evaluateResultErrorM8436double = z ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(MathKt.log(value4, base4));
                                    }
                                }
                                return evaluateResultErrorM8436double;
                                return EvaluateResultError.INSTANCE;
                            case 5:
                                n2 = new LongValue(p2.getIntegerValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            case 6:
                                n2 = new DoubleValue(p2.getDoubleValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            default:
                                return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv$iv7 = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv$iv7 = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateLog10 = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$5
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv$iv7;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv$iv7;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$5.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.isError()) {
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
                                long n = v.getIntegerValue();
                                double value = n;
                                return value <= 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.log10(value));
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            double value2 = v.getDoubleValue();
                            return value2 <= 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.log10(value2));
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv$iv8 = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv$iv8 = Value.ValueTypeCase.DOUBLE_VALUE;
        evaluateSqrt = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$6
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv$iv8;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv$iv8;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmetic$6.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.isError()) {
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
                                long n = v.getIntegerValue();
                                double value = n;
                                return value < 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.sqrt(value));
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            double value2 = v.getDoubleValue();
                            return value2 < 0.0d ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8436double(Math.sqrt(value2));
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateSubtract = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$9
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArithmeticKt$special$$inlined$arithmeticPrimitive$9.1
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x00ca A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:75:0x01a8 A[ADDED_TO_REGION, REMOVE] */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value p2;
                        LongValue n2;
                        Value.ValueTypeCase valueTypeCase;
                        LongValue n1;
                        Value.ValueTypeCase valueTypeCase2;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.isError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            p2 = v2.getValue();
                            n2 = null;
                            if (p1 != null) {
                                try {
                                    valueTypeCase = p1.getValueTypeCase();
                                } catch (Exception e) {
                                }
                            } else {
                                valueTypeCase = null;
                            }
                            try {
                                switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                    case -1:
                                    case 1:
                                        n1 = null;
                                        break;
                                    case 5:
                                        n1 = new LongValue(p1.getIntegerValue());
                                        break;
                                    case 6:
                                        n1 = new DoubleValue(p1.getDoubleValue());
                                        break;
                                    default:
                                        return EvaluateResultError.INSTANCE;
                                }
                                valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            } catch (Exception e2) {
                            }
                        } catch (Exception e3) {
                        }
                        switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                if (n1 == null || n2 == null) {
                                    return EvaluateResult.INSTANCE.getNULL();
                                }
                                if (n1 instanceof LongValue) {
                                    if (n2 instanceof LongValue) {
                                        long x = ((LongValue) n1).getValue();
                                        long y = ((LongValue) n2).getValue();
                                        return EvaluateResult.INSTANCE.m8438long(LongMath.checkedSubtract(x, y));
                                    }
                                    if (!(n2 instanceof DoubleValue)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    double x2 = ((LongValue) n1).getValue();
                                    double y2 = ((DoubleValue) n2).getValue();
                                    double p0 = x2 - y2;
                                    return EvaluateResult.INSTANCE.m8436double(p0);
                                }
                                if (!(n1 instanceof DoubleValue)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                if (n2 instanceof DoubleValue) {
                                    double x3 = ((DoubleValue) n1).getValue();
                                    double y3 = ((DoubleValue) n2).getValue();
                                    double p02 = x3 - y3;
                                    return EvaluateResult.INSTANCE.m8436double(p02);
                                }
                                if (!(n2 instanceof LongValue)) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                double x4 = ((DoubleValue) n1).getValue();
                                double y4 = ((LongValue) n2).getValue();
                                double p03 = x4 - y4;
                                return EvaluateResult.INSTANCE.m8436double(p03);
                                return EvaluateResultError.INSTANCE;
                            case 5:
                                n2 = new LongValue(p2.getIntegerValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            case 6:
                                n2 = new DoubleValue(p2.getDoubleValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            default:
                                return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateAdd() {
        return evaluateAdd;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateCeil() {
        return evaluateCeil;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateDivide() {
        return evaluateDivide;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateFloor() {
        return evaluateFloor;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateMod() {
        return evaluateMod;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateMultiply() {
        return evaluateMultiply;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluatePow() {
        return evaluatePow;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRound() {
        return evaluateRound;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRoundToPrecision() {
        return evaluateRoundToPrecision;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateAbs() {
        return evaluateAbs;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateExp() {
        return evaluateExp;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLn() {
        return evaluateLn;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLog() {
        return evaluateLog;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLog10() {
        return evaluateLog10;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateSqrt() {
        return evaluateSqrt;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateSubtract() {
        return evaluateSubtract;
    }
}
