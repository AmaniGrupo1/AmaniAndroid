package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: SnapshotFlow.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a?\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0001\"\b\b\u0000\u0010\u0002*\u0002H\u0007\"\u0004\b\u0001\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00020\b2\u0006\u0010\t\u001a\u0002H\u00072\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\n\u001a \u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\b\"\u0004\b\u0000\u0010\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\r\u001a%\u0010\u000e\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0002¢\u0006\u0002\b\u0014¨\u0006\u0015"}, d2 = {"collectAsState", "Landroidx/compose/runtime/State;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/StateFlow;", "context", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", "R", "Lkotlinx/coroutines/flow/Flow;", "initial", "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", "snapshotFlow", "block", "Lkotlin/Function0;", "intersects", "", "Landroidx/collection/MutableScatterSet;", "", "set", "", "intersects$SnapshotStateKt__SnapshotFlowKt", "runtime"}, k = 5, mv = {2, 0, 0}, xi = 48, xs = "androidx/compose/runtime/SnapshotStateKt")
final /* synthetic */ class SnapshotStateKt__SnapshotFlowKt {
    public static final <T> State<T> collectAsState(StateFlow<? extends T> stateFlow, CoroutineContext context, Composer $composer, int $changed, int i) {
        CoroutineContext context2;
        ComposerKt.sourceInformationMarkerStart($composer, -1439883919, "C(collectAsState)N(context)49@1914L30:SnapshotFlow.kt#9igjgp");
        if ((i & 1) != 0) {
            CoroutineContext context3 = EmptyCoroutineContext.INSTANCE;
            context2 = context3;
        } else {
            context2 = context;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1439883919, $changed, -1, "androidx.compose.runtime.collectAsState (SnapshotFlow.kt:49)");
        }
        State<T> stateCollectAsState = SnapshotStateKt.collectAsState(stateFlow, stateFlow.getValue(), context2, $composer, ($changed & 14) | (($changed << 3) & 896), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return stateCollectAsState;
    }

    public static final <T extends R, R> State<R> collectAsState(Flow<? extends T> flow, R r, CoroutineContext context, Composer $composer, int $changed, int i) {
        CoroutineContext context2;
        ComposerKt.sourceInformationMarkerStart($composer, -606625098, "C(collectAsState)N(initial,context)65@2592L153,65@2555L190:SnapshotFlow.kt#9igjgp");
        if ((i & 2) != 0) {
            CoroutineContext context3 = EmptyCoroutineContext.INSTANCE;
            context2 = context3;
        } else {
            context2 = context;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-606625098, $changed, -1, "androidx.compose.runtime.collectAsState (SnapshotFlow.kt:65)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, 1148838511, "CC(remember):SnapshotFlow.kt#9igjgp");
        boolean invalid$iv = $composer.changedInstance(context2) | $composer.changedInstance(flow);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = (Function2) new SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1(context2, flow, null);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        State<R> stateProduceState = SnapshotStateKt.produceState(r, flow, context2, (Function2) it$iv, $composer, (($changed >> 3) & 8) | (($changed >> 3) & 14) | (($changed << 3) & 112) | ($changed & 896));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return stateProduceState;
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1, reason: invalid class name */
    /* JADX INFO: compiled from: SnapshotFlow.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1", f = "SnapshotFlow.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2}, l = {143, 147, 170}, m = "invokeSuspend", n = {"$this$flow", "readSet", "readObserver", "appliedChanges", "unregisterApplyObserver", "lastValue", "$this$flow", "readSet", "readObserver", "appliedChanges", "unregisterApplyObserver", "lastValue", "found", "$this$flow", "readSet", "readObserver", "appliedChanges", "unregisterApplyObserver", "lastValue"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5"}, v = 1)
    static final class AnonymousClass1<T> extends SuspendLambda implements Function2<FlowCollector<? super T>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<T> $block;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function0<? extends T> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$block = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$block, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:97:0x00e0, code lost:
        
            r2 = r5;
            r5 = r6;
            r6 = r7;
            r7 = r8;
            r8 = r9;
            r9 = r10;
            r10 = r11;
            r11 = r13;
            r3 = 0;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Path cross not found for [B:37:0x010d, B:41:0x0116], limit reached: 96 */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00fb A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0187  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0192 A[LOOP:0: B:36:0x010b->B:67:0x0192, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0124 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector] */
        /* JADX WARN: Type inference failed for: r10v10 */
        /* JADX WARN: Type inference failed for: r10v11, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r10v13 */
        /* JADX WARN: Type inference failed for: r10v16 */
        /* JADX WARN: Type inference failed for: r10v17 */
        /* JADX WARN: Type inference failed for: r10v18 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Type inference failed for: r10v8 */
        /* JADX WARN: Type inference failed for: r10v9 */
        /* JADX WARN: Type inference failed for: r11v11, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector] */
        /* JADX WARN: Type inference failed for: r11v17 */
        /* JADX WARN: Type inference failed for: r11v20 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x016f -> B:58:0x0178). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            ObserverHandle observerHandleRegisterApplyObserver;
            Object obj2;
            final MutableScatterSet mutableScatterSet;
            Function1<Object, Unit> function1;
            final Channel channelChannel$default;
            Snapshot snapshotTakeSnapshot;
            Function0<T> function0;
            Snapshot snapshotMakeCurrent;
            Object obj3;
            ?? r10;
            AnonymousClass1<T> anonymousClass1;
            Object obj4;
            Object obj5;
            ObserverHandle observerHandle;
            Channel channel;
            Function1<Object, Unit> function12;
            MutableScatterSet mutableScatterSet2;
            AnonymousClass1<T> anonymousClass12;
            int i;
            Object obj6;
            ?? r11;
            Set set;
            Object objReceive;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = 0;
            int i3 = 1;
            try {
            } catch (Throwable th) {
                th = th;
            }
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    obj2 = obj;
                    ?? r102 = (FlowCollector) this.L$0;
                    mutableScatterSet = new MutableScatterSet(i2, i3, null);
                    function1 = new Function1() { // from class: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj7) {
                            return SnapshotStateKt__SnapshotFlowKt.AnonymousClass1.invokeSuspend$lambda$0(mutableScatterSet, obj7);
                        }
                    };
                    channelChannel$default = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
                    observerHandleRegisterApplyObserver = Snapshot.INSTANCE.registerApplyObserver(new Function2() { // from class: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj7, Object obj8) {
                            return SnapshotStateKt__SnapshotFlowKt.AnonymousClass1.invokeSuspend$lambda$1(channelChannel$default, (Set) obj7, (Snapshot) obj8);
                        }
                    });
                    try {
                        snapshotTakeSnapshot = Snapshot.INSTANCE.takeSnapshot(function1);
                        function0 = this.$block;
                        try {
                            snapshotMakeCurrent = snapshotTakeSnapshot.makeCurrent();
                        } finally {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        T tInvoke = function0.invoke();
                        snapshotTakeSnapshot.dispose();
                        obj3 = tInvoke;
                        this.L$0 = r102;
                        this.L$1 = mutableScatterSet;
                        this.L$2 = function1;
                        this.L$3 = channelChannel$default;
                        this.L$4 = observerHandleRegisterApplyObserver;
                        this.L$5 = obj3;
                        this.label = 1;
                        Object objEmit = r102.emit(obj3, this);
                        r10 = r102;
                        if (objEmit == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        anonymousClass1 = this;
                        i = 0;
                        try {
                            anonymousClass1.L$0 = r10;
                            anonymousClass1.L$1 = mutableScatterSet;
                            anonymousClass1.L$2 = function1;
                            anonymousClass1.L$3 = channelChannel$default;
                            anonymousClass1.L$4 = observerHandleRegisterApplyObserver;
                            anonymousClass1.L$5 = obj3;
                            anonymousClass1.I$0 = 0;
                            anonymousClass1.label = 2;
                            objReceive = channelChannel$default.receive(anonymousClass1);
                            break;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        if (objReceive != coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        Object obj7 = obj3;
                        obj6 = obj2;
                        obj4 = objReceive;
                        anonymousClass12 = anonymousClass1;
                        r11 = r10;
                        mutableScatterSet2 = mutableScatterSet;
                        function12 = function1;
                        channel = channelChannel$default;
                        observerHandle = observerHandleRegisterApplyObserver;
                        obj5 = obj7;
                        try {
                            set = (Set) obj4;
                        } catch (Throwable th4) {
                            th = th4;
                            observerHandleRegisterApplyObserver = observerHandle;
                        }
                        while (true) {
                            i = (i == 0 || SnapshotStateKt__SnapshotFlowKt.intersects$SnapshotStateKt__SnapshotFlowKt(mutableScatterSet2, set)) ? 1 : i2;
                            set = (Set) ChannelResult.m10069getOrNullimpl(channel.mo10057tryReceivePtdJZtk());
                            if (set != null) {
                                i2 = 0;
                            } else {
                                if (i != 0) {
                                    try {
                                        try {
                                            mutableScatterSet2.clear();
                                            Snapshot snapshotTakeSnapshot2 = Snapshot.INSTANCE.takeSnapshot(function12);
                                            Function0<T> function02 = anonymousClass12.$block;
                                            Snapshot snapshotMakeCurrent2 = snapshotTakeSnapshot2.makeCurrent();
                                            T tInvoke2 = function02.invoke();
                                            snapshotTakeSnapshot2.dispose();
                                            if (Intrinsics.areEqual(tInvoke2, obj5)) {
                                                obj2 = obj6;
                                                obj3 = obj5;
                                                observerHandleRegisterApplyObserver = observerHandle;
                                                channelChannel$default = channel;
                                                function1 = function12;
                                                mutableScatterSet = mutableScatterSet2;
                                                r10 = r11;
                                                anonymousClass1 = anonymousClass12;
                                                i2 = 0;
                                            } else {
                                                anonymousClass12.L$0 = r11;
                                                anonymousClass12.L$1 = mutableScatterSet2;
                                                anonymousClass12.L$2 = function12;
                                                anonymousClass12.L$3 = channel;
                                                anonymousClass12.L$4 = observerHandle;
                                                anonymousClass12.L$5 = tInvoke2;
                                                anonymousClass12.label = 3;
                                                if (r11.emit(tInvoke2, anonymousClass12) == coroutine_suspended) {
                                                    return coroutine_suspended;
                                                }
                                                Object obj8 = obj6;
                                                obj3 = tInvoke2;
                                                obj2 = obj8;
                                                observerHandleRegisterApplyObserver = observerHandle;
                                                channelChannel$default = channel;
                                                function1 = function12;
                                                mutableScatterSet = mutableScatterSet2;
                                                r10 = r11;
                                                anonymousClass1 = anonymousClass12;
                                                i2 = 0;
                                            }
                                        } finally {
                                        }
                                    } finally {
                                    }
                                }
                                i = 0;
                                anonymousClass1.L$0 = r10;
                                anonymousClass1.L$1 = mutableScatterSet;
                                anonymousClass1.L$2 = function1;
                                anonymousClass1.L$3 = channelChannel$default;
                                anonymousClass1.L$4 = observerHandleRegisterApplyObserver;
                                anonymousClass1.L$5 = obj3;
                                anonymousClass1.I$0 = 0;
                                anonymousClass1.label = 2;
                                objReceive = channelChannel$default.receive(anonymousClass1);
                                if (objReceive != coroutine_suspended) {
                                }
                            }
                            observerHandleRegisterApplyObserver.dispose();
                            throw th;
                        }
                    } finally {
                        snapshotTakeSnapshot.restoreCurrent(snapshotMakeCurrent);
                    }
                case 1:
                    obj2 = obj;
                    obj3 = this.L$5;
                    observerHandleRegisterApplyObserver = (ObserverHandle) this.L$4;
                    channelChannel$default = (Channel) this.L$3;
                    function1 = (Function1) this.L$2;
                    mutableScatterSet = (MutableScatterSet) this.L$1;
                    FlowCollector flowCollector = (FlowCollector) this.L$0;
                    ResultKt.throwOnFailure(obj2);
                    r10 = flowCollector;
                    anonymousClass1 = this;
                    i = 0;
                    anonymousClass1.L$0 = r10;
                    anonymousClass1.L$1 = mutableScatterSet;
                    anonymousClass1.L$2 = function1;
                    anonymousClass1.L$3 = channelChannel$default;
                    anonymousClass1.L$4 = observerHandleRegisterApplyObserver;
                    anonymousClass1.L$5 = obj3;
                    anonymousClass1.I$0 = 0;
                    anonymousClass1.label = 2;
                    objReceive = channelChannel$default.receive(anonymousClass1);
                    if (objReceive != coroutine_suspended) {
                    }
                    break;
                case 2:
                    obj4 = obj;
                    int i4 = this.I$0;
                    obj5 = this.L$5;
                    observerHandle = (ObserverHandle) this.L$4;
                    channel = (Channel) this.L$3;
                    function12 = (Function1) this.L$2;
                    mutableScatterSet2 = (MutableScatterSet) this.L$1;
                    FlowCollector flowCollector2 = (FlowCollector) this.L$0;
                    try {
                        ResultKt.throwOnFailure(obj4);
                        anonymousClass12 = this;
                        i = i4;
                        obj6 = obj4;
                        r11 = flowCollector2;
                        set = (Set) obj4;
                    } catch (Throwable th5) {
                        th = th5;
                        observerHandleRegisterApplyObserver = observerHandle;
                    }
                    while (true) {
                        i = (i == 0 || SnapshotStateKt__SnapshotFlowKt.intersects$SnapshotStateKt__SnapshotFlowKt(mutableScatterSet2, set)) ? 1 : i2;
                        set = (Set) ChannelResult.m10069getOrNullimpl(channel.mo10057tryReceivePtdJZtk());
                        if (set != null) {
                        }
                        observerHandleRegisterApplyObserver.dispose();
                        throw th;
                        i2 = 0;
                    }
                    break;
                case 3:
                    obj2 = obj;
                    obj3 = this.L$5;
                    observerHandleRegisterApplyObserver = (ObserverHandle) this.L$4;
                    channelChannel$default = (Channel) this.L$3;
                    function1 = (Function1) this.L$2;
                    mutableScatterSet = (MutableScatterSet) this.L$1;
                    FlowCollector flowCollector3 = (FlowCollector) this.L$0;
                    ResultKt.throwOnFailure(obj2);
                    anonymousClass1 = this;
                    r10 = flowCollector3;
                    i2 = 0;
                    i = 0;
                    anonymousClass1.L$0 = r10;
                    anonymousClass1.L$1 = mutableScatterSet;
                    anonymousClass1.L$2 = function1;
                    anonymousClass1.L$3 = channelChannel$default;
                    anonymousClass1.L$4 = observerHandleRegisterApplyObserver;
                    anonymousClass1.L$5 = obj3;
                    anonymousClass1.I$0 = 0;
                    anonymousClass1.label = 2;
                    objReceive = channelChannel$default.receive(anonymousClass1);
                    if (objReceive != coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        static final Unit invokeSuspend$lambda$0(MutableScatterSet $readSet, Object it) {
            if (it instanceof StateObjectImpl) {
                ReaderKind.Companion companion = ReaderKind.INSTANCE;
                ((StateObjectImpl) it).m4159recordReadInh_f27i8$runtime(ReaderKind.m4146constructorimpl(4));
            }
            $readSet.add(it);
            return Unit.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:51:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x008d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0098 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        static final Unit invokeSuspend$lambda$1(Channel $appliedChanges, Set changed, Snapshot snapshot) {
            boolean maybeObserved;
            Object $this$fastAny$iv;
            int $i$f$fastAny;
            Object it;
            int $i$f$fastAny2;
            int i;
            boolean z;
            Object $this$fastAny$iv2 = changed;
            int $i$f$fastAny3 = 0;
            if ($this$fastAny$iv2 instanceof ScatterSetWrapper) {
                ScatterSet<T> set$runtime = ((ScatterSetWrapper) $this$fastAny$iv2).getSet$runtime();
                int $i$f$any = 0;
                Object[] elements$iv$iv$iv = set$runtime.elements;
                long[] m$iv$iv$iv$iv = set$runtime.metadata;
                int lastIndex$iv$iv$iv$iv = m$iv$iv$iv$iv.length - 2;
                int i$iv$iv$iv$iv = 0;
                if (0 <= lastIndex$iv$iv$iv$iv) {
                    loop0: while (true) {
                        long slot$iv$iv$iv$iv = m$iv$iv$iv$iv[i$iv$iv$iv$iv];
                        int $i$f$any2 = $i$f$any;
                        long $this$maskEmptyOrDeleted$iv$iv$iv$iv$iv = ((~slot$iv$iv$iv$iv) << 7) & slot$iv$iv$iv$iv & (-9187201950435737472L);
                        if ($this$maskEmptyOrDeleted$iv$iv$iv$iv$iv != -9187201950435737472L) {
                            int i2 = 8;
                            int bitCount$iv$iv$iv$iv = 8 - ((~(i$iv$iv$iv$iv - lastIndex$iv$iv$iv$iv)) >>> 31);
                            int j$iv$iv$iv$iv = 0;
                            while (j$iv$iv$iv$iv < bitCount$iv$iv$iv$iv) {
                                long value$iv$iv$iv$iv$iv = slot$iv$iv$iv$iv & 255;
                                int $i$f$isFull = value$iv$iv$iv$iv$iv < 128 ? 1 : 0;
                                if ($i$f$isFull != 0) {
                                    int index$iv$iv$iv$iv = (i$iv$iv$iv$iv << 3) + j$iv$iv$iv$iv;
                                    Object element$iv$iv = elements$iv$iv$iv[index$iv$iv$iv$iv];
                                    i = i2;
                                    it = $this$fastAny$iv2;
                                    if (element$iv$iv instanceof StateObjectImpl) {
                                        ReaderKind.Companion companion = ReaderKind.INSTANCE;
                                        $i$f$fastAny2 = $i$f$fastAny3;
                                        int $i$f$fastAny4 = ReaderKind.m4146constructorimpl(4);
                                        if (!((StateObjectImpl) element$iv$iv).m4158isReadInh_f27i8$runtime($i$f$fastAny4)) {
                                            z = false;
                                        }
                                        if (!z) {
                                            maybeObserved = true;
                                            break loop0;
                                        }
                                    } else {
                                        $i$f$fastAny2 = $i$f$fastAny3;
                                    }
                                    z = true;
                                    if (!z) {
                                    }
                                } else {
                                    it = $this$fastAny$iv2;
                                    $i$f$fastAny2 = $i$f$fastAny3;
                                    i = i2;
                                }
                                slot$iv$iv$iv$iv >>= i;
                                j$iv$iv$iv$iv++;
                                $this$fastAny$iv2 = it;
                                i2 = i;
                                $i$f$fastAny3 = $i$f$fastAny2;
                            }
                            $this$fastAny$iv = $this$fastAny$iv2;
                            $i$f$fastAny = $i$f$fastAny3;
                            if (bitCount$iv$iv$iv$iv != i2) {
                                break;
                            }
                        } else {
                            $this$fastAny$iv = $this$fastAny$iv2;
                            $i$f$fastAny = $i$f$fastAny3;
                        }
                        if (i$iv$iv$iv$iv == lastIndex$iv$iv$iv$iv) {
                            break;
                        }
                        i$iv$iv$iv$iv++;
                        $i$f$any = $i$f$any2;
                        $this$fastAny$iv2 = $this$fastAny$iv;
                        $i$f$fastAny3 = $i$f$fastAny;
                    }
                }
                maybeObserved = false;
            } else {
                Iterable $this$any$iv$iv = (Iterable) $this$fastAny$iv2;
                if (!($this$any$iv$iv instanceof Collection) || !((Collection) $this$any$iv$iv).isEmpty()) {
                    Iterator<T> it2 = $this$any$iv$iv.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            maybeObserved = false;
                            break;
                        }
                        Object element$iv$iv2 = it2.next();
                        if (element$iv$iv2 instanceof StateObjectImpl) {
                            ReaderKind.Companion companion2 = ReaderKind.INSTANCE;
                            boolean z2 = ((StateObjectImpl) element$iv$iv2).m4158isReadInh_f27i8$runtime(ReaderKind.m4146constructorimpl(4));
                            if (z2) {
                                maybeObserved = true;
                                break;
                            }
                        }
                    }
                } else {
                    maybeObserved = false;
                }
            }
            if (maybeObserved) {
                $appliedChanges.mo10050trySendJP2dKIU(changed);
            }
            return Unit.INSTANCE;
        }
    }

    public static final <T> Flow<T> snapshotFlow(Function0<? extends T> function0) {
        return FlowKt.flow(new AnonymousClass1(function0, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean intersects$SnapshotStateKt__SnapshotFlowKt(MutableScatterSet<Object> mutableScatterSet, Set<? extends Object> set) {
        ScatterSet this_$iv;
        ScatterSet this_$iv2;
        int i;
        MutableScatterSet<Object> this_$iv3 = mutableScatterSet;
        Object[] elements$iv$iv = this_$iv3.elements;
        long[] m$iv$iv$iv = this_$iv3.metadata;
        int lastIndex$iv$iv$iv = m$iv$iv$iv.length - 2;
        int i$iv$iv$iv = 0;
        if (0 <= lastIndex$iv$iv$iv) {
            while (true) {
                long slot$iv$iv$iv = m$iv$iv$iv[i$iv$iv$iv];
                long slot$iv$iv$iv2 = slot$iv$iv$iv;
                if ((((~slot$iv$iv$iv) << 7) & slot$iv$iv$iv & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8;
                    int bitCount$iv$iv$iv = 8 - ((~(i$iv$iv$iv - lastIndex$iv$iv$iv)) >>> 31);
                    int j$iv$iv$iv = 0;
                    while (j$iv$iv$iv < bitCount$iv$iv$iv) {
                        long value$iv$iv$iv$iv = slot$iv$iv$iv2 & 255;
                        if (!(value$iv$iv$iv$iv < 128)) {
                            this_$iv2 = this_$iv3;
                            i = i2;
                        } else {
                            int index$iv$iv$iv = (i$iv$iv$iv << 3) + j$iv$iv$iv;
                            Object element$iv = elements$iv$iv[index$iv$iv$iv];
                            this_$iv2 = this_$iv3;
                            i = i2;
                            if (set.contains(element$iv)) {
                                return true;
                            }
                        }
                        slot$iv$iv$iv2 >>= i;
                        j$iv$iv$iv++;
                        this_$iv3 = this_$iv2;
                        i2 = i;
                    }
                    this_$iv = this_$iv3;
                    if (bitCount$iv$iv$iv != i2) {
                        break;
                    }
                } else {
                    this_$iv = this_$iv3;
                }
                if (i$iv$iv$iv == lastIndex$iv$iv$iv) {
                    break;
                }
                i$iv$iv$iv++;
                this_$iv3 = this_$iv;
            }
        }
        return false;
    }
}
