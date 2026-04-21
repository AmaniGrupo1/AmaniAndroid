package com.google.common.collect;

import com.android.tools.r8.annotations.LambdaMethod;
import com.android.tools.r8.annotations.SynthesizedClassV2;
import com.google.common.base.Function;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes22.dex */
@LambdaMethod(holder = "Lcom/google/common/collect/Range;", method = "lowerBound", proto = "()Lcom/google/common/collect/Cut;")
@SynthesizedClassV2(apiLevel = -2, kind = 19, versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0")
public final /* synthetic */ class ImmutableRangeMap$$ExternalSyntheticLambda1 implements Function {
    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        return ((Range) obj).lowerBound();
    }
}
