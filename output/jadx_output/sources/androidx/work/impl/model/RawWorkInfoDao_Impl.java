package androidx.work.impl.model;

import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.RoomDatabase;
import androidx.room.RoomRawQuery;
import androidx.room.RoomSQLiteQuery;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import com.google.android.gms.actions.SearchIntents;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: RawWorkInfoDao_Impl.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\f2\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u000e2\u0006\u0010\t\u001a\u00020\nH\u0016J*\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00160\u0014H\u0002J*\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00160\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Landroidx/work/impl/model/RawWorkInfoDao_Impl;", "Landroidx/work/impl/model/RawWorkInfoDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "getWorkInfoPojos", "", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", SearchIntents.EXTRA_QUERY, "Landroidx/sqlite/db/SupportSQLiteQuery;", "getWorkInfoPojosLiveData", "Landroidx/lifecycle/LiveData;", "getWorkInfoPojosFlow", "Lkotlinx/coroutines/flow/Flow;", "__fetchRelationshipWorkTagAsjavaLangString", "", "_connection", "Landroidx/sqlite/SQLiteConnection;", "_map", "Landroidx/collection/ArrayMap;", "", "", "__fetchRelationshipWorkProgressAsandroidxWorkData", "Landroidx/work/Data;", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;

    public RawWorkInfoDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, "query");
        final RoomRawQuery _rawQuery = RoomSQLiteQuery.INSTANCE.copyFrom(query).toRoomRawQuery();
        final String _sql = _rawQuery.getSql();
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RawWorkInfoDao_Impl.getWorkInfoPojos$lambda$0(_sql, _rawQuery, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkInfoPojos$lambda$0(String $_sql, RoomRawQuery $_rawQuery, RawWorkInfoDao_Impl this$0, SQLiteConnection _connection) {
        long _tmpInitialDelay;
        long _tmpIntervalDuration;
        long _tmpFlexDuration;
        long _tmpBackoffDelayDuration;
        long _tmpLastEnqueueTime;
        int _tmpPeriodCount;
        long _tmpNextScheduleTimeOverride;
        int _tmpStopReason;
        int _columnIndexOfRequiredNetworkRequestCompat;
        ArrayMap<String, List<Data>> arrayMap;
        boolean _tmpRequiresCharging;
        boolean _tmpRequiresDeviceIdle;
        boolean _tmpRequiresBatteryNotLow;
        boolean _tmpRequiresStorageNotLow;
        long _tmpContentTriggerUpdateDelayMillis;
        long _tmpContentTriggerMaxDelayMillis;
        int _columnIndexOfPeriodCount;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            $_rawQuery.getBindingFunction().invoke(_stmt);
            int _columnIndexOfId = SQLiteStatementUtil.getColumnIndex(_stmt, TtmlNode.ATTR_ID);
            int _columnIndexOfState = SQLiteStatementUtil.getColumnIndex(_stmt, "state");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndex(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndex(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndex(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndex(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndex(_stmt, "last_enqueue_time");
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndex(_stmt, "period_count");
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndex(_stmt, "generation");
            String str = "getValue(...)";
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndex(_stmt, "next_schedule_time_override");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfStopReason = SQLiteStatementUtil.getColumnIndex(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
            int _columnIndexOfRequiredNetworkType = SQLiteStatementUtil.getColumnIndex(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkType2 = _columnIndexOfRequiredNetworkType;
            int _columnIndexOfRequiredNetworkType3 = SQLiteStatementUtil.getColumnIndex(_stmt, "required_network_request");
            int _columnIndexOfRequiresCharging = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_charging");
            int _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging;
            int _columnIndexOfRequiresDeviceIdle = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_device_idle");
            int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle;
            int _columnIndexOfRequiresBatteryNotLow = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow;
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_storage_not_low");
            int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfRequiresStorageNotLow;
            int _columnIndexOfContentUriTriggers = SQLiteStatementUtil.getColumnIndex(_stmt, "trigger_content_update_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis = SQLiteStatementUtil.getColumnIndex(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis2 = _columnIndexOfContentTriggerMaxDelayMillis;
            int _columnIndexOfContentUriTriggers2 = SQLiteStatementUtil.getColumnIndex(_stmt, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap2 = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap3 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(_columnIndexOfId);
                int _columnIndexOfContentUriTriggers3 = _columnIndexOfContentUriTriggers2;
                ArrayMap<String, List<String>> arrayMap4 = arrayMap2;
                int _columnIndexOfGeneration2 = _columnIndexOfGeneration;
                if (arrayMap4.containsKey(_tmpKey)) {
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                } else {
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    arrayMap4.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(_columnIndexOfId);
                ArrayMap<String, List<Data>> arrayMap5 = arrayMap3;
                if (arrayMap5.containsKey(_tmpKey_1)) {
                    arrayMap3 = arrayMap5;
                    _columnIndexOfGeneration = _columnIndexOfGeneration2;
                    _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                    arrayMap2 = arrayMap4;
                    _columnIndexOfContentUriTriggers2 = _columnIndexOfContentUriTriggers3;
                } else {
                    arrayMap5.put(_tmpKey_1, new ArrayList());
                    arrayMap3 = arrayMap5;
                    _columnIndexOfGeneration = _columnIndexOfGeneration2;
                    _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime;
                    arrayMap2 = arrayMap4;
                    _columnIndexOfContentUriTriggers2 = _columnIndexOfContentUriTriggers3;
                }
            }
            int _columnIndexOfContentUriTriggers4 = _columnIndexOfContentUriTriggers2;
            int _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount2;
            ArrayMap<String, List<String>> arrayMap6 = arrayMap2;
            int _columnIndexOfGeneration3 = _columnIndexOfGeneration;
            ArrayMap<String, List<Data>> arrayMap7 = arrayMap3;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap6);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap7);
            List _result = new ArrayList();
            while (_stmt.step()) {
                ArrayMap<String, List<String>> arrayMap8 = arrayMap6;
                if (_columnIndexOfId == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.".toString());
                }
                String _tmpId = _stmt.getText(_columnIndexOfId);
                if (_columnIndexOfState == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.".toString());
                }
                int _tmp = (int) _stmt.getLong(_columnIndexOfState);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                if (_columnIndexOfOutput == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.".toString());
                }
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                if (_columnIndexOfInitialDelay == -1) {
                    _tmpInitialDelay = 0;
                } else {
                    long _tmpInitialDelay2 = _stmt.getLong(_columnIndexOfInitialDelay);
                    _tmpInitialDelay = _tmpInitialDelay2;
                }
                if (_columnIndexOfIntervalDuration == -1) {
                    _tmpIntervalDuration = 0;
                } else {
                    long _tmpIntervalDuration2 = _stmt.getLong(_columnIndexOfIntervalDuration);
                    _tmpIntervalDuration = _tmpIntervalDuration2;
                }
                if (_columnIndexOfFlexDuration == -1) {
                    _tmpFlexDuration = 0;
                } else {
                    long _tmpFlexDuration2 = _stmt.getLong(_columnIndexOfFlexDuration);
                    _tmpFlexDuration = _tmpFlexDuration2;
                }
                int _tmpRunAttemptCount = _columnIndexOfRunAttemptCount == -1 ? 0 : (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                if (_columnIndexOfBackoffPolicy == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.".toString());
                }
                int _tmp_2 = (int) _stmt.getLong(_columnIndexOfBackoffPolicy);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(_tmp_2);
                if (_columnIndexOfBackoffDelayDuration == -1) {
                    _tmpBackoffDelayDuration = 0;
                } else {
                    long _tmpBackoffDelayDuration2 = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                    _tmpBackoffDelayDuration = _tmpBackoffDelayDuration2;
                }
                int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
                if (_columnIndexOfLastEnqueueTime3 == -1) {
                    _tmpLastEnqueueTime = 0;
                } else {
                    long _tmpLastEnqueueTime2 = _stmt.getLong(_columnIndexOfLastEnqueueTime3);
                    _tmpLastEnqueueTime = _tmpLastEnqueueTime2;
                }
                _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime3;
                int _columnIndexOfLastEnqueueTime4 = _columnIndexOfPeriodCount3;
                if (_columnIndexOfLastEnqueueTime4 == -1) {
                    _tmpPeriodCount = 0;
                } else {
                    _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfLastEnqueueTime4);
                }
                _columnIndexOfPeriodCount3 = _columnIndexOfLastEnqueueTime4;
                int _columnIndexOfGeneration4 = _columnIndexOfGeneration3;
                int _tmpGeneration = _columnIndexOfGeneration4 == -1 ? 0 : (int) _stmt.getLong(_columnIndexOfGeneration4);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfNextScheduleTimeOverride2;
                if (_columnIndexOfNextScheduleTimeOverride3 == -1) {
                    _tmpNextScheduleTimeOverride = 0;
                } else {
                    _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                }
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverride3;
                int _columnIndexOfNextScheduleTimeOverride4 = _columnIndexOfStopReason2;
                if (_columnIndexOfNextScheduleTimeOverride4 == -1) {
                    _columnIndexOfGeneration3 = _columnIndexOfGeneration4;
                    _tmpStopReason = 0;
                } else {
                    _columnIndexOfGeneration3 = _columnIndexOfGeneration4;
                    _tmpStopReason = (int) _stmt.getLong(_columnIndexOfNextScheduleTimeOverride4);
                }
                _columnIndexOfStopReason2 = _columnIndexOfNextScheduleTimeOverride4;
                int _columnIndexOfStopReason3 = _columnIndexOfRequiredNetworkType2;
                if (_columnIndexOfStopReason3 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.".toString());
                }
                int _tmp_3 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_3);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType3;
                if (_columnIndexOfRequiredNetworkRequestCompat2 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.".toString());
                }
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkRequestCompat2);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiresCharging3 = _columnIndexOfRequiresCharging2;
                if (_columnIndexOfRequiresCharging3 == -1) {
                    _tmpRequiresCharging = false;
                    _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkRequestCompat2;
                    arrayMap = arrayMap7;
                } else {
                    _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkRequestCompat2;
                    arrayMap = arrayMap7;
                    int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiresCharging3);
                    _tmpRequiresCharging = _tmp_5 != 0;
                }
                int _columnIndexOfRequiresDeviceIdle3 = _columnIndexOfRequiresDeviceIdle2;
                if (_columnIndexOfRequiresDeviceIdle3 == -1) {
                    _tmpRequiresDeviceIdle = false;
                    _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging3;
                } else {
                    _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging3;
                    int _tmp_6 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle3);
                    _tmpRequiresDeviceIdle = _tmp_6 != 0;
                }
                int _columnIndexOfRequiresBatteryNotLow3 = _columnIndexOfRequiresBatteryNotLow2;
                if (_columnIndexOfRequiresBatteryNotLow3 == -1) {
                    _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle3;
                    _tmpRequiresBatteryNotLow = false;
                } else {
                    _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle3;
                    int _tmp_7 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow3);
                    boolean _tmpRequiresBatteryNotLow2 = _tmp_7 != 0;
                    _tmpRequiresBatteryNotLow = _tmpRequiresBatteryNotLow2;
                }
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfRequiresStorageNotLow2;
                if (_columnIndexOfRequiresStorageNotLow3 == -1) {
                    _tmpRequiresStorageNotLow = false;
                    _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow3;
                } else {
                    _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow3;
                    int _tmp_8 = (int) _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                    _tmpRequiresStorageNotLow = _tmp_8 != 0;
                }
                int _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfContentUriTriggers;
                if (_columnIndexOfContentTriggerUpdateDelayMillis == -1) {
                    _tmpContentTriggerUpdateDelayMillis = 0;
                } else {
                    long _tmpContentTriggerUpdateDelayMillis2 = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis);
                    _tmpContentTriggerUpdateDelayMillis = _tmpContentTriggerUpdateDelayMillis2;
                }
                int _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfContentTriggerMaxDelayMillis2;
                if (_columnIndexOfContentTriggerMaxDelayMillis3 == -1) {
                    _tmpContentTriggerMaxDelayMillis = 0;
                } else {
                    _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerMaxDelayMillis3);
                }
                _columnIndexOfContentTriggerMaxDelayMillis2 = _columnIndexOfContentTriggerMaxDelayMillis3;
                int _columnIndexOfContentTriggerMaxDelayMillis4 = _columnIndexOfContentUriTriggers4;
                if (_columnIndexOfContentTriggerMaxDelayMillis4 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.".toString());
                }
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis4);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap8, _stmt.getText(_columnIndexOfId));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(_columnIndexOfId);
                Object value2 = MapsKt.getValue(arrayMap, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _columnIndexOfRequiredNetworkType2 = _columnIndexOfStopReason3;
                _columnIndexOfContentUriTriggers4 = _columnIndexOfContentTriggerMaxDelayMillis4;
                arrayMap6 = arrayMap8;
                _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfRequiredNetworkType3 = _columnIndexOfRequiredNetworkRequestCompat;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerUpdateDelayMillis;
                arrayMap7 = arrayMap;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, "query");
        final RoomRawQuery _rawQuery = RoomSQLiteQuery.INSTANCE.copyFrom(query).toRoomRawQuery();
        final String _sql = _rawQuery.getSql();
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, false, new Function1() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RawWorkInfoDao_Impl.getWorkInfoPojosLiveData$lambda$1(_sql, _rawQuery, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkInfoPojosLiveData$lambda$1(String $_sql, RoomRawQuery $_rawQuery, RawWorkInfoDao_Impl this$0, SQLiteConnection _connection) {
        long _tmpInitialDelay;
        long _tmpIntervalDuration;
        long _tmpFlexDuration;
        long _tmpBackoffDelayDuration;
        long _tmpLastEnqueueTime;
        int _tmpPeriodCount;
        long _tmpNextScheduleTimeOverride;
        int _tmpStopReason;
        int _columnIndexOfRequiredNetworkRequestCompat;
        ArrayMap<String, List<Data>> arrayMap;
        boolean _tmpRequiresCharging;
        boolean _tmpRequiresDeviceIdle;
        boolean _tmpRequiresBatteryNotLow;
        boolean _tmpRequiresStorageNotLow;
        long _tmpContentTriggerUpdateDelayMillis;
        long _tmpContentTriggerMaxDelayMillis;
        int _columnIndexOfPeriodCount;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            $_rawQuery.getBindingFunction().invoke(_stmt);
            int _columnIndexOfId = SQLiteStatementUtil.getColumnIndex(_stmt, TtmlNode.ATTR_ID);
            int _columnIndexOfState = SQLiteStatementUtil.getColumnIndex(_stmt, "state");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndex(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndex(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndex(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndex(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndex(_stmt, "last_enqueue_time");
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndex(_stmt, "period_count");
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndex(_stmt, "generation");
            String str = "getValue(...)";
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndex(_stmt, "next_schedule_time_override");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfStopReason = SQLiteStatementUtil.getColumnIndex(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
            int _columnIndexOfRequiredNetworkType = SQLiteStatementUtil.getColumnIndex(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkType2 = _columnIndexOfRequiredNetworkType;
            int _columnIndexOfRequiredNetworkType3 = SQLiteStatementUtil.getColumnIndex(_stmt, "required_network_request");
            int _columnIndexOfRequiresCharging = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_charging");
            int _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging;
            int _columnIndexOfRequiresDeviceIdle = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_device_idle");
            int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle;
            int _columnIndexOfRequiresBatteryNotLow = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow;
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_storage_not_low");
            int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfRequiresStorageNotLow;
            int _columnIndexOfContentUriTriggers = SQLiteStatementUtil.getColumnIndex(_stmt, "trigger_content_update_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis = SQLiteStatementUtil.getColumnIndex(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis2 = _columnIndexOfContentTriggerMaxDelayMillis;
            int _columnIndexOfContentUriTriggers2 = SQLiteStatementUtil.getColumnIndex(_stmt, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap2 = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap3 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(_columnIndexOfId);
                int _columnIndexOfContentUriTriggers3 = _columnIndexOfContentUriTriggers2;
                ArrayMap<String, List<String>> arrayMap4 = arrayMap2;
                int _columnIndexOfGeneration2 = _columnIndexOfGeneration;
                if (arrayMap4.containsKey(_tmpKey)) {
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                } else {
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    arrayMap4.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(_columnIndexOfId);
                ArrayMap<String, List<Data>> arrayMap5 = arrayMap3;
                if (arrayMap5.containsKey(_tmpKey_1)) {
                    arrayMap3 = arrayMap5;
                    _columnIndexOfGeneration = _columnIndexOfGeneration2;
                    _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                    arrayMap2 = arrayMap4;
                    _columnIndexOfContentUriTriggers2 = _columnIndexOfContentUriTriggers3;
                } else {
                    arrayMap5.put(_tmpKey_1, new ArrayList());
                    arrayMap3 = arrayMap5;
                    _columnIndexOfGeneration = _columnIndexOfGeneration2;
                    _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime;
                    arrayMap2 = arrayMap4;
                    _columnIndexOfContentUriTriggers2 = _columnIndexOfContentUriTriggers3;
                }
            }
            int _columnIndexOfContentUriTriggers4 = _columnIndexOfContentUriTriggers2;
            int _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount2;
            ArrayMap<String, List<String>> arrayMap6 = arrayMap2;
            int _columnIndexOfGeneration3 = _columnIndexOfGeneration;
            ArrayMap<String, List<Data>> arrayMap7 = arrayMap3;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap6);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap7);
            List _result = new ArrayList();
            while (_stmt.step()) {
                ArrayMap<String, List<String>> arrayMap8 = arrayMap6;
                if (_columnIndexOfId == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.".toString());
                }
                String _tmpId = _stmt.getText(_columnIndexOfId);
                if (_columnIndexOfState == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.".toString());
                }
                int _tmp = (int) _stmt.getLong(_columnIndexOfState);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                if (_columnIndexOfOutput == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.".toString());
                }
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                if (_columnIndexOfInitialDelay == -1) {
                    _tmpInitialDelay = 0;
                } else {
                    long _tmpInitialDelay2 = _stmt.getLong(_columnIndexOfInitialDelay);
                    _tmpInitialDelay = _tmpInitialDelay2;
                }
                if (_columnIndexOfIntervalDuration == -1) {
                    _tmpIntervalDuration = 0;
                } else {
                    long _tmpIntervalDuration2 = _stmt.getLong(_columnIndexOfIntervalDuration);
                    _tmpIntervalDuration = _tmpIntervalDuration2;
                }
                if (_columnIndexOfFlexDuration == -1) {
                    _tmpFlexDuration = 0;
                } else {
                    long _tmpFlexDuration2 = _stmt.getLong(_columnIndexOfFlexDuration);
                    _tmpFlexDuration = _tmpFlexDuration2;
                }
                int _tmpRunAttemptCount = _columnIndexOfRunAttemptCount == -1 ? 0 : (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                if (_columnIndexOfBackoffPolicy == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.".toString());
                }
                int _tmp_2 = (int) _stmt.getLong(_columnIndexOfBackoffPolicy);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(_tmp_2);
                if (_columnIndexOfBackoffDelayDuration == -1) {
                    _tmpBackoffDelayDuration = 0;
                } else {
                    long _tmpBackoffDelayDuration2 = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                    _tmpBackoffDelayDuration = _tmpBackoffDelayDuration2;
                }
                int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
                if (_columnIndexOfLastEnqueueTime3 == -1) {
                    _tmpLastEnqueueTime = 0;
                } else {
                    long _tmpLastEnqueueTime2 = _stmt.getLong(_columnIndexOfLastEnqueueTime3);
                    _tmpLastEnqueueTime = _tmpLastEnqueueTime2;
                }
                _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime3;
                int _columnIndexOfLastEnqueueTime4 = _columnIndexOfPeriodCount3;
                if (_columnIndexOfLastEnqueueTime4 == -1) {
                    _tmpPeriodCount = 0;
                } else {
                    _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfLastEnqueueTime4);
                }
                _columnIndexOfPeriodCount3 = _columnIndexOfLastEnqueueTime4;
                int _columnIndexOfGeneration4 = _columnIndexOfGeneration3;
                int _tmpGeneration = _columnIndexOfGeneration4 == -1 ? 0 : (int) _stmt.getLong(_columnIndexOfGeneration4);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfNextScheduleTimeOverride2;
                if (_columnIndexOfNextScheduleTimeOverride3 == -1) {
                    _tmpNextScheduleTimeOverride = 0;
                } else {
                    _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                }
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverride3;
                int _columnIndexOfNextScheduleTimeOverride4 = _columnIndexOfStopReason2;
                if (_columnIndexOfNextScheduleTimeOverride4 == -1) {
                    _columnIndexOfGeneration3 = _columnIndexOfGeneration4;
                    _tmpStopReason = 0;
                } else {
                    _columnIndexOfGeneration3 = _columnIndexOfGeneration4;
                    _tmpStopReason = (int) _stmt.getLong(_columnIndexOfNextScheduleTimeOverride4);
                }
                _columnIndexOfStopReason2 = _columnIndexOfNextScheduleTimeOverride4;
                int _columnIndexOfStopReason3 = _columnIndexOfRequiredNetworkType2;
                if (_columnIndexOfStopReason3 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.".toString());
                }
                int _tmp_3 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_3);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType3;
                if (_columnIndexOfRequiredNetworkRequestCompat2 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.".toString());
                }
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkRequestCompat2);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiresCharging3 = _columnIndexOfRequiresCharging2;
                if (_columnIndexOfRequiresCharging3 == -1) {
                    _tmpRequiresCharging = false;
                    _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkRequestCompat2;
                    arrayMap = arrayMap7;
                } else {
                    _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkRequestCompat2;
                    arrayMap = arrayMap7;
                    int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiresCharging3);
                    _tmpRequiresCharging = _tmp_5 != 0;
                }
                int _columnIndexOfRequiresDeviceIdle3 = _columnIndexOfRequiresDeviceIdle2;
                if (_columnIndexOfRequiresDeviceIdle3 == -1) {
                    _tmpRequiresDeviceIdle = false;
                    _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging3;
                } else {
                    _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging3;
                    int _tmp_6 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle3);
                    _tmpRequiresDeviceIdle = _tmp_6 != 0;
                }
                int _columnIndexOfRequiresBatteryNotLow3 = _columnIndexOfRequiresBatteryNotLow2;
                if (_columnIndexOfRequiresBatteryNotLow3 == -1) {
                    _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle3;
                    _tmpRequiresBatteryNotLow = false;
                } else {
                    _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle3;
                    int _tmp_7 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow3);
                    boolean _tmpRequiresBatteryNotLow2 = _tmp_7 != 0;
                    _tmpRequiresBatteryNotLow = _tmpRequiresBatteryNotLow2;
                }
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfRequiresStorageNotLow2;
                if (_columnIndexOfRequiresStorageNotLow3 == -1) {
                    _tmpRequiresStorageNotLow = false;
                    _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow3;
                } else {
                    _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow3;
                    int _tmp_8 = (int) _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                    _tmpRequiresStorageNotLow = _tmp_8 != 0;
                }
                int _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfContentUriTriggers;
                if (_columnIndexOfContentTriggerUpdateDelayMillis == -1) {
                    _tmpContentTriggerUpdateDelayMillis = 0;
                } else {
                    long _tmpContentTriggerUpdateDelayMillis2 = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis);
                    _tmpContentTriggerUpdateDelayMillis = _tmpContentTriggerUpdateDelayMillis2;
                }
                int _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfContentTriggerMaxDelayMillis2;
                if (_columnIndexOfContentTriggerMaxDelayMillis3 == -1) {
                    _tmpContentTriggerMaxDelayMillis = 0;
                } else {
                    _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerMaxDelayMillis3);
                }
                _columnIndexOfContentTriggerMaxDelayMillis2 = _columnIndexOfContentTriggerMaxDelayMillis3;
                int _columnIndexOfContentTriggerMaxDelayMillis4 = _columnIndexOfContentUriTriggers4;
                if (_columnIndexOfContentTriggerMaxDelayMillis4 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.".toString());
                }
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis4);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap8, _stmt.getText(_columnIndexOfId));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(_columnIndexOfId);
                Object value2 = MapsKt.getValue(arrayMap, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _columnIndexOfRequiredNetworkType2 = _columnIndexOfStopReason3;
                _columnIndexOfContentUriTriggers4 = _columnIndexOfContentTriggerMaxDelayMillis4;
                arrayMap6 = arrayMap8;
                _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfRequiredNetworkType3 = _columnIndexOfRequiredNetworkRequestCompat;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerUpdateDelayMillis;
                arrayMap7 = arrayMap;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosFlow(SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, "query");
        final RoomRawQuery _rawQuery = RoomSQLiteQuery.INSTANCE.copyFrom(query).toRoomRawQuery();
        final String _sql = _rawQuery.getSql();
        return FlowUtil.createFlow(this.__db, false, new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, new Function1() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RawWorkInfoDao_Impl.getWorkInfoPojosFlow$lambda$2(_sql, _rawQuery, this, (SQLiteConnection) obj);
            }
        });
    }

    static final List getWorkInfoPojosFlow$lambda$2(String $_sql, RoomRawQuery $_rawQuery, RawWorkInfoDao_Impl this$0, SQLiteConnection _connection) {
        long _tmpInitialDelay;
        long _tmpIntervalDuration;
        long _tmpFlexDuration;
        long _tmpBackoffDelayDuration;
        long _tmpLastEnqueueTime;
        int _tmpPeriodCount;
        long _tmpNextScheduleTimeOverride;
        int _tmpStopReason;
        int _columnIndexOfRequiredNetworkRequestCompat;
        ArrayMap<String, List<Data>> arrayMap;
        boolean _tmpRequiresCharging;
        boolean _tmpRequiresDeviceIdle;
        boolean _tmpRequiresBatteryNotLow;
        boolean _tmpRequiresStorageNotLow;
        long _tmpContentTriggerUpdateDelayMillis;
        long _tmpContentTriggerMaxDelayMillis;
        int _columnIndexOfPeriodCount;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement _stmt = _connection.prepare($_sql);
        try {
            $_rawQuery.getBindingFunction().invoke(_stmt);
            int _columnIndexOfId = SQLiteStatementUtil.getColumnIndex(_stmt, TtmlNode.ATTR_ID);
            int _columnIndexOfState = SQLiteStatementUtil.getColumnIndex(_stmt, "state");
            int _columnIndexOfOutput = SQLiteStatementUtil.getColumnIndex(_stmt, "output");
            int _columnIndexOfInitialDelay = SQLiteStatementUtil.getColumnIndex(_stmt, "initial_delay");
            int _columnIndexOfIntervalDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "interval_duration");
            int _columnIndexOfFlexDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "flex_duration");
            int _columnIndexOfRunAttemptCount = SQLiteStatementUtil.getColumnIndex(_stmt, "run_attempt_count");
            int _columnIndexOfBackoffPolicy = SQLiteStatementUtil.getColumnIndex(_stmt, "backoff_policy");
            int _columnIndexOfBackoffDelayDuration = SQLiteStatementUtil.getColumnIndex(_stmt, "backoff_delay_duration");
            int _columnIndexOfLastEnqueueTime = SQLiteStatementUtil.getColumnIndex(_stmt, "last_enqueue_time");
            int _columnIndexOfPeriodCount2 = SQLiteStatementUtil.getColumnIndex(_stmt, "period_count");
            int _columnIndexOfGeneration = SQLiteStatementUtil.getColumnIndex(_stmt, "generation");
            String str = "getValue(...)";
            int _columnIndexOfNextScheduleTimeOverride = SQLiteStatementUtil.getColumnIndex(_stmt, "next_schedule_time_override");
            int _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverride;
            int _columnIndexOfStopReason = SQLiteStatementUtil.getColumnIndex(_stmt, DownloadService.KEY_STOP_REASON);
            int _columnIndexOfStopReason2 = _columnIndexOfStopReason;
            int _columnIndexOfRequiredNetworkType = SQLiteStatementUtil.getColumnIndex(_stmt, "required_network_type");
            int _columnIndexOfRequiredNetworkType2 = _columnIndexOfRequiredNetworkType;
            int _columnIndexOfRequiredNetworkType3 = SQLiteStatementUtil.getColumnIndex(_stmt, "required_network_request");
            int _columnIndexOfRequiresCharging = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_charging");
            int _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging;
            int _columnIndexOfRequiresDeviceIdle = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_device_idle");
            int _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle;
            int _columnIndexOfRequiresBatteryNotLow = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_battery_not_low");
            int _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow;
            int _columnIndexOfRequiresStorageNotLow = SQLiteStatementUtil.getColumnIndex(_stmt, "requires_storage_not_low");
            int _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfRequiresStorageNotLow;
            int _columnIndexOfContentUriTriggers = SQLiteStatementUtil.getColumnIndex(_stmt, "trigger_content_update_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis = SQLiteStatementUtil.getColumnIndex(_stmt, "trigger_max_content_delay");
            int _columnIndexOfContentTriggerMaxDelayMillis2 = _columnIndexOfContentTriggerMaxDelayMillis;
            int _columnIndexOfContentUriTriggers2 = SQLiteStatementUtil.getColumnIndex(_stmt, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap2 = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap3 = new ArrayMap<>();
            while (_stmt.step()) {
                String _tmpKey = _stmt.getText(_columnIndexOfId);
                int _columnIndexOfContentUriTriggers3 = _columnIndexOfContentUriTriggers2;
                ArrayMap<String, List<String>> arrayMap4 = arrayMap2;
                int _columnIndexOfGeneration2 = _columnIndexOfGeneration;
                if (arrayMap4.containsKey(_tmpKey)) {
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                } else {
                    _columnIndexOfPeriodCount = _columnIndexOfPeriodCount2;
                    arrayMap4.put(_tmpKey, new ArrayList());
                }
                String _tmpKey_1 = _stmt.getText(_columnIndexOfId);
                ArrayMap<String, List<Data>> arrayMap5 = arrayMap3;
                if (arrayMap5.containsKey(_tmpKey_1)) {
                    arrayMap3 = arrayMap5;
                    _columnIndexOfGeneration = _columnIndexOfGeneration2;
                    _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                    arrayMap2 = arrayMap4;
                    _columnIndexOfContentUriTriggers2 = _columnIndexOfContentUriTriggers3;
                } else {
                    arrayMap5.put(_tmpKey_1, new ArrayList());
                    arrayMap3 = arrayMap5;
                    _columnIndexOfGeneration = _columnIndexOfGeneration2;
                    _columnIndexOfPeriodCount2 = _columnIndexOfPeriodCount;
                    _columnIndexOfLastEnqueueTime = _columnIndexOfLastEnqueueTime;
                    arrayMap2 = arrayMap4;
                    _columnIndexOfContentUriTriggers2 = _columnIndexOfContentUriTriggers3;
                }
            }
            int _columnIndexOfContentUriTriggers4 = _columnIndexOfContentUriTriggers2;
            int _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime;
            int _columnIndexOfPeriodCount3 = _columnIndexOfPeriodCount2;
            ArrayMap<String, List<String>> arrayMap6 = arrayMap2;
            int _columnIndexOfGeneration3 = _columnIndexOfGeneration;
            ArrayMap<String, List<Data>> arrayMap7 = arrayMap3;
            _stmt.reset();
            this$0.__fetchRelationshipWorkTagAsjavaLangString(_connection, arrayMap6);
            this$0.__fetchRelationshipWorkProgressAsandroidxWorkData(_connection, arrayMap7);
            List _result = new ArrayList();
            while (_stmt.step()) {
                ArrayMap<String, List<String>> arrayMap8 = arrayMap6;
                if (_columnIndexOfId == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.".toString());
                }
                String _tmpId = _stmt.getText(_columnIndexOfId);
                if (_columnIndexOfState == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.".toString());
                }
                int _tmp = (int) _stmt.getLong(_columnIndexOfState);
                WorkInfo.State _tmpState = WorkTypeConverters.intToState(_tmp);
                if (_columnIndexOfOutput == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.".toString());
                }
                byte[] _tmp_1 = _stmt.getBlob(_columnIndexOfOutput);
                Data _tmpOutput = Data.INSTANCE.fromByteArray(_tmp_1);
                if (_columnIndexOfInitialDelay == -1) {
                    _tmpInitialDelay = 0;
                } else {
                    long _tmpInitialDelay2 = _stmt.getLong(_columnIndexOfInitialDelay);
                    _tmpInitialDelay = _tmpInitialDelay2;
                }
                if (_columnIndexOfIntervalDuration == -1) {
                    _tmpIntervalDuration = 0;
                } else {
                    long _tmpIntervalDuration2 = _stmt.getLong(_columnIndexOfIntervalDuration);
                    _tmpIntervalDuration = _tmpIntervalDuration2;
                }
                if (_columnIndexOfFlexDuration == -1) {
                    _tmpFlexDuration = 0;
                } else {
                    long _tmpFlexDuration2 = _stmt.getLong(_columnIndexOfFlexDuration);
                    _tmpFlexDuration = _tmpFlexDuration2;
                }
                int _tmpRunAttemptCount = _columnIndexOfRunAttemptCount == -1 ? 0 : (int) _stmt.getLong(_columnIndexOfRunAttemptCount);
                if (_columnIndexOfBackoffPolicy == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.".toString());
                }
                int _tmp_2 = (int) _stmt.getLong(_columnIndexOfBackoffPolicy);
                BackoffPolicy _tmpBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(_tmp_2);
                if (_columnIndexOfBackoffDelayDuration == -1) {
                    _tmpBackoffDelayDuration = 0;
                } else {
                    long _tmpBackoffDelayDuration2 = _stmt.getLong(_columnIndexOfBackoffDelayDuration);
                    _tmpBackoffDelayDuration = _tmpBackoffDelayDuration2;
                }
                int _columnIndexOfLastEnqueueTime3 = _columnIndexOfLastEnqueueTime2;
                if (_columnIndexOfLastEnqueueTime3 == -1) {
                    _tmpLastEnqueueTime = 0;
                } else {
                    long _tmpLastEnqueueTime2 = _stmt.getLong(_columnIndexOfLastEnqueueTime3);
                    _tmpLastEnqueueTime = _tmpLastEnqueueTime2;
                }
                _columnIndexOfLastEnqueueTime2 = _columnIndexOfLastEnqueueTime3;
                int _columnIndexOfLastEnqueueTime4 = _columnIndexOfPeriodCount3;
                if (_columnIndexOfLastEnqueueTime4 == -1) {
                    _tmpPeriodCount = 0;
                } else {
                    _tmpPeriodCount = (int) _stmt.getLong(_columnIndexOfLastEnqueueTime4);
                }
                _columnIndexOfPeriodCount3 = _columnIndexOfLastEnqueueTime4;
                int _columnIndexOfGeneration4 = _columnIndexOfGeneration3;
                int _tmpGeneration = _columnIndexOfGeneration4 == -1 ? 0 : (int) _stmt.getLong(_columnIndexOfGeneration4);
                int _columnIndexOfNextScheduleTimeOverride3 = _columnIndexOfNextScheduleTimeOverride2;
                if (_columnIndexOfNextScheduleTimeOverride3 == -1) {
                    _tmpNextScheduleTimeOverride = 0;
                } else {
                    _tmpNextScheduleTimeOverride = _stmt.getLong(_columnIndexOfNextScheduleTimeOverride3);
                }
                _columnIndexOfNextScheduleTimeOverride2 = _columnIndexOfNextScheduleTimeOverride3;
                int _columnIndexOfNextScheduleTimeOverride4 = _columnIndexOfStopReason2;
                if (_columnIndexOfNextScheduleTimeOverride4 == -1) {
                    _columnIndexOfGeneration3 = _columnIndexOfGeneration4;
                    _tmpStopReason = 0;
                } else {
                    _columnIndexOfGeneration3 = _columnIndexOfGeneration4;
                    _tmpStopReason = (int) _stmt.getLong(_columnIndexOfNextScheduleTimeOverride4);
                }
                _columnIndexOfStopReason2 = _columnIndexOfNextScheduleTimeOverride4;
                int _columnIndexOfStopReason3 = _columnIndexOfRequiredNetworkType2;
                if (_columnIndexOfStopReason3 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.".toString());
                }
                int _tmp_3 = (int) _stmt.getLong(_columnIndexOfStopReason3);
                NetworkType _tmpRequiredNetworkType = WorkTypeConverters.intToNetworkType(_tmp_3);
                int _columnIndexOfRequiredNetworkRequestCompat2 = _columnIndexOfRequiredNetworkType3;
                if (_columnIndexOfRequiredNetworkRequestCompat2 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.".toString());
                }
                byte[] _tmp_4 = _stmt.getBlob(_columnIndexOfRequiredNetworkRequestCompat2);
                NetworkRequestCompat _tmpRequiredNetworkRequestCompat = WorkTypeConverters.toNetworkRequest$work_runtime_release(_tmp_4);
                int _columnIndexOfRequiresCharging3 = _columnIndexOfRequiresCharging2;
                if (_columnIndexOfRequiresCharging3 == -1) {
                    _tmpRequiresCharging = false;
                    _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkRequestCompat2;
                    arrayMap = arrayMap7;
                } else {
                    _columnIndexOfRequiredNetworkRequestCompat = _columnIndexOfRequiredNetworkRequestCompat2;
                    arrayMap = arrayMap7;
                    int _tmp_5 = (int) _stmt.getLong(_columnIndexOfRequiresCharging3);
                    _tmpRequiresCharging = _tmp_5 != 0;
                }
                int _columnIndexOfRequiresDeviceIdle3 = _columnIndexOfRequiresDeviceIdle2;
                if (_columnIndexOfRequiresDeviceIdle3 == -1) {
                    _tmpRequiresDeviceIdle = false;
                    _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging3;
                } else {
                    _columnIndexOfRequiresCharging2 = _columnIndexOfRequiresCharging3;
                    int _tmp_6 = (int) _stmt.getLong(_columnIndexOfRequiresDeviceIdle3);
                    _tmpRequiresDeviceIdle = _tmp_6 != 0;
                }
                int _columnIndexOfRequiresBatteryNotLow3 = _columnIndexOfRequiresBatteryNotLow2;
                if (_columnIndexOfRequiresBatteryNotLow3 == -1) {
                    _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle3;
                    _tmpRequiresBatteryNotLow = false;
                } else {
                    _columnIndexOfRequiresDeviceIdle2 = _columnIndexOfRequiresDeviceIdle3;
                    int _tmp_7 = (int) _stmt.getLong(_columnIndexOfRequiresBatteryNotLow3);
                    boolean _tmpRequiresBatteryNotLow2 = _tmp_7 != 0;
                    _tmpRequiresBatteryNotLow = _tmpRequiresBatteryNotLow2;
                }
                int _columnIndexOfRequiresStorageNotLow3 = _columnIndexOfRequiresStorageNotLow2;
                if (_columnIndexOfRequiresStorageNotLow3 == -1) {
                    _tmpRequiresStorageNotLow = false;
                    _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow3;
                } else {
                    _columnIndexOfRequiresBatteryNotLow2 = _columnIndexOfRequiresBatteryNotLow3;
                    int _tmp_8 = (int) _stmt.getLong(_columnIndexOfRequiresStorageNotLow3);
                    _tmpRequiresStorageNotLow = _tmp_8 != 0;
                }
                int _columnIndexOfContentTriggerUpdateDelayMillis = _columnIndexOfContentUriTriggers;
                if (_columnIndexOfContentTriggerUpdateDelayMillis == -1) {
                    _tmpContentTriggerUpdateDelayMillis = 0;
                } else {
                    long _tmpContentTriggerUpdateDelayMillis2 = _stmt.getLong(_columnIndexOfContentTriggerUpdateDelayMillis);
                    _tmpContentTriggerUpdateDelayMillis = _tmpContentTriggerUpdateDelayMillis2;
                }
                int _columnIndexOfContentTriggerMaxDelayMillis3 = _columnIndexOfContentTriggerMaxDelayMillis2;
                if (_columnIndexOfContentTriggerMaxDelayMillis3 == -1) {
                    _tmpContentTriggerMaxDelayMillis = 0;
                } else {
                    _tmpContentTriggerMaxDelayMillis = _stmt.getLong(_columnIndexOfContentTriggerMaxDelayMillis3);
                }
                _columnIndexOfContentTriggerMaxDelayMillis2 = _columnIndexOfContentTriggerMaxDelayMillis3;
                int _columnIndexOfContentTriggerMaxDelayMillis4 = _columnIndexOfContentUriTriggers4;
                if (_columnIndexOfContentTriggerMaxDelayMillis4 == -1) {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.".toString());
                }
                byte[] _tmp_9 = _stmt.getBlob(_columnIndexOfContentTriggerMaxDelayMillis4);
                Constraints _tmpConstraints = new Constraints(_tmpRequiredNetworkRequestCompat, _tmpRequiredNetworkType, _tmpRequiresCharging, _tmpRequiresDeviceIdle, _tmpRequiresBatteryNotLow, _tmpRequiresStorageNotLow, _tmpContentTriggerUpdateDelayMillis, _tmpContentTriggerMaxDelayMillis, WorkTypeConverters.byteArrayToSetOfTriggers(_tmp_9));
                Object value = MapsKt.getValue(arrayMap8, _stmt.getText(_columnIndexOfId));
                String _tmpKey_2 = str;
                Intrinsics.checkNotNullExpressionValue(value, _tmpKey_2);
                List _tmpTagsCollection = (List) value;
                String _tmpKey_3 = _stmt.getText(_columnIndexOfId);
                Object value2 = MapsKt.getValue(arrayMap, _tmpKey_3);
                Intrinsics.checkNotNullExpressionValue(value2, _tmpKey_2);
                List _tmpProgressCollection = (List) value2;
                WorkSpec.WorkInfoPojo _item = new WorkSpec.WorkInfoPojo(_tmpId, _tmpState, _tmpOutput, _tmpInitialDelay, _tmpIntervalDuration, _tmpFlexDuration, _tmpConstraints, _tmpRunAttemptCount, _tmpBackoffPolicy, _tmpBackoffDelayDuration, _tmpLastEnqueueTime, _tmpPeriodCount, _tmpGeneration, _tmpNextScheduleTimeOverride, _tmpStopReason, _tmpTagsCollection, _tmpProgressCollection);
                _result.add(_item);
                str = _tmpKey_2;
                _columnIndexOfRequiredNetworkType2 = _columnIndexOfStopReason3;
                _columnIndexOfContentUriTriggers4 = _columnIndexOfContentTriggerMaxDelayMillis4;
                arrayMap6 = arrayMap8;
                _columnIndexOfRequiresStorageNotLow2 = _columnIndexOfRequiresStorageNotLow3;
                _columnIndexOfRequiredNetworkType3 = _columnIndexOfRequiredNetworkRequestCompat;
                _columnIndexOfContentUriTriggers = _columnIndexOfContentTriggerUpdateDelayMillis;
                arrayMap7 = arrayMap;
            }
            return _result;
        } finally {
            _stmt.close();
        }
    }

    private final void __fetchRelationshipWorkTagAsjavaLangString(final SQLiteConnection _connection, ArrayMap<String, List<String>> _map) {
        Set<String> setKeySet = _map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (_map.getSize() > 999) {
            RelationUtil.recursiveFetchArrayMap(_map, true, new Function1() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString$lambda$3(this.f$0, _connection, (ArrayMap) obj);
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

    static final Unit __fetchRelationshipWorkTagAsjavaLangString$lambda$3(RawWorkInfoDao_Impl this$0, SQLiteConnection $_connection, ArrayMap _tmpMap) {
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
            RelationUtil.recursiveFetchArrayMap(_map, true, new Function1() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(this.f$0, _connection, (ArrayMap) obj);
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

    static final Unit __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(RawWorkInfoDao_Impl this$0, SQLiteConnection $_connection, ArrayMap _tmpMap) {
        Intrinsics.checkNotNullParameter(_tmpMap, "_tmpMap");
        this$0.__fetchRelationshipWorkProgressAsandroidxWorkData($_connection, _tmpMap);
        return Unit.INSTANCE;
    }

    /* JADX INFO: compiled from: RawWorkInfoDao_Impl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/RawWorkInfoDao_Impl$Companion;", "", "<init>", "()V", "getRequiredConverters", "", "Lkotlin/reflect/KClass;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
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
