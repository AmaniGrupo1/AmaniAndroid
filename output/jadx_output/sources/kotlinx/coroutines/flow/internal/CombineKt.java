package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.YieldKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: Combine.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u008d\u0001\u0010\u0003\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0005\"\u0004\b\u0001\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0014\u0010\b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00060\n0\t2\u0016\u0010\u000b\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0006\u0018\u00010\t0\f29\u0010\r\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000e¢\u0006\u0002\b\u0010H\u0081@¢\u0006\u0002\u0010\u0011\u001ak\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00050\n\"\u0004\b\u0000\u0010\u0013\"\u0004\b\u0001\u0010\u0014\"\u0004\b\u0002\u0010\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00130\n2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00140\n2(\u0010\r\u001a$\b\u0001\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000eH\u0000¢\u0006\u0002\u0010\u0017*\u001c\b\u0002\u0010\u0000\"\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0018"}, d2 = {"Update", "Lkotlin/collections/IndexedValue;", "", "combineInternal", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "flows", "", "Lkotlinx/coroutines/flow/Flow;", "arrayFactory", "Lkotlin/Function0;", "transform", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "zipImpl", "T1", "T2", "flow", "flow2", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CombineKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2, reason: invalid class name */
    /* JADX INFO: compiled from: Combine.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {51, 73, 76}, m = "invokeSuspend", n = {"latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<T[]> $arrayFactory;
        final /* synthetic */ Flow<T>[] $flows;
        final /* synthetic */ FlowCollector<R> $this_combineInternal;
        final /* synthetic */ Function3<FlowCollector<? super R>, T[], Continuation<? super Unit>, Object> $transform;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Flow<? extends T>[] flowArr, Function0<T[]> function0, Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, FlowCollector<? super R> flowCollector, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$flows = flowArr;
            this.$arrayFactory = function0;
            this.$transform = function3;
            this.$this_combineInternal = flowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$flows, this.$arrayFactory, this.$transform, this.$this_combineInternal, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x00d7 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00e4 A[LOOP:0: B:25:0x00e4->B:50:?, LOOP_START, PHI: r5 r8
          0x00e4: PHI (r5v12 'remainingAbsentValues' int) = (r5v11 'remainingAbsentValues' int), (r5v13 'remainingAbsentValues' int) binds: [B:22:0x00df, B:50:?] A[DONT_GENERATE, DONT_INLINE]
          0x00e4: PHI (r8v8 'element' kotlin.collections.IndexedValue) = (r8v7 'element' kotlin.collections.IndexedValue), (r8v20 'element' kotlin.collections.IndexedValue) binds: [B:22:0x00df, B:50:?] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x010e  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0156  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0130 -> B:17:0x00bd). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0153 -> B:17:0x00bd). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0156 -> B:17:0x00bd). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object[] latestValues;
            Channel resultChannel;
            byte[] lastReceivedEpoch;
            int remainingAbsentValues;
            AnonymousClass2 anonymousClass2;
            int remainingAbsentValues2;
            Object[] latestValues2;
            Object holder;
            IndexedValue element;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CoroutineScope $this$flowScope = (CoroutineScope) this.L$0;
                    int size = this.$flows.length;
                    if (size == 0) {
                        return Unit.INSTANCE;
                    }
                    Object[] latestValues3 = new Object[size];
                    ArraysKt.fill$default(latestValues3, NullSurrogateKt.UNINITIALIZED, 0, 0, 6, (Object) null);
                    latestValues = latestValues3;
                    resultChannel = ChannelKt.Channel$default(size, null, null, 6, null);
                    AtomicInteger nonClosed = new AtomicInteger(size);
                    for (int i = 0; i < size; i++) {
                        BuildersKt__Builders_commonKt.launch$default($this$flowScope, null, null, new AnonymousClass1(this.$flows, i, nonClosed, resultChannel, null), 3, null);
                    }
                    lastReceivedEpoch = new byte[size];
                    remainingAbsentValues = 0;
                    anonymousClass2 = this;
                    remainingAbsentValues2 = size;
                    remainingAbsentValues = (byte) (remainingAbsentValues + 1);
                    anonymousClass2.L$0 = latestValues;
                    anonymousClass2.L$1 = resultChannel;
                    anonymousClass2.L$2 = lastReceivedEpoch;
                    anonymousClass2.I$0 = remainingAbsentValues2;
                    anonymousClass2.I$1 = remainingAbsentValues;
                    anonymousClass2.label = 1;
                    holder = resultChannel.mo10056receiveCatchingJP2dKIU(anonymousClass2);
                    if (holder == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    latestValues2 = latestValues;
                    element = (IndexedValue) ChannelResult.m10069getOrNullimpl(holder);
                    if (element != null) {
                        return Unit.INSTANCE;
                    }
                    do {
                        int index = element.getIndex();
                        Object previous = latestValues2[index];
                        latestValues2[index] = element.getValue();
                        if (previous == NullSurrogateKt.UNINITIALIZED) {
                            remainingAbsentValues2--;
                        }
                        if (lastReceivedEpoch[index] != remainingAbsentValues) {
                            lastReceivedEpoch[index] = (byte) remainingAbsentValues;
                            element = (IndexedValue) ChannelResult.m10069getOrNullimpl(resultChannel.mo10057tryReceivePtdJZtk());
                        }
                        if (remainingAbsentValues2 != 0) {
                            latestValues = latestValues2;
                        } else {
                            Object[] results = (Object[]) anonymousClass2.$arrayFactory.invoke();
                            if (results == null) {
                                Function3<FlowCollector<? super R>, T[], Continuation<? super Unit>, Object> function3 = anonymousClass2.$transform;
                                Object obj = anonymousClass2.$this_combineInternal;
                                anonymousClass2.L$0 = latestValues2;
                                anonymousClass2.L$1 = resultChannel;
                                anonymousClass2.L$2 = lastReceivedEpoch;
                                anonymousClass2.I$0 = remainingAbsentValues2;
                                anonymousClass2.I$1 = remainingAbsentValues;
                                anonymousClass2.label = 2;
                                if (function3.invoke(obj, latestValues2, anonymousClass2) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                latestValues = latestValues2;
                            } else {
                                ArraysKt.copyInto$default(latestValues2, results, 0, 0, 0, 14, (Object) null);
                                Function3<FlowCollector<? super R>, T[], Continuation<? super Unit>, Object> function32 = anonymousClass2.$transform;
                                Object obj2 = anonymousClass2.$this_combineInternal;
                                anonymousClass2.L$0 = latestValues2;
                                anonymousClass2.L$1 = resultChannel;
                                anonymousClass2.L$2 = lastReceivedEpoch;
                                anonymousClass2.I$0 = remainingAbsentValues2;
                                anonymousClass2.I$1 = remainingAbsentValues;
                                anonymousClass2.label = 3;
                                if (function32.invoke(obj2, results, anonymousClass2) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                latestValues = latestValues2;
                            }
                        }
                        remainingAbsentValues = (byte) (remainingAbsentValues + 1);
                        anonymousClass2.L$0 = latestValues;
                        anonymousClass2.L$1 = resultChannel;
                        anonymousClass2.L$2 = lastReceivedEpoch;
                        anonymousClass2.I$0 = remainingAbsentValues2;
                        anonymousClass2.I$1 = remainingAbsentValues;
                        anonymousClass2.label = 1;
                        holder = resultChannel.mo10056receiveCatchingJP2dKIU(anonymousClass2);
                        if (holder == coroutine_suspended) {
                        }
                    } while (element != null);
                    if (remainingAbsentValues2 != 0) {
                    }
                    remainingAbsentValues = (byte) (remainingAbsentValues + 1);
                    anonymousClass2.L$0 = latestValues;
                    anonymousClass2.L$1 = resultChannel;
                    anonymousClass2.L$2 = lastReceivedEpoch;
                    anonymousClass2.I$0 = remainingAbsentValues2;
                    anonymousClass2.I$1 = remainingAbsentValues;
                    anonymousClass2.label = 1;
                    holder = resultChannel.mo10056receiveCatchingJP2dKIU(anonymousClass2);
                    if (holder == coroutine_suspended) {
                    }
                    break;
                case 1:
                    int i2 = this.I$1;
                    int remainingAbsentValues3 = this.I$0;
                    byte[] lastReceivedEpoch2 = (byte[]) this.L$2;
                    Channel resultChannel2 = (Channel) this.L$1;
                    latestValues2 = (Object[]) this.L$0;
                    ResultKt.throwOnFailure($result);
                    holder = ((ChannelResult) $result).getHolder();
                    remainingAbsentValues = i2;
                    lastReceivedEpoch = lastReceivedEpoch2;
                    remainingAbsentValues2 = remainingAbsentValues3;
                    resultChannel = resultChannel2;
                    anonymousClass2 = this;
                    element = (IndexedValue) ChannelResult.m10069getOrNullimpl(holder);
                    if (element != null) {
                    }
                    break;
                case 2:
                    int i3 = this.I$1;
                    int remainingAbsentValues4 = this.I$0;
                    byte[] lastReceivedEpoch3 = (byte[]) this.L$2;
                    Channel resultChannel3 = (Channel) this.L$1;
                    Object[] latestValues4 = (Object[]) this.L$0;
                    ResultKt.throwOnFailure($result);
                    remainingAbsentValues = i3;
                    lastReceivedEpoch = lastReceivedEpoch3;
                    remainingAbsentValues2 = remainingAbsentValues4;
                    resultChannel = resultChannel3;
                    anonymousClass2 = this;
                    latestValues = latestValues4;
                    remainingAbsentValues = (byte) (remainingAbsentValues + 1);
                    anonymousClass2.L$0 = latestValues;
                    anonymousClass2.L$1 = resultChannel;
                    anonymousClass2.L$2 = lastReceivedEpoch;
                    anonymousClass2.I$0 = remainingAbsentValues2;
                    anonymousClass2.I$1 = remainingAbsentValues;
                    anonymousClass2.label = 1;
                    holder = resultChannel.mo10056receiveCatchingJP2dKIU(anonymousClass2);
                    if (holder == coroutine_suspended) {
                    }
                    break;
                case 3:
                    int i4 = this.I$1;
                    int remainingAbsentValues5 = this.I$0;
                    byte[] lastReceivedEpoch4 = (byte[]) this.L$2;
                    Channel resultChannel4 = (Channel) this.L$1;
                    Object[] latestValues5 = (Object[]) this.L$0;
                    ResultKt.throwOnFailure($result);
                    remainingAbsentValues = i4;
                    lastReceivedEpoch = lastReceivedEpoch4;
                    remainingAbsentValues2 = remainingAbsentValues5;
                    resultChannel = resultChannel4;
                    anonymousClass2 = this;
                    latestValues = latestValues5;
                    remainingAbsentValues = (byte) (remainingAbsentValues + 1);
                    anonymousClass2.L$0 = latestValues;
                    anonymousClass2.L$1 = resultChannel;
                    anonymousClass2.L$2 = lastReceivedEpoch;
                    anonymousClass2.I$0 = remainingAbsentValues2;
                    anonymousClass2.I$1 = remainingAbsentValues;
                    anonymousClass2.label = 1;
                    holder = resultChannel.mo10056receiveCatchingJP2dKIU(anonymousClass2);
                    if (holder == coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: Combine.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Flow<T>[] $flows;
            final /* synthetic */ int $i;
            final /* synthetic */ AtomicInteger $nonClosed;
            final /* synthetic */ Channel<IndexedValue<Object>> $resultChannel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(Flow<? extends T>[] flowArr, int i, AtomicInteger atomicInteger, Channel<IndexedValue<Object>> channel, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$flows = flowArr;
                this.$i = i;
                this.$nonClosed = atomicInteger;
                this.$resultChannel = channel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$flows, this.$i, this.$nonClosed, this.$resultChannel, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                AtomicInteger atomicInteger;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                try {
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            if (this.$flows[this.$i].collect(new C01811(this.$resultChannel, this.$i), this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    if (atomicInteger.decrementAndGet() == 0) {
                        SendChannel.DefaultImpls.close$default(this.$resultChannel, null, 1, null);
                    }
                    return Unit.INSTANCE;
                } finally {
                    if (this.$nonClosed.decrementAndGet() == 0) {
                        SendChannel.DefaultImpls.close$default(this.$resultChannel, null, 1, null);
                    }
                }
            }

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: Combine.kt */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            static final class C01811<T> implements FlowCollector {
                final /* synthetic */ int $i;
                final /* synthetic */ Channel<IndexedValue<Object>> $resultChannel;

                C01811(Channel<IndexedValue<Object>> channel, int i) {
                    this.$resultChannel = channel;
                    this.$i = i;
                }

                /* JADX WARN: Removed duplicated region for block: B:19:0x0054 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T t, Continuation<? super Unit> continuation) {
                    CombineKt$combineInternal$2$1$1$emit$1 combineKt$combineInternal$2$1$1$emit$1;
                    if (continuation instanceof CombineKt$combineInternal$2$1$1$emit$1) {
                        combineKt$combineInternal$2$1$1$emit$1 = (CombineKt$combineInternal$2$1$1$emit$1) continuation;
                        if ((combineKt$combineInternal$2$1$1$emit$1.label & Integer.MIN_VALUE) != 0) {
                            combineKt$combineInternal$2$1$1$emit$1.label -= Integer.MIN_VALUE;
                        } else {
                            combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, continuation);
                        }
                    }
                    Object $result = combineKt$combineInternal$2$1$1$emit$1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (combineKt$combineInternal$2$1$1$emit$1.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            Channel<IndexedValue<Object>> channel = this.$resultChannel;
                            IndexedValue<Object> indexedValue = new IndexedValue<>(this.$i, t);
                            combineKt$combineInternal$2$1$1$emit$1.label = 1;
                            Object value = channel.send(indexedValue, combineKt$combineInternal$2$1$1$emit$1);
                            if (value == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            combineKt$combineInternal$2$1$1$emit$1.label = 2;
                            if (YieldKt.yield(combineKt$combineInternal$2$1$1$emit$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            combineKt$combineInternal$2$1$1$emit$1.label = 2;
                            if (YieldKt.yield(combineKt$combineInternal$2$1$1$emit$1) == coroutine_suspended) {
                            }
                            return Unit.INSTANCE;
                        case 2:
                            ResultKt.throwOnFailure($result);
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }
        }
    }

    public static final <R, T> Object combineInternal(FlowCollector<? super R> flowCollector, Flow<? extends T>[] flowArr, Function0<T[]> function0, Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        Object objFlowScope = FlowCoroutineKt.flowScope(new AnonymousClass2(flowArr, function0, function3, flowCollector, null), continuation);
        return objFlowScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlowScope : Unit.INSTANCE;
    }

    public static final <T1, T2, R> Flow<R> zipImpl(final Flow<? extends T1> flow, final Flow<? extends T2> flow2, final Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return new Flow<R>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super R> flowCollector, Continuation<? super Unit> continuation) {
                Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new CombineKt$zipImpl$1$1(flow2, flow, flowCollector, function3, null), continuation);
                return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
            }
        };
    }
}
