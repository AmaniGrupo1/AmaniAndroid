package androidx.datastore.core;

import androidx.datastore.core.DataStoreImpl;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: DataStoreImpl.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/datastore/core/Data;", ExifInterface.GPS_DIRECTION_TRUE}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1", f = "DataStoreImpl.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2}, l = {456, 478, 568, 486}, m = "invokeSuspend", n = {"updateLock", "initializationComplete", "currentData", "updateLock", "initializationComplete", "currentData", "api", "initializationComplete", "currentData", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"}, v = 1)
final class DataStoreImpl$InitDataStore$doRun$initData$1<T> extends SuspendLambda implements Function1<Continuation<? super Data<T>>, Object> {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;
    final /* synthetic */ DataStoreImpl<T>.InitDataStore this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$InitDataStore$doRun$initData$1(DataStoreImpl<T> dataStoreImpl, DataStoreImpl<T>.InitDataStore initDataStore, Continuation<? super DataStoreImpl$InitDataStore$doRun$initData$1> continuation) {
        super(1, continuation);
        this.this$0 = dataStoreImpl;
        this.this$1 = initDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DataStoreImpl$InitDataStore$doRun$initData$1(this.this$0, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Data<T>> continuation) {
        return ((DataStoreImpl$InitDataStore$doRun$initData$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x012c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0166 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0167  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00f7 -> B:23:0x00fe). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws CorruptionException {
        Mutex mutex;
        Ref.BooleanRef booleanRef;
        Ref.ObjectRef objectRef;
        Object obj2;
        Object obj3;
        Ref.ObjectRef objectRef2;
        List list;
        DataStoreImpl$InitDataStore$doRun$initData$1<T> dataStoreImpl$InitDataStore$doRun$initData$1;
        Ref.BooleanRef booleanRef2;
        Ref.ObjectRef objectRef3;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
        Object obj4;
        Ref.ObjectRef objectRef4;
        Iterator<T> it;
        Mutex mutex2;
        Mutex mutex3;
        Object obj5;
        Ref.ObjectRef objectRef5;
        Mutex mutex4;
        Mutex mutex5;
        Ref.BooleanRef booleanRef3;
        Ref.ObjectRef objectRef6;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$12;
        Iterator<T> it2;
        DataStoreImpl$InitDataStore$doRun$initData$1<T> dataStoreImpl$InitDataStore$doRun$initData$12;
        Object obj6;
        int iHashCode;
        Object version;
        Object obj7;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Mutex mutexMutex$default = MutexKt.Mutex$default(false, 1, null);
                Ref.BooleanRef booleanRef4 = new Ref.BooleanRef();
                Ref.ObjectRef objectRef7 = new Ref.ObjectRef();
                this.L$0 = mutexMutex$default;
                this.L$1 = booleanRef4;
                this.L$2 = objectRef7;
                this.L$3 = objectRef7;
                this.label = 1;
                Object dataOrHandleCorruption = this.this$0.readDataOrHandleCorruption(true, this);
                if (dataOrHandleCorruption == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mutex = mutexMutex$default;
                booleanRef = booleanRef4;
                objectRef = objectRef7;
                obj2 = obj;
                obj3 = dataOrHandleCorruption;
                objectRef2 = objectRef;
                objectRef2.element = (T) ((Data) obj3).getValue();
                DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$13 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1(mutex, booleanRef, objectRef, this.this$0);
                list = ((DataStoreImpl.InitDataStore) this.this$1).initTasks;
                if (list == null) {
                    Iterator<T> it3 = list.iterator();
                    Ref.BooleanRef booleanRef5 = booleanRef;
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = dataStoreImpl$InitDataStore$doRun$initData$1$api$13;
                    obj4 = obj2;
                    booleanRef2 = booleanRef5;
                    Mutex mutex6 = mutex;
                    objectRef4 = objectRef;
                    it = it3;
                    mutex2 = mutex6;
                    dataStoreImpl$InitDataStore$doRun$initData$1 = this;
                    if (it.hasNext()) {
                        Function2 function2 = (Function2) it.next();
                        dataStoreImpl$InitDataStore$doRun$initData$1.L$0 = mutex2;
                        dataStoreImpl$InitDataStore$doRun$initData$1.L$1 = booleanRef2;
                        dataStoreImpl$InitDataStore$doRun$initData$1.L$2 = objectRef4;
                        dataStoreImpl$InitDataStore$doRun$initData$1.L$3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                        dataStoreImpl$InitDataStore$doRun$initData$1.L$4 = it;
                        dataStoreImpl$InitDataStore$doRun$initData$1.label = 2;
                        if (function2.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, dataStoreImpl$InitDataStore$doRun$initData$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        mutex5 = mutex2;
                        booleanRef3 = booleanRef2;
                        objectRef6 = objectRef4;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$12 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                        it2 = it;
                        dataStoreImpl$InitDataStore$doRun$initData$12 = dataStoreImpl$InitDataStore$doRun$initData$1;
                        dataStoreImpl$InitDataStore$doRun$initData$1 = dataStoreImpl$InitDataStore$doRun$initData$12;
                        it = it2;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = dataStoreImpl$InitDataStore$doRun$initData$1$api$12;
                        objectRef4 = objectRef6;
                        booleanRef2 = booleanRef3;
                        mutex2 = mutex5;
                        if (it.hasNext()) {
                            obj2 = obj4;
                            objectRef3 = objectRef4;
                            mutex = mutex2;
                            ((DataStoreImpl.InitDataStore) dataStoreImpl$InitDataStore$doRun$initData$1.this$1).initTasks = null;
                            mutex3 = mutex;
                            dataStoreImpl$InitDataStore$doRun$initData$1.L$0 = booleanRef2;
                            dataStoreImpl$InitDataStore$doRun$initData$1.L$1 = objectRef3;
                            dataStoreImpl$InitDataStore$doRun$initData$1.L$2 = mutex3;
                            dataStoreImpl$InitDataStore$doRun$initData$1.L$3 = null;
                            dataStoreImpl$InitDataStore$doRun$initData$1.L$4 = null;
                            dataStoreImpl$InitDataStore$doRun$initData$1.label = 3;
                            if (mutex3.lock(null, dataStoreImpl$InitDataStore$doRun$initData$1) != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj5 = null;
                            objectRef5 = objectRef3;
                            mutex4 = mutex3;
                            try {
                                booleanRef2.element = true;
                                Unit unit = Unit.INSTANCE;
                                mutex4.unlock(obj5);
                                obj6 = objectRef5.element;
                                T t = objectRef5.element;
                                iHashCode = t != null ? t.hashCode() : 0;
                                dataStoreImpl$InitDataStore$doRun$initData$1.L$0 = obj6;
                                dataStoreImpl$InitDataStore$doRun$initData$1.L$1 = null;
                                dataStoreImpl$InitDataStore$doRun$initData$1.L$2 = null;
                                dataStoreImpl$InitDataStore$doRun$initData$1.I$0 = iHashCode;
                                dataStoreImpl$InitDataStore$doRun$initData$1.label = 4;
                                version = dataStoreImpl$InitDataStore$doRun$initData$1.this$0.getCoordinator().getVersion(dataStoreImpl$InitDataStore$doRun$initData$1);
                                if (version != coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                obj7 = version;
                                return new Data(obj6, iHashCode, ((Number) obj7).intValue());
                            } catch (Throwable th) {
                                mutex4.unlock(obj5);
                                throw th;
                            }
                        }
                    }
                } else {
                    dataStoreImpl$InitDataStore$doRun$initData$1 = this;
                    booleanRef2 = booleanRef;
                    objectRef3 = objectRef;
                    ((DataStoreImpl.InitDataStore) dataStoreImpl$InitDataStore$doRun$initData$1.this$1).initTasks = null;
                    mutex3 = mutex;
                    dataStoreImpl$InitDataStore$doRun$initData$1.L$0 = booleanRef2;
                    dataStoreImpl$InitDataStore$doRun$initData$1.L$1 = objectRef3;
                    dataStoreImpl$InitDataStore$doRun$initData$1.L$2 = mutex3;
                    dataStoreImpl$InitDataStore$doRun$initData$1.L$3 = null;
                    dataStoreImpl$InitDataStore$doRun$initData$1.L$4 = null;
                    dataStoreImpl$InitDataStore$doRun$initData$1.label = 3;
                    if (mutex3.lock(null, dataStoreImpl$InitDataStore$doRun$initData$1) != coroutine_suspended) {
                    }
                }
                break;
            case 1:
                obj3 = obj;
                Ref.ObjectRef objectRef8 = (Ref.ObjectRef) this.L$3;
                Ref.ObjectRef objectRef9 = (Ref.ObjectRef) this.L$2;
                Ref.BooleanRef booleanRef6 = (Ref.BooleanRef) this.L$1;
                Mutex mutex7 = (Mutex) this.L$0;
                ResultKt.throwOnFailure(obj3);
                mutex = mutex7;
                booleanRef = booleanRef6;
                objectRef = objectRef9;
                objectRef2 = objectRef8;
                obj2 = obj3;
                objectRef2.element = (T) ((Data) obj3).getValue();
                DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$132 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1(mutex, booleanRef, objectRef, this.this$0);
                list = ((DataStoreImpl.InitDataStore) this.this$1).initTasks;
                if (list == null) {
                }
                break;
            case 2:
                obj4 = obj;
                Iterator<T> it4 = (Iterator) this.L$4;
                DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$14 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1) this.L$3;
                Ref.ObjectRef objectRef10 = (Ref.ObjectRef) this.L$2;
                Ref.BooleanRef booleanRef7 = (Ref.BooleanRef) this.L$1;
                Mutex mutex8 = (Mutex) this.L$0;
                ResultKt.throwOnFailure(obj4);
                mutex5 = mutex8;
                booleanRef3 = booleanRef7;
                objectRef6 = objectRef10;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$12 = dataStoreImpl$InitDataStore$doRun$initData$1$api$14;
                it2 = it4;
                dataStoreImpl$InitDataStore$doRun$initData$12 = this;
                dataStoreImpl$InitDataStore$doRun$initData$1 = dataStoreImpl$InitDataStore$doRun$initData$12;
                it = it2;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = dataStoreImpl$InitDataStore$doRun$initData$1$api$12;
                objectRef4 = objectRef6;
                booleanRef2 = booleanRef3;
                mutex2 = mutex5;
                if (it.hasNext()) {
                }
                break;
            case 3:
                Mutex mutex9 = (Mutex) this.L$2;
                Ref.ObjectRef objectRef11 = (Ref.ObjectRef) this.L$1;
                Ref.BooleanRef booleanRef8 = (Ref.BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                booleanRef2 = booleanRef8;
                objectRef5 = objectRef11;
                mutex4 = mutex9;
                obj5 = null;
                dataStoreImpl$InitDataStore$doRun$initData$1 = this;
                booleanRef2.element = true;
                Unit unit2 = Unit.INSTANCE;
                mutex4.unlock(obj5);
                obj6 = objectRef5.element;
                T t2 = objectRef5.element;
                if (t2 != null) {
                }
                dataStoreImpl$InitDataStore$doRun$initData$1.L$0 = obj6;
                dataStoreImpl$InitDataStore$doRun$initData$1.L$1 = null;
                dataStoreImpl$InitDataStore$doRun$initData$1.L$2 = null;
                dataStoreImpl$InitDataStore$doRun$initData$1.I$0 = iHashCode;
                dataStoreImpl$InitDataStore$doRun$initData$1.label = 4;
                version = dataStoreImpl$InitDataStore$doRun$initData$1.this$0.getCoordinator().getVersion(dataStoreImpl$InitDataStore$doRun$initData$1);
                if (version != coroutine_suspended) {
                }
                break;
            case 4:
                obj7 = obj;
                int i = this.I$0;
                Object obj8 = this.L$0;
                ResultKt.throwOnFailure(obj7);
                obj6 = obj8;
                iHashCode = i;
                return new Data(obj6, iHashCode, ((Number) obj7).intValue());
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
