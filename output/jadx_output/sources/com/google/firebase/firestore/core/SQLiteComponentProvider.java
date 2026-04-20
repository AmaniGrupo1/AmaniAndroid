package com.google.firebase.firestore.core;

import com.google.firebase.firestore.FirebaseFirestoreSettings;
import com.google.firebase.firestore.core.ComponentProvider;
import com.google.firebase.firestore.local.IndexBackfiller;
import com.google.firebase.firestore.local.LocalSerializer;
import com.google.firebase.firestore.local.LruDelegate;
import com.google.firebase.firestore.local.LruGarbageCollector;
import com.google.firebase.firestore.local.Persistence;
import com.google.firebase.firestore.local.SQLitePersistence;
import com.google.firebase.firestore.local.Scheduler;

/* JADX INFO: loaded from: classes22.dex */
public class SQLiteComponentProvider extends MemoryComponentProvider {
    public SQLiteComponentProvider(FirebaseFirestoreSettings settings) {
        super(settings);
    }

    @Override // com.google.firebase.firestore.core.MemoryComponentProvider, com.google.firebase.firestore.core.ComponentProvider
    protected Scheduler createGarbageCollectionScheduler(ComponentProvider.Configuration configuration) {
        LruDelegate lruDelegate = ((SQLitePersistence) getPersistence()).getReferenceDelegate();
        LruGarbageCollector gc = lruDelegate.getGarbageCollector();
        return gc.newScheduler(configuration.asyncQueue, getLocalStore());
    }

    @Override // com.google.firebase.firestore.core.MemoryComponentProvider, com.google.firebase.firestore.core.ComponentProvider
    protected IndexBackfiller createIndexBackfiller(ComponentProvider.Configuration configuration) {
        return new IndexBackfiller(getPersistence(), configuration.asyncQueue, getLocalStore());
    }

    @Override // com.google.firebase.firestore.core.MemoryComponentProvider, com.google.firebase.firestore.core.ComponentProvider
    protected Persistence createPersistence(ComponentProvider.Configuration configuration) {
        LocalSerializer serializer = new LocalSerializer(getRemoteSerializer());
        LruGarbageCollector.Params params = LruGarbageCollector.Params.WithCacheSizeBytes(this.settings.getCacheSizeBytes());
        return new SQLitePersistence(configuration.context, configuration.databaseInfo.getPersistenceKey(), configuration.databaseInfo.getDatabaseId(), serializer, params);
    }
}
