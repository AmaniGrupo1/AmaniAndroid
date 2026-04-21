package com.google.firebase.firestore.core;

import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.EventListener;
import com.google.firebase.firestore.ListenSource;
import com.google.firebase.firestore.core.SyncEngine;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Util;
import io.grpc.Status;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes22.dex */
public final class EventManager implements SyncEngine.SyncEngineCallback {
    private final SyncEngine syncEngine;
    private final Set<EventListener<Void>> snapshotsInSyncListeners = new HashSet();
    private OnlineState onlineState = OnlineState.UNKNOWN;
    private final Map<QueryOrPipeline, QueryListenersInfo> queries = new HashMap();

    public static class ListenOptions {
        public boolean includeDocumentMetadataChanges;
        public boolean includeQueryMetadataChanges;
        public boolean waitForSyncWhenOnline;
        public ListenSource source = ListenSource.DEFAULT;
        public DocumentSnapshot.ServerTimestampBehavior serverTimestampBehavior = DocumentSnapshot.ServerTimestampBehavior.NONE;
    }

    private enum ListenerRemovalAction {
        TERMINATE_LOCAL_LISTEN_AND_REQUIRE_WATCH_DISCONNECTION,
        TERMINATE_LOCAL_LISTEN_ONLY,
        REQUIRE_WATCH_DISCONNECTION_ONLY,
        NO_ACTION_REQUIRED
    }

    private enum ListenerSetupAction {
        INITIALIZE_LOCAL_LISTEN_AND_REQUIRE_WATCH_CONNECTION,
        INITIALIZE_LOCAL_LISTEN_ONLY,
        REQUIRE_WATCH_CONNECTION_ONLY,
        NO_ACTION_REQUIRED
    }

    private static class QueryListenersInfo {
        private final List<QueryListener> listeners = new ArrayList();
        private int targetId;
        private ViewSnapshot viewSnapshot;

        QueryListenersInfo() {
        }

        boolean hasRemoteListeners() {
            for (QueryListener listener : this.listeners) {
                if (listener.listensToRemoteStore()) {
                    return true;
                }
            }
            return false;
        }
    }

    public EventManager(SyncEngine syncEngine) {
        this.syncEngine = syncEngine;
        syncEngine.setCallback(this);
    }

    public int addQueryListener(QueryListener queryListener) {
        ListenerSetupAction listenerSetupAction;
        QueryOrPipeline query = queryListener.getQuery();
        ListenerSetupAction listenerAction = ListenerSetupAction.NO_ACTION_REQUIRED;
        QueryListenersInfo queryInfo = this.queries.get(query);
        if (queryInfo == null) {
            queryInfo = new QueryListenersInfo();
            this.queries.put(query, queryInfo);
            if (queryListener.listensToRemoteStore()) {
                listenerSetupAction = ListenerSetupAction.INITIALIZE_LOCAL_LISTEN_AND_REQUIRE_WATCH_CONNECTION;
            } else {
                listenerSetupAction = ListenerSetupAction.INITIALIZE_LOCAL_LISTEN_ONLY;
            }
            listenerAction = listenerSetupAction;
        } else if (!queryInfo.hasRemoteListeners() && queryListener.listensToRemoteStore()) {
            listenerAction = ListenerSetupAction.REQUIRE_WATCH_CONNECTION_ONLY;
        }
        queryInfo.listeners.add(queryListener);
        boolean raisedEvent = queryListener.onOnlineStateChanged(this.onlineState);
        Assert.hardAssert(!raisedEvent, "onOnlineStateChanged() shouldn't raise an event for brand-new listeners.", new Object[0]);
        if (queryInfo.viewSnapshot != null) {
            boolean raisedEvent2 = queryListener.onViewSnapshot(queryInfo.viewSnapshot);
            if (raisedEvent2) {
                raiseSnapshotsInSyncEvent();
            }
        }
        switch (listenerAction) {
            case INITIALIZE_LOCAL_LISTEN_AND_REQUIRE_WATCH_CONNECTION:
                queryInfo.targetId = this.syncEngine.listen(query, true);
                break;
            case INITIALIZE_LOCAL_LISTEN_ONLY:
                queryInfo.targetId = this.syncEngine.listen(query, false);
                break;
            case REQUIRE_WATCH_CONNECTION_ONLY:
                this.syncEngine.listenToRemoteStore(query);
                break;
        }
        return queryInfo.targetId;
    }

