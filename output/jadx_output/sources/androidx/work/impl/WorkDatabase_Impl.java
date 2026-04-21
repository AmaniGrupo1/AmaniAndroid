package androidx.work.impl;

import androidx.autofill.HintConstants;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.InvalidationTracker;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenDelegate;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.RawWorkInfoDao;
import androidx.work.impl.model.RawWorkInfoDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTagDao_Impl;
import androidx.work.impl.utils.PreferenceUtils;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: WorkDatabase_Impl.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0014J\b\u0010\u0017\u001a\u00020\u0018H\u0014J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\"\u0010\u001b\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d0\u001e0\u001cH\u0014J\u0016\u0010\u001f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020!0\u001d0 H\u0016J*\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u001e2\u001a\u0010$\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020!0\u001d\u0012\u0004\u0012\u00020!0\u001cH\u0016J\b\u0010%\u001a\u00020\u0006H\u0016J\b\u0010&\u001a\u00020\bH\u0016J\b\u0010'\u001a\u00020\nH\u0016J\b\u0010(\u001a\u00020\fH\u0016J\b\u0010)\u001a\u00020\u000eH\u0016J\b\u0010*\u001a\u00020\u0010H\u0016J\b\u0010+\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Landroidx/work/impl/WorkDatabase_Impl;", "Landroidx/work/impl/WorkDatabase;", "<init>", "()V", "_workSpecDao", "Lkotlin/Lazy;", "Landroidx/work/impl/model/WorkSpecDao;", "_dependencyDao", "Landroidx/work/impl/model/DependencyDao;", "_workTagDao", "Landroidx/work/impl/model/WorkTagDao;", "_systemIdInfoDao", "Landroidx/work/impl/model/SystemIdInfoDao;", "_workNameDao", "Landroidx/work/impl/model/WorkNameDao;", "_workProgressDao", "Landroidx/work/impl/model/WorkProgressDao;", "_preferenceDao", "Landroidx/work/impl/model/PreferenceDao;", "_rawWorkInfoDao", "Landroidx/work/impl/model/RawWorkInfoDao;", "createOpenDelegate", "Landroidx/room/RoomOpenDelegate;", "createInvalidationTracker", "Landroidx/room/InvalidationTracker;", "clearAllTables", "", "getRequiredTypeConverterClasses", "", "Lkotlin/reflect/KClass;", "", "getRequiredAutoMigrationSpecClasses", "", "Landroidx/room/migration/AutoMigrationSpec;", "createAutoMigrations", "Landroidx/room/migration/Migration;", "autoMigrationSpecs", "workSpecDao", "dependencyDao", "workTagDao", "systemIdInfoDao", "workNameDao", "workProgressDao", "preferenceDao", "rawWorkInfoDao", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkDatabase_Impl extends WorkDatabase {
    private final Lazy<WorkSpecDao> _workSpecDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl._workSpecDao$lambda$0(this.f$0);
        }
    });
    private final Lazy<DependencyDao> _dependencyDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl._dependencyDao$lambda$1(this.f$0);
        }
    });
    private final Lazy<WorkTagDao> _workTagDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl._workTagDao$lambda$2(this.f$0);
        }
    });
    private final Lazy<SystemIdInfoDao> _systemIdInfoDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl._systemIdInfoDao$lambda$3(this.f$0);
        }
    });
    private final Lazy<WorkNameDao> _workNameDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl._workNameDao$lambda$4(this.f$0);
        }
    });
    private final Lazy<WorkProgressDao> _workProgressDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl._workProgressDao$lambda$5(this.f$0);
        }
    });
    private final Lazy<PreferenceDao> _preferenceDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl._preferenceDao$lambda$6(this.f$0);
        }
    });
    private final Lazy<RawWorkInfoDao> _rawWorkInfoDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl._rawWorkInfoDao$lambda$7(this.f$0);
        }
    });

    static final WorkSpecDao_Impl _workSpecDao$lambda$0(WorkDatabase_Impl this$0) {
        return new WorkSpecDao_Impl(this$0);
    }

    static final DependencyDao_Impl _dependencyDao$lambda$1(WorkDatabase_Impl this$0) {
        return new DependencyDao_Impl(this$0);
    }

    static final WorkTagDao_Impl _workTagDao$lambda$2(WorkDatabase_Impl this$0) {
        return new WorkTagDao_Impl(this$0);
    }

    static final SystemIdInfoDao_Impl _systemIdInfoDao$lambda$3(WorkDatabase_Impl this$0) {
        return new SystemIdInfoDao_Impl(this$0);
    }

    static final WorkNameDao_Impl _workNameDao$lambda$4(WorkDatabase_Impl this$0) {
        return new WorkNameDao_Impl(this$0);
    }

    static final WorkProgressDao_Impl _workProgressDao$lambda$5(WorkDatabase_Impl this$0) {
        return new WorkProgressDao_Impl(this$0);
    }

    static final PreferenceDao_Impl _preferenceDao$lambda$6(WorkDatabase_Impl this$0) {
        return new PreferenceDao_Impl(this$0);
    }

    static final RawWorkInfoDao_Impl _rawWorkInfoDao$lambda$7(WorkDatabase_Impl this$0) {
        return new RawWorkInfoDao_Impl(this$0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    public RoomOpenDelegate createOpenDelegate() {
        RoomOpenDelegate _openDelegate = new RoomOpenDelegate() { // from class: androidx.work.impl.WorkDatabase_Impl$createOpenDelegate$_openDelegate$1
            {
                super(24, "08b926448d86528e697981ddd30459f7", "149fd8ad55885d3fe3549a37a0163243");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void createAllTables(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, PreferenceUtils.CREATE_PREFERENCE);
                SQLite.execSQL(connection, RoomMasterTable.CREATE_QUERY);
                SQLite.execSQL(connection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '08b926448d86528e697981ddd30459f7')");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void dropAllTables(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `Dependency`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `WorkSpec`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `WorkTag`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `SystemIdInfo`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `WorkName`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `WorkProgress`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `Preference`");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onCreate(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onOpen(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
                SQLite.execSQL(connection, "PRAGMA foreign_keys = ON");
                this.this$0.internalInitInvalidationTracker(connection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onPreMigrate(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
                DBUtil.dropFtsSyncTriggers(connection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onPostMigrate(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
            }

            @Override // androidx.room.RoomOpenDelegate
            public RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
                Map _columnsDependency = new LinkedHashMap();
                _columnsDependency.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                _columnsDependency.put("prerequisite_id", new TableInfo.Column("prerequisite_id", "TEXT", true, 2, null, 1));
                Set _foreignKeysDependency = new LinkedHashSet();
                _foreignKeysDependency.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf(TtmlNode.ATTR_ID)));
                _foreignKeysDependency.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("prerequisite_id"), CollectionsKt.listOf(TtmlNode.ATTR_ID)));
                Set _indicesDependency = new LinkedHashSet();
                _indicesDependency.add(new TableInfo.Index("index_Dependency_work_spec_id", false, CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("ASC")));
                _indicesDependency.add(new TableInfo.Index("index_Dependency_prerequisite_id", false, CollectionsKt.listOf("prerequisite_id"), CollectionsKt.listOf("ASC")));
                TableInfo _infoDependency = new TableInfo("Dependency", _columnsDependency, _foreignKeysDependency, _indicesDependency);
                TableInfo _existingDependency = TableInfo.INSTANCE.read(connection, "Dependency");
                if (!_infoDependency.equals(_existingDependency)) {
                    return new RoomOpenDelegate.ValidationResult(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + _infoDependency + "\n Found:\n" + _existingDependency);
                }
                Map _columnsWorkSpec = new LinkedHashMap();
                _columnsWorkSpec.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "TEXT", true, 1, null, 1));
                _columnsWorkSpec.put("state", new TableInfo.Column("state", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("worker_class_name", new TableInfo.Column("worker_class_name", "TEXT", true, 0, null, 1));
                _columnsWorkSpec.put("input_merger_class_name", new TableInfo.Column("input_merger_class_name", "TEXT", true, 0, null, 1));
                _columnsWorkSpec.put("input", new TableInfo.Column("input", "BLOB", true, 0, null, 1));
                _columnsWorkSpec.put("output", new TableInfo.Column("output", "BLOB", true, 0, null, 1));
                _columnsWorkSpec.put("initial_delay", new TableInfo.Column("initial_delay", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("interval_duration", new TableInfo.Column("interval_duration", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("flex_duration", new TableInfo.Column("flex_duration", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("run_attempt_count", new TableInfo.Column("run_attempt_count", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("backoff_policy", new TableInfo.Column("backoff_policy", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("backoff_delay_duration", new TableInfo.Column("backoff_delay_duration", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("last_enqueue_time", new TableInfo.Column("last_enqueue_time", "INTEGER", true, 0, "-1", 1));
                _columnsWorkSpec.put("minimum_retention_duration", new TableInfo.Column("minimum_retention_duration", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("schedule_requested_at", new TableInfo.Column("schedule_requested_at", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("run_in_foreground", new TableInfo.Column("run_in_foreground", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("out_of_quota_policy", new TableInfo.Column("out_of_quota_policy", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("period_count", new TableInfo.Column("period_count", "INTEGER", true, 0, "0", 1));
                _columnsWorkSpec.put("generation", new TableInfo.Column("generation", "INTEGER", true, 0, "0", 1));
                _columnsWorkSpec.put("next_schedule_time_override", new TableInfo.Column("next_schedule_time_override", "INTEGER", true, 0, "9223372036854775807", 1));
                _columnsWorkSpec.put("next_schedule_time_override_generation", new TableInfo.Column("next_schedule_time_override_generation", "INTEGER", true, 0, "0", 1));
                _columnsWorkSpec.put(DownloadService.KEY_STOP_REASON, new TableInfo.Column(DownloadService.KEY_STOP_REASON, "INTEGER", true, 0, "-256", 1));
                _columnsWorkSpec.put("trace_tag", new TableInfo.Column("trace_tag", "TEXT", false, 0, null, 1));
                _columnsWorkSpec.put("backoff_on_system_interruptions", new TableInfo.Column("backoff_on_system_interruptions", "INTEGER", false, 0, null, 1));
                _columnsWorkSpec.put("required_network_type", new TableInfo.Column("required_network_type", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("required_network_request", new TableInfo.Column("required_network_request", "BLOB", true, 0, "x''", 1));
                _columnsWorkSpec.put("requires_charging", new TableInfo.Column("requires_charging", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("requires_device_idle", new TableInfo.Column("requires_device_idle", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("requires_battery_not_low", new TableInfo.Column("requires_battery_not_low", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("requires_storage_not_low", new TableInfo.Column("requires_storage_not_low", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("trigger_content_update_delay", new TableInfo.Column("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("trigger_max_content_delay", new TableInfo.Column("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
                _columnsWorkSpec.put("content_uri_triggers", new TableInfo.Column("content_uri_triggers", "BLOB", true, 0, null, 1));
                Set _foreignKeysWorkSpec = new LinkedHashSet();
                Set _indicesWorkSpec = new LinkedHashSet();
                _indicesWorkSpec.add(new TableInfo.Index("index_WorkSpec_schedule_requested_at", false, CollectionsKt.listOf("schedule_requested_at"), CollectionsKt.listOf("ASC")));
                _indicesWorkSpec.add(new TableInfo.Index("index_WorkSpec_last_enqueue_time", false, CollectionsKt.listOf("last_enqueue_time"), CollectionsKt.listOf("ASC")));
                TableInfo _infoWorkSpec = new TableInfo("WorkSpec", _columnsWorkSpec, _foreignKeysWorkSpec, _indicesWorkSpec);
                TableInfo _existingWorkSpec = TableInfo.INSTANCE.read(connection, "WorkSpec");
                if (!_infoWorkSpec.equals(_existingWorkSpec)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + _infoWorkSpec + "\n Found:\n" + _existingWorkSpec);
                }
                Map _columnsWorkTag = new LinkedHashMap();
                _columnsWorkTag.put("tag", new TableInfo.Column("tag", "TEXT", true, 1, null, 1));
                _columnsWorkTag.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 2, null, 1));
                Set _foreignKeysWorkTag = new LinkedHashSet();
                _foreignKeysWorkTag.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf(TtmlNode.ATTR_ID)));
                Set _indicesWorkTag = new LinkedHashSet();
                _indicesWorkTag.add(new TableInfo.Index("index_WorkTag_work_spec_id", false, CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("ASC")));
                TableInfo _infoWorkTag = new TableInfo("WorkTag", _columnsWorkTag, _foreignKeysWorkTag, _indicesWorkTag);
                TableInfo _existingWorkTag = TableInfo.INSTANCE.read(connection, "WorkTag");
                if (!_infoWorkTag.equals(_existingWorkTag)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + _infoWorkTag + "\n Found:\n" + _existingWorkTag);
                }
                Map _columnsSystemIdInfo = new LinkedHashMap();
                _columnsSystemIdInfo.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                _columnsSystemIdInfo.put("generation", new TableInfo.Column("generation", "INTEGER", true, 2, "0", 1));
                _columnsSystemIdInfo.put("system_id", new TableInfo.Column("system_id", "INTEGER", true, 0, null, 1));
                Set _foreignKeysSystemIdInfo = new LinkedHashSet();
                _foreignKeysSystemIdInfo.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf(TtmlNode.ATTR_ID)));
                Set _indicesSystemIdInfo = new LinkedHashSet();
                TableInfo _infoSystemIdInfo = new TableInfo("SystemIdInfo", _columnsSystemIdInfo, _foreignKeysSystemIdInfo, _indicesSystemIdInfo);
                TableInfo _existingSystemIdInfo = TableInfo.INSTANCE.read(connection, "SystemIdInfo");
                if (!_infoSystemIdInfo.equals(_existingSystemIdInfo)) {
                    return new RoomOpenDelegate.ValidationResult(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + _infoSystemIdInfo + "\n Found:\n" + _existingSystemIdInfo);
                }
                Map _columnsWorkName = new LinkedHashMap();
                _columnsWorkName.put(HintConstants.AUTOFILL_HINT_NAME, new TableInfo.Column(HintConstants.AUTOFILL_HINT_NAME, "TEXT", true, 1, null, 1));
                _columnsWorkName.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 2, null, 1));
                Set _foreignKeysWorkName = new LinkedHashSet();
                _foreignKeysWorkName.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf(TtmlNode.ATTR_ID)));
                Set _indicesWorkName = new LinkedHashSet();
                _indicesWorkName.add(new TableInfo.Index("index_WorkName_work_spec_id", false, CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("ASC")));
                TableInfo _infoWorkName = new TableInfo("WorkName", _columnsWorkName, _foreignKeysWorkName, _indicesWorkName);
                TableInfo _existingWorkName = TableInfo.INSTANCE.read(connection, "WorkName");
                if (!_infoWorkName.equals(_existingWorkName)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + _infoWorkName + "\n Found:\n" + _existingWorkName);
                }
                Map _columnsWorkProgress = new LinkedHashMap();
                _columnsWorkProgress.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                _columnsWorkProgress.put(NotificationCompat.CATEGORY_PROGRESS, new TableInfo.Column(NotificationCompat.CATEGORY_PROGRESS, "BLOB", true, 0, null, 1));
                Set _foreignKeysWorkProgress = new LinkedHashSet();
                _foreignKeysWorkProgress.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf(TtmlNode.ATTR_ID)));
                Set _indicesWorkProgress = new LinkedHashSet();
                TableInfo _infoWorkProgress = new TableInfo("WorkProgress", _columnsWorkProgress, _foreignKeysWorkProgress, _indicesWorkProgress);
                TableInfo _existingWorkProgress = TableInfo.INSTANCE.read(connection, "WorkProgress");
                if (!_infoWorkProgress.equals(_existingWorkProgress)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + _infoWorkProgress + "\n Found:\n" + _existingWorkProgress);
                }
                Map _columnsPreference = new LinkedHashMap();
                _columnsPreference.put("key", new TableInfo.Column("key", "TEXT", true, 1, null, 1));
                _columnsPreference.put("long_value", new TableInfo.Column("long_value", "INTEGER", false, 0, null, 1));
                Set _foreignKeysPreference = new LinkedHashSet();
                Set _indicesPreference = new LinkedHashSet();
                TableInfo _infoPreference = new TableInfo("Preference", _columnsPreference, _foreignKeysPreference, _indicesPreference);
                TableInfo _existingPreference = TableInfo.INSTANCE.read(connection, "Preference");
                return !_infoPreference.equals(_existingPreference) ? new RoomOpenDelegate.ValidationResult(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + _infoPreference + "\n Found:\n" + _existingPreference) : new RoomOpenDelegate.ValidationResult(true, null);
            }
        };
        return _openDelegate;
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        Map _shadowTablesMap = new LinkedHashMap();
        Map _viewTables = new LinkedHashMap();
        return new InvalidationTracker(this, _shadowTablesMap, _viewTables, "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.performClear(true, "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    protected Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClasses() {
        Map _typeConvertersMap = new LinkedHashMap();
        _typeConvertersMap.put(Reflection.getOrCreateKotlinClass(WorkSpecDao.class), WorkSpecDao_Impl.INSTANCE.getRequiredConverters());
        _typeConvertersMap.put(Reflection.getOrCreateKotlinClass(DependencyDao.class), DependencyDao_Impl.INSTANCE.getRequiredConverters());
        _typeConvertersMap.put(Reflection.getOrCreateKotlinClass(WorkTagDao.class), WorkTagDao_Impl.INSTANCE.getRequiredConverters());
        _typeConvertersMap.put(Reflection.getOrCreateKotlinClass(SystemIdInfoDao.class), SystemIdInfoDao_Impl.INSTANCE.getRequiredConverters());
        _typeConvertersMap.put(Reflection.getOrCreateKotlinClass(WorkNameDao.class), WorkNameDao_Impl.INSTANCE.getRequiredConverters());
        _typeConvertersMap.put(Reflection.getOrCreateKotlinClass(WorkProgressDao.class), WorkProgressDao_Impl.INSTANCE.getRequiredConverters());
        _typeConvertersMap.put(Reflection.getOrCreateKotlinClass(PreferenceDao.class), PreferenceDao_Impl.INSTANCE.getRequiredConverters());
        _typeConvertersMap.put(Reflection.getOrCreateKotlinClass(RawWorkInfoDao.class), RawWorkInfoDao_Impl.INSTANCE.getRequiredConverters());
        return _typeConvertersMap;
    }

    @Override // androidx.room.RoomDatabase
    public Set<KClass<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecClasses() {
        Set _autoMigrationSpecsSet = new LinkedHashSet();
        return _autoMigrationSpecsSet;
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> createAutoMigrations(Map<KClass<? extends AutoMigrationSpec>, ? extends AutoMigrationSpec> autoMigrationSpecs) {
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        List _autoMigrations = new ArrayList();
        _autoMigrations.add(new WorkDatabase_AutoMigration_13_14_Impl());
        _autoMigrations.add(new WorkDatabase_AutoMigration_14_15_Impl());
        _autoMigrations.add(new WorkDatabase_AutoMigration_16_17_Impl());
        _autoMigrations.add(new WorkDatabase_AutoMigration_17_18_Impl());
        _autoMigrations.add(new WorkDatabase_AutoMigration_18_19_Impl());
        _autoMigrations.add(new WorkDatabase_AutoMigration_19_20_Impl());
        _autoMigrations.add(new WorkDatabase_AutoMigration_20_21_Impl());
        _autoMigrations.add(new WorkDatabase_AutoMigration_22_23_Impl());
        _autoMigrations.add(new WorkDatabase_AutoMigration_23_24_Impl());
        return _autoMigrations;
    }

    @Override // androidx.work.impl.WorkDatabase
    public WorkSpecDao workSpecDao() {
        return this._workSpecDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public DependencyDao dependencyDao() {
        return this._dependencyDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public WorkTagDao workTagDao() {
        return this._workTagDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public SystemIdInfoDao systemIdInfoDao() {
        return this._systemIdInfoDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public WorkNameDao workNameDao() {
        return this._workNameDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public WorkProgressDao workProgressDao() {
        return this._workProgressDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public PreferenceDao preferenceDao() {
        return this._preferenceDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public RawWorkInfoDao rawWorkInfoDao() {
        return this._rawWorkInfoDao.getValue();
    }
}
