package androidx.datastore.core;

import androidx.core.view.MotionEventCompat;
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

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: DataMigrationInitializer.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\n"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "startingData"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2", f = "DataMigrationInitializer.kt", i = {0, 0}, l = {41, MotionEventCompat.AXIS_GENERIC_12}, m = "invokeSuspend", n = {"migration", "data"}, s = {"L$2", "L$3"}, v = 1)
final class DataMigrationInitializer$Companion$runMigrations$2<T> extends SuspendLambda implements Function2<T, Continuation<? super T>, Object> {
    final /* synthetic */ List<Function1<Continuation<? super Unit>, Object>> $cleanUps;
    final /* synthetic */ List<DataMigration<T>> $migrations;
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DataMigrationInitializer$Companion$runMigrations$2(List<? extends DataMigration<T>> list, List<Function1<Continuation<? super Unit>, Object>> list2, Continuation<? super DataMigrationInitializer$Companion$runMigrations$2> continuation) {
        super(2, continuation);
        this.$migrations = list;
        this.$cleanUps = list2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataMigrationInitializer$Companion$runMigrations$2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(this.$migrations, this.$cleanUps, continuation);
        dataMigrationInitializer$Companion$runMigrations$2.L$0 = obj;
        return dataMigrationInitializer$Companion$runMigrations$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(T t, Continuation<? super T> continuation) {
        return ((DataMigrationInitializer$Companion$runMigrations$2) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ab A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009c -> B:21:0x009e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00a4 -> B:23:0x00a6). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        List<Function1<Continuation<? super Unit>, Object>> list;
        Iterator<T> it;
        DataMigrationInitializer$Companion$runMigrations$2<T> dataMigrationInitializer$Companion$runMigrations$2;
        Object obj3;
        DataMigration dataMigration;
        List<Function1<Continuation<? super Unit>, Object>> list2;
        int i;
        Object obj4;
        Object obj5;
        DataMigrationInitializer$Companion$runMigrations$2<T> dataMigrationInitializer$Companion$runMigrations$22;
        int i2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                obj2 = this.L$0;
                List<DataMigration<T>> list3 = this.$migrations;
                list = this.$cleanUps;
                it = list3.iterator();
                dataMigrationInitializer$Companion$runMigrations$2 = this;
                if (!it.hasNext()) {
                    DataMigration dataMigration2 = (DataMigration) it.next();
                    i = 0;
                    dataMigrationInitializer$Companion$runMigrations$2.L$0 = list;
                    dataMigrationInitializer$Companion$runMigrations$2.L$1 = it;
                    dataMigrationInitializer$Companion$runMigrations$2.L$2 = dataMigration2;
                    dataMigrationInitializer$Companion$runMigrations$2.L$3 = obj2;
                    dataMigrationInitializer$Companion$runMigrations$2.label = 1;
                    Object objShouldMigrate = dataMigration2.shouldMigrate(obj2, dataMigrationInitializer$Companion$runMigrations$2);
                    if (objShouldMigrate == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj6 = coroutine_suspended;
                    obj5 = obj;
                    obj = objShouldMigrate;
                    list2 = list;
                    obj3 = obj2;
                    obj4 = obj6;
                    dataMigration = dataMigration2;
                    if (!((Boolean) obj).booleanValue()) {
                        list2.add(new DataMigrationInitializer$Companion$runMigrations$2$1$1(dataMigration, null));
                        dataMigrationInitializer$Companion$runMigrations$2.L$0 = list2;
                        dataMigrationInitializer$Companion$runMigrations$2.L$1 = it;
                        dataMigrationInitializer$Companion$runMigrations$2.L$2 = null;
                        dataMigrationInitializer$Companion$runMigrations$2.L$3 = null;
                        dataMigrationInitializer$Companion$runMigrations$2.label = 2;
                        obj = dataMigration.migrate(obj3, dataMigrationInitializer$Companion$runMigrations$2);
                        if (obj == obj4) {
                            return obj4;
                        }
                        dataMigrationInitializer$Companion$runMigrations$22 = dataMigrationInitializer$Companion$runMigrations$2;
                        i2 = i;
                        dataMigrationInitializer$Companion$runMigrations$2 = dataMigrationInitializer$Companion$runMigrations$22;
                        obj3 = obj;
                        obj = obj5;
                        coroutine_suspended = obj4;
                        obj2 = obj3;
                        list = list2;
                        if (!it.hasNext()) {
                            return obj2;
                        }
                    } else {
                        obj = obj5;
                        coroutine_suspended = obj4;
                        obj2 = obj3;
                        list = list2;
                        if (!it.hasNext()) {
                        }
                    }
                }
                break;
            case 1:
                obj3 = this.L$3;
                DataMigration dataMigration3 = (DataMigration) this.L$2;
                it = (Iterator) this.L$1;
                List<Function1<Continuation<? super Unit>, Object>> list4 = (List) this.L$0;
                ResultKt.throwOnFailure(obj);
                dataMigration = dataMigration3;
                list2 = list4;
                i = 0;
                dataMigrationInitializer$Companion$runMigrations$2 = this;
                obj4 = coroutine_suspended;
                obj5 = obj;
                if (!((Boolean) obj).booleanValue()) {
                }
                break;
            case 2:
                i2 = 0;
                Iterator<T> it2 = (Iterator) this.L$1;
                List<Function1<Continuation<? super Unit>, Object>> list5 = (List) this.L$0;
                ResultKt.throwOnFailure(obj);
                it = it2;
                list2 = list5;
                dataMigrationInitializer$Companion$runMigrations$22 = this;
                obj4 = coroutine_suspended;
                obj5 = obj;
                dataMigrationInitializer$Companion$runMigrations$2 = dataMigrationInitializer$Companion$runMigrations$22;
                obj3 = obj;
                obj = obj5;
                coroutine_suspended = obj4;
                obj2 = obj3;
                list = list2;
                if (!it.hasNext()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
