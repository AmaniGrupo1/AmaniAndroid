package org.ies.tierno.applicationamani.data.local;

import android.content.Context;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import androidx.datastore.preferences.core.PreferencesKt;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: UserSessionDataStore.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0086@¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\fH\u0086@¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\bH\u0086@¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "sessionFlow", "Lkotlinx/coroutines/flow/Flow;", "Lorg/ies/tierno/applicationamani/data/local/UserSession;", "getSessionFlow", "()Lkotlinx/coroutines/flow/Flow;", "saveSession", "", "session", "(Lorg/ies/tierno/applicationamani/data/local/UserSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearSession", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSession", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class UserSessionDataStore {
    private final Context context;
    private final Flow<UserSession> sessionFlow;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final Preferences.Key<Long> USER_ID_KEY = PreferencesKeys.longKey("user_id");
    private static final Preferences.Key<String> USER_NAME_KEY = PreferencesKeys.stringKey("user_name");
    private static final Preferences.Key<String> USER_ROLE_KEY = PreferencesKeys.stringKey("user_role");
    private static final Preferences.Key<Long> PSYCHOLOGIST_ID_KEY = PreferencesKeys.longKey("psychologist_id");
    private static final Preferences.Key<Long> PATIENT_ID_KEY = PreferencesKeys.longKey("patient_id");

    public UserSessionDataStore(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Flow data = UserSessionDataStoreKt.getUserSessionDataStore(this.context).getData();
        this.sessionFlow = new Flow<UserSession>() { // from class: org.ies.tierno.applicationamani.data.local.UserSessionDataStore$special$$inlined$map$1

            /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.UserSessionDataStore$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.UserSessionDataStore$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                @DebugMetadata(c = "org.ies.tierno.applicationamani.data.local.UserSessionDataStore$special$$inlined$map$1$2", f = "UserSessionDataStore.kt", i = {0, 0, 0, 0, 0}, l = {50}, m = "emit", n = {Values.VECTOR_MAP_VECTORS_KEY, "$completion", Values.VECTOR_MAP_VECTORS_KEY, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    int I$0;
                    Object L$0;
                    Object L$1;
                    Object L$2;
                    Object L$3;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object value, Continuation $completion) {
                    AnonymousClass1 anonymousClass1;
                    if ($completion instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) $completion;
                        if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label -= Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1($completion);
                        }
                    }
                    Object $result = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (anonymousClass1.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            FlowCollector $this$map_u24lambda_u245 = this.$this_unsafeFlow;
                            Continuation $completion2 = anonymousClass1;
                            Preferences preferences = (Preferences) value;
                            Long l = (Long) preferences.get(UserSessionDataStore.USER_ID_KEY);
                            String str = (String) preferences.get(UserSessionDataStore.USER_NAME_KEY);
                            String str2 = (String) preferences.get(UserSessionDataStore.USER_ROLE_KEY);
                            Long l2 = (Long) preferences.get(UserSessionDataStore.PSYCHOLOGIST_ID_KEY);
                            Long l3 = (Long) preferences.get(UserSessionDataStore.PATIENT_ID_KEY);
                            UserSession userSession = null;
                            Long l4 = (l2 == null || l2.longValue() == 0) ? null : l2;
                            if (l != null && str2 != null) {
                                userSession = new UserSession(l.longValue(), str, str2, l4, l3);
                            }
                            anonymousClass1.L$0 = SpillingKt.nullOutSpilledVariable(value);
                            anonymousClass1.L$1 = SpillingKt.nullOutSpilledVariable($completion2);
                            anonymousClass1.L$2 = SpillingKt.nullOutSpilledVariable(value);
                            anonymousClass1.L$3 = SpillingKt.nullOutSpilledVariable($this$map_u24lambda_u245);
                            anonymousClass1.I$0 = 0;
                            anonymousClass1.label = 1;
                            if ($this$map_u24lambda_u245.emit(userSession, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            int i = anonymousClass1.I$0;
                            Object obj = anonymousClass1.L$2;
                            Object obj2 = anonymousClass1.L$0;
                            ResultKt.throwOnFailure($result);
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super UserSession> flowCollector, Continuation $completion) {
                Object objCollect = data.collect(new AnonymousClass2(flowCollector), $completion);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: compiled from: UserSessionDataStore.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\bR\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\bR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\bR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\b¨\u0006\u0012"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;", "", "<init>", "()V", "USER_ID_KEY", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "getUSER_ID_KEY", "()Landroidx/datastore/preferences/core/Preferences$Key;", "USER_NAME_KEY", "", "getUSER_NAME_KEY", "USER_ROLE_KEY", "getUSER_ROLE_KEY", "PSYCHOLOGIST_ID_KEY", "getPSYCHOLOGIST_ID_KEY", "PATIENT_ID_KEY", "getPATIENT_ID_KEY", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Preferences.Key<Long> getUSER_ID_KEY() {
            return UserSessionDataStore.USER_ID_KEY;
        }

        public final Preferences.Key<String> getUSER_NAME_KEY() {
            return UserSessionDataStore.USER_NAME_KEY;
        }

        public final Preferences.Key<String> getUSER_ROLE_KEY() {
            return UserSessionDataStore.USER_ROLE_KEY;
        }

        public final Preferences.Key<Long> getPSYCHOLOGIST_ID_KEY() {
            return UserSessionDataStore.PSYCHOLOGIST_ID_KEY;
        }

        public final Preferences.Key<Long> getPATIENT_ID_KEY() {
            return UserSessionDataStore.PATIENT_ID_KEY;
        }
    }

    public final Flow<UserSession> getSessionFlow() {
        return this.sessionFlow;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.UserSessionDataStore$saveSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UserSessionDataStore.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.local.UserSessionDataStore$saveSession$2", f = "UserSessionDataStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07972 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        final /* synthetic */ UserSession $session;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07972(UserSession userSession, Continuation<? super C07972> continuation) {
            super(2, continuation);
            this.$session = userSession;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07972 c07972 = new C07972(this.$session, continuation);
            c07972.L$0 = obj;
            return c07972;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
            return ((C07972) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            MutablePreferences preferences = (MutablePreferences) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    preferences.set(UserSessionDataStore.Companion.getUSER_ID_KEY(), Boxing.boxLong(this.$session.getIdUsuario()));
                    if (this.$session.getNombre() != null) {
                        preferences.set(UserSessionDataStore.Companion.getUSER_NAME_KEY(), this.$session.getNombre());
                    } else {
                        preferences.remove(UserSessionDataStore.Companion.getUSER_NAME_KEY());
                    }
                    preferences.set(UserSessionDataStore.Companion.getUSER_ROLE_KEY(), this.$session.getRol());
                    if (this.$session.getIdPsicologo() != null) {
                        preferences.set(UserSessionDataStore.Companion.getPSYCHOLOGIST_ID_KEY(), this.$session.getIdPsicologo());
                    } else {
                        preferences.remove(UserSessionDataStore.Companion.getPSYCHOLOGIST_ID_KEY());
                    }
                    if (this.$session.getIdPaciente() != null) {
                        preferences.set(UserSessionDataStore.Companion.getPATIENT_ID_KEY(), this.$session.getIdPaciente());
                    } else {
                        preferences.remove(UserSessionDataStore.Companion.getPATIENT_ID_KEY());
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object saveSession(UserSession session, Continuation<? super Unit> continuation) {
        Object objEdit = PreferencesKt.edit(UserSessionDataStoreKt.getUserSessionDataStore(this.context), new C07972(session, null), continuation);
        return objEdit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEdit : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.UserSessionDataStore$clearSession$2, reason: invalid class name */
    /* JADX INFO: compiled from: UserSessionDataStore.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.local.UserSessionDataStore$clearSession$2", f = "UserSessionDataStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            MutablePreferences preferences = (MutablePreferences) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    preferences.clear();
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object clearSession(Continuation<? super Unit> continuation) {
        Object objEdit = PreferencesKt.edit(UserSessionDataStoreKt.getUserSessionDataStore(this.context), new AnonymousClass2(null), continuation);
        return objEdit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEdit : Unit.INSTANCE;
    }

    public final Object getSession(Continuation<? super UserSession> continuation) {
        return FlowKt.first(this.sessionFlow, continuation);
    }
}
