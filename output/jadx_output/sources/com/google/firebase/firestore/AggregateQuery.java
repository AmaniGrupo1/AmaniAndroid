package com.google.firebase.firestore;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.firestore.core.FirestoreClient;
import com.google.firebase.firestore.util.Executors;
import com.google.firebase.firestore.util.Function;
import com.google.firebase.firestore.util.Preconditions;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes22.dex */
public class AggregateQuery {
    private final List<AggregateField> aggregateFieldList;
    private final Query query;

    AggregateQuery(Query query, List<AggregateField> aggregateFieldList) {
        this.query = query;
        this.aggregateFieldList = aggregateFieldList;
    }

    public Query getQuery() {
        return this.query;
    }

    public List<AggregateField> getAggregateFields() {
        return this.aggregateFieldList;
    }

    public Task<AggregateQuerySnapshot> get(AggregateSource source) {
        Preconditions.checkNotNull(source, "AggregateSource must not be null");
        final TaskCompletionSource<AggregateQuerySnapshot> tcs = new TaskCompletionSource<>();
        ((Task) this.query.firestore.callClient(new Function() { // from class: com.google.firebase.firestore.AggregateQuery$$ExternalSyntheticLambda0
            @Override // com.google.firebase.firestore.util.Function
            public final Object apply(Object obj) {
                return this.f$0.m8320lambda$get$0$comgooglefirebasefirestoreAggregateQuery((FirestoreClient) obj);
            }
        })).continueWith(Executors.DIRECT_EXECUTOR, new Continuation() { // from class: com.google.firebase.firestore.AggregateQuery$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f$0.m8321lambda$get$1$comgooglefirebasefirestoreAggregateQuery(tcs, task);
            }
        });
        return tcs.getTask();
    }

    /* JADX INFO: renamed from: lambda$get$0$com-google-firebase-firestore-AggregateQuery, reason: not valid java name */
    /* synthetic */ Task m8320lambda$get$0$comgooglefirebasefirestoreAggregateQuery(FirestoreClient client) {
        return client.runAggregateQuery(this.query.query, this.aggregateFieldList);
    }

    /* JADX INFO: renamed from: lambda$get$1$com-google-firebase-firestore-AggregateQuery, reason: not valid java name */
    /* synthetic */ Object m8321lambda$get$1$comgooglefirebasefirestoreAggregateQuery(TaskCompletionSource tcs, Task task) throws Exception {
        if (task.isSuccessful()) {
            tcs.setResult(new AggregateQuerySnapshot(this, (Map) task.getResult()));
            return null;
        }
        tcs.setException(task.getException());
        return null;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof AggregateQuery)) {
            return false;
        }
        AggregateQuery other = (AggregateQuery) object;
        return this.query.equals(other.query) && this.aggregateFieldList.equals(other.aggregateFieldList);
    }

    public int hashCode() {
        return Objects.hash(this.query, this.aggregateFieldList);
    }
}
