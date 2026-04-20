package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: DataStoreImpl.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/WriteScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$writeData$2", f = "DataStoreImpl.kt", i = {0}, l = {372, 373}, m = "invokeSuspend", n = {"$this$writeScope"}, s = {"L$0"}, v = 1)
final class DataStoreImpl$writeData$2<T> extends SuspendLambda implements Function2<WriteScope<T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ T $newData;
    final /* synthetic */ Ref.IntRef $newVersion;
    final /* synthetic */ boolean $updateCache;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$writeData$2(Ref.IntRef intRef, DataStoreImpl<T> dataStoreImpl, T t, boolean z, Continuation<? super DataStoreImpl$writeData$2> continuation) {
        super(2, continuation);
        this.$newVersion = intRef;
        this.this$0 = dataStoreImpl;
        this.$newData = t;
        this.$updateCache = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(this.$newVersion, this.this$0, this.$newData, this.$updateCache, continuation);
        dataStoreImpl$writeData$2.L$0 = obj;
        return dataStoreImpl$writeData$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(WriteScope<T> writeScope, Continuation<? super Unit> continuation) {
        return ((DataStoreImpl$writeData$2) create(writeScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        Object $result2;
        WriteScope $this$writeScope;
        Ref.IntRef intRef;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                WriteScope $this$writeScope2 = (WriteScope) this.L$0;
                Ref.IntRef intRef2 = this.$newVersion;
                this.L$0 = $this$writeScope2;
                this.L$1 = intRef2;
                this.label = 1;
                Object objIncrementAndGetVersion = this.this$0.getCoordinator().incrementAndGetVersion(this);
                if (objIncrementAndGetVersion == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result2 = $result;
                $result = objIncrementAndGetVersion;
                $this$writeScope = $this$writeScope2;
                intRef = intRef2;
                intRef.element = ((Number) $result).intValue();
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if ($this$writeScope.writeData(this.$newData, this) != coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (this.$updateCache) {
                    DataStoreInMemoryCache dataStoreInMemoryCache = ((DataStoreImpl) this.this$0).inMemoryCache;
                    T t = this.$newData;
                    T t2 = this.$newData;
                    dataStoreInMemoryCache.tryUpdate(new Data(t, t2 != null ? t2.hashCode() : 0, this.$newVersion.element));
                }
                return Unit.INSTANCE;
            case 1:
                Ref.IntRef intRef3 = (Ref.IntRef) this.L$1;
                WriteScope $this$writeScope3 = (WriteScope) this.L$0;
                ResultKt.throwOnFailure($result);
                $this$writeScope = $this$writeScope3;
                intRef = intRef3;
                $result2 = $result;
                intRef.element = ((Number) $result).intValue();
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if ($this$writeScope.writeData(this.$newData, this) != coroutine_suspended) {
                }
                break;
            case 2:
                ResultKt.throwOnFailure($result);
                if (this.$updateCache) {
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
