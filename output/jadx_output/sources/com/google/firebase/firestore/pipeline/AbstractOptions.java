package com.google.firebase.firestore.pipeline;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.AbstractOptions;
import com.google.firestore.v1.Value;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: options.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00020\u0004H ¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0012H\u0004¢\u0006\u0002\u0010\u0013J)\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0015\"\u00020\u000eH\u0004¢\u0006\u0002\u0010\u0016J!\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0004¢\u0006\u0002\u0010\u0018J\u0019\u0010\u0019\u001a\u00028\u00002\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0004¢\u0006\u0002\u0010\u001bJ\u001b\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0002\u0010\u001cJ\u001b\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001d¢\u0006\u0002\u0010\u001eJ\u001b\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001f¢\u0006\u0002\u0010 J\u001b\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020!¢\u0006\u0002\u0010\"J\u001b\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020#¢\u0006\u0002\u0010$J\u001b\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020%¢\u0006\u0002\u0010&R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006'"}, d2 = {"Lcom/google/firebase/firestore/pipeline/AbstractOptions;", ExifInterface.GPS_DIRECTION_TRUE, "", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", "getOptions$com_google_firebase_firebase_firestore", "()Lcom/google/firebase/firestore/pipeline/InternalOptions;", "self", "self$com_google_firebase_firebase_firestore", "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "with", "key", "", Values.VECTOR_MAP_VECTORS_KEY, "with$com_google_firebase_firebase_firestore", "(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "Lcom/google/firestore/v1/Value;", "(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "values", "", "(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "subSection", "(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/AbstractOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "adding", "newOptions", "(Lcom/google/firebase/firestore/pipeline/AbstractOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "", "(Ljava/lang/String;Z)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "", "(Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "", "(Ljava/lang/String;D)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "Lcom/google/firebase/firestore/pipeline/Field;", "(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "Lcom/google/firebase/firestore/pipeline/RawOptions;", "(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/RawOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class AbstractOptions<T extends AbstractOptions<T>> {
    private final InternalOptions options;

    public abstract T self$com_google_firebase_firebase_firestore(InternalOptions options);

    public AbstractOptions(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        this.options = options;
    }

    /* JADX INFO: renamed from: getOptions$com_google_firebase_firebase_firestore, reason: from getter */
    public final InternalOptions getOptions() {
        return this.options;
    }

    public final T with$com_google_firebase_firebase_firestore(String key, InternalOptions value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return (T) self$com_google_firebase_firebase_firestore(this.options.with$com_google_firebase_firebase_firestore(key, value));
    }

    protected final T with(String key, Value value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return (T) self$com_google_firebase_firebase_firestore(this.options.with$com_google_firebase_firebase_firestore(key, value));
    }

    protected final T with(String key, String... values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        InternalOptions internalOptions = this.options;
        List listListOf = CollectionsKt.listOf(Arrays.copyOf(values, values.length));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listListOf, 10));
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            arrayList.add(Values.encodeValue((String) it.next()));
        }
        return (T) self$com_google_firebase_firebase_firestore(internalOptions.with$com_google_firebase_firebase_firestore(key, arrayList));
    }

    protected final T with(String key, AbstractOptions<?> subSection) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(subSection, "subSection");
        return (T) self$com_google_firebase_firebase_firestore(this.options.with$com_google_firebase_firebase_firestore(key, subSection.options));
    }

    protected final T adding(AbstractOptions<?> newOptions) {
        Intrinsics.checkNotNullParameter(newOptions, "newOptions");
        return (T) self$com_google_firebase_firebase_firestore(this.options.adding$com_google_firebase_firebase_firestore(newOptions.options));
    }

    public final T with(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return (T) with(key, Values.encodeValue(value));
    }

    public final T with(String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) with(key, Values.encodeValue(value));
    }

    public final T with(String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) with(key, Values.encodeValue(value));
    }

    public final T with(String key, double value) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) with(key, Values.encodeValue(value));
    }

    public final T with(String key, Field value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return (T) with(key, value.toProto$com_google_firebase_firebase_firestore());
    }

    public final T with(String key, RawOptions value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return (T) with$com_google_firebase_firebase_firestore(key, value.getOptions());
    }
}