    public void removeQueryListener(QueryListener listener) {
        ListenerRemovalAction listenerRemovalAction;
        QueryOrPipeline query = listener.getQuery();
        QueryListenersInfo queryInfo = this.queries.get(query);
        ListenerRemovalAction listenerAction = ListenerRemovalAction.NO_ACTION_REQUIRED;
        if (queryInfo == null) {
        }
        queryInfo.listeners.remove(listener);
        if (queryInfo.listeners.isEmpty()) {
            if (listener.listensToRemoteStore()) {
                listenerRemovalAction = ListenerRemovalAction.TERMINATE_LOCAL_LISTEN_AND_REQUIRE_WATCH_DISCONNECTION;
            } else {
                listenerRemovalAction = ListenerRemovalAction.TERMINATE_LOCAL_LISTEN_ONLY;
            }
            listenerAction = listenerRemovalAction;
        } else if (!queryInfo.hasRemoteListeners() && listener.listensToRemoteStore()) {
            listenerAction = ListenerRemovalAction.REQUIRE_WATCH_DISCONNECTION_ONLY;
        }
        switch (listenerAction) {
            case TERMINATE_LOCAL_LISTEN_AND_REQUIRE_WATCH_DISCONNECTION:
                this.queries.remove(query);
                this.syncEngine.stopListening(query, true);
                break;
            case TERMINATE_LOCAL_LISTEN_ONLY:
                this.queries.remove(query);
                this.syncEngine.stopListening(query, false);
                break;
            case REQUIRE_WATCH_DISCONNECTION_ONLY:
                this.syncEngine.stopListeningToRemoteStore(query);
                break;
        }
    }

    public void addSnapshotsInSyncListener(EventListener<Void> listener) {
        this.snapshotsInSyncListeners.add(listener);
        listener.onEvent(null, null);
    }

    public void removeSnapshotsInSyncListener(EventListener<Void> listener) {
        this.snapshotsInSyncListeners.remove(listener);
    }

    private void raiseSnapshotsInSyncEvent() {
        for (EventListener<Void> listener : this.snapshotsInSyncListeners) {
            listener.onEvent(null, null);
        }
    }

    @Override // com.google.firebase.firestore.core.SyncEngine.SyncEngineCallback
    public void onViewSnapshots(List<ViewSnapshot> snapshotList) {
        boolean raisedEvent = false;
        for (ViewSnapshot viewSnapshot : snapshotList) {
            QueryOrPipeline query = viewSnapshot.getQuery();
            QueryListenersInfo info = this.queries.get(query);
            if (info != null) {
                for (QueryListener listener : info.listeners) {
                    if (listener.onViewSnapshot(viewSnapshot)) {
                        raisedEvent = true;
                    }
                }
                info.viewSnapshot = viewSnapshot;
            }
        }
        if (raisedEvent) {
            raiseSnapshotsInSyncEvent();
        }
    }

    @Override // com.google.firebase.firestore.core.SyncEngine.SyncEngineCallback
    public void onError(QueryOrPipeline query, Status error) {
        QueryListenersInfo info = this.queries.get(query);
        if (info != null) {
            for (QueryListener listener : info.listeners) {
                listener.onError(Util.exceptionFromStatus(error));
            }
        }
        this.queries.remove(query);
    }

    @Override // com.google.firebase.firestore.core.SyncEngine.SyncEngineCallback
    public void handleOnlineStateChange(OnlineState onlineState) {
        boolean raisedEvent = false;
        this.onlineState = onlineState;
        for (QueryListenersInfo info : this.queries.values()) {
            for (QueryListener listener : info.listeners) {
                if (listener.onOnlineStateChanged(onlineState)) {
                    raisedEvent = true;
                }
            }
        }
        if (raisedEvent) {
            raiseSnapshotsInSyncEvent();
        }
    }
}
