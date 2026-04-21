package org.ies.tierno.applicationamani.data.remoto;

import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FirebaseInstance.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\rJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;", "", "<init>", "()V", "RTDB_URL", "", "databaseInstance", "Lcom/google/firebase/database/FirebaseDatabase;", "getDatabaseInstance", "()Lcom/google/firebase/database/FirebaseDatabase;", "databaseInstance$delegate", "Lkotlin/Lazy;", "storageInstance", "Lcom/google/firebase/storage/FirebaseStorage;", "getStorageInstance", "()Lcom/google/firebase/storage/FirebaseStorage;", "storageInstance$delegate", "getDatabase", "getStorage", "getReference", "Lcom/google/firebase/database/DatabaseReference;", "path", "getStorageReference", "Lcom/google/firebase/storage/StorageReference;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FirebaseInstance {
    private static final String RTDB_URL = "https://amani-160bf-default-rtdb.europe-west1.firebasedatabase.app";
    public static final FirebaseInstance INSTANCE = new FirebaseInstance();

    /* JADX INFO: renamed from: databaseInstance$delegate, reason: from kotlin metadata */
    private static final Lazy databaseInstance = LazyKt.lazy(new Function0() { // from class: org.ies.tierno.applicationamani.data.remoto.FirebaseInstance$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FirebaseInstance.databaseInstance_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: storageInstance$delegate, reason: from kotlin metadata */
    private static final Lazy storageInstance = LazyKt.lazy(new Function0() { // from class: org.ies.tierno.applicationamani.data.remoto.FirebaseInstance$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FirebaseInstance.storageInstance_delegate$lambda$1();
        }
    });
    public static final int $stable = 8;

    private FirebaseInstance() {
    }

    private final FirebaseDatabase getDatabaseInstance() {
        return (FirebaseDatabase) databaseInstance.getValue();
    }

    static final FirebaseDatabase databaseInstance_delegate$lambda$0() {
        FirebaseDatabase firebaseDatabase = FirebaseDatabase.getInstance(RTDB_URL);
        Intrinsics.checkNotNullExpressionValue(firebaseDatabase, "getInstance(...)");
        return firebaseDatabase;
    }

    private final FirebaseStorage getStorageInstance() {
        return (FirebaseStorage) storageInstance.getValue();
    }

    static final FirebaseStorage storageInstance_delegate$lambda$1() {
        FirebaseStorage firebaseStorage = FirebaseStorage.getInstance();
        Intrinsics.checkNotNullExpressionValue(firebaseStorage, "getInstance(...)");
        return firebaseStorage;
    }

    public final FirebaseDatabase getDatabase() {
        return getDatabaseInstance();
    }

    public final FirebaseStorage getStorage() {
        return getStorageInstance();
    }

    public final DatabaseReference getReference(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        DatabaseReference reference = getDatabaseInstance().getReference(path);
        Intrinsics.checkNotNullExpressionValue(reference, "getReference(...)");
        return reference;
    }

    public final StorageReference getStorageReference(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        StorageReference reference = getStorageInstance().getReference(path);
        Intrinsics.checkNotNullExpressionValue(reference, "getReference(...)");
        return reference;
    }
}
