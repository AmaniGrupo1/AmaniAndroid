package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.Ordering;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.EvaluationContext;
import com.google.firestore.v1.Value;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a1\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0002¢\u0006\u0002\u0010\t\u001a5\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u0005H\u0002¢\u0006\u0002\u0010\u0012¨\u0006\u0013"}, d2 = {"associateWithoutDuplications", "", "", "Lcom/google/firestore/v1/Value;", "fields", "", "Lcom/google/firebase/firestore/pipeline/Selectable;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/Map;", "comparatorFromOrderings", "Ljava/util/Comparator;", "Lcom/google/firebase/firestore/model/Document;", "Lkotlin/Comparator;", "context", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;", "orderings", "Lcom/google/firebase/firestore/pipeline/Ordering;", "(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;[Lcom/google/firebase/firestore/pipeline/Ordering;)Ljava/util/Comparator;", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class StageKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Map<String, Value> associateWithoutDuplications(Selectable[] fields, UserDataReader userDataReader) {
        Object initial$iv = new HashMap();
        Object accumulator$iv = initial$iv;
        for (Selectable selectable : fields) {
            Object results = accumulator$iv;
            if (((Map) results).containsKey(selectable.getAlias())) {
                throw new IllegalArgumentException("Duplicate alias: '" + selectable.getAlias() + '\'');
            }
            ((Map) results).put(selectable.getAlias(), selectable.toProto$com_google_firebase_firebase_firestore(userDataReader));
            accumulator$iv = results;
        }
        Object initial$iv2 = accumulator$iv;
        return (Map) initial$iv2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Comparator<Document> comparatorFromOrderings(final EvaluationContext context, final Ordering[] orderings) {
        return new Comparator() { // from class: com.google.firebase.firestore.pipeline.StageKt$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return StageKt.comparatorFromOrderings$lambda$1(orderings, context, (Document) obj, (Document) obj2);
            }
        };
    }

    static final int comparatorFromOrderings$lambda$1(Ordering[] $orderings, EvaluationContext $context, Document d1, Document d2) {
        Value value;
        Value value2;
        for (Ordering ordering : $orderings) {
            Expression expr = ordering.getExpr();
            Function1<MutableDocument, EvaluateResult> function1EvaluateFunction$com_google_firebase_firebase_firestore = expr.evaluateFunction$com_google_firebase_firebase_firestore($context);
            Intrinsics.checkNotNull(d1, "null cannot be cast to non-null type com.google.firebase.firestore.model.MutableDocument");
            EvaluateResult leftValue = function1EvaluateFunction$com_google_firebase_firebase_firestore.invoke((MutableDocument) d1);
            Function1<MutableDocument, EvaluateResult> function1EvaluateFunction$com_google_firebase_firebase_firestore2 = expr.evaluateFunction$com_google_firebase_firebase_firestore($context);
            Intrinsics.checkNotNull(d2, "null cannot be cast to non-null type com.google.firebase.firestore.model.MutableDocument");
            EvaluateResult rightValue = function1EvaluateFunction$com_google_firebase_firebase_firestore2.invoke((MutableDocument) d2);
            if (leftValue.getIsError() || leftValue.getIsUnset()) {
                value = Values.NULL_VALUE;
            } else {
                value = leftValue.getValue();
                Intrinsics.checkNotNull(value);
            }
            if (rightValue.getIsError() || rightValue.getIsUnset()) {
                value2 = Values.NULL_VALUE;
            } else {
                value2 = rightValue.getValue();
                Intrinsics.checkNotNull(value2);
            }
            int comparison = Values.compare(value, value2);
            if (comparison != 0) {
                if (ordering.getDir() == Ordering.Direction.ASCENDING) {
                    return comparison;
                }
                return -comparison;
            }
        }
        return 0;
    }
}
