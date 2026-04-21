package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.autofill.HintConstants;
import androidx.datastore.core.DataMigration;
import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010#\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001-B\u0089\u0001\b\u0002\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012$\b\u0002\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\n\u0012(\u0010\u000e\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0014\u0010\u0015Bw\b\u0017\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012$\b\u0002\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\n\u0012(\u0010\u000e\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000f¢\u0006\u0004\b\u0014\u0010\u0016By\b\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\b\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012$\b\u0002\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\n\u0012(\u0010\u000e\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000f¢\u0006\u0004\b\u0014\u0010\u0018J\u0016\u0010\"\u001a\u00020\f2\u0006\u0010#\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010$J\u0016\u0010\u000e\u001a\u00028\u00002\u0006\u0010#\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020&H\u0096@¢\u0006\u0002\u0010'J\u0018\u0010(\u001a\u00020&2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\bH\u0002J\u0018\u0010)\u001a\u00020*2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\bH\u0002J\u0010\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020*H\u0002R,\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0019R2\u0010\u000e\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010!X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Landroidx/datastore/migrations/SharedPreferencesMigration;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/DataMigration;", "produceSharedPreferences", "Lkotlin/Function0;", "Landroid/content/SharedPreferences;", "keysToMigrate", "", "", "shouldRunMigration", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "migrate", "Lkotlin/Function3;", "Landroidx/datastore/migrations/SharedPreferencesView;", "context", "Landroid/content/Context;", HintConstants.AUTOFILL_HINT_NAME, "<init>", "(Lkotlin/jvm/functions/Function0;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroid/content/Context;Ljava/lang/String;)V", "(Lkotlin/jvm/functions/Function0;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V", "sharedPreferencesName", "(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V", "Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function3;", "sharedPrefs", "getSharedPrefs", "()Landroid/content/SharedPreferences;", "sharedPrefs$delegate", "Lkotlin/Lazy;", "keySet", "", "shouldMigrate", "currentData", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cleanUp", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteSharedPreferences", "getSharedPrefsFile", "Ljava/io/File;", "getSharedPrefsBackup", "prefsFile", "Api24Impl", "datastore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SharedPreferencesMigration<T> implements DataMigration<T> {
    private final Context context;
    private final Set<String> keySet;
    private final Function3<SharedPreferencesView, T, Continuation<? super T>, Object> migrate;
    private final String name;

    /* JADX INFO: renamed from: sharedPrefs$delegate, reason: from kotlin metadata */
    private final Lazy sharedPrefs;
    private final Function2<T, Continuation<? super Boolean>, Object> shouldRunMigration;

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.migrations.SharedPreferencesMigration", f = "SharedPreferencesMigration.android.kt", i = {}, l = {145}, m = "shouldMigrate", n = {}, s = {}, v = 1)
    static final class C06061 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SharedPreferencesMigration<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06061(SharedPreferencesMigration<T> sharedPreferencesMigration, Continuation<? super C06061> continuation) {
            super(continuation);
            this.this$0 = sharedPreferencesMigration;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.shouldMigrate(null, this);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Context context, String sharedPreferencesName, Set<String> keysToMigrate, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> migrate) {
        this(context, sharedPreferencesName, keysToMigrate, null, migrate, 8, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Context context, String sharedPreferencesName, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> migrate) {
        this(context, sharedPreferencesName, null, null, migrate, 12, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Function0<? extends SharedPreferences> produceSharedPreferences, Set<String> keysToMigrate, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, keysToMigrate, (Function2) null, migrate, 4, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Function0<? extends SharedPreferences> produceSharedPreferences, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, (Set) null, (Function2) null, migrate, 6, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SharedPreferencesMigration(Function0<? extends SharedPreferences> function0, Set<String> set, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> function3, Context context, String name) {
        Set<String> mutableSet;
        this.shouldRunMigration = function2;
        this.migrate = function3;
        this.context = context;
        this.name = name;
        this.sharedPrefs = LazyKt.lazy(function0);
        if (set == SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS()) {
            mutableSet = null;
        } else {
            mutableSet = CollectionsKt.toMutableSet(set);
        }
        this.keySet = mutableSet;
    }

    /* synthetic */ SharedPreferencesMigration(Function0 function0, Set set, Function2 function2, Function3 function3, Context context, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Function2 anonymousClass1;
        if ((i & 4) == 0) {
            anonymousClass1 = function2;
        } else {
            anonymousClass1 = new AnonymousClass1(null);
        }
        this((Function0<? extends SharedPreferences>) function0, (Set<String>) set, anonymousClass1, function3, context, str);
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$1, reason: invalid class name */
    /* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.migrations.SharedPreferencesMigration$1", f = "SharedPreferencesMigration.android.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<T, Continuation<? super Boolean>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(T t, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    return Boxing.boxBoolean(true);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public /* synthetic */ SharedPreferencesMigration(Function0 function0, Set set, AnonymousClass2 anonymousClass2, Function3 function3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((Function0<? extends SharedPreferences>) function0, (Set<String>) ((i & 2) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set), (i & 4) != 0 ? new AnonymousClass2(null) : anonymousClass2, function3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$2, reason: invalid class name */
    /* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.migrations.SharedPreferencesMigration$2", f = "SharedPreferencesMigration.android.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<T, Continuation<? super Boolean>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(T t, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    return Boxing.boxBoolean(true);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Function0<? extends SharedPreferences> produceSharedPreferences, Set<String> keysToMigrate, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> shouldRunMigration, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, keysToMigrate, shouldRunMigration, migrate, (Context) null, (String) null);
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(shouldRunMigration, "shouldRunMigration");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    public /* synthetic */ SharedPreferencesMigration(Context context, String str, Set set, Function2 function2, Function3 function3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Set migrate_all_keys;
        Function2 anonymousClass3;
        if ((i & 4) == 0) {
            migrate_all_keys = set;
        } else {
            migrate_all_keys = SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS();
        }
        if ((i & 8) == 0) {
            anonymousClass3 = function2;
        } else {
            anonymousClass3 = new AnonymousClass3(null);
        }
        this(context, str, migrate_all_keys, anonymousClass3, function3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$3, reason: invalid class name */
    /* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.migrations.SharedPreferencesMigration$3", f = "SharedPreferencesMigration.android.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<T, Continuation<? super Boolean>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(T t, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass3) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    return Boxing.boxBoolean(true);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(final Context context, final String sharedPreferencesName, Set<String> keysToMigrate, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> shouldRunMigration, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> migrate) {
        this((Function0<? extends SharedPreferences>) new Function0() { // from class: androidx.datastore.migrations.SharedPreferencesMigration$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SharedPreferencesMigration._init_$lambda$0(context, sharedPreferencesName);
            }
        }, keysToMigrate, shouldRunMigration, migrate, context, sharedPreferencesName);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(shouldRunMigration, "shouldRunMigration");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    static final SharedPreferences _init_$lambda$0(Context $context, String $sharedPreferencesName) {
        SharedPreferences sharedPreferences = $context.getSharedPreferences($sharedPreferencesName, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    private final SharedPreferences getSharedPrefs() {
        return (SharedPreferences) this.sharedPrefs.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.datastore.core.DataMigration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object shouldMigrate(T t, Continuation<? super Boolean> continuation) {
        C06061 c06061;
        SharedPreferencesMigration<T> sharedPreferencesMigration;
        Object currentData;
        if (continuation instanceof C06061) {
            c06061 = (C06061) continuation;
            if ((c06061.label & Integer.MIN_VALUE) != 0) {
                c06061.label -= Integer.MIN_VALUE;
            } else {
                c06061 = new C06061(this, continuation);
            }
        }
        Object $result = c06061.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        boolean z = true;
        switch (c06061.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                sharedPreferencesMigration = this;
                Function2<T, Continuation<? super Boolean>, Object> function2 = sharedPreferencesMigration.shouldRunMigration;
                c06061.label = 1;
                currentData = function2.invoke(t, c06061);
                if (currentData == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                sharedPreferencesMigration = this;
                currentData = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (!((Boolean) currentData).booleanValue()) {
            return Boxing.boxBoolean(false);
        }
        if (sharedPreferencesMigration.keySet == null) {
            Map<String, ?> all = sharedPreferencesMigration.getSharedPrefs().getAll();
            Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
            if (all.isEmpty()) {
                z = false;
            }
        } else {
            Iterable $this$any$iv = sharedPreferencesMigration.keySet;
            SharedPreferences sharedPrefs = sharedPreferencesMigration.getSharedPrefs();
            if (($this$any$iv instanceof Collection) && ((Collection) $this$any$iv).isEmpty()) {
                z = false;
            } else {
                Iterator<T> it = $this$any$iv.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Object element$iv = it.next();
                        String p0 = (String) element$iv;
                        if (sharedPrefs.contains(p0)) {
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return Boxing.boxBoolean(z);
    }

    @Override // androidx.datastore.core.DataMigration
    public Object migrate(T t, Continuation<? super T> continuation) {
        return this.migrate.invoke(new SharedPreferencesView(getSharedPrefs(), this.keySet), t, continuation);
    }

    @Override // androidx.datastore.core.DataMigration
    public Object cleanUp(Continuation<? super Unit> continuation) throws IOException {
        SharedPreferences.Editor sharedPrefsEditor = getSharedPrefs().edit();
        if (this.keySet == null) {
            sharedPrefsEditor.clear();
        } else {
            Iterable $this$forEach$iv = this.keySet;
            for (Object element$iv : $this$forEach$iv) {
                String key = (String) element$iv;
                sharedPrefsEditor.remove(key);
            }
        }
        if (!sharedPrefsEditor.commit()) {
            throw new IOException("Unable to delete migrated keys from SharedPreferences.");
        }
        if (getSharedPrefs().getAll().isEmpty() && this.context != null && this.name != null) {
            deleteSharedPreferences(this.context, this.name);
        }
        Set<String> set = this.keySet;
        if (set != null) {
            set.clear();
        }
        return Unit.INSTANCE;
    }

    private final void deleteSharedPreferences(Context context, String name) {
        Api24Impl.deleteSharedPreferences(context, name);
    }

    private final File getSharedPrefsFile(Context context, String name) {
        File prefsDir = new File(context.getApplicationInfo().dataDir, "shared_prefs");
        return new File(prefsDir, name + ".xml");
    }

    private final File getSharedPrefsBackup(File prefsFile) {
        return new File(prefsFile.getPath() + ".bak");
    }

    /* JADX INFO: compiled from: SharedPreferencesMigration.android.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Landroidx/datastore/migrations/SharedPreferencesMigration$Api24Impl;", "", "<init>", "()V", "deleteSharedPreferences", "", "context", "Landroid/content/Context;", HintConstants.AUTOFILL_HINT_NAME, "", "datastore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        @JvmStatic
        public static final boolean deleteSharedPreferences(Context context, String name) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            return context.deleteSharedPreferences(name);
        }
    }
}
