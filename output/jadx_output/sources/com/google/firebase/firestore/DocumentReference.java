package com.google.firebase.firestore;

import android.app.Activity;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.core.ActivityScope;
import com.google.firebase.firestore.core.AsyncEventListener;
import com.google.firebase.firestore.core.EventManager;
import com.google.firebase.firestore.core.FirestoreClient;
import com.google.firebase.firestore.core.QueryListener;
import com.google.firebase.firestore.core.QueryOrPipeline;
import com.google.firebase.firestore.core.UserData;
import com.google.firebase.firestore.core.ViewSnapshot;
import com.google.firebase.firestore.model.DatabaseId;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.model.mutation.DeleteMutation;
import com.google.firebase.firestore.model.mutation.Mutation;
import com.google.firebase.firestore.model.mutation.Precondition;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Executors;
import com.google.firebase.firestore.util.Function;
import com.google.firebase.firestore.util.Preconditions;
import com.google.firebase.firestore.util.Util;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
public final class DocumentReference {
    private final FirebaseFirestore firestore;
    private final DocumentKey key;

    DocumentReference(DocumentKey key, FirebaseFirestore firestore) {
        this.key = (DocumentKey) Preconditions.checkNotNull(key);
        this.firestore = (FirebaseFirestore) Preconditions.checkNotNull(firestore);
    }

    public static DocumentReference forPath(ResourcePath path, FirebaseFirestore firestore) {
        if (path.length() % 2 != 0) {
            throw new IllegalArgumentException("Invalid document reference. Document references must have an even number of segments, but " + path.canonicalString() + " has " + path.length());
        }
        return new DocumentReference(DocumentKey.fromPath(path), firestore);
    }

    DocumentKey getKey() {
        return this.key;
    }

    public FirebaseFirestore getFirestore() {
        return this.firestore;
    }

    public String getId() {
        return this.key.getDocumentId();
    }

    public CollectionReference getParent() {
        return new CollectionReference(this.key.getCollectionPath(), this.firestore);
    }

    public String getPath() {
        return this.key.getPath().canonicalString();
    }

    public String getFullPath() {
        DatabaseId databaseId = this.firestore.getDatabaseId();
        return String.format("projects/%s/databases/%s/documents/%s", databaseId.getProjectId(), databaseId.getDatabaseId(), getPath());
    }

    public CollectionReference collection(String collectionPath) {
        Preconditions.checkNotNull(collectionPath, "Provided collection path must not be null.");
        return new CollectionReference(this.key.getPath().append(ResourcePath.fromString(collectionPath)), this.firestore);
    }

    public Task<Void> set(Object data) {
        return set(data, SetOptions.OVERWRITE);
    }

