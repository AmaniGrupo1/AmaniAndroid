package com.google.firebase.firestore.model;

import com.google.firestore.v1.Value;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: Values.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* synthetic */ class Values$Enterprise$compare$1 extends FunctionReferenceImpl implements Function2<Value, Value, Integer> {
    Values$Enterprise$compare$1(Object obj) {
        super(2, obj, Values.class, "compare", "compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Integer invoke(Value p0, Value p1) {
        return Integer.valueOf(Values.compare(p0, p1));
    }
}
