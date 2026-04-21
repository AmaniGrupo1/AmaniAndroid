package androidx.datastore.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.datastore.migrations.SharedPreferencesMigration;
import androidx.datastore.migrations.SharedPreferencesView;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a,\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007\u001a.\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007\u001a/\u0010\f\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\rH\u0002¢\u0006\u0002\u0010\u0011\u001a7\u0010\u0012\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00132\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0002\u0010\u0015\"\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"SharedPreferencesMigration", "Landroidx/datastore/migrations/SharedPreferencesMigration;", "Landroidx/datastore/preferences/core/Preferences;", "produceSharedPreferences", "Lkotlin/Function0;", "Landroid/content/SharedPreferences;", "keysToMigrate", "", "", "context", "Landroid/content/Context;", "sharedPreferencesName", "getMigrationFunction", "Lkotlin/Function3;", "Landroidx/datastore/migrations/SharedPreferencesView;", "Lkotlin/coroutines/Continuation;", "", "()Lkotlin/jvm/functions/Function3;", "getShouldRunMigration", "Lkotlin/Function2;", "", "(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;", "MIGRATE_ALL_KEYS", "getMIGRATE_ALL_KEYS", "()Ljava/util/Set;", "datastore-preferences"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SharedPreferencesMigrationKt {
    private static final Set<String> MIGRATE_ALL_KEYS = new LinkedHashSet();

    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(Context context, String sharedPreferencesName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        return SharedPreferencesMigration$default(context, sharedPreferencesName, null, 4, null);
    }

    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(Function0<? extends SharedPreferences> produceSharedPreferences) {
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        return SharedPreferencesMigration$default(produceSharedPreferences, null, 2, null);
    }

    public static /* synthetic */ SharedPreferencesMigration SharedPreferencesMigration$default(Function0 function0, Set set, int i, Object obj) {
        if ((i & 2) != 0) {
            set = MIGRATE_ALL_KEYS;
        }
        return SharedPreferencesMigration((Function0<? extends SharedPreferences>) function0, (Set<String>) set);
    }

    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(Function0<? extends SharedPreferences> produceSharedPreferences, Set<String> keysToMigrate) {
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        if (keysToMigrate == MIGRATE_ALL_KEYS) {
            return new SharedPreferencesMigration<>(produceSharedPreferences, (Set) null, getShouldRunMigration(keysToMigrate), getMigrationFunction(), 2, (DefaultConstructorMarker) null);
        }
        return new SharedPreferencesMigration<>(produceSharedPreferences, keysToMigrate, getShouldRunMigration(keysToMigrate), getMigrationFunction());
    }

    public static /* synthetic */ SharedPreferencesMigration SharedPreferencesMigration$default(Context context, String str, Set set, int i, Object obj) {
        if ((i & 4) != 0) {
            set = MIGRATE_ALL_KEYS;
        }
        return SharedPreferencesMigration(context, str, set);
    }

    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(Context context, String sharedPreferencesName, Set<String> keysToMigrate) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        if (keysToMigrate == MIGRATE_ALL_KEYS) {
            return new SharedPreferencesMigration<>(context, sharedPreferencesName, null, getShouldRunMigration(keysToMigrate), getMigrationFunction(), 4, null);
        }
        return new SharedPreferencesMigration<>(context, sharedPreferencesName, keysToMigrate, getShouldRunMigration(keysToMigrate), getMigrationFunction());
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1, reason: invalid class name */
    /* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "sharedPrefs", "Landroidx/datastore/migrations/SharedPreferencesView;", "currentData"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1", f = "SharedPreferencesMigration.android.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass1 extends SuspendLambda implements Function3<SharedPreferencesView, Preferences, Continuation<? super Preferences>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(SharedPreferencesView sharedPreferencesView, Preferences preferences, Continuation<? super Preferences> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = sharedPreferencesView;
            anonymousClass1.L$1 = preferences;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    SharedPreferencesView sharedPrefs = (SharedPreferencesView) this.L$0;
                    Preferences currentData = (Preferences) this.L$1;
                    Iterable $this$map$iv = currentData.asMap().keySet();
                    Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                    for (Object item$iv$iv : $this$map$iv) {
                        Preferences.Key it = (Preferences.Key) item$iv$iv;
                        destination$iv$iv.add(it.getName());
                    }
                    List currentKeys = (List) destination$iv$iv;
                    Map<String, Object> all = sharedPrefs.getAll();
                    Map filteredSharedPreferences = new LinkedHashMap();
                    for (Map.Entry<String, Object> entry : all.entrySet()) {
                        if (!currentKeys.contains(entry.getKey())) {
                            filteredSharedPreferences.put(entry.getKey(), entry.getValue());
                        }
                    }
                    MutablePreferences mutablePreferences = currentData.toMutablePreferences();
                    for (Map.Entry entry2 : filteredSharedPreferences.entrySet()) {
                        String key = (String) entry2.getKey();
                        Object value = entry2.getValue();
                        if (value instanceof Boolean) {
                            mutablePreferences.set(PreferencesKeys.booleanKey(key), value);
                        } else if (value instanceof Float) {
                            mutablePreferences.set(PreferencesKeys.floatKey(key), value);
                        } else if (value instanceof Integer) {
                            mutablePreferences.set(PreferencesKeys.intKey(key), value);
                        } else if (value instanceof Long) {
                            mutablePreferences.set(PreferencesKeys.longKey(key), value);
                        } else if (value instanceof String) {
                            mutablePreferences.set(PreferencesKeys.stringKey(key), value);
                        } else if (value instanceof Set) {
                            Preferences.Key<Set<String>> keyStringSetKey = PreferencesKeys.stringSetKey(key);
                            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
                            mutablePreferences.set(keyStringSetKey, (Set) value);
                        }
                    }
                    return mutablePreferences.toPreferences();
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private static final Function3<SharedPreferencesView, Preferences, Continuation<? super Preferences>, Object> getMigrationFunction() {
        return new AnonymousClass1(null);
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.SharedPreferencesMigrationKt$getShouldRunMigration$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "prefs", "Landroidx/datastore/preferences/core/Preferences;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getShouldRunMigration$1", f = "SharedPreferencesMigration.android.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C06071 extends SuspendLambda implements Function2<Preferences, Continuation<? super Boolean>, Object> {
        final /* synthetic */ Set<String> $keysToMigrate;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06071(Set<String> set, Continuation<? super C06071> continuation) {
            super(2, continuation);
            this.$keysToMigrate = set;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C06071 c06071 = new C06071(this.$keysToMigrate, continuation);
            c06071.L$0 = obj;
            return c06071;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Preferences preferences, Continuation<? super Boolean> continuation) {
            return ((C06071) create(preferences, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Preferences prefs = (Preferences) this.L$0;
                    Iterable $this$map$iv = prefs.asMap().keySet();
                    Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                    for (Object item$iv$iv : $this$map$iv) {
                        Preferences.Key it = (Preferences.Key) item$iv$iv;
                        destination$iv$iv.add(it.getName());
                    }
                    List allKeys = (List) destination$iv$iv;
                    boolean z = true;
                    if (this.$keysToMigrate != SharedPreferencesMigrationKt.getMIGRATE_ALL_KEYS()) {
                        Iterable $this$any$iv = this.$keysToMigrate;
                        if (($this$any$iv instanceof Collection) && ((Collection) $this$any$iv).isEmpty()) {
                            z = false;
                        } else {
                            Iterator it2 = $this$any$iv.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    Object element$iv = it2.next();
                                    String it3 = (String) element$iv;
                                    if (!allKeys.contains(it3)) {
                                    }
                                } else {
                                    z = false;
                                }
                            }
                        }
                    }
                    return Boxing.boxBoolean(z);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private static final Function2<Preferences, Continuation<? super Boolean>, Object> getShouldRunMigration(Set<String> set) {
        return new C06071(set, null);
    }

    public static final Set<String> getMIGRATE_ALL_KEYS() {
        return MIGRATE_ALL_KEYS;
    }
}
