package com.google.common.collect;

import com.android.tools.r8.annotations.LambdaMethod;
import com.android.tools.r8.annotations.SynthesizedClassV2;
import com.google.common.collect.CollectCollectors;
import java.util.function.Function;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes22.dex */
@LambdaMethod(holder = "Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;", method = "toImmutableMap", proto = "()Lcom/google/common/collect/ImmutableMap;")
@SynthesizedClassV2(apiLevel = -2, kind = 19, versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0")
public final /* synthetic */ class CollectCollectors$$ExternalSyntheticLambda49 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((CollectCollectors.EnumMapAccumulator) obj).toImmutableMap();
    }
}
