package androidx.work.impl.utils;

import androidx.autofill.HintConstants;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.work.ListenableFutureKt;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StatusRunnable.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0002H\u0000\u001a$\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a(\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\bH\u0000\u001a(\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\bH\u0000\u001a(\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a4\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0001\"\u0004\b\u0000\u0010\u0014*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00140\u0016H\u0002¨\u0006\u0017"}, d2 = {"forStringIds", "Lcom/google/common/util/concurrent/ListenableFuture;", "", "Landroidx/work/WorkInfo;", "Landroidx/work/impl/WorkDatabase;", "executor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "ids", "", "forUUID", TtmlNode.ATTR_ID, "Ljava/util/UUID;", "forTag", "tag", "forUniqueWork", HintConstants.AUTOFILL_HINT_NAME, "forWorkQuerySpec", "querySpec", "Landroidx/work/WorkQuery;", "loadStatusFuture", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function1;", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class StatusRunnable {
    public static final ListenableFuture<List<WorkInfo>> forStringIds(WorkDatabase $this$forStringIds, TaskExecutor executor, final List<String> ids) {
        Intrinsics.checkNotNullParameter($this$forStringIds, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(ids, "ids");
        return loadStatusFuture($this$forStringIds, executor, new Function1() { // from class: androidx.work.impl.utils.StatusRunnable$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StatusRunnable.forStringIds$lambda$0(ids, (WorkDatabase) obj);
            }
        });
    }

    static final List forStringIds$lambda$0(List $ids, WorkDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        List<WorkInfo> listApply = WorkSpec.WORK_INFO_MAPPER.apply(db.workSpecDao().getWorkStatusPojoForIds($ids));
        Intrinsics.checkNotNullExpressionValue(listApply, "apply(...)");
        return listApply;
    }

    public static final ListenableFuture<WorkInfo> forUUID(WorkDatabase $this$forUUID, TaskExecutor executor, final UUID id) {
        Intrinsics.checkNotNullParameter($this$forUUID, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(id, "id");
        return loadStatusFuture($this$forUUID, executor, new Function1() { // from class: androidx.work.impl.utils.StatusRunnable$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StatusRunnable.forUUID$lambda$1(id, (WorkDatabase) obj);
            }
        });
    }

    static final WorkInfo forUUID$lambda$1(UUID $id, WorkDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        WorkSpecDao workSpecDao = db.workSpecDao();
        String string = $id.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        WorkSpec.WorkInfoPojo workStatusPojoForId = workSpecDao.getWorkStatusPojoForId(string);
        if (workStatusPojoForId != null) {
            return workStatusPojoForId.toWorkInfo();
        }
        return null;
    }

    public static final ListenableFuture<List<WorkInfo>> forTag(WorkDatabase $this$forTag, TaskExecutor executor, final String tag) {
        Intrinsics.checkNotNullParameter($this$forTag, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(tag, "tag");
        return loadStatusFuture($this$forTag, executor, new Function1() { // from class: androidx.work.impl.utils.StatusRunnable$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StatusRunnable.forTag$lambda$2(tag, (WorkDatabase) obj);
            }
        });
    }

    static final List forTag$lambda$2(String $tag, WorkDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        List<WorkInfo> listApply = WorkSpec.WORK_INFO_MAPPER.apply(db.workSpecDao().getWorkStatusPojoForTag($tag));
        Intrinsics.checkNotNullExpressionValue(listApply, "apply(...)");
        return listApply;
    }

    public static final ListenableFuture<List<WorkInfo>> forUniqueWork(WorkDatabase $this$forUniqueWork, TaskExecutor executor, final String name) {
        Intrinsics.checkNotNullParameter($this$forUniqueWork, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(name, "name");
        return loadStatusFuture($this$forUniqueWork, executor, new Function1() { // from class: androidx.work.impl.utils.StatusRunnable$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StatusRunnable.forUniqueWork$lambda$3(name, (WorkDatabase) obj);
            }
        });
    }

    static final List forUniqueWork$lambda$3(String $name, WorkDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        List<WorkInfo> listApply = WorkSpec.WORK_INFO_MAPPER.apply(db.workSpecDao().getWorkStatusPojoForName($name));
        Intrinsics.checkNotNullExpressionValue(listApply, "apply(...)");
        return listApply;
    }

    public static final ListenableFuture<List<WorkInfo>> forWorkQuerySpec(WorkDatabase $this$forWorkQuerySpec, TaskExecutor executor, final WorkQuery querySpec) {
        Intrinsics.checkNotNullParameter($this$forWorkQuerySpec, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(querySpec, "querySpec");
        return loadStatusFuture($this$forWorkQuerySpec, executor, new Function1() { // from class: androidx.work.impl.utils.StatusRunnable$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StatusRunnable.forWorkQuerySpec$lambda$4(querySpec, (WorkDatabase) obj);
            }
        });
    }

    static final List forWorkQuerySpec$lambda$4(WorkQuery $querySpec, WorkDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        List<WorkInfo> listApply = WorkSpec.WORK_INFO_MAPPER.apply(db.rawWorkInfoDao().getWorkInfoPojos(RawQueries.toRawQuery($querySpec)));
        Intrinsics.checkNotNullExpressionValue(listApply, "apply(...)");
        return listApply;
    }

    private static final <T> ListenableFuture<T> loadStatusFuture(final WorkDatabase $this$loadStatusFuture, TaskExecutor executor, final Function1<? super WorkDatabase, ? extends T> function1) {
        SerialExecutor serialTaskExecutor = executor.getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return ListenableFutureKt.executeAsync(serialTaskExecutor, "loadStatusFuture", new Function0() { // from class: androidx.work.impl.utils.StatusRunnable$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return function1.invoke($this$loadStatusFuture);
            }
        });
    }
}
