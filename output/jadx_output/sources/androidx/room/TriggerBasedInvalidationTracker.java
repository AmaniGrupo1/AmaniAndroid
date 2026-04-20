package androidx.room;

import androidx.room.concurrent.CloseBarrier;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: InvalidationTracker.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0000\u0018\u0000 O2\u00020\u0001:\u0001OBo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0018\u0010\r\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\b\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020&J9\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0(2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\fH\u0000¢\u0006\u0004\b-\u0010.J1\u0010/\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\n\u0012\u0004\u0012\u00020+002\u000e\u00101\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\nH\u0000¢\u0006\u0004\b2\u00103J#\u00104\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\u000e\u00101\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\nH\u0002¢\u0006\u0002\u00105J\u0015\u00106\u001a\u00020\f2\u0006\u0010*\u001a\u00020+H\u0000¢\u0006\u0002\b7J\u0015\u00108\u001a\u00020\f2\u0006\u0010*\u001a\u00020+H\u0000¢\u0006\u0002\b9J\u0010\u0010:\u001a\u00020\u0010H\u0080@¢\u0006\u0004\b;\u0010<J\u001e\u0010=\u001a\u00020\u00102\u0006\u0010%\u001a\u00020>2\u0006\u0010?\u001a\u00020\u000fH\u0082@¢\u0006\u0002\u0010@J\u001e\u0010A\u001a\u00020\u00102\u0006\u0010%\u001a\u00020>2\u0006\u0010?\u001a\u00020\u000fH\u0082@¢\u0006\u0002\u0010@J@\u0010B\u001a\u00020\f2\u000e\u0010C\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\n2\u000e\b\u0002\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00100\u001f2\u000e\b\u0002\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00100\u001fH\u0080@¢\u0006\u0004\bF\u0010GJ-\u0010H\u001a\u00020\u00102\u000e\b\u0002\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00100\u001f2\u000e\b\u0002\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00100\u001fH\u0000¢\u0006\u0002\bIJ\u0014\u0010J\u001a\b\u0012\u0004\u0012\u00020\u000f0\bH\u0082@¢\u0006\u0002\u0010<J\u001c\u0010K\u001a\b\u0012\u0004\u0012\u00020\u000f0\b2\u0006\u0010%\u001a\u00020>H\u0082@¢\u0006\u0002\u0010LJ\r\u0010M\u001a\u00020\u0010H\u0000¢\u0006\u0002\bNR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\r\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\b\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u00060\u001bj\u0002`\u001cX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001dR \u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u001fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006P"}, d2 = {"Landroidx/room/TriggerBasedInvalidationTracker;", "", "database", "Landroidx/room/RoomDatabase;", "shadowTablesMap", "", "", "viewTables", "", "tableNames", "", "useTempTable", "", "onInvalidatedTablesIds", "Lkotlin/Function1;", "", "", "<init>", "(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V", "tableIdLookup", "tablesNames", "[Ljava/lang/String;", "observedTableStates", "Landroidx/room/ObservedTableStates;", "observedTableVersions", "Landroidx/room/ObservedTableVersions;", "pendingRefresh", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Landroidx/room/concurrent/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "onAllowRefresh", "Lkotlin/Function0;", "getOnAllowRefresh$room_runtime_release", "()Lkotlin/jvm/functions/Function0;", "setOnAllowRefresh$room_runtime_release", "(Lkotlin/jvm/functions/Function0;)V", "configureConnection", "connection", "Landroidx/sqlite/SQLiteConnection;", "createFlow", "Lkotlinx/coroutines/flow/Flow;", "resolvedTableNames", "tableIds", "", "emitInitialState", "createFlow$room_runtime_release", "([Ljava/lang/String;[IZ)Lkotlinx/coroutines/flow/Flow;", "validateTableNames", "Lkotlin/Pair;", "names", "validateTableNames$room_runtime_release", "([Ljava/lang/String;)Lkotlin/Pair;", "resolveViews", "([Ljava/lang/String;)[Ljava/lang/String;", "onObserverAdded", "onObserverAdded$room_runtime_release", "onObserverRemoved", "onObserverRemoved$room_runtime_release", "syncTriggers", "syncTriggers$room_runtime_release", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startTrackingTable", "Landroidx/room/PooledConnection;", "tableId", "(Landroidx/room/PooledConnection;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopTrackingTable", "refreshInvalidation", "tables", "onRefreshScheduled", "onRefreshCompleted", "refreshInvalidation$room_runtime_release", "([Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshInvalidationAsync", "refreshInvalidationAsync$room_runtime_release", "notifyInvalidation", "checkInvalidatedTables", "(Landroidx/room/PooledConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resetSync", "resetSync$room_runtime_release", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TriggerBasedInvalidationTracker {
    private static final String CREATE_TRACKING_TABLE_SQL = "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";
    private static final String DROP_TRACKING_TABLE_SQL = "DROP TABLE IF EXISTS room_table_modification_log";
    private static final String INVALIDATED_COLUMN_NAME = "invalidated";
    private static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1";
    private static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1";
    private static final String TABLE_ID_COLUMN_NAME = "table_id";
    private static final String UPDATE_TABLE_NAME = "room_table_modification_log";
    private final RoomDatabase database;
    private final ObservedTableStates observedTableStates;
    private final ObservedTableVersions observedTableVersions;
    private Function0<Boolean> onAllowRefresh;
    private final Function1<Set<Integer>, Unit> onInvalidatedTablesIds;
    private final AtomicBoolean pendingRefresh;
    private final Map<String, String> shadowTablesMap;
    private final Map<String, Integer> tableIdLookup;
    private final String[] tablesNames;
    private final boolean useTempTable;
    private final Map<String, Set<String>> viewTables;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String[] TRIGGERS = {"INSERT", "UPDATE", "DELETE"};

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1, reason: invalid class name */
    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", i = {0, 1}, l = {440, 448}, m = "checkInvalidatedTables", n = {"connection", "invalidatedTableIds"}, s = {"L$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.checkInvalidatedTables(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", i = {0, 0}, l = {412}, m = "notifyInvalidation", n = {"this", "$this$ifNotClosed$iv"}, s = {"L$0", "L$1"})
    static final class C06261 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06261(Continuation<? super C06261> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.notifyInvalidation(this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$startTrackingTable$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {323, 328}, m = "startTrackingTable", n = {"this", "connection", "tableId", "this", "connection", "tableName", "tableId"}, s = {"L$0", "L$1", "I$0", "L$0", "L$1", "L$2", "I$0"})
    static final class C06271 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C06271(Continuation<? super C06271> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.startTrackingTable(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", i = {0, 0}, l = {342}, m = "stopTrackingTable", n = {"connection", "tableName"}, s = {"L$0", "L$1"})
    static final class C06281 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C06281(Continuation<? super C06281> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.stopTrackingTable(null, 0, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TriggerBasedInvalidationTracker(RoomDatabase database, Map<String, String> shadowTablesMap, Map<String, ? extends Set<String>> viewTables, String[] tableNames, boolean z, Function1<? super Set<Integer>, Unit> onInvalidatedTablesIds) {
        String lowerCase;
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(shadowTablesMap, "shadowTablesMap");
        Intrinsics.checkNotNullParameter(viewTables, "viewTables");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(onInvalidatedTablesIds, "onInvalidatedTablesIds");
        this.database = database;
        this.shadowTablesMap = shadowTablesMap;
        this.viewTables = viewTables;
        this.useTempTable = z;
        this.onInvalidatedTablesIds = onInvalidatedTablesIds;
        this.pendingRefresh = new AtomicBoolean(false);
        this.onAllowRefresh = new Function0() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(TriggerBasedInvalidationTracker.onAllowRefresh$lambda$0());
            }
        };
        this.tableIdLookup = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            String lowerCase2 = tableNames[i].toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            this.tableIdLookup.put(lowerCase2, Integer.valueOf(i));
            String str = this.shadowTablesMap.get(tableNames[i]);
            if (str != null) {
                lowerCase = str.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr[i] = lowerCase2;
        }
        this.tablesNames = strArr;
        for (Map.Entry<String, String> entry : this.shadowTablesMap.entrySet()) {
            String lowerCase3 = entry.getValue().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
            if (this.tableIdLookup.containsKey(lowerCase3)) {
                String lowerCase4 = entry.getKey().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                this.tableIdLookup.put(lowerCase4, (Integer) MapsKt.getValue(this.tableIdLookup, lowerCase3));
            }
        }
        this.observedTableStates = new ObservedTableStates(this.tablesNames.length);
        this.observedTableVersions = new ObservedTableVersions(this.tablesNames.length);
    }

    static final boolean onAllowRefresh$lambda$0() {
        return true;
    }

    public final Function0<Boolean> getOnAllowRefresh$room_runtime_release() {
        return this.onAllowRefresh;
    }

    public final void setOnAllowRefresh$room_runtime_release(Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onAllowRefresh = function0;
    }

    public final void configureConnection(SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        SQLiteStatement sQLiteStatementPrepare = connection.prepare("PRAGMA query_only");
        try {
            SQLiteStatement it = sQLiteStatementPrepare;
            it.step();
            boolean isReadConnection = it.getBoolean(0);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            if (!isReadConnection) {
                SQLite.execSQL(connection, "PRAGMA temp_store = MEMORY");
                SQLite.execSQL(connection, "PRAGMA recursive_triggers = 1");
                SQLite.execSQL(connection, DROP_TRACKING_TABLE_SQL);
                if (this.useTempTable) {
                    SQLite.execSQL(connection, CREATE_TRACKING_TABLE_SQL);
                } else {
                    SQLite.execSQL(connection, StringsKt.replace$default(CREATE_TRACKING_TABLE_SQL, "TEMP", "", false, 4, (Object) null));
                }
                this.observedTableStates.forceNeedSync$room_runtime_release();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.closeFinally(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final Flow<Set<String>> createFlow$room_runtime_release(String[] resolvedTableNames, int[] tableIds, boolean emitInitialState) {
        Intrinsics.checkNotNullParameter(resolvedTableNames, "resolvedTableNames");
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return FlowKt.flow(new TriggerBasedInvalidationTracker$createFlow$1(this, tableIds, emitInitialState, resolvedTableNames, null));
    }

    public final Pair<String[], int[]> validateTableNames$room_runtime_release(String[] names) {
        Intrinsics.checkNotNullParameter(names, "names");
        String[] tableNames = resolveViews(names);
        int length = tableNames.length;
        int[] tableIds = new int[length];
        for (int i = 0; i < length; i++) {
            String tableName = tableNames[i];
            Map<String, Integer> map = this.tableIdLookup;
            String lowerCase = tableName.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Integer num = map.get(lowerCase);
            if (num != null) {
                tableIds[i] = num.intValue();
            } else {
                throw new IllegalArgumentException("There is no table with name " + tableName);
            }
        }
        return TuplesKt.to(tableNames, tableIds);
    }

    private final String[] resolveViews(String[] names) {
        Set $this$resolveViews_u24lambda_u245 = SetsKt.createSetBuilder();
        for (String str : names) {
            Map<String, Set<String>> map = this.viewTables;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Set<String> set = map.get(lowerCase);
            if (set != null) {
                $this$resolveViews_u24lambda_u245.addAll(set);
            } else {
                $this$resolveViews_u24lambda_u245.add(str);
            }
        }
        Collection $this$toTypedArray$iv = SetsKt.build($this$resolveViews_u24lambda_u245);
        return (String[]) $this$toTypedArray$iv.toArray(new String[0]);
    }

    public final boolean onObserverAdded$room_runtime_release(int[] tableIds) {
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return this.observedTableStates.onObserverAdded$room_runtime_release(tableIds);
    }

    public final boolean onObserverRemoved$room_runtime_release(int[] tableIds) {
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return this.observedTableStates.onObserverRemoved$room_runtime_release(tableIds);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object syncTriggers$room_runtime_release(Continuation<? super Unit> continuation) throws Throwable {
        TriggerBasedInvalidationTracker$syncTriggers$1 triggerBasedInvalidationTracker$syncTriggers$1;
        CloseBarrier $this$ifNotClosed$iv;
        if (continuation instanceof TriggerBasedInvalidationTracker$syncTriggers$1) {
            triggerBasedInvalidationTracker$syncTriggers$1 = (TriggerBasedInvalidationTracker$syncTriggers$1) continuation;
            if ((triggerBasedInvalidationTracker$syncTriggers$1.label & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$syncTriggers$1.label -= Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuation);
            }
        }
        Object $result = triggerBasedInvalidationTracker$syncTriggers$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (triggerBasedInvalidationTracker$syncTriggers$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$ifNotClosed$iv = this.database.getCloseBarrier();
                if ($this$ifNotClosed$iv.block$room_runtime_release()) {
                    try {
                        RoomDatabase roomDatabase = this.database;
                        TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this, null);
                        triggerBasedInvalidationTracker$syncTriggers$1.L$0 = $this$ifNotClosed$iv;
                        triggerBasedInvalidationTracker$syncTriggers$1.label = 1;
                        if (roomDatabase.useConnection$room_runtime_release(false, triggerBasedInvalidationTracker$syncTriggers$2$1, triggerBasedInvalidationTracker$syncTriggers$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $this$ifNotClosed$iv.unblock$room_runtime_release();
                    } catch (Throwable th) {
                        th = th;
                        $this$ifNotClosed$iv.unblock$room_runtime_release();
                        throw th;
                    }
                }
                return Unit.INSTANCE;
            case 1:
                $this$ifNotClosed$iv = (CloseBarrier) triggerBasedInvalidationTracker$syncTriggers$1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    $this$ifNotClosed$iv.unblock$room_runtime_release();
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    $this$ifNotClosed$iv.unblock$room_runtime_release();
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x011b -> B:27:0x011d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object startTrackingTable(PooledConnection pooledConnection, int i, Continuation<? super Unit> continuation) {
        C06271 c06271;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker;
        int tableId;
        PooledConnection connection;
        int tableId2;
        int tableId3;
        PooledConnection connection2;
        int i2;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker2;
        String tableName;
        String[] strArr;
        boolean z;
        Continuation<? super Unit> continuation2 = continuation;
        if (continuation2 instanceof C06271) {
            c06271 = (C06271) continuation2;
            if ((c06271.label & Integer.MIN_VALUE) != 0) {
                c06271.label -= Integer.MIN_VALUE;
            } else {
                c06271 = new C06271(continuation2);
            }
        }
        Object $result = c06271.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        boolean z2 = true;
        switch (c06271.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                triggerBasedInvalidationTracker = this;
                tableId = i;
                connection = pooledConnection;
                String str = "INSERT OR IGNORE INTO room_table_modification_log VALUES(" + tableId + ", 0)";
                c06271.L$0 = triggerBasedInvalidationTracker;
                c06271.L$1 = connection;
                c06271.I$0 = tableId;
                c06271.label = 1;
                if (TransactorKt.execSQL(connection, str, c06271) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                String tableName2 = triggerBasedInvalidationTracker.tablesNames[tableId];
                String[] strArr2 = TRIGGERS;
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker3 = triggerBasedInvalidationTracker;
                tableId2 = tableId;
                tableId3 = strArr2.length;
                connection2 = connection;
                i2 = 0;
                triggerBasedInvalidationTracker2 = triggerBasedInvalidationTracker3;
                tableName = tableName2;
                strArr = strArr2;
                if (i2 >= tableId3) {
                    String trigger = strArr[i2];
                    String tempKeyword = triggerBasedInvalidationTracker2.useTempTable ? "TEMP" : "";
                    String triggerName = INSTANCE.getTriggerName(tableName, trigger);
                    z = z2;
                    Continuation<? super Unit> continuation3 = continuation2;
                    String str2 = "CREATE " + tempKeyword + " TRIGGER IF NOT EXISTS `" + triggerName + "` AFTER " + trigger + " ON `" + tableName + "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = " + tableId2 + " AND invalidated = 0; END";
                    c06271.L$0 = triggerBasedInvalidationTracker2;
                    c06271.L$1 = connection2;
                    c06271.L$2 = tableName;
                    c06271.L$3 = strArr;
                    c06271.I$0 = tableId2;
                    c06271.I$1 = i2;
                    c06271.I$2 = tableId3;
                    c06271.label = 2;
                    if (TransactorKt.execSQL(connection2, str2, c06271) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    continuation2 = continuation3;
                    i2++;
                    z2 = z;
                    if (i2 >= tableId3) {
                        return Unit.INSTANCE;
                    }
                }
                break;
            case 1:
                tableId = c06271.I$0;
                connection = (PooledConnection) c06271.L$1;
                triggerBasedInvalidationTracker = (TriggerBasedInvalidationTracker) c06271.L$0;
                ResultKt.throwOnFailure($result);
                String tableName22 = triggerBasedInvalidationTracker.tablesNames[tableId];
                String[] strArr22 = TRIGGERS;
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker32 = triggerBasedInvalidationTracker;
                tableId2 = tableId;
                tableId3 = strArr22.length;
                connection2 = connection;
                i2 = 0;
                triggerBasedInvalidationTracker2 = triggerBasedInvalidationTracker32;
                tableName = tableName22;
                strArr = strArr22;
                if (i2 >= tableId3) {
                }
                break;
            case 2:
                tableId3 = c06271.I$2;
                i2 = c06271.I$1;
                tableId2 = c06271.I$0;
                strArr = (String[]) c06271.L$3;
                tableName = (String) c06271.L$2;
                connection2 = (PooledConnection) c06271.L$1;
                triggerBasedInvalidationTracker2 = (TriggerBasedInvalidationTracker) c06271.L$0;
                ResultKt.throwOnFailure($result);
                z = true;
                i2++;
                z2 = z;
                if (i2 >= tableId3) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0085 -> B:18:0x0088). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object stopTrackingTable(PooledConnection connection, int tableId, Continuation<? super Unit> continuation) {
        C06281 c06281;
        String[] strArr;
        PooledConnection connection2;
        int length;
        String tableName;
        int i;
        if (continuation instanceof C06281) {
            c06281 = (C06281) continuation;
            if ((c06281.label & Integer.MIN_VALUE) != 0) {
                c06281.label -= Integer.MIN_VALUE;
            } else {
                c06281 = new C06281(continuation);
            }
        }
        Object $result = c06281.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c06281.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                String tableName2 = this.tablesNames[tableId];
                strArr = TRIGGERS;
                connection2 = connection;
                length = strArr.length;
                tableName = tableName2;
                i = 0;
                if (i < length) {
                    String trigger = strArr[i];
                    String str = "DROP TRIGGER IF EXISTS `" + INSTANCE.getTriggerName(tableName, trigger) + '`';
                    c06281.L$0 = connection2;
                    c06281.L$1 = tableName;
                    c06281.L$2 = strArr;
                    c06281.I$0 = i;
                    c06281.I$1 = length;
                    c06281.label = 1;
                    if (TransactorKt.execSQL(connection2, str, c06281) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    i++;
                    if (i < length) {
                        return Unit.INSTANCE;
                    }
                }
                break;
            case 1:
                length = c06281.I$1;
                i = c06281.I$0;
                strArr = (String[]) c06281.L$2;
                tableName = (String) c06281.L$1;
                connection2 = (PooledConnection) c06281.L$0;
                ResultKt.throwOnFailure($result);
                i++;
                if (i < length) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object refreshInvalidation$room_runtime_release$default(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, String[] strArr, Function0 function0, Function0 function02, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = new Function0() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 4) != 0) {
            function02 = new Function0() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        return triggerBasedInvalidationTracker.refreshInvalidation$room_runtime_release(strArr, function0, function02, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068 A[Catch: all -> 0x0094, TryCatch #0 {all -> 0x0094, blocks: (B:21:0x005c, B:26:0x0068, B:28:0x006d, B:37:0x008c, B:31:0x007c, B:33:0x0081, B:18:0x004f), top: B:44:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0081 A[Catch: all -> 0x0094, TryCatch #0 {all -> 0x0094, blocks: (B:21:0x005c, B:26:0x0068, B:28:0x006d, B:37:0x008c, B:31:0x007c, B:33:0x0081, B:18:0x004f), top: B:44:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object refreshInvalidation$room_runtime_release(String[] tables, Function0<Unit> function0, Function0<Unit> function02, Continuation<? super Boolean> continuation) throws Throwable {
        TriggerBasedInvalidationTracker$refreshInvalidation$1 triggerBasedInvalidationTracker$refreshInvalidation$1;
        int[] tableIds;
        Object objNotifyInvalidation;
        Function0<Unit> function03;
        Throwable th;
        if (continuation instanceof TriggerBasedInvalidationTracker$refreshInvalidation$1) {
            triggerBasedInvalidationTracker$refreshInvalidation$1 = (TriggerBasedInvalidationTracker$refreshInvalidation$1) continuation;
            if ((triggerBasedInvalidationTracker$refreshInvalidation$1.label & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$refreshInvalidation$1.label -= Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$refreshInvalidation$1 = new TriggerBasedInvalidationTracker$refreshInvalidation$1(this, continuation);
            }
        }
        Object $result = triggerBasedInvalidationTracker$refreshInvalidation$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        boolean z = true;
        switch (triggerBasedInvalidationTracker$refreshInvalidation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                tableIds = validateTableNames$room_runtime_release(tables).component2();
                function0.invoke();
                try {
                    triggerBasedInvalidationTracker$refreshInvalidation$1.L$0 = function02;
                    triggerBasedInvalidationTracker$refreshInvalidation$1.L$1 = tableIds;
                    triggerBasedInvalidationTracker$refreshInvalidation$1.label = 1;
                    objNotifyInvalidation = notifyInvalidation(triggerBasedInvalidationTracker$refreshInvalidation$1);
                    if (objNotifyInvalidation == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Set invalidatesTableIds = (Set) objNotifyInvalidation;
                    if (!(tableIds.length != 0)) {
                        if (invalidatesTableIds.isEmpty()) {
                            z = false;
                        }
                    } else {
                        int length = tableIds.length;
                        int i = 0;
                        while (true) {
                            if (i < length) {
                                int element$iv = tableIds[i];
                                if (!invalidatesTableIds.contains(Boxing.boxInt(element$iv))) {
                                    i++;
                                }
                            } else {
                                z = false;
                            }
                        }
                    }
                    Boolean boolBoxBoolean = Boxing.boxBoolean(z);
                    function02.invoke();
                    return boolBoxBoolean;
                } catch (Throwable th2) {
                    th = th2;
                    function03 = function02;
                    function03.invoke();
                    throw th;
                }
            case 1:
                tableIds = (int[]) triggerBasedInvalidationTracker$refreshInvalidation$1.L$1;
                function03 = (Function0) triggerBasedInvalidationTracker$refreshInvalidation$1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    function02 = function03;
                    objNotifyInvalidation = $result;
                    Set invalidatesTableIds2 = (Set) objNotifyInvalidation;
                    if (!(tableIds.length != 0)) {
                    }
                    Boolean boolBoxBoolean2 = Boxing.boxBoolean(z);
                    function02.invoke();
                    return boolBoxBoolean2;
                } catch (Throwable th3) {
                    th = th3;
                    function03.invoke();
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void refreshInvalidationAsync$room_runtime_release$default(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Function0 function0, Function0 function02, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = new Function0() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 2) != 0) {
            function02 = new Function0() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        triggerBasedInvalidationTracker.refreshInvalidationAsync$room_runtime_release(function0, function02);
    }

    public final void refreshInvalidationAsync$room_runtime_release(Function0<Unit> onRefreshScheduled, Function0<Unit> onRefreshCompleted) {
        Intrinsics.checkNotNullParameter(onRefreshScheduled, "onRefreshScheduled");
        Intrinsics.checkNotNullParameter(onRefreshCompleted, "onRefreshCompleted");
        if (this.pendingRefresh.compareAndSet(false, true)) {
            onRefreshScheduled.invoke();
            BuildersKt__Builders_commonKt.launch$default(this.database.getCoroutineScope(), new CoroutineName("Room Invalidation Tracker Refresh"), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, onRefreshCompleted, null), 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #1 {all -> 0x003b, blocks: (B:13:0x0036, B:33:0x008d, B:35:0x0099, B:25:0x0062, B:27:0x0070), top: B:44:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object notifyInvalidation(Continuation<? super Set<Integer>> continuation) throws Throwable {
        C06261 c06261;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker;
        CloseBarrier $this$ifNotClosed$iv;
        Object objUseConnection$room_runtime_release;
        Set<Integer> set;
        if (continuation instanceof C06261) {
            c06261 = (C06261) continuation;
            if ((c06261.label & Integer.MIN_VALUE) != 0) {
                c06261.label -= Integer.MIN_VALUE;
            } else {
                c06261 = new C06261(continuation);
            }
        }
        Object $result = c06261.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c06261.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    triggerBasedInvalidationTracker = this;
                    $this$ifNotClosed$iv = triggerBasedInvalidationTracker.database.getCloseBarrier();
                    if (!$this$ifNotClosed$iv.block$room_runtime_release()) {
                        return SetsKt.emptySet();
                    }
                    try {
                        if (!triggerBasedInvalidationTracker.pendingRefresh.compareAndSet(true, false) || !triggerBasedInvalidationTracker.onAllowRefresh.invoke().booleanValue()) {
                            Set setEmptySet = SetsKt.emptySet();
                            $this$ifNotClosed$iv.unblock$room_runtime_release();
                            return setEmptySet;
                        }
                        RoomDatabase roomDatabase = triggerBasedInvalidationTracker.database;
                        TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(triggerBasedInvalidationTracker, null);
                        c06261.L$0 = triggerBasedInvalidationTracker;
                        c06261.L$1 = $this$ifNotClosed$iv;
                        c06261.label = 1;
                        objUseConnection$room_runtime_release = roomDatabase.useConnection$room_runtime_release(false, triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1, c06261);
                        if (objUseConnection$room_runtime_release == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        set = (Set) objUseConnection$room_runtime_release;
                        if (!set.isEmpty()) {
                            triggerBasedInvalidationTracker.observedTableVersions.increment(set);
                            triggerBasedInvalidationTracker.onInvalidatedTablesIds.invoke(set);
                        }
                        $this$ifNotClosed$iv.unblock$room_runtime_release();
                        return set;
                    } catch (Throwable th) {
                        th = th;
                        $this$ifNotClosed$iv.unblock$room_runtime_release();
                        throw th;
                    }
                case 1:
                    $this$ifNotClosed$iv = (CloseBarrier) c06261.L$1;
                    triggerBasedInvalidationTracker = (TriggerBasedInvalidationTracker) c06261.L$0;
                    ResultKt.throwOnFailure($result);
                    objUseConnection$room_runtime_release = $result;
                    set = (Set) objUseConnection$room_runtime_release;
                    if (!set.isEmpty()) {
                    }
                    $this$ifNotClosed$iv.unblock$room_runtime_release();
                    return set;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object checkInvalidatedTables(PooledConnection connection, Continuation<? super Set<Integer>> continuation) {
        AnonymousClass1 anonymousClass1;
        Object objUsePrepared;
        Set invalidatedTableIds;
        Set invalidatedTableIds2;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Function1 function1 = new Function1() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TriggerBasedInvalidationTracker.checkInvalidatedTables$lambda$14((SQLiteStatement) obj);
                    }
                };
                anonymousClass1.L$0 = connection;
                anonymousClass1.label = 1;
                objUsePrepared = connection.usePrepared(SELECT_UPDATED_TABLES_SQL, function1, anonymousClass1);
                if (objUsePrepared == coroutine_suspended) {
                    return coroutine_suspended;
                }
                invalidatedTableIds = (Set) objUsePrepared;
                if (!invalidatedTableIds.isEmpty()) {
                    return invalidatedTableIds;
                }
                anonymousClass1.L$0 = invalidatedTableIds;
                anonymousClass1.label = 2;
                if (TransactorKt.execSQL(connection, RESET_UPDATED_TABLES_SQL, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                invalidatedTableIds2 = invalidatedTableIds;
                return invalidatedTableIds2;
            case 1:
                connection = (PooledConnection) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                objUsePrepared = $result;
                invalidatedTableIds = (Set) objUsePrepared;
                if (!invalidatedTableIds.isEmpty()) {
                }
                break;
            case 2:
                invalidatedTableIds2 = (Set) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                return invalidatedTableIds2;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final Set checkInvalidatedTables$lambda$14(SQLiteStatement statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        Set $this$checkInvalidatedTables_u24lambda_u2414_u24lambda_u2413 = SetsKt.createSetBuilder();
        while (statement.step()) {
            $this$checkInvalidatedTables_u24lambda_u2414_u24lambda_u2413.add(Integer.valueOf((int) statement.getLong(0)));
        }
        return SetsKt.build($this$checkInvalidatedTables_u24lambda_u2414_u24lambda_u2413);
    }

    public final void resetSync$room_runtime_release() {
        this.observedTableStates.resetTriggerState$room_runtime_release();
    }

    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/room/TriggerBasedInvalidationTracker$Companion;", "", "<init>", "()V", "TRIGGERS", "", "", "[Ljava/lang/String;", "UPDATE_TABLE_NAME", "TABLE_ID_COLUMN_NAME", "INVALIDATED_COLUMN_NAME", "CREATE_TRACKING_TABLE_SQL", "DROP_TRACKING_TABLE_SQL", "SELECT_UPDATED_TABLES_SQL", "RESET_UPDATED_TABLES_SQL", "getTriggerName", "tableName", "triggerType", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getTriggerName(String tableName, String triggerType) {
            return "room_table_modification_trigger_" + tableName + '_' + triggerType;
        }
    }
}
