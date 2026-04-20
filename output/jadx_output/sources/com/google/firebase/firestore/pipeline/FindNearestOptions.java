package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.pipeline.Expression;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000f¨\u0006\u0010"}, d2 = {"Lcom/google/firebase/firestore/pipeline/FindNearestOptions;", "Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", "()V", "self", "self$com_google_firebase_firebase_firestore", "withLimit", "limit", "", "withDistanceField", "distanceField", "Lcom/google/firebase/firestore/pipeline/Field;", "", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FindNearestOptions extends AbstractOptions<FindNearestOptions> {
    private FindNearestOptions(InternalOptions options) {
        super(options);
    }

    public FindNearestOptions() {
        this(InternalOptions.EMPTY);
    }

    @Override // com.google.firebase.firestore.pipeline.AbstractOptions
    public FindNearestOptions self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new FindNearestOptions(options);
    }

    public final FindNearestOptions withLimit(long limit) {
        return with("limit", limit);
    }

    public final FindNearestOptions withDistanceField(Field distanceField) {
        Intrinsics.checkNotNullParameter(distanceField, "distanceField");
        return with("distance_field", distanceField);
    }

    public final FindNearestOptions withDistanceField(String distanceField) {
        Expression.Companion companion = Expression.INSTANCE;
        Intrinsics.checkNotNull(distanceField);
        return withDistanceField(companion.field(distanceField));
    }
}
