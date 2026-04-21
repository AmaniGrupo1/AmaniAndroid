package com.google.firebase.firestore.pipeline;

import com.google.firestore.v1.Function;
import com.google.firestore.v1.Value;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: compiled from: aggregates.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* synthetic */ class AggregateFunction$toProto$1 extends AdaptedFunctionReference implements Function2<String, Value, Unit> {
    AggregateFunction$toProto$1(Object obj) {
        super(2, obj, Function.Builder.class, "putOptions", "putOptions(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;", 8);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(String str, Value value) {
        invoke2(str, value);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(String p0, Value p1) {
        ((Function.Builder) this.receiver).putOptions(p0, p1);
    }
}
