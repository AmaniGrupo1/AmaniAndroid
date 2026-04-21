package androidx.work.impl.model;

import androidx.autofill.HintConstants;
import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: WorkSpecDao_Impl.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\u0018\u0000 Z2\u00020\u0001:\u0001ZB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0016J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\u0014\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00130\u0018H\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00132\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\"\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130\u00182\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\"\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130!2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00132\u0006\u0010#\u001a\u00020\u0011H\u0016J\u001c\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130!2\u0006\u0010#\u001a\u00020\u0011H\u0016J\u001c\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130\u00182\u0006\u0010#\u001a\u00020\u0011H\u0016J\u0016\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00132\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u001c\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130\u00182\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u001c\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130!2\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00110\u00132\u0006\u0010#\u001a\u00020\u0011H\u0016J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00110\u00132\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u000e\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\u000e\u0010.\u001a\b\u0012\u0004\u0012\u00020/0!H\u0016J\u0018\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001010\u00182\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00020\b0\u00132\u0006\u00103\u001a\u000204H\u0016J\u000e\u00105\u001a\b\u0012\u0004\u0012\u00020\b0\u0013H\u0016J\u0016\u00106\u001a\b\u0012\u0004\u0012\u00020\b0\u00132\u0006\u00107\u001a\u000204H\u0016J\u000e\u00108\u001a\b\u0012\u0004\u0012\u00020\b0\u0013H\u0016J\u000e\u00109\u001a\b\u0012\u0004\u0012\u00020\b0\u0013H\u0016J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u00020\b0\u00132\u0006\u0010;\u001a\u000201H\u0016J\b\u0010<\u001a\u000204H\u0016J\u0010\u0010=\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010>\u001a\u0002042\u0006\u0010?\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010@\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010A\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010B\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010C\u001a\u00020*H\u0016J\u0018\u0010D\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010E\u001a\u000201H\u0016J\u0010\u0010F\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010G\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010H\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010I\u001a\u000201H\u0016J\u0018\u0010J\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010K\u001a\u000204H\u0016J\u0018\u0010L\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010M\u001a\u000201H\u0016J\b\u0010N\u001a\u000204H\u0016J\b\u0010O\u001a\u00020\fH\u0016J\u0010\u0010P\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010Q\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010R\u001a\u000204H\u0016J*\u0010S\u001a\u00020\f2\u0006\u0010T\u001a\u00020U2\u0018\u0010V\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110X0WH\u0002J*\u0010Y\u001a\u00020\f2\u0006\u0010T\u001a\u00020U2\u0018\u0010V\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0X0WH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006["}, d2 = {"Landroidx/work/impl/model/WorkSpecDao_Impl;", "Landroidx/work/impl/model/WorkSpecDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "__insertAdapterOfWorkSpec", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/WorkSpec;", "__updateAdapterOfWorkSpec", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "insertWorkSpec", "", "workSpec", "updateWorkSpec", "getWorkSpec", TtmlNode.ATTR_ID, "", "getWorkSpecIdAndStatesForName", "", "Landroidx/work/impl/model/WorkSpec$IdAndState;", HintConstants.AUTOFILL_HINT_NAME, "getAllWorkSpecIds", "getAllWorkSpecIdsLiveData", "Landroidx/lifecycle/LiveData;", "getState", "Landroidx/work/WorkInfo$State;", "getWorkStatusPojoForId", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "getWorkStatusPojoForIds", "ids", "getWorkStatusPojoLiveDataForIds", "getWorkStatusPojoFlowDataForIds", "Lkotlinx/coroutines/flow/Flow;", "getWorkStatusPojoForTag", "tag", "getWorkStatusPojoFlowForTag", "getWorkStatusPojoLiveDataForTag", "getWorkStatusPojoForName", "getWorkStatusPojoLiveDataForName", "getWorkStatusPojoFlowForName", "getInputsFromPrerequisites", "Landroidx/work/Data;", "getUnfinishedWorkWithTag", "getUnfinishedWorkWithName", "getAllUnfinishedWork", "hasUnfinishedWorkFlow", "", "getScheduleRequestedAtLiveData", "", "getEligibleWorkForScheduling", "schedulerLimit", "", "getEligibleWorkForSchedulingWithContentUris", "getAllEligibleWorkSpecsForScheduling", "maxLimit", "getScheduledWork", "getRunningWork", "getRecentlyCompletedWork", "startingAt", "countNonFinishedContentUriTriggerWorkers", "delete", "setState", "state", "setCancelledState", "incrementPeriodCount", "setOutput", "output", "setLastEnqueueTime", "enqueueTime", "incrementWorkSpecRunAttemptCount", "resetWorkSpecRunAttemptCount", "setNextScheduleTimeOverride", "nextScheduleTimeOverrideMillis", "resetWorkSpecNextScheduleTimeOverride", "overrideGeneration", "markWorkSpecScheduled", "startTime", "resetScheduledState", "pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast", "incrementGeneration", "setStopReason", "stopReason", "__fetchRelationshipWorkTagAsjavaLangString", "_connection", "Landroidx/sqlite/SQLiteConnection;", "_map", "Landroidx/collection/ArrayMap;", "", "__fetchRelationshipWorkProgressAsandroidxWorkData", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkSpecDao_Impl implements WorkSpecDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<WorkSpec> __insertAdapterOfWorkSpec;
    private final EntityDeleteOrUpdateAdapter<WorkSpec> __updateAdapterOfWorkSpec;

    public WorkSpecDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
        this.__insertAdapterOfWorkSpec = new EntityInsertAdapter<WorkSpec>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, WorkSpec entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.mo8066bindText(1, entity.id);
                statement.mo8064bindLong(2, WorkTypeConverters.stateToInt(entity.state));
                statement.mo8066bindText(3, entity.workerClassName);
                statement.mo8066bindText(4, entity.inputMergerClassName);
                statement.mo8062bindBlob(5, Data.INSTANCE.toByteArrayInternalV1(entity.input));
                statement.mo8062bindBlob(6, Data.INSTANCE.toByteArrayInternalV1(entity.output));
                statement.mo8064bindLong(7, entity.initialDelay);
                statement.mo8064bindLong(8, entity.intervalDuration);
                statement.mo8064bindLong(9, entity.flexDuration);
                statement.mo8064bindLong(10, entity.runAttemptCount);
                statement.mo8064bindLong(11, WorkTypeConverters.backoffPolicyToInt(entity.backoffPolicy));
                statement.mo8064bindLong(12, entity.backoffDelayDuration);
                statement.mo8064bindLong(13, entity.lastEnqueueTime);
                statement.mo8064bindLong(14, entity.minimumRetentionDuration);
                statement.mo8064bindLong(15, entity.scheduleRequestedAt);
                statement.mo8064bindLong(16, entity.expedited ? 1L : 0L);
                statement.mo8064bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(entity.outOfQuotaPolicy));
                statement.mo8064bindLong(18, entity.getPeriodCount());
                statement.mo8064bindLong(19, entity.getGeneration());
                statement.mo8064bindLong(20, entity.getNextScheduleTimeOverride());
                statement.mo8064bindLong(21, entity.getNextScheduleTimeOverrideGeneration());
                statement.mo8064bindLong(22, entity.getStopReason());
                String traceTag = entity.getTraceTag();
                if (traceTag == null) {
                    statement.mo8065bindNull(23);
                } else {
                    statement.mo8066bindText(23, traceTag);
                }
                Boolean backOffOnSystemInterruptions = entity.getBackOffOnSystemInterruptions();
                if ((backOffOnSystemInterruptions != null ? Integer.valueOf(backOffOnSystemInterruptions.booleanValue() ? 1 : 0) : null) != null) {
                    statement.mo8064bindLong(24, r10.intValue());
                } else {
                    statement.mo8065bindNull(24);
                }
                Constraints constraints = entity.constraints;
                statement.mo8064bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                statement.mo8062bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat()));
                statement.mo8064bindLong(27, constraints.getRequiresCharging() ? 1L : 0L);
                statement.mo8064bindLong(28, constraints.getRequiresDeviceIdle() ? 1L : 0L);
                statement.mo8064bindLong(29, constraints.getRequiresBatteryNotLow() ? 1L : 0L);
                statement.mo8064bindLong(30, constraints.getRequiresStorageNotLow() ? 1L : 0L);
                statement.mo8064bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
                statement.mo8064bindLong(32, constraints.getContentTriggerMaxDelayMillis());
                statement.mo8062bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
            }
        };
        this.__updateAdapterOfWorkSpec = new EntityDeleteOrUpdateAdapter<WorkSpec>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.EntityDeleteOrUpdateAdapter
            protected String createQuery() {
                return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeleteOrUpdateAdapter
            public void bind(SQLiteStatement statement, WorkSpec entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.mo8066bindText(1, entity.id);
                statement.mo8064bindLong(2, WorkTypeConverters.stateToInt(entity.state));
                statement.mo8066bindText(3, entity.workerClassName);
                statement.mo8066bindText(4, entity.inputMergerClassName);
                statement.mo8062bindBlob(5, Data.INSTANCE.toByteArrayInternalV1(entity.input));
                statement.mo8062bindBlob(6, Data.INSTANCE.toByteArrayInternalV1(entity.output));
                statement.mo8064bindLong(7, entity.initialDelay);
                statement.mo8064bindLong(8, entity.intervalDuration);
                statement.mo8064bindLong(9, entity.flexDuration);
                statement.mo8064bindLong(10, entity.runAttemptCount);
                statement.mo8064bindLong(11, WorkTypeConverters.backoffPolicyToInt(entity.backoffPolicy));
                statement.mo8064bindLong(12, entity.backoffDelayDuration);
                statement.mo8064bindLong(13, entity.lastEnqueueTime);
                statement.mo8064bindLong(14, entity.minimumRetentionDuration);
                statement.mo8064bindLong(15, entity.scheduleRequestedAt);
                statement.mo8064bindLong(16, entity.expedited ? 1L : 0L);
                statement.mo8064bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(entity.outOfQuotaPolicy));
                statement.mo8064bindLong(18, entity.getPeriodCount());
                statement.mo8064bindLong(19, entity.getGeneration());
                statement.mo8064bindLong(20, entity.getNextScheduleTimeOverride());
                statement.mo8064bindLong(21, entity.getNextScheduleTimeOverrideGeneration());
                statement.mo8064bindLong(22, entity.getStopReason());
                String traceTag = entity.getTraceTag();
                if (traceTag == null) {
                    statement.mo8065bindNull(23);
                } else {
                    statement.mo8066bindText(23, traceTag);
                }
                Boolean backOffOnSystemInterruptions = entity.getBackOffOnSystemInterruptions();
                if ((backOffOnSystemInterruptions != null ? Integer.valueOf(backOffOnSystemInterruptions.booleanValue() ? 1 : 0) : null) != null) {
                    statement.mo8064bindLong(24, r10.intValue());
                } else {
                    statement.mo8065bindNull(24);
                }
                Constraints constraints = entity.constraints;
                statement.mo8064bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                statement.mo8062bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat()));
                statement.mo8064bindLong(27, constraints.getRequiresCharging() ? 1L : 0L);
                statement.mo8064bindLong(28, constraints.getRequiresDeviceIdle() ? 1L : 0L);
                statement.mo8064bindLong(29, constraints.getRequiresBatteryNotLow() ? 1L : 0L);
                statement.mo8064bindLong(30, constraints.getRequiresStorageNotLow() ? 1L : 0L);
                statement.mo8064bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
                statement.mo8064bindLong(32, constraints.getContentTriggerMaxDelayMillis());
                statement.mo8062bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
                statement.mo8066bindText(34, entity.id);
            }
        };
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(final WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.insertWorkSpec$lambda$0(this.f$0, workSpec, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit insertWorkSpec$lambda$0(WorkSpecDao_Impl this$0, WorkSpec $workSpec, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        this$0.__insertAdapterOfWorkSpec.insert(_connection, $workSpec);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(final WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.updateWorkSpec$lambda$1(this.f$0, workSpec, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit updateWorkSpec$lambda$1(WorkSpecDao_Impl this$0, WorkSpec $workSpec, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        this$0.__updateAdapterOfWorkSpec.handle(_connection, $workSpec);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "SELECT * FROM workspec WHERE id=?";
        return (WorkSpec) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkSpec$lambda$3(_sql, id, (SQLiteConnection) obj);
            }
        });
    }

    static final WorkSpec getWorkSpec$lambda$3(String $_sql, String $id, SQLiteConnection _connection) {
        WorkSpec _result;
        String _tmpTraceTag;
        Integer _tmp_6;
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, TtmlNode.ATTR_ID);
            int _columnIndexOfState = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "state");
            int _columnIndexOfWorkerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "worker_class_name");
            int _columnIndexOfInputMergerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input_merger_class_name");
            int _columnIndexOfInput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "last_enqueue_time");
            int _columnIndexOfMinimumRetentionDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "minimum_retention_duration");
            int _columnIndexOfScheduleRequestedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "schedule_requested_at");
            int _columnIndexOfExpedited = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_in_foreground");
            int _columnIndexOfOutOfQuotaPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "out_of_quota_policy");
            int _columnIndexOfPeriodCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "period_count");
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "generation");
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override");
            int _columnIndexOfNextScheduleTimeOverrideGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override_generation");
            int _columnIndexOfStopReason = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfTraceTag = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trace_tag");
            int _columnIndexOfBackOffOnSystemInterruptions = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_on_system_interruptions");
            int _columnIndexOfRequiredNetworkType = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkRequestCompat = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_request");
            int _columnIndexOfRequiresCharging = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_charging");
            int _columnIndexOfRequiresDeviceIdle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_device_idle");
            int _columnIndexOfRequiresBatteryNotLow = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_storage_not_low");
            int _columnIndexOfContentTriggerUpdateDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_content_update_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentUriTriggers = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "content_uri_triggers");
            if (_stmt.step()) {
                String _tmpId = _stmt.getText(_columnIndexOfId);
                int _tmp = (int) _stmt.getLong(_columnIndexOfState);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                String _tmpWorkerClassName = _stmt.getText(_columnIndexOfWorkerClassName);
                String _tmpInputMergerClassName = _stmt.getText(_columnIndexOfInputMergerClassName);
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfInput);
                Data _tmpInput = Data.INSTANCE.fromByteArray(_tmp_1);
                byte[] _tmp_2 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_2);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(_columnIndexOfIntervalDuration);
                long _tmpFlexDuration = _stmt.getLong(_columnIndexOfFlexDuration);
                int _tmpRunAttemptCount = (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                int _tmp_3 = (int) _stmt.getLong(_columnIndexOfBackoffPolicy);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(_tmp_3);
                long _tmpBackoffDelayDuration = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfLastEnqueueTime);
                long _tmpMinimumRetentionDuration = _stmt.getLong(_columnIndexOfMinimumRetentionDuration);
                long _tmpScheduleRequestedAt = _stmt.getLong(_columnIndexOfScheduleRequestedAt);
                int _tmp_4 = (int) _stmt.getLong(_columnIndexOfExpedited);
                boolean _tmpExpedited = _tmp_4 != 0;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfOutOfQuotaPolicy);
                OutOfQuotaPolicy _tmpOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(_tmp_5);
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount);
                int _tmpGeneration = (int) _stmt.getLong(_columnIndexOfGeneration);
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride);
                int _tmpNextScheduleTimeOverrideGeneration = (int) _stmt.getLong(_columnIndexOfNextScheduleTimeOverrideGeneration);
                int _tmpStopReason = (int) _stmt.getLong(_columnIndexOfStopReason);
                if (_stmt.isNull(_columnIndexOfTraceTag)) {
                    _tmpTraceTag = null;
                } else {
                    String _tmpTraceTag2 = _stmt.getText(_columnIndexOfTraceTag);
                    _tmpTraceTag = _tmpTraceTag2;
                }
                if (!_stmt.isNull(_columnIndexOfBackOffOnSystemInterruptions)) {
                    _tmp_6 = Integer.valueOf((int) _stmt.getLong(_columnIndexOfBackOffOnSystemInterruptions));
                } else {
                    _tmp_6 = null;
                }
                if (_tmp_6 != null) {
                    int it = _tmp_6.intValue();
                    boolValueOf = Boolean.valueOf(it != 0);
                } else {
                    boolValueOf = null;
                }
                Boolean _tmpBackOffOnSystemInterruptions = boolValueOf;
                int _tmp_7 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkType);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_7);
                byte[] _tmp_8 = _stmt.getBlob(_columnIndexOfRequiredNetworkRequestCompat);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_8);
                int _tmp_9 = (int) _stmt.getLong(_columnIndexOfRequiresCharging);
                boolean _tmpRequiresCharging = _tmp_9 != 0;
                int _tmp_10 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle);
                boolean _tmpRequiresDeviceIdle = _tmp_10 != 0;
                int _tmp_11 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresBatteryNotLow = _tmp_11 != 0;
                int _tmp_12 = (int) _stmt.getLong(_columnIndexOfRequiresStorageNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_12 != 0;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis);
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerMaxDelayMillis);
                byte[] _tmp_13 = _stmt.getBlob(_columnIndexOfContentUriTriggers);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_13));
                _result = new WorkSpec(_tmpId, _tmpState, _tmpWorkerClassName, _tmpInputMergerClassName, _tmpInput, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpMinimumRetentionDuration, _tmpScheduleRequestedAt, _tmpExpedited, _tmpOutOfQuotaPolicy, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpNextScheduleTimeOverrideGeneration, _tmpStopReason, _tmpTraceTag, _tmpBackOffOnSystemInterruptions);
            } else {
                _result = null;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(final String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        final String _sql = "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkSpecIdAndStatesForName$lambda$4(_sql, name, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkSpecIdAndStatesForName$lambda$4(String $_sql, String $name, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $name);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                WorkSpec.IdAndState _item = new WorkSpec.IdAndState(_tmpId, _tmpState);
                _result.add(_item);
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllWorkSpecIds() {
        final String _sql = "SELECT id FROM workspec";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getAllWorkSpecIds$lambda$5(_sql, (SQLiteConnection) obj);
            }
        });
    }

    static final List getAllWorkSpecIds$lambda$5(String $_sql, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _item = _stmt.getText(0);
                _result.add(_item);
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        final String _sql = "SELECT id FROM workspec";
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getAllWorkSpecIdsLiveData$lambda$6(_sql, (SQLiteConnection) obj);
            }
        });
    }

    static final List getAllWorkSpecIdsLiveData$lambda$6(String $_sql, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _item = _stmt.getText(0);
                _result.add(_item);
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State getState(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "SELECT state FROM workspec WHERE id=?";
        return (WorkInfo.State) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getState$lambda$7(_sql, id, (SQLiteConnection) obj);
            }
        });
    }

    static final WorkInfo.State getState$lambda$7(String $_sql, String $id, SQLiteConnection _connection) {
        WorkInfo.State _result;
        Integer _tmp;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            if (_stmt.step()) {
                if (_stmt.isNull(0)) {
                    _tmp = null;
                } else {
                    _tmp = Integer.valueOf((int) _stmt.getLong(0));
                }
                if (_tmp == null) {
                    _result = null;
                } else {
                    _result = WorkTypeConverters.intToState(_tmp.intValue());
                }
            } else {
                _result = null;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec.WorkInfoPojo getWorkStatusPojoForId(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id=?";
        return (WorkSpec.WorkInfoPojo) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda45
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoForId$lambda$8(_sql, id, this, (SQLiteConnection) obj);
            }
        });
    }

    static final WorkSpec.WorkInfoPojo getWorkStatusPojoForId$lambda$8(String $_sql, String $id, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        WorkSpec.WorkInfoPojo _result;
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            int _columnIndexOfBackoffDelayDuration = 18;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfStopReason3 = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            if (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(14);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _tmp_2 = (int) _stmt.getLong(17);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(_tmp_2);
                long _tmpBackoffDelayDuration = _stmt.getLong(_columnIndexOfBackoffDelayDuration2);
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfLastEnqueueTime3);
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount3);
                long _tmpNextScheduleTimeOverride = _stmt.getLong(21);
                int _tmpStopReason = (int) _stmt.getLong(_columnIndexOfStopReason3);
                int _tmp_3 = (int) _stmt.getLong(5);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_3);
                byte[] _tmp_4 = _stmt.getBlob(6);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _tmp_5 = (int) _stmt.getLong(7);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _tmp_6 = (int) _stmt.getLong(8);
                boolean _tmpRequiresDeviceIdle = _tmp_6 != 0;
                int _tmp_7 = (int) _stmt.getLong(9);
                boolean _tmpRequiresBatteryNotLow = _tmp_7 != 0;
                int _tmp_8 = (int) _stmt.getLong(10);
                boolean _tmpRequiresStorageNotLow = _tmp_8 != 0;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(11);
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(12);
                byte[] _tmp_9 = _stmt.getBlob(13);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                String _tmpKey_2 = _stmt.getText(0);
                Object value = MapsKt.getValue(arrayMap5, _tmpKey_2);
                Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, "getValue(...)");
                List _tmpProgressCollection = (List) value2;
                _result = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
            } else {
                _result = null;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(final List<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        StringBuilder _stringBuilder = new StringBuilder();
        _stringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int _inputSize = ids.size();
        StringUtil.appendPlaceholders(_stringBuilder, _inputSize);
        _stringBuilder.append(")");
        final String _sql = _stringBuilder.toString();
        Intrinsics.checkNotNullExpressionValue(_sql, "toString(...)");
        return (List) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoForIds$lambda$9(_sql, ids, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoForIds$lambda$9(String $_sql, List $ids, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        int _argIndex = 1;
        try {
            Iterator it = $ids.iterator();
            while (it.hasNext()) {
                String _item = (String) it.next();
                _stmt.mo8066bindText(_argIndex, _item);
                _argIndex++;
            }
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item_1 = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item_1);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(final List<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        StringBuilder _stringBuilder = new StringBuilder();
        _stringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int _inputSize = ids.size();
        StringUtil.appendPlaceholders(_stringBuilder, _inputSize);
        _stringBuilder.append(")");
        final String _sql = _stringBuilder.toString();
        Intrinsics.checkNotNullExpressionValue(_sql, "toString(...)");
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda36
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoLiveDataForIds$lambda$10(_sql, ids, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoLiveDataForIds$lambda$10(String $_sql, List $ids, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        int _argIndex = 1;
        try {
            Iterator it = $ids.iterator();
            while (it.hasNext()) {
                String _item = (String) it.next();
                _stmt.mo8066bindText(_argIndex, _item);
                _argIndex++;
            }
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item_1 = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item_1);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowDataForIds(final List<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        StringBuilder _stringBuilder = new StringBuilder();
        _stringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int _inputSize = ids.size();
        StringUtil.appendPlaceholders(_stringBuilder, _inputSize);
        _stringBuilder.append(")");
        final String _sql = _stringBuilder.toString();
        Intrinsics.checkNotNullExpressionValue(_sql, "toString(...)");
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec"}, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoFlowDataForIds$lambda$11(_sql, ids, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoFlowDataForIds$lambda$11(String $_sql, List $ids, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        int _argIndex = 1;
        try {
            Iterator it = $ids.iterator();
            while (it.hasNext()) {
                String _item = (String) it.next();
                _stmt.mo8066bindText(_argIndex, _item);
                _argIndex++;
            }
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item_1 = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item_1);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(final String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        final String _sql = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)";
        return (List) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoForTag$lambda$12(_sql, tag, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoForTag$lambda$12(String $_sql, String $tag, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $tag);
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForTag(final String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        final String _sql = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)";
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoFlowForTag$lambda$13(_sql, tag, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoFlowForTag$lambda$13(String $_sql, String $tag, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $tag);
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(final String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        final String _sql = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)";
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda46
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoLiveDataForTag$lambda$14(_sql, tag, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoLiveDataForTag$lambda$14(String $_sql, String $tag, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $tag);
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(final String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        final String _sql = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoForName$lambda$15(_sql, name, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoForName$lambda$15(String $_sql, String $name, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $name);
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(final String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        final String _sql = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoLiveDataForName$lambda$16(_sql, name, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoLiveDataForName$lambda$16(String $_sql, String $name, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $name);
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForName(final String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        final String _sql = "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda43
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkStatusPojoFlowForName$lambda$17(_sql, name, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkStatusPojoFlowForName$lambda$17(String $_sql, String $name, WorkSpecDao_Impl this$0, SQLiteConnection _connection) {
        int _columnIndexOfLastEnqueueTime;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $name);
            String str = "getValue(...)";
            int _columnIndexOfContentTriggerUpdateDelayMillis = 12;
            int _columnIndexOfContentUriTriggers = 13;
            int _columnIndexOfInitialDelay = 14;
            int _columnIndexOfRequiresStorageNotLow = 11;
            int _tmp_7 = 10;
            int _columnIndexOfRequiresDeviceIdle = 9;
            int _columnIndexOfRequiresCharging = 8;
            int _columnIndexOfBackoffDelayDuration = 18;
            int _tmp_3 = 7;
            int _columnIndexOfLastEnqueueTime2 = 19;
            int _columnIndexOfRequiredNetworkRequestCompat = 6;
            int _columnIndexOfPeriodCount = 20;
            int _columnIndexOfContentUriTriggers2 = 5;
            int _tmp_8 = 21;
            int _columnIndexOfStopReason = 22;
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(0);
                int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                int _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                if (arrayMap3.containsKey(_tmpKey)) {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                } else {
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime2;
                    arrayMap3.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(0);
                ArrayMap<String, List<Data>> arrayMap4 = arrayMap2;
                if (arrayMap4.containsKey(_tmpKey_1)) {
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                } else {
                    arrayMap4.put(_tmpKey_1, new ArrayList());
                    arrayMap2 = arrayMap4;
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
                    _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration;
                    arrayMap = arrayMap3;
                    _columnIndexOfStopReason = _columnIndexOfStopReason2;
                }
            }
            int _columnIndexOfNextScheduleTimeOverride = _columnIndexOfStopReason;
            int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
            ArrayMap<String, List<String>> arrayMap5 = arrayMap;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount;
            ArrayMap<String, List<Data>> arrayMap6 = arrayMap2;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap5);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap6);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(0);
                int _tmp = (int) _stmt.getLong(1);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                byte[] _tmp_1 = _stmt.getBlob(2);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                int _tmpRunAttemptCount = (int) _stmt.getLong(3);
                int _tmpGeneration = (int) _stmt.getLong(4);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(15);
                long _tmpFlexDuration = _stmt.getLong(16);
                int _columnIndexOfInitialDelay2 = _columnIndexOfInitialDelay;
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(17));
                int _tmp_2 = _columnIndexOfBackoffDelayDuration2;
                long _tmpBackoffDelayDuration = _stmt.getLong(_tmp_2);
                _columnIndexOfBackoffDelayDuration2 = _tmp_2;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime3;
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                _columnIndexOfLastEnqueueTime3 = _columnIndexOfBackoffDelayDuration3;
                int _columnIndexOfPeriodCount4 = _columnIndexOfPeriodCount3;
                int _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfPeriodCount4);
                int _columnIndexOfNextScheduleTimeOverride2 = _tmp_8;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride2);
                _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount4;
                int _tmpPeriodCount2 = _columnIndexOfNextScheduleTimeOverride;
                int _tmpStopReason = (int) _stmt.getLong(_tmpPeriodCount2);
                int _columnIndexOfStopReason3 = _columnIndexOfContentUriTriggers2;
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_32);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat;
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _tmp_3;
                int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat2);
                boolean _tmpRequiresCharging = _tmp_5 != 0;
                int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresCharging;
                boolean _tmpRequiresDeviceIdle = ((int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle2)) != 0;
                int _tmp_6 = _columnIndexOfRequiresDeviceIdle;
                int _tmp_72 = (int) _stmt.getLong(_tmp_6);
                boolean _tmpRequiresBatteryNotLow = _tmp_72 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_7;
                int _tmp_82 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_82 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis2 = _columnIndexOfRequiresStorageNotLow;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis2);
                int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow2);
                int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfContentUriTriggers;
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap5, _stmt.getText(0));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(0);
                Object value2 = MapsKt.getValue(arrayMap6, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _tmp_7 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfRequiredNetworkRequestCompat2;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
                _tmp_8 = _columnIndexOfNextScheduleTimeOverride2;
                _columnIndexOfInitialDelay = _columnIndexOfInitialDelay2;
                _columnIndexOfNextScheduleTimeOverride = _tmpPeriodCount2;
                _columnIndexOfContentUriTriggers2 = _columnIndexOfStopReason3;
                _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkType;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfContentTriggerUpdateDelayMillis2;
                _columnIndexOfRequiresCharging = _columnIndexOfRequiresDeviceIdle2;
                _columnIndexOfRequiresDeviceIdle = _tmp_6;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfRequiresStorageNotLow2;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> getInputsFromPrerequisites(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getInputsFromPrerequisites$lambda$18(_sql, id, (SQLiteConnection) obj);
            }
        });
    }

    static final List getInputsFromPrerequisites$lambda$18(String $_sql, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            List _result = new ArrayList();
            while (_stmt.step()) {
                byte[] _tmp = _stmt.getBlob(0);
                Data _item = Data.INSTANCE.fromByteArray(_tmp);
                _result.add(_item);
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithTag(final String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        final String _sql = "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda37
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getUnfinishedWorkWithTag$lambda$19(_sql, tag, (SQLiteConnection) obj);
            }
        });
    }

    static final List getUnfinishedWorkWithTag$lambda$19(String $_sql, String $tag, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $tag);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _item = _stmt.getText(0);
                _result.add(_item);
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithName(final String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        final String _sql = "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getUnfinishedWorkWithName$lambda$20(_sql, name, (SQLiteConnection) obj);
            }
        });
    }

    static final List getUnfinishedWorkWithName$lambda$20(String $_sql, String $name, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $name);
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _item = _stmt.getText(0);
                _result.add(_item);
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllUnfinishedWork() {
        final String _sql = "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getAllUnfinishedWork$lambda$21(_sql, (SQLiteConnection) obj);
            }
        });
    }

    static final List getAllUnfinishedWork$lambda$21(String $_sql, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _item = _stmt.getText(0);
                _result.add(_item);
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<Boolean> hasUnfinishedWorkFlow() {
        final String _sql = "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1";
        return FlowUtil.createFlow(this.__db, false, new String[]{"workspec"}, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(WorkSpecDao_Impl.hasUnfinishedWorkFlow$lambda$22(_sql, (SQLiteConnection) obj));
            }
        });
    }

    static final boolean hasUnfinishedWorkFlow$lambda$22(String $_sql, SQLiteConnection _connection) {
        boolean _result;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            if (_stmt.step()) {
                _result = false;
                int _tmp = (int) _stmt.getLong(0);
                if (_tmp != 0) {
                    _result = true;
                }
            } else {
                _result = false;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<Long> getScheduleRequestedAtLiveData(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "SELECT schedule_requested_at FROM workspec WHERE id=?";
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getScheduleRequestedAtLiveData$lambda$23(_sql, id, (SQLiteConnection) obj);
            }
        });
    }

    static final Long getScheduleRequestedAtLiveData$lambda$23(String $_sql, String $id, SQLiteConnection _connection) {
        Long _result;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            if (!_stmt.step() || _stmt.isNull(0)) {
                _result = null;
            } else {
                _result = Long.valueOf(_stmt.getLong(0));
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForScheduling(final int schedulerLimit) {
        final String _sql = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getEligibleWorkForScheduling$lambda$25(_sql, schedulerLimit, (SQLiteConnection) obj);
            }
        });
    }

    static final List getEligibleWorkForScheduling$lambda$25(String $_sql, int $schedulerLimit, SQLiteConnection _connection) {
        String _tmpTraceTag;
        int _columnIndexOfStopReason;
        Integer _tmp_6;
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8064bindLong(1, $schedulerLimit);
            int _columnIndexOfScheduleRequestedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, TtmlNode.ATTR_ID);
            int _columnIndexOfState = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "state");
            int _columnIndexOfWorkerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "worker_class_name");
            int _columnIndexOfInputMergerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input_merger_class_name");
            int _columnIndexOfInput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "last_enqueue_time");
            int _columnIndexOfContentTriggerUpdateDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "minimum_retention_duration");
            int _columnIndexOfScheduleRequestedAt2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "schedule_requested_at");
            int _columnIndexOfPeriodCount = _columnIndexOfScheduleRequestedAt2;
            int _columnIndexOfExpedited = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_in_foreground");
            int _columnIndexOfLastEnqueueTime2 = _columnIndexOfExpedited;
            int _columnIndexOfOutOfQuotaPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "out_of_quota_policy");
            int _columnIndexOfExpedited2 = _columnIndexOfOutOfQuotaPolicy;
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "period_count");
            int _columnIndexOfOutOfQuotaPolicy2 = _columnIndexOfPeriodCount2;
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "generation");
            int _columnIndexOfNextScheduleTimeOverrideGeneration = _columnIndexOfGeneration;
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override");
            int _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfNextScheduleTimeOverrideGeneration2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override_generation");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverrideGeneration2;
            int _columnIndexOfStopReason2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfStopReason3 = _columnIndexOfStopReason2;
            int _columnIndexOfTraceTag = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trace_tag");
            int _columnIndexOfTraceTag2 = _columnIndexOfTraceTag;
            int _columnIndexOfStopReason4 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_on_system_interruptions");
            int _tmp_12 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkRequestCompat = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_request");
            int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkRequestCompat;
            int _tmp_7 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_charging");
            int _tmp_9 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_device_idle");
            int _tmp_10 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_storage_not_low");
            int _tmp_11 = _columnIndexOfRequiresStorageNotLow;
            int _columnIndexOfContentTriggerUpdateDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_content_update_delay");
            int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis2;
            int _columnIndexOfContentTriggerMaxDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
            int _tmp_3 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "content_uri_triggers");
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(_columnIndexOfScheduleRequestedAt);
                int _columnIndexOfContentUriTriggers2 = _tmp_3;
                int _columnIndexOfId = _columnIndexOfScheduleRequestedAt;
                int _tmp = (int) _stmt.getLong(_columnIndexOfState);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                String _tmpWorkerClassName = _stmt.getText(_columnIndexOfWorkerClassName);
                String _tmpInputMergerClassName = _stmt.getText(_columnIndexOfInputMergerClassName);
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfInput);
                Data _tmpInput = Data.INSTANCE.fromByteArray(_tmp_1);
                byte[] _tmp_2 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_2);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(_columnIndexOfIntervalDuration);
                long _tmpFlexDuration = _stmt.getLong(_columnIndexOfFlexDuration);
                int _tmpRunAttemptCount = (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfBackoffPolicy);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(_tmp_32);
                long _tmpBackoffDelayDuration = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfLastEnqueueTime);
                long _tmpMinimumRetentionDuration = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis);
                int _columnIndexOfScheduleRequestedAt3 = _columnIndexOfPeriodCount;
                long _tmpScheduleRequestedAt = _stmt.getLong(_columnIndexOfScheduleRequestedAt3);
                int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
                int _columnIndexOfMinimumRetentionDuration = _columnIndexOfContentTriggerUpdateDelayMillis;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime2;
                int _columnIndexOfExpedited3 = _columnIndexOfLastEnqueueTime;
                int _tmp_4 = (int) _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                boolean _tmpExpedited = _tmp_4 != 0;
                int _columnIndexOfOutOfQuotaPolicy3 = _columnIndexOfExpedited2;
                OutOfQuotaPolicy _tmpOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) _stmt.getLong(_columnIndexOfOutOfQuotaPolicy3));
                int _tmp_5 = _columnIndexOfOutOfQuotaPolicy2;
                int _tmpPeriodCount = (int) _stmt.getLong(_tmp_5);
                int _columnIndexOfPeriodCount3 = _columnIndexOfNextScheduleTimeOverrideGeneration;
                int _tmpGeneration = (int) _stmt.getLong(_columnIndexOfPeriodCount3);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfGeneration2;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                int _columnIndexOfGeneration3 = _columnIndexOfNextScheduleTimeOverride2;
                int _tmpNextScheduleTimeOverrideGeneration = (int) _stmt.getLong(_columnIndexOfGeneration3);
                int _columnIndexOfStopReason5 = _columnIndexOfStopReason3;
                int _tmpStopReason = (int) _stmt.getLong(_columnIndexOfStopReason5);
                int _tmpStopReason2 = _columnIndexOfTraceTag2;
                if (_stmt.isNull(_tmpStopReason2)) {
                    _tmpTraceTag = null;
                } else {
                    String _tmpTraceTag2 = _stmt.getText(_tmpStopReason2);
                    _tmpTraceTag = _tmpTraceTag2;
                }
                _columnIndexOfTraceTag2 = _tmpStopReason2;
                int _columnIndexOfTraceTag3 = _columnIndexOfStopReason4;
                if (_stmt.isNull(_columnIndexOfTraceTag3)) {
                    _tmp_6 = null;
                    _columnIndexOfStopReason = _columnIndexOfStopReason5;
                } else {
                    _columnIndexOfStopReason = _columnIndexOfStopReason5;
                    _tmp_6 = Integer.valueOf((int) _stmt.getLong(_columnIndexOfTraceTag3));
                }
                if (_tmp_6 != null) {
                    int it = _tmp_6.intValue();
                    boolValueOf = Boolean.valueOf(it != 0);
                } else {
                    boolValueOf = null;
                }
                Boolean _tmpBackOffOnSystemInterruptions = boolValueOf;
                int _columnIndexOfBackOffOnSystemInterruptions = _tmp_12;
                int _tmp_72 = (int) _stmt.getLong(_columnIndexOfBackOffOnSystemInterruptions);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_72);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat2;
                byte[] _tmp_8 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_8);
                int _columnIndexOfRequiredNetworkRequestCompat3 = _tmp_7;
                int _tmp_92 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat3);
                boolean _tmpRequiresCharging = _tmp_92 != 0;
                int _columnIndexOfRequiresCharging = _tmp_9;
                int _tmp_102 = (int) _stmt.getLong(_columnIndexOfRequiresCharging);
                boolean _tmpRequiresDeviceIdle = _tmp_102 != 0;
                int _columnIndexOfRequiresDeviceIdle = _tmp_10;
                int _tmp_112 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle);
                boolean _tmpRequiresBatteryNotLow = _tmp_112 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_11;
                int _tmp_122 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_122 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfRequiresStorageNotLow2;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis3);
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfContentUriTriggers;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                byte[] _tmp_13 = _stmt.getBlob(_columnIndexOfContentUriTriggers2);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_13));
                WorkSpec _item = new WorkSpec(_tmpId, _tmpState, _tmpWorkerClassName, _tmpInputMergerClassName, _tmpInput, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpMinimumRetentionDuration, _tmpScheduleRequestedAt, _tmpExpedited, _tmpOutOfQuotaPolicy, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpNextScheduleTimeOverrideGeneration, _tmpStopReason, _tmpTraceTag, _tmpBackOffOnSystemInterruptions);
                List _result2 = _result;
                _result2.add(_item);
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfGeneration3;
                _columnIndexOfNextScheduleTimeOverrideGeneration = _columnIndexOfPeriodCount3;
                _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride3;
                _result = _result2;
                _columnIndexOfLastEnqueueTime = _columnIndexOfExpedited3;
                _columnIndexOfLastEnqueueTime2 = _columnIndexOfBackoffDelayDuration3;
                _columnIndexOfExpedited2 = _columnIndexOfOutOfQuotaPolicy3;
                _columnIndexOfStopReason3 = _columnIndexOfStopReason;
                _tmp_11 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfContentUriTriggers2;
                _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration2;
                _columnIndexOfContentUriTriggers = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfStopReason4 = _columnIndexOfTraceTag3;
                _tmp_12 = _columnIndexOfBackOffOnSystemInterruptions;
                _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType;
                _tmp_7 = _columnIndexOfRequiredNetworkRequestCompat3;
                _tmp_9 = _columnIndexOfRequiresCharging;
                _tmp_10 = _columnIndexOfRequiresDeviceIdle;
                _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis3;
                _columnIndexOfOutOfQuotaPolicy2 = _tmp_5;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfMinimumRetentionDuration;
                _columnIndexOfPeriodCount = _columnIndexOfScheduleRequestedAt3;
                _columnIndexOfScheduleRequestedAt = _columnIndexOfId;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForSchedulingWithContentUris() {
        final String _sql = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getEligibleWorkForSchedulingWithContentUris$lambda$27(_sql, (SQLiteConnection) obj);
            }
        });
    }

    static final List getEligibleWorkForSchedulingWithContentUris$lambda$27(String $_sql, SQLiteConnection _connection) {
        String _tmpTraceTag;
        int _columnIndexOfTraceTag;
        int _columnIndexOfStopReason;
        Integer _tmp_6;
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, TtmlNode.ATTR_ID);
            int _tmp_12 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "state");
            int _columnIndexOfContentTriggerUpdateDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "worker_class_name");
            int _columnIndexOfInputMergerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input_merger_class_name");
            int _columnIndexOfInput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "last_enqueue_time");
            int _columnIndexOfMinimumRetentionDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "minimum_retention_duration");
            int _columnIndexOfPeriodCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "schedule_requested_at");
            int _columnIndexOfExpedited = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_in_foreground");
            int _columnIndexOfState = _columnIndexOfExpedited;
            int _columnIndexOfMinimumRetentionDuration2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "out_of_quota_policy");
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "period_count");
            int _tmp_4 = _columnIndexOfPeriodCount2;
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "generation");
            int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfGeneration;
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override");
            int _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfNextScheduleTimeOverrideGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override_generation");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverrideGeneration;
            int _columnIndexOfStopReason2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfNextScheduleTimeOverrideGeneration2 = _columnIndexOfStopReason2;
            int _columnIndexOfTraceTag2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trace_tag");
            int _columnIndexOfTraceTag3 = _columnIndexOfTraceTag2;
            int _columnIndexOfStopReason3 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_on_system_interruptions");
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkRequestCompat = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_request");
            int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkRequestCompat;
            int _tmp_7 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_charging");
            int _tmp_9 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_device_idle");
            int _tmp_10 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresStorageNotLow2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_storage_not_low");
            int _tmp_11 = _columnIndexOfRequiresStorageNotLow2;
            int _columnIndexOfContentTriggerUpdateDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_content_update_delay");
            int _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfContentTriggerUpdateDelayMillis2;
            int _columnIndexOfContentTriggerMaxDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfContentTriggerMaxDelayMillis2;
            int _columnIndexOfContentUriTriggers = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "content_uri_triggers");
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(_columnIndexOfId);
                int _columnIndexOfId2 = _columnIndexOfId;
                int _columnIndexOfMinimumRetentionDuration3 = _columnIndexOfMinimumRetentionDuration;
                int _tmp = (int) _stmt.getLong(_tmp_12);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                String _tmpWorkerClassName = _stmt.getText(_columnIndexOfContentTriggerUpdateDelayMillis);
                String _tmpInputMergerClassName = _stmt.getText(_columnIndexOfInputMergerClassName);
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfInput);
                Data _tmpInput = Data.INSTANCE.fromByteArray(_tmp_1);
                byte[] _tmp_2 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_2);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(_columnIndexOfIntervalDuration);
                long _tmpFlexDuration = _stmt.getLong(_columnIndexOfFlexDuration);
                int _tmpRunAttemptCount = (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(_columnIndexOfBackoffPolicy));
                long _tmpBackoffDelayDuration = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfLastEnqueueTime);
                long _tmpMinimumRetentionDuration = _stmt.getLong(_columnIndexOfMinimumRetentionDuration3);
                int _tmp_3 = _columnIndexOfPeriodCount;
                long _tmpScheduleRequestedAt = _stmt.getLong(_tmp_3);
                int _columnIndexOfWorkerClassName = _columnIndexOfContentTriggerUpdateDelayMillis;
                int _columnIndexOfScheduleRequestedAt = _columnIndexOfState;
                int _columnIndexOfExpedited2 = _tmp_12;
                int _tmp_42 = (int) _stmt.getLong(_columnIndexOfScheduleRequestedAt);
                boolean _tmpExpedited = _tmp_42 != 0;
                int _columnIndexOfOutOfQuotaPolicy = _columnIndexOfMinimumRetentionDuration2;
                OutOfQuotaPolicy _tmpOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) _stmt.getLong(_columnIndexOfOutOfQuotaPolicy));
                int _tmp_5 = _tmp_4;
                int _tmpPeriodCount = (int) _stmt.getLong(_tmp_5);
                int _columnIndexOfPeriodCount3 = _columnIndexOfContentTriggerMaxDelayMillis;
                int _tmpGeneration = (int) _stmt.getLong(_columnIndexOfPeriodCount3);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfGeneration2;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                int _columnIndexOfGeneration3 = _columnIndexOfNextScheduleTimeOverride2;
                int _tmpNextScheduleTimeOverrideGeneration = (int) _stmt.getLong(_columnIndexOfGeneration3);
                int _columnIndexOfStopReason4 = _columnIndexOfNextScheduleTimeOverrideGeneration2;
                int _tmpStopReason = (int) _stmt.getLong(_columnIndexOfStopReason4);
                int _columnIndexOfTraceTag4 = _columnIndexOfTraceTag3;
                if (_stmt.isNull(_columnIndexOfTraceTag4)) {
                    _tmpTraceTag = null;
                } else {
                    String _tmpTraceTag2 = _stmt.getText(_columnIndexOfTraceTag4);
                    _tmpTraceTag = _tmpTraceTag2;
                }
                int _tmpStopReason2 = _columnIndexOfStopReason3;
                if (_stmt.isNull(_tmpStopReason2)) {
                    _tmp_6 = null;
                    _columnIndexOfTraceTag = _columnIndexOfTraceTag4;
                    _columnIndexOfStopReason = _columnIndexOfStopReason4;
                } else {
                    _columnIndexOfTraceTag = _columnIndexOfTraceTag4;
                    _columnIndexOfStopReason = _columnIndexOfStopReason4;
                    _tmp_6 = Integer.valueOf((int) _stmt.getLong(_tmpStopReason2));
                }
                if (_tmp_6 != null) {
                    int it = _tmp_6.intValue();
                    boolValueOf = Boolean.valueOf(it != 0);
                } else {
                    boolValueOf = null;
                }
                Boolean _tmpBackOffOnSystemInterruptions = boolValueOf;
                int _columnIndexOfBackOffOnSystemInterruptions = _columnIndexOfRequiresStorageNotLow;
                int _tmp_72 = (int) _stmt.getLong(_columnIndexOfBackOffOnSystemInterruptions);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_72);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat2;
                byte[] _tmp_8 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_8);
                int _columnIndexOfRequiredNetworkRequestCompat3 = _tmp_7;
                int _tmp_92 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat3);
                boolean _tmpRequiresCharging = _tmp_92 != 0;
                int _columnIndexOfRequiresCharging = _tmp_9;
                int _tmp_102 = (int) _stmt.getLong(_columnIndexOfRequiresCharging);
                boolean _tmpRequiresDeviceIdle = _tmp_102 != 0;
                int _columnIndexOfRequiresDeviceIdle = _tmp_10;
                int _tmp_112 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle);
                boolean _tmpRequiresBatteryNotLow = _tmp_112 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_11;
                int _tmp_122 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_122 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis4 = _columnIndexOfContentTriggerUpdateDelayMillis3;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis4);
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfContentTriggerMaxDelayMillis3;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                byte[] _tmp_13 = _stmt.getBlob(_columnIndexOfContentUriTriggers);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_13));
                WorkSpec _item = new WorkSpec(_tmpId, _tmpState, _tmpWorkerClassName, _tmpInputMergerClassName, _tmpInput, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpMinimumRetentionDuration, _tmpScheduleRequestedAt, _tmpExpedited, _tmpOutOfQuotaPolicy, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpNextScheduleTimeOverrideGeneration, _tmpStopReason, _tmpTraceTag, _tmpBackOffOnSystemInterruptions);
                List _result2 = _result;
                _result2.add(_item);
                _result = _result2;
                _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfContentTriggerUpdateDelayMillis4;
                _tmp_4 = _tmp_5;
                _tmp_12 = _columnIndexOfExpedited2;
                _columnIndexOfMinimumRetentionDuration = _columnIndexOfMinimumRetentionDuration3;
                _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfPeriodCount3;
                _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride3;
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfGeneration3;
                _columnIndexOfNextScheduleTimeOverrideGeneration2 = _columnIndexOfStopReason;
                _tmp_11 = _columnIndexOfRequiresBatteryNotLow;
                _columnIndexOfId = _columnIndexOfId2;
                _columnIndexOfPeriodCount = _tmp_3;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfWorkerClassName;
                _columnIndexOfState = _columnIndexOfScheduleRequestedAt;
                _columnIndexOfMinimumRetentionDuration2 = _columnIndexOfOutOfQuotaPolicy;
                _columnIndexOfTraceTag3 = _columnIndexOfTraceTag;
                _columnIndexOfStopReason3 = _tmpStopReason2;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfBackOffOnSystemInterruptions;
                _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType;
                _tmp_7 = _columnIndexOfRequiredNetworkRequestCompat3;
                _tmp_9 = _columnIndexOfRequiresCharging;
                _tmp_10 = _columnIndexOfRequiresDeviceIdle;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getAllEligibleWorkSpecsForScheduling(final int maxLimit) {
        final String _sql = "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getAllEligibleWorkSpecsForScheduling$lambda$29(_sql, maxLimit, (SQLiteConnection) obj);
            }
        });
    }

    static final List getAllEligibleWorkSpecsForScheduling$lambda$29(String $_sql, int $maxLimit, SQLiteConnection _connection) {
        String _tmpTraceTag;
        int _columnIndexOfStopReason;
        Integer _tmp_6;
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8064bindLong(1, $maxLimit);
            int _columnIndexOfScheduleRequestedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, TtmlNode.ATTR_ID);
            int _columnIndexOfState = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "state");
            int _columnIndexOfWorkerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "worker_class_name");
            int _columnIndexOfInputMergerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input_merger_class_name");
            int _columnIndexOfInput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "last_enqueue_time");
            int _columnIndexOfContentTriggerUpdateDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "minimum_retention_duration");
            int _columnIndexOfScheduleRequestedAt2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "schedule_requested_at");
            int _columnIndexOfPeriodCount = _columnIndexOfScheduleRequestedAt2;
            int _columnIndexOfExpedited = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_in_foreground");
            int _columnIndexOfLastEnqueueTime2 = _columnIndexOfExpedited;
            int _columnIndexOfOutOfQuotaPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "out_of_quota_policy");
            int _columnIndexOfExpedited2 = _columnIndexOfOutOfQuotaPolicy;
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "period_count");
            int _columnIndexOfOutOfQuotaPolicy2 = _columnIndexOfPeriodCount2;
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "generation");
            int _columnIndexOfNextScheduleTimeOverrideGeneration = _columnIndexOfGeneration;
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override");
            int _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfNextScheduleTimeOverrideGeneration2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override_generation");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverrideGeneration2;
            int _columnIndexOfStopReason2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfStopReason3 = _columnIndexOfStopReason2;
            int _columnIndexOfTraceTag = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trace_tag");
            int _columnIndexOfTraceTag2 = _columnIndexOfTraceTag;
            int _columnIndexOfStopReason4 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_on_system_interruptions");
            int _tmp_12 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkRequestCompat = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_request");
            int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkRequestCompat;
            int _tmp_7 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_charging");
            int _tmp_9 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_device_idle");
            int _tmp_10 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_storage_not_low");
            int _tmp_11 = _columnIndexOfRequiresStorageNotLow;
            int _columnIndexOfContentTriggerUpdateDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_content_update_delay");
            int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis2;
            int _columnIndexOfContentTriggerMaxDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
            int _tmp_3 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "content_uri_triggers");
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(_columnIndexOfScheduleRequestedAt);
                int _columnIndexOfContentUriTriggers2 = _tmp_3;
                int _columnIndexOfId = _columnIndexOfScheduleRequestedAt;
                int _tmp = (int) _stmt.getLong(_columnIndexOfState);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                String _tmpWorkerClassName = _stmt.getText(_columnIndexOfWorkerClassName);
                String _tmpInputMergerClassName = _stmt.getText(_columnIndexOfInputMergerClassName);
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfInput);
                Data _tmpInput = Data.INSTANCE.fromByteArray(_tmp_1);
                byte[] _tmp_2 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_2);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(_columnIndexOfIntervalDuration);
                long _tmpFlexDuration = _stmt.getLong(_columnIndexOfFlexDuration);
                int _tmpRunAttemptCount = (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfBackoffPolicy);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(_tmp_32);
                long _tmpBackoffDelayDuration = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfLastEnqueueTime);
                long _tmpMinimumRetentionDuration = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis);
                int _columnIndexOfScheduleRequestedAt3 = _columnIndexOfPeriodCount;
                long _tmpScheduleRequestedAt = _stmt.getLong(_columnIndexOfScheduleRequestedAt3);
                int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffDelayDuration;
                int _columnIndexOfMinimumRetentionDuration = _columnIndexOfContentTriggerUpdateDelayMillis;
                int _columnIndexOfBackoffDelayDuration3 = _columnIndexOfLastEnqueueTime2;
                int _columnIndexOfExpedited3 = _columnIndexOfLastEnqueueTime;
                int _tmp_4 = (int) _stmt.getLong(_columnIndexOfBackoffDelayDuration3);
                boolean _tmpExpedited = _tmp_4 != 0;
                int _columnIndexOfOutOfQuotaPolicy3 = _columnIndexOfExpedited2;
                OutOfQuotaPolicy _tmpOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) _stmt.getLong(_columnIndexOfOutOfQuotaPolicy3));
                int _tmp_5 = _columnIndexOfOutOfQuotaPolicy2;
                int _tmpPeriodCount = (int) _stmt.getLong(_tmp_5);
                int _columnIndexOfPeriodCount3 = _columnIndexOfNextScheduleTimeOverrideGeneration;
                int _tmpGeneration = (int) _stmt.getLong(_columnIndexOfPeriodCount3);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfGeneration2;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                int _columnIndexOfGeneration3 = _columnIndexOfNextScheduleTimeOverride2;
                int _tmpNextScheduleTimeOverrideGeneration = (int) _stmt.getLong(_columnIndexOfGeneration3);
                int _columnIndexOfStopReason5 = _columnIndexOfStopReason3;
                int _tmpStopReason = (int) _stmt.getLong(_columnIndexOfStopReason5);
                int _tmpStopReason2 = _columnIndexOfTraceTag2;
                if (_stmt.isNull(_tmpStopReason2)) {
                    _tmpTraceTag = null;
                } else {
                    String _tmpTraceTag2 = _stmt.getText(_tmpStopReason2);
                    _tmpTraceTag = _tmpTraceTag2;
                }
                _columnIndexOfTraceTag2 = _tmpStopReason2;
                int _columnIndexOfTraceTag3 = _columnIndexOfStopReason4;
                if (_stmt.isNull(_columnIndexOfTraceTag3)) {
                    _tmp_6 = null;
                    _columnIndexOfStopReason = _columnIndexOfStopReason5;
                } else {
                    _columnIndexOfStopReason = _columnIndexOfStopReason5;
                    _tmp_6 = Integer.valueOf((int) _stmt.getLong(_columnIndexOfTraceTag3));
                }
                if (_tmp_6 != null) {
                    int it = _tmp_6.intValue();
                    boolValueOf = Boolean.valueOf(it != 0);
                } else {
                    boolValueOf = null;
                }
                Boolean _tmpBackOffOnSystemInterruptions = boolValueOf;
                int _columnIndexOfBackOffOnSystemInterruptions = _tmp_12;
                int _tmp_72 = (int) _stmt.getLong(_columnIndexOfBackOffOnSystemInterruptions);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_72);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat2;
                byte[] _tmp_8 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_8);
                int _columnIndexOfRequiredNetworkRequestCompat3 = _tmp_7;
                int _tmp_92 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat3);
                boolean _tmpRequiresCharging = _tmp_92 != 0;
                int _columnIndexOfRequiresCharging = _tmp_9;
                int _tmp_102 = (int) _stmt.getLong(_columnIndexOfRequiresCharging);
                boolean _tmpRequiresDeviceIdle = _tmp_102 != 0;
                int _columnIndexOfRequiresDeviceIdle = _tmp_10;
                int _tmp_112 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle);
                boolean _tmpRequiresBatteryNotLow = _tmp_112 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_11;
                int _tmp_122 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_122 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfRequiresStorageNotLow2;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis3);
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfContentUriTriggers;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                byte[] _tmp_13 = _stmt.getBlob(_columnIndexOfContentUriTriggers2);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_13));
                WorkSpec _item = new WorkSpec(_tmpId, _tmpState, _tmpWorkerClassName, _tmpInputMergerClassName, _tmpInput, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpMinimumRetentionDuration, _tmpScheduleRequestedAt, _tmpExpedited, _tmpOutOfQuotaPolicy, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpNextScheduleTimeOverrideGeneration, _tmpStopReason, _tmpTraceTag, _tmpBackOffOnSystemInterruptions);
                List _result2 = _result;
                _result2.add(_item);
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfGeneration3;
                _columnIndexOfNextScheduleTimeOverrideGeneration = _columnIndexOfPeriodCount3;
                _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride3;
                _result = _result2;
                _columnIndexOfLastEnqueueTime = _columnIndexOfExpedited3;
                _columnIndexOfLastEnqueueTime2 = _columnIndexOfBackoffDelayDuration3;
                _columnIndexOfExpedited2 = _columnIndexOfOutOfQuotaPolicy3;
                _columnIndexOfStopReason3 = _columnIndexOfStopReason;
                _tmp_11 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfContentUriTriggers2;
                _columnIndexOfBackoffDelayDuration = _columnIndexOfBackoffDelayDuration2;
                _columnIndexOfContentUriTriggers = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfStopReason4 = _columnIndexOfTraceTag3;
                _tmp_12 = _columnIndexOfBackOffOnSystemInterruptions;
                _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType;
                _tmp_7 = _columnIndexOfRequiredNetworkRequestCompat3;
                _tmp_9 = _columnIndexOfRequiresCharging;
                _tmp_10 = _columnIndexOfRequiresDeviceIdle;
                _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis3;
                _columnIndexOfOutOfQuotaPolicy2 = _tmp_5;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfMinimumRetentionDuration;
                _columnIndexOfPeriodCount = _columnIndexOfScheduleRequestedAt3;
                _columnIndexOfScheduleRequestedAt = _columnIndexOfId;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getScheduledWork() {
        final String _sql = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getScheduledWork$lambda$31(_sql, (SQLiteConnection) obj);
            }
        });
    }

    static final List getScheduledWork$lambda$31(String $_sql, SQLiteConnection _connection) {
        String _tmpTraceTag;
        int _columnIndexOfTraceTag;
        int _columnIndexOfStopReason;
        Integer _tmp_6;
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, TtmlNode.ATTR_ID);
            int _tmp_12 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "state");
            int _columnIndexOfContentTriggerUpdateDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "worker_class_name");
            int _columnIndexOfInputMergerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input_merger_class_name");
            int _columnIndexOfInput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "last_enqueue_time");
            int _columnIndexOfMinimumRetentionDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "minimum_retention_duration");
            int _columnIndexOfPeriodCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "schedule_requested_at");
            int _columnIndexOfExpedited = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_in_foreground");
            int _columnIndexOfState = _columnIndexOfExpedited;
            int _columnIndexOfMinimumRetentionDuration2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "out_of_quota_policy");
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "period_count");
            int _tmp_4 = _columnIndexOfPeriodCount2;
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "generation");
            int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfGeneration;
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override");
            int _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfNextScheduleTimeOverrideGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override_generation");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverrideGeneration;
            int _columnIndexOfStopReason2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfNextScheduleTimeOverrideGeneration2 = _columnIndexOfStopReason2;
            int _columnIndexOfTraceTag2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trace_tag");
            int _columnIndexOfTraceTag3 = _columnIndexOfTraceTag2;
            int _columnIndexOfStopReason3 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_on_system_interruptions");
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkRequestCompat = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_request");
            int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkRequestCompat;
            int _tmp_7 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_charging");
            int _tmp_9 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_device_idle");
            int _tmp_10 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresStorageNotLow2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_storage_not_low");
            int _tmp_11 = _columnIndexOfRequiresStorageNotLow2;
            int _columnIndexOfContentTriggerUpdateDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_content_update_delay");
            int _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfContentTriggerUpdateDelayMillis2;
            int _columnIndexOfContentTriggerMaxDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfContentTriggerMaxDelayMillis2;
            int _columnIndexOfContentUriTriggers = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "content_uri_triggers");
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(_columnIndexOfId);
                int _columnIndexOfId2 = _columnIndexOfId;
                int _columnIndexOfMinimumRetentionDuration3 = _columnIndexOfMinimumRetentionDuration;
                int _tmp = (int) _stmt.getLong(_tmp_12);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                String _tmpWorkerClassName = _stmt.getText(_columnIndexOfContentTriggerUpdateDelayMillis);
                String _tmpInputMergerClassName = _stmt.getText(_columnIndexOfInputMergerClassName);
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfInput);
                Data _tmpInput = Data.INSTANCE.fromByteArray(_tmp_1);
                byte[] _tmp_2 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_2);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(_columnIndexOfIntervalDuration);
                long _tmpFlexDuration = _stmt.getLong(_columnIndexOfFlexDuration);
                int _tmpRunAttemptCount = (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(_columnIndexOfBackoffPolicy));
                long _tmpBackoffDelayDuration = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfLastEnqueueTime);
                long _tmpMinimumRetentionDuration = _stmt.getLong(_columnIndexOfMinimumRetentionDuration3);
                int _tmp_3 = _columnIndexOfPeriodCount;
                long _tmpScheduleRequestedAt = _stmt.getLong(_tmp_3);
                int _columnIndexOfWorkerClassName = _columnIndexOfContentTriggerUpdateDelayMillis;
                int _columnIndexOfScheduleRequestedAt = _columnIndexOfState;
                int _columnIndexOfExpedited2 = _tmp_12;
                int _tmp_42 = (int) _stmt.getLong(_columnIndexOfScheduleRequestedAt);
                boolean _tmpExpedited = _tmp_42 != 0;
                int _columnIndexOfOutOfQuotaPolicy = _columnIndexOfMinimumRetentionDuration2;
                OutOfQuotaPolicy _tmpOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) _stmt.getLong(_columnIndexOfOutOfQuotaPolicy));
                int _tmp_5 = _tmp_4;
                int _tmpPeriodCount = (int) _stmt.getLong(_tmp_5);
                int _columnIndexOfPeriodCount3 = _columnIndexOfContentTriggerMaxDelayMillis;
                int _tmpGeneration = (int) _stmt.getLong(_columnIndexOfPeriodCount3);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfGeneration2;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                int _columnIndexOfGeneration3 = _columnIndexOfNextScheduleTimeOverride2;
                int _tmpNextScheduleTimeOverrideGeneration = (int) _stmt.getLong(_columnIndexOfGeneration3);
                int _columnIndexOfStopReason4 = _columnIndexOfNextScheduleTimeOverrideGeneration2;
                int _tmpStopReason = (int) _stmt.getLong(_columnIndexOfStopReason4);
                int _columnIndexOfTraceTag4 = _columnIndexOfTraceTag3;
                if (_stmt.isNull(_columnIndexOfTraceTag4)) {
                    _tmpTraceTag = null;
                } else {
                    String _tmpTraceTag2 = _stmt.getText(_columnIndexOfTraceTag4);
                    _tmpTraceTag = _tmpTraceTag2;
                }
                int _tmpStopReason2 = _columnIndexOfStopReason3;
                if (_stmt.isNull(_tmpStopReason2)) {
                    _tmp_6 = null;
                    _columnIndexOfTraceTag = _columnIndexOfTraceTag4;
                    _columnIndexOfStopReason = _columnIndexOfStopReason4;
                } else {
                    _columnIndexOfTraceTag = _columnIndexOfTraceTag4;
                    _columnIndexOfStopReason = _columnIndexOfStopReason4;
                    _tmp_6 = Integer.valueOf((int) _stmt.getLong(_tmpStopReason2));
                }
                if (_tmp_6 != null) {
                    int it = _tmp_6.intValue();
                    boolValueOf = Boolean.valueOf(it != 0);
                } else {
                    boolValueOf = null;
                }
                Boolean _tmpBackOffOnSystemInterruptions = boolValueOf;
                int _columnIndexOfBackOffOnSystemInterruptions = _columnIndexOfRequiresStorageNotLow;
                int _tmp_72 = (int) _stmt.getLong(_columnIndexOfBackOffOnSystemInterruptions);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_72);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat2;
                byte[] _tmp_8 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_8);
                int _columnIndexOfRequiredNetworkRequestCompat3 = _tmp_7;
                int _tmp_92 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat3);
                boolean _tmpRequiresCharging = _tmp_92 != 0;
                int _columnIndexOfRequiresCharging = _tmp_9;
                int _tmp_102 = (int) _stmt.getLong(_columnIndexOfRequiresCharging);
                boolean _tmpRequiresDeviceIdle = _tmp_102 != 0;
                int _columnIndexOfRequiresDeviceIdle = _tmp_10;
                int _tmp_112 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle);
                boolean _tmpRequiresBatteryNotLow = _tmp_112 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_11;
                int _tmp_122 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_122 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis4 = _columnIndexOfContentTriggerUpdateDelayMillis3;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis4);
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfContentTriggerMaxDelayMillis3;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                byte[] _tmp_13 = _stmt.getBlob(_columnIndexOfContentUriTriggers);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_13));
                WorkSpec _item = new WorkSpec(_tmpId, _tmpState, _tmpWorkerClassName, _tmpInputMergerClassName, _tmpInput, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpMinimumRetentionDuration, _tmpScheduleRequestedAt, _tmpExpedited, _tmpOutOfQuotaPolicy, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpNextScheduleTimeOverrideGeneration, _tmpStopReason, _tmpTraceTag, _tmpBackOffOnSystemInterruptions);
                List _result2 = _result;
                _result2.add(_item);
                _result = _result2;
                _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfContentTriggerUpdateDelayMillis4;
                _tmp_4 = _tmp_5;
                _tmp_12 = _columnIndexOfExpedited2;
                _columnIndexOfMinimumRetentionDuration = _columnIndexOfMinimumRetentionDuration3;
                _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfPeriodCount3;
                _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride3;
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfGeneration3;
                _columnIndexOfNextScheduleTimeOverrideGeneration2 = _columnIndexOfStopReason;
                _tmp_11 = _columnIndexOfRequiresBatteryNotLow;
                _columnIndexOfId = _columnIndexOfId2;
                _columnIndexOfPeriodCount = _tmp_3;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfWorkerClassName;
                _columnIndexOfState = _columnIndexOfScheduleRequestedAt;
                _columnIndexOfMinimumRetentionDuration2 = _columnIndexOfOutOfQuotaPolicy;
                _columnIndexOfTraceTag3 = _columnIndexOfTraceTag;
                _columnIndexOfStopReason3 = _tmpStopReason2;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfBackOffOnSystemInterruptions;
                _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType;
                _tmp_7 = _columnIndexOfRequiredNetworkRequestCompat3;
                _tmp_9 = _columnIndexOfRequiresCharging;
                _tmp_10 = _columnIndexOfRequiresDeviceIdle;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRunningWork() {
        final String _sql = "SELECT * FROM workspec WHERE state=1";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda40
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getRunningWork$lambda$33(_sql, (SQLiteConnection) obj);
            }
        });
    }

    static final List getRunningWork$lambda$33(String $_sql, SQLiteConnection _connection) {
        String _tmpTraceTag;
        int _columnIndexOfTraceTag;
        int _columnIndexOfStopReason;
        Integer _tmp_6;
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, TtmlNode.ATTR_ID);
            int _tmp_12 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "state");
            int _columnIndexOfContentTriggerUpdateDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "worker_class_name");
            int _columnIndexOfInputMergerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input_merger_class_name");
            int _columnIndexOfInput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "last_enqueue_time");
            int _columnIndexOfMinimumRetentionDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "minimum_retention_duration");
            int _columnIndexOfPeriodCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "schedule_requested_at");
            int _columnIndexOfExpedited = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_in_foreground");
            int _columnIndexOfState = _columnIndexOfExpedited;
            int _columnIndexOfMinimumRetentionDuration2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "out_of_quota_policy");
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "period_count");
            int _tmp_4 = _columnIndexOfPeriodCount2;
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "generation");
            int _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfGeneration;
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override");
            int _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfNextScheduleTimeOverrideGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override_generation");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverrideGeneration;
            int _columnIndexOfStopReason2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfNextScheduleTimeOverrideGeneration2 = _columnIndexOfStopReason2;
            int _columnIndexOfTraceTag2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trace_tag");
            int _columnIndexOfTraceTag3 = _columnIndexOfTraceTag2;
            int _columnIndexOfStopReason3 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_on_system_interruptions");
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkRequestCompat = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_request");
            int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkRequestCompat;
            int _tmp_7 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_charging");
            int _tmp_9 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_device_idle");
            int _tmp_10 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresStorageNotLow2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_storage_not_low");
            int _tmp_11 = _columnIndexOfRequiresStorageNotLow2;
            int _columnIndexOfContentTriggerUpdateDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_content_update_delay");
            int _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfContentTriggerUpdateDelayMillis2;
            int _columnIndexOfContentTriggerMaxDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfContentTriggerMaxDelayMillis2;
            int _columnIndexOfContentUriTriggers = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "content_uri_triggers");
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(_columnIndexOfId);
                int _columnIndexOfId2 = _columnIndexOfId;
                int _columnIndexOfMinimumRetentionDuration3 = _columnIndexOfMinimumRetentionDuration;
                int _tmp = (int) _stmt.getLong(_tmp_12);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                String _tmpWorkerClassName = _stmt.getText(_columnIndexOfContentTriggerUpdateDelayMillis);
                String _tmpInputMergerClassName = _stmt.getText(_columnIndexOfInputMergerClassName);
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfInput);
                Data _tmpInput = Data.INSTANCE.fromByteArray(_tmp_1);
                byte[] _tmp_2 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_2);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(_columnIndexOfIntervalDuration);
                long _tmpFlexDuration = _stmt.getLong(_columnIndexOfFlexDuration);
                int _tmpRunAttemptCount = (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) _stmt.getLong(_columnIndexOfBackoffPolicy));
                long _tmpBackoffDelayDuration = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfLastEnqueueTime);
                long _tmpMinimumRetentionDuration = _stmt.getLong(_columnIndexOfMinimumRetentionDuration3);
                int _tmp_3 = _columnIndexOfPeriodCount;
                long _tmpScheduleRequestedAt = _stmt.getLong(_tmp_3);
                int _columnIndexOfWorkerClassName = _columnIndexOfContentTriggerUpdateDelayMillis;
                int _columnIndexOfScheduleRequestedAt = _columnIndexOfState;
                int _columnIndexOfExpedited2 = _tmp_12;
                int _tmp_42 = (int) _stmt.getLong(_columnIndexOfScheduleRequestedAt);
                boolean _tmpExpedited = _tmp_42 != 0;
                int _columnIndexOfOutOfQuotaPolicy = _columnIndexOfMinimumRetentionDuration2;
                OutOfQuotaPolicy _tmpOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) _stmt.getLong(_columnIndexOfOutOfQuotaPolicy));
                int _tmp_5 = _tmp_4;
                int _tmpPeriodCount = (int) _stmt.getLong(_tmp_5);
                int _columnIndexOfPeriodCount3 = _columnIndexOfContentTriggerMaxDelayMillis;
                int _tmpGeneration = (int) _stmt.getLong(_columnIndexOfPeriodCount3);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfGeneration2;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                int _columnIndexOfGeneration3 = _columnIndexOfNextScheduleTimeOverride2;
                int _tmpNextScheduleTimeOverrideGeneration = (int) _stmt.getLong(_columnIndexOfGeneration3);
                int _columnIndexOfStopReason4 = _columnIndexOfNextScheduleTimeOverrideGeneration2;
                int _tmpStopReason = (int) _stmt.getLong(_columnIndexOfStopReason4);
                int _columnIndexOfTraceTag4 = _columnIndexOfTraceTag3;
                if (_stmt.isNull(_columnIndexOfTraceTag4)) {
                    _tmpTraceTag = null;
                } else {
                    String _tmpTraceTag2 = _stmt.getText(_columnIndexOfTraceTag4);
                    _tmpTraceTag = _tmpTraceTag2;
                }
                int _tmpStopReason2 = _columnIndexOfStopReason3;
                if (_stmt.isNull(_tmpStopReason2)) {
                    _tmp_6 = null;
                    _columnIndexOfTraceTag = _columnIndexOfTraceTag4;
                    _columnIndexOfStopReason = _columnIndexOfStopReason4;
                } else {
                    _columnIndexOfTraceTag = _columnIndexOfTraceTag4;
                    _columnIndexOfStopReason = _columnIndexOfStopReason4;
                    _tmp_6 = Integer.valueOf((int) _stmt.getLong(_tmpStopReason2));
                }
                if (_tmp_6 != null) {
                    int it = _tmp_6.intValue();
                    boolValueOf = Boolean.valueOf(it != 0);
                } else {
                    boolValueOf = null;
                }
                Boolean _tmpBackOffOnSystemInterruptions = boolValueOf;
                int _columnIndexOfBackOffOnSystemInterruptions = _columnIndexOfRequiresStorageNotLow;
                int _tmp_72 = (int) _stmt.getLong(_columnIndexOfBackOffOnSystemInterruptions);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_72);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat2;
                byte[] _tmp_8 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_8);
                int _columnIndexOfRequiredNetworkRequestCompat3 = _tmp_7;
                int _tmp_92 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat3);
                boolean _tmpRequiresCharging = _tmp_92 != 0;
                int _columnIndexOfRequiresCharging = _tmp_9;
                int _tmp_102 = (int) _stmt.getLong(_columnIndexOfRequiresCharging);
                boolean _tmpRequiresDeviceIdle = _tmp_102 != 0;
                int _columnIndexOfRequiresDeviceIdle = _tmp_10;
                int _tmp_112 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle);
                boolean _tmpRequiresBatteryNotLow = _tmp_112 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_11;
                int _tmp_122 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_122 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis4 = _columnIndexOfContentTriggerUpdateDelayMillis3;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis4);
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfContentTriggerMaxDelayMillis3;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                byte[] _tmp_13 = _stmt.getBlob(_columnIndexOfContentUriTriggers);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_13));
                WorkSpec _item = new WorkSpec(_tmpId, _tmpState, _tmpWorkerClassName, _tmpInputMergerClassName, _tmpInput, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpMinimumRetentionDuration, _tmpScheduleRequestedAt, _tmpExpedited, _tmpOutOfQuotaPolicy, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpNextScheduleTimeOverrideGeneration, _tmpStopReason, _tmpTraceTag, _tmpBackOffOnSystemInterruptions);
                List _result2 = _result;
                _result2.add(_item);
                _result = _result2;
                _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfContentTriggerUpdateDelayMillis4;
                _tmp_4 = _tmp_5;
                _tmp_12 = _columnIndexOfExpedited2;
                _columnIndexOfMinimumRetentionDuration = _columnIndexOfMinimumRetentionDuration3;
                _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfContentTriggerMaxDelayMillis = _columnIndexOfPeriodCount3;
                _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride3;
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfGeneration3;
                _columnIndexOfNextScheduleTimeOverrideGeneration2 = _columnIndexOfStopReason;
                _tmp_11 = _columnIndexOfRequiresBatteryNotLow;
                _columnIndexOfId = _columnIndexOfId2;
                _columnIndexOfPeriodCount = _tmp_3;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfWorkerClassName;
                _columnIndexOfState = _columnIndexOfScheduleRequestedAt;
                _columnIndexOfMinimumRetentionDuration2 = _columnIndexOfOutOfQuotaPolicy;
                _columnIndexOfTraceTag3 = _columnIndexOfTraceTag;
                _columnIndexOfStopReason3 = _tmpStopReason2;
                _columnIndexOfRequiresStorageNotLow = _columnIndexOfBackOffOnSystemInterruptions;
                _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType;
                _tmp_7 = _columnIndexOfRequiredNetworkRequestCompat3;
                _tmp_9 = _columnIndexOfRequiresCharging;
                _tmp_10 = _columnIndexOfRequiresDeviceIdle;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRecentlyCompletedWork(final long startingAt) {
        final String _sql = "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getRecentlyCompletedWork$lambda$35(_sql, startingAt, (SQLiteConnection) obj);
            }
        });
    }

    static final List getRecentlyCompletedWork$lambda$35(String $_sql, long $startingAt, SQLiteConnection _connection) {
        String _tmpTraceTag;
        int _columnIndexOfStopReason;
        Integer _tmp_6;
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8064bindLong(1, $startingAt);
            int _columnIndexOfScheduleRequestedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, TtmlNode.ATTR_ID);
            int _columnIndexOfState = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "state");
            int _columnIndexOfWorkerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "worker_class_name");
            int _columnIndexOfInputMergerClassName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input_merger_class_name");
            int _columnIndexOfInput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "input");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_delay_duration");
            int _columnIndexOfContentTriggerUpdateDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "last_enqueue_time");
            int _columnIndexOfMinimumRetentionDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "minimum_retention_duration");
            int _columnIndexOfScheduleRequestedAt2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "schedule_requested_at");
            int _columnIndexOfPeriodCount = _columnIndexOfScheduleRequestedAt2;
            int _columnIndexOfExpedited = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "run_in_foreground");
            int _columnIndexOfBackoffDelayDuration2 = _columnIndexOfExpedited;
            int _columnIndexOfOutOfQuotaPolicy = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "out_of_quota_policy");
            int _columnIndexOfExpedited2 = _columnIndexOfOutOfQuotaPolicy;
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "period_count");
            int _columnIndexOfOutOfQuotaPolicy2 = _columnIndexOfPeriodCount2;
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "generation");
            int _columnIndexOfNextScheduleTimeOverrideGeneration = _columnIndexOfGeneration;
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override");
            int _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfNextScheduleTimeOverrideGeneration2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "next_schedule_time_override_generation");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverrideGeneration2;
            int _columnIndexOfStopReason2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfStopReason3 = _columnIndexOfStopReason2;
            int _columnIndexOfTraceTag = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trace_tag");
            int _columnIndexOfTraceTag2 = _columnIndexOfTraceTag;
            int _columnIndexOfStopReason4 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "backoff_on_system_interruptions");
            int _tmp_12 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkRequestCompat = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "required_network_request");
            int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkRequestCompat;
            int _tmp_7 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_charging");
            int _tmp_9 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_device_idle");
            int _tmp_10 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "requires_storage_not_low");
            int _tmp_11 = _columnIndexOfRequiresStorageNotLow;
            int _columnIndexOfContentTriggerUpdateDelayMillis2 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_content_update_delay");
            int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis2;
            int _columnIndexOfContentTriggerMaxDelayMillis = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerMaxDelayMillis;
            int _tmp_3 = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "content_uri_triggers");
            List _result = new ArrayList();
            while (_stmt.step()) {
                String _tmpId = _stmt.getText(_columnIndexOfScheduleRequestedAt);
                int _columnIndexOfContentUriTriggers2 = _tmp_3;
                int _columnIndexOfId = _columnIndexOfScheduleRequestedAt;
                int _tmp = (int) _stmt.getLong(_columnIndexOfState);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                String _tmpWorkerClassName = _stmt.getText(_columnIndexOfWorkerClassName);
                String _tmpInputMergerClassName = _stmt.getText(_columnIndexOfInputMergerClassName);
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfInput);
                Data _tmpInput = Data.INSTANCE.fromByteArray(_tmp_1);
                byte[] _tmp_2 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_2);
                long _tmpInitialDelay = _stmt.getLong(_columnIndexOfInitialDelay);
                long _tmpIntervalDuration = _stmt.getLong(_columnIndexOfIntervalDuration);
                long _tmpFlexDuration = _stmt.getLong(_columnIndexOfFlexDuration);
                int _tmpRunAttemptCount = (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                int _tmp_32 = (int) _stmt.getLong(_columnIndexOfBackoffPolicy);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(_tmp_32);
                long _tmpBackoffDelayDuration = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                long _tmpLastEnqueueTime = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis);
                long _tmpMinimumRetentionDuration = _stmt.getLong(_columnIndexOfMinimumRetentionDuration);
                int _columnIndexOfScheduleRequestedAt3 = _columnIndexOfPeriodCount;
                long _tmpScheduleRequestedAt = _stmt.getLong(_columnIndexOfScheduleRequestedAt3);
                int _columnIndexOfBackoffPolicy2 = _columnIndexOfBackoffPolicy;
                int _columnIndexOfLastEnqueueTime = _columnIndexOfContentTriggerUpdateDelayMillis;
                int _columnIndexOfBackoffPolicy3 = _columnIndexOfBackoffDelayDuration2;
                int _columnIndexOfExpedited3 = _columnIndexOfBackoffDelayDuration;
                int _tmp_4 = (int) _stmt.getLong(_columnIndexOfBackoffPolicy3);
                boolean _tmpExpedited = _tmp_4 != 0;
                int _columnIndexOfOutOfQuotaPolicy3 = _columnIndexOfExpedited2;
                OutOfQuotaPolicy _tmpOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) _stmt.getLong(_columnIndexOfOutOfQuotaPolicy3));
                int _tmp_5 = _columnIndexOfOutOfQuotaPolicy2;
                int _tmpPeriodCount = (int) _stmt.getLong(_tmp_5);
                int _columnIndexOfPeriodCount3 = _columnIndexOfNextScheduleTimeOverrideGeneration;
                int _tmpGeneration = (int) _stmt.getLong(_columnIndexOfPeriodCount3);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfGeneration2;
                long _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                int _columnIndexOfGeneration3 = _columnIndexOfNextScheduleTimeOverride2;
                int _tmpNextScheduleTimeOverrideGeneration = (int) _stmt.getLong(_columnIndexOfGeneration3);
                int _columnIndexOfStopReason5 = _columnIndexOfStopReason3;
                int _tmpStopReason = (int) _stmt.getLong(_columnIndexOfStopReason5);
                int _tmpStopReason2 = _columnIndexOfTraceTag2;
                if (_stmt.isNull(_tmpStopReason2)) {
                    _tmpTraceTag = null;
                } else {
                    String _tmpTraceTag2 = _stmt.getText(_tmpStopReason2);
                    _tmpTraceTag = _tmpTraceTag2;
                }
                _columnIndexOfTraceTag2 = _tmpStopReason2;
                int _columnIndexOfTraceTag3 = _columnIndexOfStopReason4;
                if (_stmt.isNull(_columnIndexOfTraceTag3)) {
                    _tmp_6 = null;
                    _columnIndexOfStopReason = _columnIndexOfStopReason5;
                } else {
                    _columnIndexOfStopReason = _columnIndexOfStopReason5;
                    _tmp_6 = Integer.valueOf((int) _stmt.getLong(_columnIndexOfTraceTag3));
                }
                if (_tmp_6 != null) {
                    int it = _tmp_6.intValue();
                    boolValueOf = Boolean.valueOf(it != 0);
                } else {
                    boolValueOf = null;
                }
                Boolean _tmpBackOffOnSystemInterruptions = boolValueOf;
                int _columnIndexOfBackOffOnSystemInterruptions = _tmp_12;
                int _tmp_72 = (int) _stmt.getLong(_columnIndexOfBackOffOnSystemInterruptions);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_72);
                int _columnIndexOfRequiredNetworkType = _columnIndexOfRequiredNetworkRequestCompat2;
                byte[] _tmp_8 = _stmt.getBlob(_columnIndexOfRequiredNetworkType);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_8);
                int _columnIndexOfRequiredNetworkRequestCompat3 = _tmp_7;
                int _tmp_92 = (int) _stmt.getLong(_columnIndexOfRequiredNetworkRequestCompat3);
                boolean _tmpRequiresCharging = _tmp_92 != 0;
                int _columnIndexOfRequiresCharging = _tmp_9;
                int _tmp_102 = (int) _stmt.getLong(_columnIndexOfRequiresCharging);
                boolean _tmpRequiresDeviceIdle = _tmp_102 != 0;
                int _columnIndexOfRequiresDeviceIdle = _tmp_10;
                int _tmp_112 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle);
                boolean _tmpRequiresBatteryNotLow = _tmp_112 != 0;
                int _columnIndexOfRequiresBatteryNotLow = _tmp_11;
                int _tmp_122 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow);
                boolean _tmpRequiresStorageNotLow = _tmp_122 != 0;
                int _columnIndexOfContentTriggerUpdateDelayMillis3 = _columnIndexOfRequiresStorageNotLow2;
                long _tmpContentTriggerUpdateDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis3);
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfContentUriTriggers;
                long _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                byte[] _tmp_13 = _stmt.getBlob(_columnIndexOfContentUriTriggers2);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_13));
                WorkSpec _item = new WorkSpec(_tmpId, _tmpState, _tmpWorkerClassName, _tmpInputMergerClassName, _tmpInput, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpMinimumRetentionDuration, _tmpScheduleRequestedAt, _tmpExpedited, _tmpOutOfQuotaPolicy, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpNextScheduleTimeOverrideGeneration, _tmpStopReason, _tmpTraceTag, _tmpBackOffOnSystemInterruptions);
                List _result2 = _result;
                _result2.add(_item);
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfGeneration3;
                _columnIndexOfNextScheduleTimeOverrideGeneration = _columnIndexOfPeriodCount3;
                _columnIndexOfGeneration2 = _columnIndexOfNextScheduleTimeOverride3;
                _result = _result2;
                _columnIndexOfBackoffDelayDuration = _columnIndexOfExpedited3;
                _columnIndexOfBackoffDelayDuration2 = _columnIndexOfBackoffPolicy3;
                _columnIndexOfExpedited2 = _columnIndexOfOutOfQuotaPolicy3;
                _columnIndexOfStopReason3 = _columnIndexOfStopReason;
                _tmp_11 = _columnIndexOfRequiresBatteryNotLow;
                _tmp_3 = _columnIndexOfContentUriTriggers2;
                _columnIndexOfBackoffPolicy = _columnIndexOfBackoffPolicy2;
                _columnIndexOfContentUriTriggers = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfStopReason4 = _columnIndexOfTraceTag3;
                _tmp_12 = _columnIndexOfBackOffOnSystemInterruptions;
                _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType;
                _tmp_7 = _columnIndexOfRequiredNetworkRequestCompat3;
                _tmp_9 = _columnIndexOfRequiresCharging;
                _tmp_10 = _columnIndexOfRequiresDeviceIdle;
                _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfContentTriggerUpdateDelayMillis3;
                _columnIndexOfOutOfQuotaPolicy2 = _tmp_5;
                _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfLastEnqueueTime;
                _columnIndexOfPeriodCount = _columnIndexOfScheduleRequestedAt3;
                _columnIndexOfScheduleRequestedAt = _columnIndexOfId;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int countNonFinishedContentUriTriggerWorkers() {
        final String _sql = "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)";
        return ((Number) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.countNonFinishedContentUriTriggerWorkers$lambda$36(_sql, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    static final int countNonFinishedContentUriTriggerWorkers$lambda$36(String $_sql, SQLiteConnection _connection) {
        int _result;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            if (_stmt.step()) {
                _result = (int) _stmt.getLong(0);
            } else {
                _result = 0;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "DELETE FROM workspec WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.delete$lambda$37(_sql, id, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit delete$lambda$37(String $_sql, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(final WorkInfo.State state, final String id) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET state=? WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda44
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.setState$lambda$38(_sql, state, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    static final int setState$lambda$38(String $_sql, WorkInfo.State $state, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            int _tmp = WorkTypeConverters.stateToInt($state);
            _stmt.mo8064bindLong(1, _tmp);
            _stmt.mo8066bindText(2, $id);
            _stmt.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setCancelledState(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda35
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.setCancelledState$lambda$39(_sql, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    static final int setCancelledState$lambda$39(String $_sql, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            _stmt.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.incrementPeriodCount$lambda$40(_sql, id, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit incrementPeriodCount$lambda$40(String $_sql, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(final String id, final Data output) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(output, "output");
        final String _sql = "UPDATE workspec SET output=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setOutput$lambda$41(_sql, output, id, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit setOutput$lambda$41(String $_sql, Data $output, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            byte[] _tmp = Data.INSTANCE.toByteArrayInternalV1($output);
            _stmt.mo8062bindBlob(1, _tmp);
            _stmt.mo8066bindText(2, $id);
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setLastEnqueueTime(final String id, final long enqueueTime) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setLastEnqueueTime$lambda$42(_sql, enqueueTime, id, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit setLastEnqueueTime$lambda$42(String $_sql, long $enqueueTime, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8064bindLong(1, $enqueueTime);
            _stmt.mo8066bindText(2, $id);
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda38
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.incrementWorkSpecRunAttemptCount$lambda$43(_sql, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    static final int incrementWorkSpecRunAttemptCount$lambda$43(String $_sql, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            _stmt.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.resetWorkSpecRunAttemptCount$lambda$44(_sql, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    static final int resetWorkSpecRunAttemptCount$lambda$44(String $_sql, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            _stmt.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setNextScheduleTimeOverride(final String id, final long nextScheduleTimeOverrideMillis) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET next_schedule_time_override=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setNextScheduleTimeOverride$lambda$45(_sql, nextScheduleTimeOverrideMillis, id, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit setNextScheduleTimeOverride$lambda$45(String $_sql, long $nextScheduleTimeOverrideMillis, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8064bindLong(1, $nextScheduleTimeOverrideMillis);
            _stmt.mo8066bindText(2, $id);
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void resetWorkSpecNextScheduleTimeOverride(final String id, final int overrideGeneration) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride$lambda$46(_sql, id, overrideGeneration, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit resetWorkSpecNextScheduleTimeOverride$lambda$46(String $_sql, String $id, int $overrideGeneration, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            _stmt.mo8064bindLong(2, $overrideGeneration);
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(final String id, final long startTime) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.markWorkSpecScheduled$lambda$47(_sql, startTime, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    static final int markWorkSpecScheduled$lambda$47(String $_sql, long $startTime, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8064bindLong(1, $startTime);
            _stmt.mo8066bindText(2, $id);
            _stmt.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        final String _sql = "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.resetScheduledState$lambda$48(_sql, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    static final int resetScheduledState$lambda$48(String $_sql, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        final String _sql = "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49(_sql, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49(String $_sql, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementGeneration(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET generation=generation+1 WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.incrementGeneration$lambda$50(_sql, id, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit incrementGeneration$lambda$50(String $_sql, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8066bindText(1, $id);
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setStopReason(final String id, final int stopReason) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String _sql = "UPDATE workspec SET stop_reason=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setStopReason$lambda$51(_sql, stopReason, id, (SQLiteConnection) obj);
            }
        });
    }

    static final Unit setStopReason$lambda$51(String $_sql, int $stopReason, String $id, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            _stmt.mo8064bindLong(1, $stopReason);
            _stmt.mo8066bindText(2, $id);
            _stmt.step();
            _stmt.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            _stmt.close();
            throw th;
        }
    }

    private final void __fetchRelationshipWorkTagAsjavaLangString(final SQLiteConnection _connection, ArrayMap<String, List<String>> _map) {
        Set<String> setKeySet = _map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (_map.getSize() > 999) {
            RelationUtil.recursiveFetchArrayMap(_map, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda41
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WorkSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString$lambda$52(this.f$0, _connection, (ArrayMap) obj);
                }
            });
            return;
        }
        StringBuilder _stringBuilder = new StringBuilder();
        _stringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int _inputSize = setKeySet.size();
        StringUtil.appendPlaceholders(_stringBuilder, _inputSize);
        _stringBuilder.append(")");
        String _sql = _stringBuilder.toString();
        Intrinsics.checkNotNullExpressionValue(_sql, "toString(...)");
        SQLiteStatement _stmt = _connection.prepare(_sql);
        int _argIndex = 1;
        for (String _item : setKeySet) {
            _stmt.mo8066bindText(_argIndex, _item);
            _argIndex++;
        }
        try {
            int _itemKeyIndex = SQLiteStatementUtil.getColumnIndex(_stmt, "work_spec_id");
            if (_itemKeyIndex == -1) {
                return;
            }
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(_itemKeyIndex);
                List<String> list = _map.get(_tmpKey);
                if (list != null) {
                    String _item_1 = _stmt.getText(0);
                    list.add(_item_1);
                }
            }
        } finally {
            _stmt.close();
        }
    }

    static final Unit __fetchRelationshipWorkTagAsjavaLangString$lambda$52(WorkSpecDao_Impl this$0, SQLiteConnection $_connection, ArrayMap _tmpMap) {
        Intrinsics.checkNotNullParameter(_tmpMap, "_tmpMap");
        this$0.__fetchRelationshipWorkTagAsjavaLangString($_connection, _tmpMap);
        return Unit.INSTANCE;
    }

    private final void __fetchRelationshipWorkProgressAsandroidxWorkData(final SQLiteConnection _connection, ArrayMap<String, List<Data>> _map) {
        Set<String> setKeySet = _map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (_map.getSize() > 999) {
            RelationUtil.recursiveFetchArrayMap(_map, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda39
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WorkSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53(this.f$0, _connection, (ArrayMap) obj);
                }
            });
            return;
        }
        StringBuilder _stringBuilder = new StringBuilder();
        _stringBuilder.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int _inputSize = setKeySet.size();
        StringUtil.appendPlaceholders(_stringBuilder, _inputSize);
        _stringBuilder.append(")");
        String _sql = _stringBuilder.toString();
        Intrinsics.checkNotNullExpressionValue(_sql, "toString(...)");
        SQLiteStatement _stmt = _connection.prepare(_sql);
        int _argIndex = 1;
        for (String _item : setKeySet) {
            _stmt.mo8066bindText(_argIndex, _item);
            _argIndex++;
        }
        try {
            int _itemKeyIndex = SQLiteStatementUtil.getColumnIndex(_stmt, "work_spec_id");
            if (_itemKeyIndex == -1) {
                return;
            }
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(_itemKeyIndex);
                List<Data> list = _map.get(_tmpKey);
                if (list != null) {
                    byte[] _tmp = _stmt.getBlob(0);
                    Data _item_1 = Data.INSTANCE.fromByteArray(_tmp);
                    list.add(_item_1);
                }
            }
        } finally {
            _stmt.close();
        }
    }

    static final Unit __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53(WorkSpecDao_Impl this$0, SQLiteConnection $_connection, ArrayMap _tmpMap) {
        Intrinsics.checkNotNullParameter(_tmpMap, "_tmpMap");
        this$0.__fetchRelationshipWorkProgressAsandroidxWorkData($_connection, _tmpMap);
        return Unit.INSTANCE;
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;", "", "<init>", "()V", "getRequiredConverters", "", "Lkotlin/reflect/KClass;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<KClass<?>> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
