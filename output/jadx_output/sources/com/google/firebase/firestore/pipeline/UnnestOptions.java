package com.google.firebase.firestore.pipeline;

import com.google.firestore.v1.Value;
import javax.annotation.Nonnull;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\b\b\u0001\u0010\b\u001a\u00020\tJ\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/google/firebase/firestore/pipeline/UnnestOptions;", "Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", "()V", "withIndexField", "indexField", "", "self", "self$com_google_firebase_firebase_firestore", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UnnestOptions extends AbstractOptions<UnnestOptions> {
    private UnnestOptions(InternalOptions options) {
        super(options);
    }

    public UnnestOptions() {
        this(InternalOptions.EMPTY);
    }

    public final UnnestOptions withIndexField(@Nonnull String indexField) {
        Intrinsics.checkNotNullParameter(indexField, "indexField");
        Value valueBuild = Value.newBuilder().setFieldReferenceValue(indexField).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild, "build(...)");
        return with("index_field", valueBuild);
    }

    @Override // com.google.firebase.firestore.pipeline.AbstractOptions
    public UnnestOptions self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new UnnestOptions(options);
    }
}