    public Task<Void> set(Object data, SetOptions options) {
        UserData.ParsedSetData parsed;
        Preconditions.checkNotNull(data, "Provided data must not be null.");
        Preconditions.checkNotNull(options, "Provided options must not be null.");
        boolean zIsMerge = options.isMerge();
        FirebaseFirestore firebaseFirestore = this.firestore;
        if (zIsMerge) {
            parsed = firebaseFirestore.getUserDataReader().parseMergeData(data, options.getFieldMask());
        } else {
            parsed = firebaseFirestore.getUserDataReader().parseSetData(data);
        }
        final List<Mutation> mutations = Collections.singletonList(parsed.toMutation(this.key, Precondition.NONE));
        return ((Task) this.firestore.callClient(new Function() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda1
            @Override // com.google.firebase.firestore.util.Function
            public final Object apply(Object obj) {
                return ((FirestoreClient) obj).write(mutations);
            }
        })).continueWith(Executors.DIRECT_EXECUTOR, Util.voidErrorTransformer());
    }

    public Task<Void> update(Map<String, Object> data) {
        UserData.ParsedUpdateData parsedData = this.firestore.getUserDataReader().parseUpdateData(data);
        return update(parsedData);
    }

    public Task<Void> update(String field, Object value, Object... moreFieldsAndValues) {
        UserData.ParsedUpdateData parsedData = this.firestore.getUserDataReader().parseUpdateData(Util.collectUpdateArguments(1, field, value, moreFieldsAndValues));
        return update(parsedData);
    }

    public Task<Void> update(FieldPath fieldPath, Object value, Object... moreFieldsAndValues) {
        UserData.ParsedUpdateData parsedData = this.firestore.getUserDataReader().parseUpdateData(Util.collectUpdateArguments(1, fieldPath, value, moreFieldsAndValues));
        return update(parsedData);
    }

    private Task<Void> update(UserData.ParsedUpdateData parsedData) {
        final List<Mutation> mutations = Collections.singletonList(parsedData.toMutation(this.key, Precondition.exists(true)));
        return ((Task) this.firestore.callClient(new Function() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda2
            @Override // com.google.firebase.firestore.util.Function
            public final Object apply(Object obj) {
                return ((FirestoreClient) obj).write(mutations);
            }
        })).continueWith(Executors.DIRECT_EXECUTOR, Util.voidErrorTransformer());
    }

    public Task<Void> delete() {
        final List<Mutation> mutations = Collections.singletonList(new DeleteMutation(this.key, Precondition.NONE));
        return ((Task) this.firestore.callClient(new Function() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda0
            @Override // com.google.firebase.firestore.util.Function
            public final Object apply(Object obj) {
                return ((FirestoreClient) obj).write(mutations);
            }
        })).continueWith(Executors.DIRECT_EXECUTOR, Util.voidErrorTransformer());
    }

    public Task<DocumentSnapshot> get() {
        return get(Source.DEFAULT);
    }

    public Task<DocumentSnapshot> get(Source source) {
        if (source == Source.CACHE) {
            return ((Task) this.firestore.callClient(new Function() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda3
                @Override // com.google.firebase.firestore.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.m8323lambda$get$3$comgooglefirebasefirestoreDocumentReference((FirestoreClient) obj);
                }
            })).continueWith(Executors.DIRECT_EXECUTOR, new Continuation() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda4
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return this.f$0.m8324lambda$get$4$comgooglefirebasefirestoreDocumentReference(task);
                }
            });
        }
        return getViaSnapshotListener(source);
    }

    /* JADX INFO: renamed from: lambda$get$3$com-google-firebase-firestore-DocumentReference, reason: not valid java name */
    /* synthetic */ Task m8323lambda$get$3$comgooglefirebasefirestoreDocumentReference(FirestoreClient client) {
        return client.getDocumentFromLocalCache(this.key);
    }

    /* JADX INFO: renamed from: lambda$get$4$com-google-firebase-firestore-DocumentReference, reason: not valid java name */
    /* synthetic */ DocumentSnapshot m8324lambda$get$4$comgooglefirebasefirestoreDocumentReference(Task task) throws Exception {
        Document doc = (Document) task.getResult();
        boolean hasPendingWrites = doc != null && doc.hasLocalMutations();
        return new DocumentSnapshot(this.firestore, this.key, doc, true, hasPendingWrites);
    }

    private Task<DocumentSnapshot> getViaSnapshotListener(final Source source) {
        final TaskCompletionSource<DocumentSnapshot> res = new TaskCompletionSource<>();
        final TaskCompletionSource<ListenerRegistration> registration = new TaskCompletionSource<>();
        EventManager.ListenOptions options = new EventManager.ListenOptions();
        options.includeDocumentMetadataChanges = true;
        options.includeQueryMetadataChanges = true;
        options.waitForSyncWhenOnline = true;
        ListenerRegistration listenerRegistration = addSnapshotListenerInternal(Executors.DIRECT_EXECUTOR, options, null, new EventListener() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda7
            @Override // com.google.firebase.firestore.EventListener
            public final void onEvent(Object obj, FirebaseFirestoreException firebaseFirestoreException) {
                DocumentReference.lambda$getViaSnapshotListener$5(res, registration, source, (DocumentSnapshot) obj, firebaseFirestoreException);
            }
        });
        registration.setResult(listenerRegistration);
        return res.getTask();
    }

    static /* synthetic */ void lambda$getViaSnapshotListener$5(TaskCompletionSource res, TaskCompletionSource registration, Source source, DocumentSnapshot snapshot, FirebaseFirestoreException error) {
        if (error != null) {
            res.setException(error);
            return;
        }
        try {
            ListenerRegistration actualRegistration = (ListenerRegistration) Tasks.await(registration.getTask());
            actualRegistration.remove();
            if (!snapshot.exists() && snapshot.getMetadata().isFromCache()) {
                res.setException(new FirebaseFirestoreException("Failed to get document because the client is offline.", FirebaseFirestoreException.Code.UNAVAILABLE));
            } else if (snapshot.exists() && snapshot.getMetadata().isFromCache() && source == Source.SERVER) {
                res.setException(new FirebaseFirestoreException("Failed to get document from server. (However, this document does exist in the local cache. Run again without setting source to SERVER to retrieve the cached document.)", FirebaseFirestoreException.Code.UNAVAILABLE));
            } else {
                res.setResult(snapshot);
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw Assert.fail(e, "Failed to register a listener for a single document", new Object[0]);
        } catch (ExecutionException e2) {
            throw Assert.fail(e2, "Failed to register a listener for a single document", new Object[0]);
        }
    }

    public ListenerRegistration addSnapshotListener(EventListener<DocumentSnapshot> listener) {
        return addSnapshotListener(MetadataChanges.EXCLUDE, listener);
    }

    public ListenerRegistration addSnapshotListener(Executor executor, EventListener<DocumentSnapshot> listener) {
        return addSnapshotListener(executor, MetadataChanges.EXCLUDE, listener);
    }

    public ListenerRegistration addSnapshotListener(Activity activity, EventListener<DocumentSnapshot> listener) {
        return addSnapshotListener(activity, MetadataChanges.EXCLUDE, listener);
    }

    public ListenerRegistration addSnapshotListener(MetadataChanges metadataChanges, EventListener<DocumentSnapshot> listener) {
        return addSnapshotListener(Executors.DEFAULT_CALLBACK_EXECUTOR, metadataChanges, listener);
    }

    public ListenerRegistration addSnapshotListener(Executor executor, MetadataChanges metadataChanges, EventListener<DocumentSnapshot> listener) {
        Preconditions.checkNotNull(executor, "Provided executor must not be null.");
        Preconditions.checkNotNull(metadataChanges, "Provided MetadataChanges value must not be null.");
        Preconditions.checkNotNull(listener, "Provided EventListener must not be null.");
        return addSnapshotListenerInternal(executor, internalOptions(metadataChanges), null, listener);
    }

    public ListenerRegistration addSnapshotListener(Activity activity, MetadataChanges metadataChanges, EventListener<DocumentSnapshot> listener) {
        Preconditions.checkNotNull(activity, "Provided activity must not be null.");
        Preconditions.checkNotNull(metadataChanges, "Provided MetadataChanges value must not be null.");
        Preconditions.checkNotNull(listener, "Provided EventListener must not be null.");
        return addSnapshotListenerInternal(Executors.DEFAULT_CALLBACK_EXECUTOR, internalOptions(metadataChanges), activity, listener);
    }

    public ListenerRegistration addSnapshotListener(SnapshotListenOptions options, EventListener<DocumentSnapshot> listener) {
        Preconditions.checkNotNull(options, "Provided options value must not be null.");
        Preconditions.checkNotNull(listener, "Provided EventListener must not be null.");
        return addSnapshotListenerInternal(options.getExecutor(), internalOptions(options.getMetadataChanges(), options.getSource()), options.getActivity(), listener);
    }

    private ListenerRegistration addSnapshotListenerInternal(Executor userExecutor, final EventManager.ListenOptions options, final Activity activity, final EventListener<DocumentSnapshot> userListener) {
        EventListener<ViewSnapshot> viewListener = new EventListener() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda5
            @Override // com.google.firebase.firestore.EventListener
            public final void onEvent(Object obj, FirebaseFirestoreException firebaseFirestoreException) {
                this.f$0.m8322xb3ec08f7(userListener, (ViewSnapshot) obj, firebaseFirestoreException);
            }
        };
        final AsyncEventListener<ViewSnapshot> asyncListener = new AsyncEventListener<>(userExecutor, viewListener);
        final com.google.firebase.firestore.core.Query query = asQuery();
        return (ListenerRegistration) this.firestore.callClient(new Function() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda6
            @Override // com.google.firebase.firestore.util.Function
            public final Object apply(Object obj) {
                return DocumentReference.lambda$addSnapshotListenerInternal$8(query, options, asyncListener, activity, (FirestoreClient) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$addSnapshotListenerInternal$6$com-google-firebase-firestore-DocumentReference, reason: not valid java name */
    /* synthetic */ void m8322xb3ec08f7(EventListener userListener, ViewSnapshot snapshot, FirebaseFirestoreException error) {
        DocumentSnapshot documentSnapshot;
        if (error != null) {
            userListener.onEvent(null, error);
            return;
        }
        Assert.hardAssert(snapshot != null, "Got event without value or error set", new Object[0]);
        Assert.hardAssert(snapshot.getDocuments().size() <= 1, "Too many documents returned on a document query", new Object[0]);
        Document document = snapshot.getDocuments().getDocument(this.key);
        if (document != null) {
            boolean hasPendingWrites = snapshot.getMutatedKeys().contains(document.getKey());
            documentSnapshot = DocumentSnapshot.fromDocument(this.firestore, document, snapshot.isFromCache(), hasPendingWrites);
        } else {
            documentSnapshot = DocumentSnapshot.fromNoDocument(this.firestore, this.key, snapshot.isFromCache());
        }
        userListener.onEvent(documentSnapshot, null);
    }

    static /* synthetic */ ListenerRegistration lambda$addSnapshotListenerInternal$8(com.google.firebase.firestore.core.Query query, EventManager.ListenOptions options, final AsyncEventListener asyncListener, Activity activity, final FirestoreClient client) {
        final QueryListener queryListener = client.listen(new QueryOrPipeline.QueryWrapper(query), options, asyncListener);
        return ActivityScope.bind(activity, new ListenerRegistration() { // from class: com.google.firebase.firestore.DocumentReference$$ExternalSyntheticLambda8
            @Override // com.google.firebase.firestore.ListenerRegistration
            public final void remove() {
                DocumentReference.lambda$addSnapshotListenerInternal$7(asyncListener, client, queryListener);
            }
        });
    }

    static /* synthetic */ void lambda$addSnapshotListenerInternal$7(AsyncEventListener asyncListener, FirestoreClient client, QueryListener queryListener) {
        asyncListener.mute();
        client.stopListening(queryListener);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof DocumentReference)) {
            return false;
        }
        DocumentReference that = (DocumentReference) o;
        return this.key.equals(that.key) && this.firestore.equals(that.firestore);
    }

    public int hashCode() {
        int result = this.key.hashCode();
        return (result * 31) + this.firestore.hashCode();
    }

    public String toString() {
        return "DocumentReference{key=" + this.key + ", firestore=" + this.firestore + AbstractJsonLexerKt.END_OBJ;
    }

    private com.google.firebase.firestore.core.Query asQuery() {
        return com.google.firebase.firestore.core.Query.atPath(this.key.getPath());
    }

    private static EventManager.ListenOptions internalOptions(MetadataChanges metadataChanges) {
        return internalOptions(metadataChanges, ListenSource.DEFAULT);
    }

    private static EventManager.ListenOptions internalOptions(MetadataChanges metadataChanges, ListenSource source) {
        EventManager.ListenOptions internalOptions = new EventManager.ListenOptions();
        internalOptions.includeDocumentMetadataChanges = metadataChanges == MetadataChanges.INCLUDE;
        internalOptions.includeQueryMetadataChanges = metadataChanges == MetadataChanges.INCLUDE;
        internalOptions.waitForSyncWhenOnline = false;
        internalOptions.source = source;
        return internalOptions;
    }
}
