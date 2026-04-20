package com.google.firebase.database;

import com.google.firebase.database.ChildEvent;
import com.google.firebase.database.core.Repo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: compiled from: Database.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, d2 = {"com/google/firebase/database/DatabaseKt$childEvents$1$listener$1", "Lcom/google/firebase/database/ChildEventListener;", "onChildAdded", "", "snapshot", "Lcom/google/firebase/database/DataSnapshot;", "previousChildName", "", "onChildChanged", "onChildRemoved", "onChildMoved", "onCancelled", "error", "Lcom/google/firebase/database/DatabaseError;", "com.google.firebase-firebase-database"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DatabaseKt$childEvents$1$listener$1 implements ChildEventListener {
    final /* synthetic */ ProducerScope<ChildEvent> $$this$callbackFlow;
    final /* synthetic */ Query $this_childEvents;

    /* JADX WARN: Multi-variable type inference failed */
    DatabaseKt$childEvents$1$listener$1(Query $receiver, ProducerScope<? super ChildEvent> producerScope) {
        this.$this_childEvents = $receiver;
        this.$$this$callbackFlow = producerScope;
    }

    @Override // com.google.firebase.database.ChildEventListener
    public void onChildAdded(final DataSnapshot snapshot, final String previousChildName) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        Repo repo = this.$this_childEvents.repo;
        final ProducerScope<ChildEvent> producerScope = this.$$this$callbackFlow;
        repo.scheduleNow(new Runnable() { // from class: com.google.firebase.database.DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ChannelsKt.trySendBlocking(producerScope, new ChildEvent.Added(snapshot, previousChildName));
            }
        });
    }

    @Override // com.google.firebase.database.ChildEventListener
    public void onChildChanged(final DataSnapshot snapshot, final String previousChildName) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        Repo repo = this.$this_childEvents.repo;
        final ProducerScope<ChildEvent> producerScope = this.$$this$callbackFlow;
        repo.scheduleNow(new Runnable() { // from class: com.google.firebase.database.DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ChannelsKt.trySendBlocking(producerScope, new ChildEvent.Changed(snapshot, previousChildName));
            }
        });
    }

    @Override // com.google.firebase.database.ChildEventListener
    public void onChildRemoved(final DataSnapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        Repo repo = this.$this_childEvents.repo;
        final ProducerScope<ChildEvent> producerScope = this.$$this$callbackFlow;
        repo.scheduleNow(new Runnable() { // from class: com.google.firebase.database.DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ChannelsKt.trySendBlocking(producerScope, new ChildEvent.Removed(snapshot));
            }
        });
    }

    @Override // com.google.firebase.database.ChildEventListener
    public void onChildMoved(final DataSnapshot snapshot, final String previousChildName) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        Repo repo = this.$this_childEvents.repo;
        final ProducerScope<ChildEvent> producerScope = this.$$this$callbackFlow;
        repo.scheduleNow(new Runnable() { // from class: com.google.firebase.database.DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ChannelsKt.trySendBlocking(producerScope, new ChildEvent.Moved(snapshot, previousChildName));
            }
        });
    }

    @Override // com.google.firebase.database.ChildEventListener
    public void onCancelled(DatabaseError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        CoroutineScopeKt.cancel(this.$$this$callbackFlow, "Error getting Query childEvent", error.toException());
    }
}
