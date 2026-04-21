package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: DataStoreImpl.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$InitDataStore", f = "DataStoreImpl.kt", i = {}, l = {449, 453}, m = "doRun", n = {}, s = {}, v = 1)
final class DataStoreImpl$InitDataStore$doRun$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DataStoreImpl<T>.InitDataStore this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$InitDataStore$doRun$1(DataStoreImpl<T>.InitDataStore initDataStore, Continuation<? super DataStoreImpl$InitDataStore$doRun$1> continuation) {
        super(continuation);
        this.this$0 = initDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doRun(this);
    }
}
