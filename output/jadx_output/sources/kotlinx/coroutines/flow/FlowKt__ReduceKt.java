package kotlinx.coroutines.flow;

import androidx.autofill.HintConstants;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
import com.google.firebase.firestore.model.Values;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: compiled from: Reduce.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000.\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u001ap\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\b\b\u0001\u0010\u0002*\u0002H\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00032F\u0010\u0004\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005H\u0086@¢\u0006\u0002\u0010\f\u001av\u0010\r\u001a\u0002H\u000e\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u000f\u001a\u0002H\u000e2H\b\u0004\u0010\u0004\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u000e¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005H\u0086H¢\u0006\u0002\u0010\u0011\u001a\u001e\u0010\u0012\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@¢\u0006\u0002\u0010\u0013\u001a \u0010\u0014\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@¢\u0006\u0002\u0010\u0013\u001a\u001e\u0010\u0015\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@¢\u0006\u0002\u0010\u0013\u001aB\u0010\u0015\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0017H\u0086@¢\u0006\u0002\u0010\u0019\u001a \u0010\u001a\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@¢\u0006\u0002\u0010\u0013\u001aD\u0010\u001a\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0017H\u0086@¢\u0006\u0002\u0010\u0019\u001a\u001e\u0010\u001b\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@¢\u0006\u0002\u0010\u0013\u001a \u0010\u001c\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@¢\u0006\u0002\u0010\u0013¨\u0006\u001d"}, d2 = {"reduce", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/Flow;", "operation", "Lkotlin/Function3;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "accumulator", Values.VECTOR_MAP_VECTORS_KEY, "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fold", "R", "initial", "acc", "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "single", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "singleOrNull", "first", "predicate", "Lkotlin/Function2;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "firstOrNull", "last", "lastOrNull", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
final /* synthetic */ class FlowKt__ReduceKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1, reason: invalid class name */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "first", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.first(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3, reason: invalid class name */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "first", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class AnonymousClass3<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.first(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class C07701<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07701(Continuation<? super C07701> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.firstOrNull(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class C07713<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07713(Continuation<? super C07713> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.firstOrNull(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {40}, m = "fold", n = {"accumulator"}, s = {"L$0"})
    static final class C07721<T, R> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C07721(Continuation<? super C07721> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ReduceKt.fold(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$last$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {151}, m = "last", n = {"result"}, s = {"L$0"})
    static final class C07731<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C07731(Continuation<? super C07731> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.last(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$lastOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {163}, m = "lastOrNull", n = {"result"}, s = {"L$0"})
    static final class C07751<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C07751(Continuation<? super C07751> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.lastOrNull(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {18}, m = "reduce", n = {"accumulator"}, s = {"L$0"})
    static final class C07771<S, T extends S> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C07771(Continuation<? super C07771> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.reduce(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$single$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {FirestoreIndexValueWriter.INDEX_TYPE_VECTOR}, m = "single", n = {"result"}, s = {"L$0"})
    static final class C07791<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C07791(Continuation<? super C07791> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.single(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "singleOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class C07811<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07811(Continuation<? super C07811> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.singleOrNull(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r4v0, types: [T, kotlinx.coroutines.internal.Symbol] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <S, T extends S> Object reduce(Flow<? extends T> flow, Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, Continuation<? super S> continuation) {
        C07771 c07771;
        Ref.ObjectRef accumulator;
        if (continuation instanceof C07771) {
            c07771 = (C07771) continuation;
            if ((c07771.label & Integer.MIN_VALUE) != 0) {
                c07771.label -= Integer.MIN_VALUE;
            } else {
                c07771 = new C07771(continuation);
            }
        }
        Object $result = c07771.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07771.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.ObjectRef accumulator2 = new Ref.ObjectRef();
                accumulator2.element = NullSurrogateKt.NULL;
                FlowCollector<? super Object> c07782 = new C07782<>(accumulator2, function3);
                c07771.L$0 = accumulator2;
                c07771.label = 1;
                if (flow.collect(c07782, c07771) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                accumulator = accumulator2;
                break;
                break;
            case 1:
                accumulator = (Ref.ObjectRef) c07771.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (accumulator.element == NullSurrogateKt.NULL) {
            throw new NoSuchElementException("Empty flow can't be reduced");
        }
        return accumulator.element;
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C07782<T> implements FlowCollector {
        final /* synthetic */ Ref.ObjectRef<Object> $accumulator;
        final /* synthetic */ Function3<S, T, Continuation<? super S>, Object> $operation;

        /* JADX WARN: Multi-variable type inference failed */
        C07782(Ref.ObjectRef<Object> objectRef, Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3) {
            this.$accumulator = objectRef;
            this.$operation = function3;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
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
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t, Continuation<? super Unit> continuation) {
            FlowKt__ReduceKt$reduce$2$emit$1 flowKt__ReduceKt$reduce$2$emit$1;
            Ref.ObjectRef<Object> objectRef;
            Object obj;
            Ref.ObjectRef<Object> objectRef2;
            if (continuation instanceof FlowKt__ReduceKt$reduce$2$emit$1) {
                flowKt__ReduceKt$reduce$2$emit$1 = (FlowKt__ReduceKt$reduce$2$emit$1) continuation;
                if ((flowKt__ReduceKt$reduce$2$emit$1.label & Integer.MIN_VALUE) != 0) {
                    flowKt__ReduceKt$reduce$2$emit$1.label -= Integer.MIN_VALUE;
                } else {
                    flowKt__ReduceKt$reduce$2$emit$1 = new FlowKt__ReduceKt$reduce$2$emit$1(this, continuation);
                }
            }
            Object obj2 = flowKt__ReduceKt$reduce$2$emit$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (flowKt__ReduceKt$reduce$2$emit$1.label) {
                case 0:
                    ResultKt.throwOnFailure(obj2);
                    objectRef = this.$accumulator;
                    if (this.$accumulator.element != NullSurrogateKt.NULL) {
                        Function3<S, T, Continuation<? super S>, Object> function3 = this.$operation;
                        Object obj3 = this.$accumulator.element;
                        flowKt__ReduceKt$reduce$2$emit$1.L$0 = objectRef;
                        flowKt__ReduceKt$reduce$2$emit$1.label = 1;
                        Object objInvoke = function3.invoke((S) obj3, t, flowKt__ReduceKt$reduce$2$emit$1);
                        if (objInvoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj = objInvoke;
                        objectRef2 = objectRef;
                        objectRef = objectRef2;
                        t = (T) obj;
                    }
                    objectRef.element = t;
                    return Unit.INSTANCE;
                case 1:
                    objectRef2 = (Ref.ObjectRef) flowKt__ReduceKt$reduce$2$emit$1.L$0;
                    ResultKt.throwOnFailure(obj2);
                    obj = obj2;
                    objectRef = objectRef2;
                    t = (T) obj;
                    objectRef.element = t;
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T, R> Object fold(Flow<? extends T> flow, R r, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) {
        C07721 c07721;
        Ref.ObjectRef accumulator;
        if (continuation instanceof C07721) {
            c07721 = (C07721) continuation;
            if ((c07721.label & Integer.MIN_VALUE) != 0) {
                c07721.label -= Integer.MIN_VALUE;
            } else {
                c07721 = new C07721(continuation);
            }
        }
        Object $result = c07721.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07721.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.ObjectRef accumulator2 = new Ref.ObjectRef();
                accumulator2.element = r;
                FlowCollector<? super Object> anonymousClass2 = new AnonymousClass2<>(accumulator2, function3);
                c07721.L$0 = accumulator2;
                c07721.label = 1;
                if (flow.collect(anonymousClass2, c07721) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                accumulator = accumulator2;
                break;
            case 1:
                accumulator = (Ref.ObjectRef) c07721.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return accumulator.element;
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2, reason: invalid class name */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
    public static final class AnonymousClass2<T> implements FlowCollector {
        final /* synthetic */ Ref.ObjectRef<R> $accumulator;
        final /* synthetic */ Function3<R, T, Continuation<? super R>, Object> $operation;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Ref.ObjectRef<R> objectRef, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
            this.$accumulator = objectRef;
            this.$operation = function3;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t, Continuation<? super Unit> continuation) {
            FlowKt__ReduceKt$fold$2$emit$1 flowKt__ReduceKt$fold$2$emit$1;
            T t2;
            Ref.ObjectRef objectRef;
            if (continuation instanceof FlowKt__ReduceKt$fold$2$emit$1) {
                flowKt__ReduceKt$fold$2$emit$1 = (FlowKt__ReduceKt$fold$2$emit$1) continuation;
                if ((flowKt__ReduceKt$fold$2$emit$1.label & Integer.MIN_VALUE) != 0) {
                    flowKt__ReduceKt$fold$2$emit$1.label -= Integer.MIN_VALUE;
                } else {
                    flowKt__ReduceKt$fold$2$emit$1 = new FlowKt__ReduceKt$fold$2$emit$1(this, continuation);
                }
            }
            Object obj = flowKt__ReduceKt$fold$2$emit$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (flowKt__ReduceKt$fold$2$emit$1.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = this.$accumulator;
                    Function3<R, T, Continuation<? super R>, Object> function3 = this.$operation;
                    T t3 = this.$accumulator.element;
                    flowKt__ReduceKt$fold$2$emit$1.L$0 = objectRef2;
                    flowKt__ReduceKt$fold$2$emit$1.label = 1;
                    Object objInvoke = function3.invoke((R) t3, t, flowKt__ReduceKt$fold$2$emit$1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    t2 = (T) objInvoke;
                    objectRef = objectRef2;
                    break;
                    break;
                case 1:
                    objectRef = (Ref.ObjectRef) flowKt__ReduceKt$fold$2$emit$1.L$0;
                    ResultKt.throwOnFailure(obj);
                    t2 = (T) obj;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef.element = t2;
            return Unit.INSTANCE;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final Object emit$$forInline(T t, Continuation<? super Unit> continuation) {
            new FlowKt__ReduceKt$fold$2$emit$1(this, continuation);
            this.$accumulator.element = (T) this.$operation.invoke((R) this.$accumulator.element, t, (Continuation<? super R>) continuation);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T, R> Object fold$$forInline(Flow<? extends T> flow, R r, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) {
        Ref.ObjectRef accumulator = new Ref.ObjectRef();
        accumulator.element = r;
        flow.collect(new AnonymousClass2(accumulator, function3), continuation);
        return accumulator.element;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object single(Flow<? extends T> flow, Continuation<? super T> continuation) {
        C07791 c07791;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C07791) {
            c07791 = (C07791) continuation;
            if ((c07791.label & Integer.MIN_VALUE) != 0) {
                c07791.label -= Integer.MIN_VALUE;
            } else {
                c07791 = new C07791(continuation);
            }
        }
        Object obj = c07791.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07791.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                objectRef2.element = (T) NullSurrogateKt.NULL;
                FlowCollector<? super Object> flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt.single.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(T t, Continuation<? super Unit> continuation2) {
                        if (!(objectRef2.element == NullSurrogateKt.NULL)) {
                            throw new IllegalArgumentException("Flow has more than one element".toString());
                        }
                        objectRef2.element = t;
                        return Unit.INSTANCE;
                    }
                };
                c07791.L$0 = objectRef2;
                c07791.label = 1;
                if (flow.collect(flowCollector, c07791) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
                break;
                break;
            case 1:
                objectRef = (Ref.ObjectRef) c07791.L$0;
                ResultKt.throwOnFailure(obj);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (objectRef.element == NullSurrogateKt.NULL) {
            throw new NoSuchElementException("Flow is empty");
        }
        return objectRef.element;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0079 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object singleOrNull(Flow<? extends T> flow, Continuation<? super T> continuation) {
        C07811 c07811;
        final Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowCollector<T> flowCollector;
        if (continuation instanceof C07811) {
            c07811 = (C07811) continuation;
            if ((c07811.label & Integer.MIN_VALUE) != 0) {
                c07811.label -= Integer.MIN_VALUE;
            } else {
                c07811 = new C07811(continuation);
            }
        }
        Object obj = c07811.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07811.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                objectRef = new Ref.ObjectRef();
                objectRef.element = (T) NullSurrogateKt.NULL;
                FlowCollector<T> flowCollector2 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(T t, Continuation<? super Unit> continuation2) {
                        boolean z;
                        T t2 = objectRef.element;
                        Symbol symbol = NullSurrogateKt.NULL;
                        Ref.ObjectRef objectRef2 = objectRef;
                        if (t2 == symbol) {
                            objectRef2.element = t;
                            z = true;
                        } else {
                            objectRef2.element = (T) NullSurrogateKt.NULL;
                            z = false;
                        }
                        if (!z) {
                            throw new AbortFlowException(this);
                        }
                        return Unit.INSTANCE;
                    }
                };
                try {
                    c07811.L$0 = objectRef;
                    c07811.L$1 = flowCollector2;
                    c07811.label = 1;
                    break;
                } catch (AbortFlowException e2) {
                    e = e2;
                    flowCollector = flowCollector2;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                    JobKt.ensureActive(c07811.get$context());
                }
                if (flow.collect(flowCollector2, c07811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (objectRef.element != NullSurrogateKt.NULL) {
                    return null;
                }
                return objectRef.element;
            case 1:
                flowCollector = (FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1) c07811.L$1;
                objectRef = (Ref.ObjectRef) c07811.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (AbortFlowException e3) {
                    e = e3;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                    JobKt.ensureActive(c07811.get$context());
                }
                if (objectRef.element != NullSurrogateKt.NULL) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object first(Flow<? extends T> flow, Continuation<? super T> continuation) {
        AnonymousClass1 anonymousClass1;
        final Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowCollector<T> flowCollector;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                objectRef = new Ref.ObjectRef();
                objectRef.element = (T) NullSurrogateKt.NULL;
                FlowCollector<T> flowCollector2 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(T t, Continuation<? super Unit> continuation2) {
                        objectRef.element = t;
                        throw new AbortFlowException(this);
                    }
                };
                try {
                    anonymousClass1.L$0 = objectRef;
                    anonymousClass1.L$1 = flowCollector2;
                    anonymousClass1.label = 1;
                    break;
                } catch (AbortFlowException e2) {
                    e = e2;
                    flowCollector = flowCollector2;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                    JobKt.ensureActive(anonymousClass1.get$context());
                }
                if (flow.collect(flowCollector2, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (objectRef.element != NullSurrogateKt.NULL) {
                    throw new NoSuchElementException("Expected at least one element");
                }
                return objectRef.element;
            case 1:
                flowCollector = (FlowKt__ReduceKt$first$$inlined$collectWhile$1) anonymousClass1.L$1;
                objectRef = (Ref.ObjectRef) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (AbortFlowException e3) {
                    e = e3;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                    JobKt.ensureActive(anonymousClass1.get$context());
                }
                if (objectRef.element != NullSurrogateKt.NULL) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object first(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) {
        AnonymousClass3 anonymousClass3;
        Ref.ObjectRef objectRef;
        FlowCollector<? super Object> flowCollector;
        AbortFlowException e;
        if (continuation instanceof AnonymousClass3) {
            anonymousClass3 = (AnonymousClass3) continuation;
            if ((anonymousClass3.label & Integer.MIN_VALUE) != 0) {
                anonymousClass3.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass3 = new AnonymousClass3(continuation);
            }
        }
        Object obj = anonymousClass3.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass3.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                objectRef2.element = (T) NullSurrogateKt.NULL;
                FlowCollector<? super Object> flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2<>(function2, objectRef2);
                try {
                    anonymousClass3.L$0 = objectRef2;
                    anonymousClass3.L$1 = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                    anonymousClass3.label = 1;
                    break;
                } catch (AbortFlowException e2) {
                    objectRef = objectRef2;
                    flowCollector = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                    e = e2;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                    JobKt.ensureActive(anonymousClass3.get$context());
                }
                if (flow.collect(flowKt__ReduceKt$first$$inlined$collectWhile$2, anonymousClass3) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
                if (objectRef.element != NullSurrogateKt.NULL) {
                    throw new NoSuchElementException("Expected at least one element matching the predicate");
                }
                return objectRef.element;
            case 1:
                flowCollector = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) anonymousClass3.L$1;
                objectRef = (Ref.ObjectRef) anonymousClass3.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (AbortFlowException e3) {
                    e = e3;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                    JobKt.ensureActive(anonymousClass3.get$context());
                }
                if (objectRef.element != NullSurrogateKt.NULL) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object firstOrNull(Flow<? extends T> flow, Continuation<? super T> continuation) {
        C07701 c07701;
        final Ref.ObjectRef result;
        AbortFlowException e$iv;
        FlowCollector<T> flowCollector;
        if (continuation instanceof C07701) {
            c07701 = (C07701) continuation;
            if ((c07701.label & Integer.MIN_VALUE) != 0) {
                c07701.label -= Integer.MIN_VALUE;
            } else {
                c07701 = new C07701(continuation);
            }
        }
        Object $result = c07701.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07701.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                result = new Ref.ObjectRef();
                FlowCollector<T> flowCollector2 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(T t, Continuation<? super Unit> continuation2) {
                        result.element = t;
                        throw new AbortFlowException(this);
                    }
                };
                try {
                    c07701.L$0 = result;
                    c07701.L$1 = flowCollector2;
                    c07701.label = 1;
                    break;
                } catch (AbortFlowException e) {
                    e$iv = e;
                    flowCollector = flowCollector2;
                    FlowExceptions_commonKt.checkOwnership(e$iv, flowCollector);
                    JobKt.ensureActive(c07701.get$context());
                }
                if (flow.collect(flowCollector2, c07701) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return result.element;
            case 1:
                flowCollector = (FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1) c07701.L$1;
                result = (Ref.ObjectRef) c07701.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    break;
                } catch (AbortFlowException e2) {
                    e$iv = e2;
                    FlowExceptions_commonKt.checkOwnership(e$iv, flowCollector);
                    JobKt.ensureActive(c07701.get$context());
                }
                return result.element;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object firstOrNull(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) {
        C07713 c07713;
        Ref.ObjectRef result;
        FlowCollector<? super Object> collector$iv;
        AbortFlowException e$iv;
        if (continuation instanceof C07713) {
            c07713 = (C07713) continuation;
            if ((c07713.label & Integer.MIN_VALUE) != 0) {
                c07713.label -= Integer.MIN_VALUE;
            } else {
                c07713 = new C07713(continuation);
            }
        }
        Object $result = c07713.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07713.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.ObjectRef result2 = new Ref.ObjectRef();
                FlowCollector<? super Object> collector$iv2 = new FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2<>(function2, result2);
                try {
                    c07713.L$0 = result2;
                    c07713.L$1 = collector$iv2;
                    c07713.label = 1;
                    break;
                } catch (AbortFlowException e) {
                    result = result2;
                    collector$iv = collector$iv2;
                    e$iv = e;
                    FlowExceptions_commonKt.checkOwnership(e$iv, collector$iv);
                    JobKt.ensureActive(c07713.get$context());
                }
                if (flow.collect(collector$iv2, c07713) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                result = result2;
                return result.element;
            case 1:
                collector$iv = (FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2) c07713.L$1;
                result = (Ref.ObjectRef) c07713.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    break;
                } catch (AbortFlowException e2) {
                    e$iv = e2;
                    FlowExceptions_commonKt.checkOwnership(e$iv, collector$iv);
                    JobKt.ensureActive(c07713.get$context());
                }
                return result.element;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object last(Flow<? extends T> flow, Continuation<? super T> continuation) {
        C07731 c07731;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C07731) {
            c07731 = (C07731) continuation;
            if ((c07731.label & Integer.MIN_VALUE) != 0) {
                c07731.label -= Integer.MIN_VALUE;
            } else {
                c07731 = new C07731(continuation);
            }
        }
        Object obj = c07731.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07731.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                objectRef2.element = (T) NullSurrogateKt.NULL;
                FlowCollector<? super Object> flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt.last.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(T t, Continuation<? super Unit> continuation2) {
                        objectRef2.element = t;
                        return Unit.INSTANCE;
                    }
                };
                c07731.L$0 = objectRef2;
                c07731.label = 1;
                if (flow.collect(flowCollector, c07731) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
                break;
                break;
            case 1:
                objectRef = (Ref.ObjectRef) c07731.L$0;
                ResultKt.throwOnFailure(obj);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (objectRef.element == NullSurrogateKt.NULL) {
            throw new NoSuchElementException("Expected at least one element");
        }
        return objectRef.element;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object lastOrNull(Flow<? extends T> flow, Continuation<? super T> continuation) {
        C07751 c07751;
        Ref.ObjectRef result;
        if (continuation instanceof C07751) {
            c07751 = (C07751) continuation;
            if ((c07751.label & Integer.MIN_VALUE) != 0) {
                c07751.label -= Integer.MIN_VALUE;
            } else {
                c07751 = new C07751(continuation);
            }
        }
        Object $result = c07751.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07751.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                final Ref.ObjectRef result2 = new Ref.ObjectRef();
                FlowCollector<? super Object> flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt.lastOrNull.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(T t, Continuation<? super Unit> continuation2) {
                        result2.element = t;
                        return Unit.INSTANCE;
                    }
                };
                c07751.L$0 = result2;
                c07751.label = 1;
                if (flow.collect(flowCollector, c07751) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                result = result2;
                break;
                break;
            case 1:
                result = (Ref.ObjectRef) c07751.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return result.element;
    }
}
