package androidx.datastore.preferences.core;

import androidx.autofill.HintConstants;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.preferences.PreferencesMapCompat;
import androidx.datastore.preferences.PreferencesProto;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.protobuf.ByteString;
import com.google.firebase.firestore.model.Values;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PreferencesFileSerializer.jvmAndroid.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0096@¢\u0006\u0002\u0010\rJ\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J \u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u001c"}, d2 = {"Landroidx/datastore/preferences/core/PreferencesFileSerializer;", "Landroidx/datastore/core/Serializer;", "Landroidx/datastore/preferences/core/Preferences;", "<init>", "()V", "fileExtension", "", "defaultValue", "getDefaultValue", "()Landroidx/datastore/preferences/core/Preferences;", "readFrom", "input", "Ljava/io/InputStream;", "(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeTo", "", "t", "output", "Ljava/io/OutputStream;", "(Landroidx/datastore/preferences/core/Preferences;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getValueProto", "Landroidx/datastore/preferences/PreferencesProto$Value;", Values.VECTOR_MAP_VECTORS_KEY, "", "addProtoEntryToPreferences", HintConstants.AUTOFILL_HINT_NAME, "mutablePreferences", "Landroidx/datastore/preferences/core/MutablePreferences;", "datastore-preferences-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PreferencesFileSerializer implements Serializer<Preferences> {
    public static final PreferencesFileSerializer INSTANCE = new PreferencesFileSerializer();
    public static final String fileExtension = "preferences_pb";

    /* JADX INFO: compiled from: PreferencesFileSerializer.jvmAndroid.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PreferencesProto.Value.ValueCase.values().length];
            try {
                iArr[PreferencesProto.Value.ValueCase.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.INTEGER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.STRING_SET.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.BYTES.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.VALUE_NOT_SET.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private PreferencesFileSerializer() {
    }

    @Override // androidx.datastore.core.Serializer
    public /* bridge */ /* synthetic */ Object writeTo(Preferences preferences, OutputStream output, Continuation $completion) {
        return writeTo2(preferences, output, (Continuation<? super Unit>) $completion);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.datastore.core.Serializer
    public Preferences getDefaultValue() {
        return PreferencesFactory.createEmpty();
    }

    @Override // androidx.datastore.core.Serializer
    public Object readFrom(InputStream input, Continuation<? super Preferences> continuation) throws IOException {
        PreferencesProto.PreferenceMap preferencesProto = PreferencesMapCompat.INSTANCE.readFrom(input);
        MutablePreferences mutablePreferences = PreferencesFactory.createMutable(new Preferences.Pair[0]);
        Map<String, PreferencesProto.Value> preferencesMap = preferencesProto.getPreferencesMap();
        Intrinsics.checkNotNullExpressionValue(preferencesMap, "getPreferencesMap(...)");
        for (Map.Entry<String, PreferencesProto.Value> entry : preferencesMap.entrySet()) {
            String name = entry.getKey();
            PreferencesProto.Value value = entry.getValue();
            PreferencesFileSerializer preferencesFileSerializer = INSTANCE;
            Intrinsics.checkNotNull(name);
            Intrinsics.checkNotNull(value);
            preferencesFileSerializer.addProtoEntryToPreferences(name, value, mutablePreferences);
        }
        return mutablePreferences.toPreferences();
    }

    /* JADX INFO: renamed from: writeTo, reason: avoid collision after fix types in other method */
    public Object writeTo2(Preferences t, OutputStream output, Continuation<? super Unit> continuation) throws IOException {
        Map<Preferences.Key<?>, Object> mapAsMap = t.asMap();
        PreferencesProto.PreferenceMap.Builder protoBuilder = PreferencesProto.PreferenceMap.newBuilder();
        for (Map.Entry<Preferences.Key<?>, Object> entry : mapAsMap.entrySet()) {
            Preferences.Key<?> key = entry.getKey();
            Object value = entry.getValue();
            protoBuilder.putPreferences(key.getName(), getValueProto(value));
        }
        protoBuilder.build().writeTo(output);
        return Unit.INSTANCE;
    }

    private final PreferencesProto.Value getValueProto(Object value) {
        if (value instanceof Boolean) {
            PreferencesProto.Value valueBuild = PreferencesProto.Value.newBuilder().setBoolean(((Boolean) value).booleanValue()).build();
            Intrinsics.checkNotNullExpressionValue(valueBuild, "build(...)");
            return valueBuild;
        }
        if (value instanceof Float) {
            PreferencesProto.Value valueBuild2 = PreferencesProto.Value.newBuilder().setFloat(((Number) value).floatValue()).build();
            Intrinsics.checkNotNullExpressionValue(valueBuild2, "build(...)");
            return valueBuild2;
        }
        if (value instanceof Double) {
            PreferencesProto.Value valueBuild3 = PreferencesProto.Value.newBuilder().setDouble(((Number) value).doubleValue()).build();
            Intrinsics.checkNotNullExpressionValue(valueBuild3, "build(...)");
            return valueBuild3;
        }
        if (value instanceof Integer) {
            PreferencesProto.Value valueBuild4 = PreferencesProto.Value.newBuilder().setInteger(((Number) value).intValue()).build();
            Intrinsics.checkNotNullExpressionValue(valueBuild4, "build(...)");
            return valueBuild4;
        }
        if (value instanceof Long) {
            PreferencesProto.Value valueBuild5 = PreferencesProto.Value.newBuilder().setLong(((Number) value).longValue()).build();
            Intrinsics.checkNotNullExpressionValue(valueBuild5, "build(...)");
            return valueBuild5;
        }
        if (value instanceof String) {
            PreferencesProto.Value valueBuild6 = PreferencesProto.Value.newBuilder().setString((String) value).build();
            Intrinsics.checkNotNullExpressionValue(valueBuild6, "build(...)");
            return valueBuild6;
        }
        if (value instanceof Set) {
            PreferencesProto.Value.Builder builderNewBuilder = PreferencesProto.Value.newBuilder();
            PreferencesProto.StringSet.Builder builderNewBuilder2 = PreferencesProto.StringSet.newBuilder();
            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
            PreferencesProto.Value valueBuild7 = builderNewBuilder.setStringSet(builderNewBuilder2.addAllStrings((Set) value)).build();
            Intrinsics.checkNotNullExpressionValue(valueBuild7, "build(...)");
            return valueBuild7;
        }
        if (!(value instanceof byte[])) {
            throw new IllegalStateException("PreferencesSerializer does not support type: " + value.getClass().getName());
        }
        PreferencesProto.Value valueBuild8 = PreferencesProto.Value.newBuilder().setBytes(ByteString.copyFrom((byte[]) value)).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild8, "build(...)");
        return valueBuild8;
    }

    private final void addProtoEntryToPreferences(String name, PreferencesProto.Value value, MutablePreferences mutablePreferences) throws CorruptionException {
        PreferencesProto.Value.ValueCase valueCase = value.getValueCase();
        switch (valueCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueCase.ordinal()]) {
            case -1:
                throw new CorruptionException("Value case is null.", null, 2, null);
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                mutablePreferences.set(PreferencesKeys.booleanKey(name), Boolean.valueOf(value.getBoolean()));
                return;
            case 2:
                mutablePreferences.set(PreferencesKeys.floatKey(name), Float.valueOf(value.getFloat()));
                return;
            case 3:
                mutablePreferences.set(PreferencesKeys.doubleKey(name), Double.valueOf(value.getDouble()));
                return;
            case 4:
                mutablePreferences.set(PreferencesKeys.intKey(name), Integer.valueOf(value.getInteger()));
                return;
            case 5:
                mutablePreferences.set(PreferencesKeys.longKey(name), Long.valueOf(value.getLong()));
                return;
            case 6:
                mutablePreferences.set(PreferencesKeys.stringKey(name), value.getString());
                return;
            case 7:
                Preferences.Key<Set<String>> keyStringSetKey = PreferencesKeys.stringSetKey(name);
                List<String> stringsList = value.getStringSet().getStringsList();
                Intrinsics.checkNotNullExpressionValue(stringsList, "getStringsList(...)");
                mutablePreferences.set(keyStringSetKey, CollectionsKt.toSet(stringsList));
                return;
            case 8:
                mutablePreferences.set(PreferencesKeys.byteArrayKey(name), value.getBytes().toByteArray());
                return;
            case 9:
                throw new CorruptionException("Value not set.", null, 2, null);
        }
    }
}
