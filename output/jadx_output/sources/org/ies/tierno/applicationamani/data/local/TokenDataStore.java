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

/* JADX INFO: compiled from: TokenDataStore.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0086@¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\fH\u0086@¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\bH\u0086@¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "tokenFlow", "Lkotlinx/coroutines/flow/Flow;", "", "getTokenFlow", "()Lkotlinx/coroutines/flow/Flow;", "saveToken", "", "token", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearToken", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getToken", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class TokenDataStore {
    private final Context context;
    private final Flow<String> tokenFlow;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final Preferences.Key<String> TOKEN_KEY = PreferencesKeys.stringKey("jwt_token");

    public TokenDataStore(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Flow data = TokenDataStoreKt.getDataStore(this.context).getData();
        this.tokenFlow = new Flow<String>() { // from class: org.ies.tierno.applicationamani.data.local.TokenDataStore$special$$inlined$map$1

            /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.TokenDataStore$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.TokenDataStore$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                @DebugMetadata(c = "org.ies.tierno.applicationamani.data.local.TokenDataStore$special$$inlined$map$1$2", f = "TokenDataStore.kt", i = {0, 0, 0, 0, 0}, l = {50}, m = "emit", n = {Values.VECTOR_MAP_VECTORS_KEY, "$completion", Values.VECTOR_MAP_VECTORS_KEY, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"})
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

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object value, Continuation $completion) {
                    AnonymousClass1 $completion2;
                    if ($completion instanceof AnonymousClass1) {
                        $completion2 = (AnonymousClass1) $completion;
                        if (($completion2.label & Integer.MIN_VALUE) != 0) {
                            $completion2.label -= Integer.MIN_VALUE;
                        } else {
                            $completion2 = new AnonymousClass1($completion);
                        }
                    }
                    Object $result = $completion2.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch ($completion2.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            FlowCollector flowCollector = this.$this_unsafeFlow;
                            Object obj = ((Preferences) value).get(TokenDataStore.TOKEN_KEY);
                            $completion2.L$0 = SpillingKt.nullOutSpilledVariable(value);
                            $completion2.L$1 = SpillingKt.nullOutSpilledVariable($completion2);
                            $completion2.L$2 = SpillingKt.nullOutSpilledVariable(value);
                            $completion2.L$3 = SpillingKt.nullOutSpilledVariable(flowCollector);
                            $completion2.I$0 = 0;
                            $completion2.label = 1;
                            if (flowCollector.emit(obj, $completion2) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            int i = $completion2.I$0;
                            Object obj2 = $completion2.L$2;
                            Object value2 = $completion2.L$0;
                            ResultKt.throwOnFailure($result);
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super String> flowCollector, Continuation $completion) {
                Object objCollect = data.collect(new AnonymousClass2(flowCollector), $completion);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: compiled from: TokenDataStore.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$Companion;", "", "<init>", "()V", "TOKEN_KEY", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "getTOKEN_KEY", "()Landroidx/datastore/preferences/core/Preferences$Key;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Preferences.Key<String> getTOKEN_KEY() {
            return TokenDataStore.TOKEN_KEY;
        }
    }

    public final Flow<String> getTokenFlow() {
        return this.tokenFlow;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.TokenDataStore$saveToken$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TokenDataStore.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.local.TokenDataStore$saveToken$2", f = "TokenDataStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07962 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $token;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07962(String str, Continuation<? super C07962> continuation) {
            super(2, continuation);
            this.$token = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07962 c07962 = new C07962(this.$token, continuation);
            c07962.L$0 = obj;
            return c07962;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
            return ((C07962) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            MutablePreferences preferences = (MutablePreferences) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    preferences.set(TokenDataStore.INSTANCE.getTOKEN_KEY(), this.$token);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object saveToken(String token, Continuation<? super Unit> continuation) {
        Object objEdit = PreferencesKt.edit(TokenDataStoreKt.getDataStore(this.context), new C07962(token, null), continuation);
        return objEdit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEdit : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.TokenDataStore$clearToken$2, reason: invalid class name */
    /* JADX INFO: compiled from: TokenDataStore.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.local.TokenDataStore$clearToken$2", f = "TokenDataStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
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
                    preferences.remove(TokenDataStore.INSTANCE.getTOKEN_KEY());
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object clearToken(Continuation<? super Unit> continuation) {
        Object objEdit = PreferencesKt.edit(TokenDataStoreKt.getDataStore(this.context), new AnonymousClass2(null), continuation);
        return objEdit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEdit : Unit.INSTANCE;
    }

    public final Object getToken(Continuation<? super String> continuation) {
        final Flow data = TokenDataStoreKt.getDataStore(this.context).getData();
        return FlowKt.first(new Flow<String>() { // from class: org.ies.tierno.applicationamani.data.local.TokenDataStore$getToken$$inlined$map$1

            /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.TokenDataStore$getToken$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.local.TokenDataStore$getToken$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                @DebugMetadata(c = "org.ies.tierno.applicationamani.data.local.TokenDataStore$getToken$$inlined$map$1$2", f = "TokenDataStore.kt", i = {0, 0, 0, 0, 0}, l = {50}, m = "emit", n = {Values.VECTOR_MAP_VECTORS_KEY, "$completion", Values.VECTOR_MAP_VECTORS_KEY, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"})
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

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object value, Continuation $completion) {
                    AnonymousClass1 $completion2;
                    if ($completion instanceof AnonymousClass1) {
                        $completion2 = (AnonymousClass1) $completion;
                        if (($completion2.label & Integer.MIN_VALUE) != 0) {
                            $completion2.label -= Integer.MIN_VALUE;
                        } else {
                            $completion2 = new AnonymousClass1($completion);
                        }
                    }
                    Object $result = $completion2.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch ($completion2.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            FlowCollector flowCollector = this.$this_unsafeFlow;
                            Object obj = ((Preferences) value).get(TokenDataStore.TOKEN_KEY);
                            $completion2.L$0 = SpillingKt.nullOutSpilledVariable(value);
                            $completion2.L$1 = SpillingKt.nullOutSpilledVariable($completion2);
                            $completion2.L$2 = SpillingKt.nullOutSpilledVariable(value);
                            $completion2.L$3 = SpillingKt.nullOutSpilledVariable(flowCollector);
                            $completion2.I$0 = 0;
                            $completion2.label = 1;
                            if (flowCollector.emit(obj, $completion2) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            int i = $completion2.I$0;
                            Object obj2 = $completion2.L$2;
                            Object value2 = $completion2.L$0;
                            ResultKt.throwOnFailure($result);
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super String> flowCollector, Continuation $completion) {
                Object objCollect = data.collect(new AnonymousClass2(flowCollector), $completion);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, continuation);
    }
}
