package kotlin.collections;

import androidx.core.view.MotionEventCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: SlidingWindow.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\u0080\u0004\u001aF\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u0006\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0080\u0080\u0004\u001aJ\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\r\"\u0004\b\u0000\u0010\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\b0\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0080\u0080\u0004¨\u0006\u000f"}, d2 = {"checkWindowSizeStep", "", "size", "", "step", "windowedSequence", "Lkotlin/sequences/Sequence;", "", ExifInterface.GPS_DIRECTION_TRUE, "partialWindows", "", "reuseBuffer", "windowedIterator", "", "iterator", "kotlin-stdlib"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SlidingWindowKt {
    public static final void checkWindowSizeStep(int size, int step) {
        if (!(size > 0 && step > 0)) {
            throw new IllegalArgumentException((size != step ? "Both size " + size + " and step " + step + " must be greater than zero." : "size " + size + " must be greater than zero.").toString());
        }
    }

    public static final <T> Sequence<List<T>> windowedSequence(final Sequence<? extends T> sequence, final int i, final int i2, final boolean z, final boolean z2) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        checkWindowSizeStep(i, i2);
        return new Sequence<List<? extends T>>() { // from class: kotlin.collections.SlidingWindowKt$windowedSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<List<? extends T>> iterator() {
                return SlidingWindowKt.windowedIterator(sequence.iterator(), i, i2, z, z2);
            }
        };
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlin.collections.SlidingWindowKt$windowedIterator$1, reason: invalid class name */
    /* JADX INFO: compiled from: SlidingWindow.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", f = "SlidingWindow.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4}, l = {34, 40, 49, FirestoreIndexValueWriter.INDEX_TYPE_MAP, 58}, m = "invokeSuspend", n = {"$this$iterator", "buffer", "e", "bufferInitialCapacity", "gap", "skip", "$this$iterator", "buffer", "bufferInitialCapacity", "gap", "skip", "$this$iterator", "buffer", "e", "bufferInitialCapacity", "gap", "$this$iterator", "buffer", "bufferInitialCapacity", "gap", "$this$iterator", "buffer", "bufferInitialCapacity", "gap"}, nl = {35, MotionEventCompat.AXIS_GENERIC_12, 50, 56, 61}, s = {"L$0", "L$1", "L$3", "I$0", "I$1", "I$2", "L$0", "L$1", "I$0", "I$1", "I$2", "L$0", "L$1", "L$3", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"}, v = 2)
    static final class AnonymousClass1<T> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super List<? extends T>>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Iterator<T> $iterator;
        final /* synthetic */ boolean $partialWindows;
        final /* synthetic */ boolean $reuseBuffer;
        final /* synthetic */ int $size;
        final /* synthetic */ int $step;
        int I$0;
        int I$1;
        int I$2;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(int i, int i2, Iterator<? extends T> it, boolean z, boolean z2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$size = i;
            this.$step = i2;
            this.$iterator = it;
            this.$reuseBuffer = z;
            this.$partialWindows = z2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$size, this.$step, this.$iterator, this.$reuseBuffer, this.$partialWindows, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super List<? extends T>> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x011d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0137  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x018c  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0197  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x01c8  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01fa  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00ca -> B:25:0x00d0). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x017f -> B:56:0x0182). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x01bf -> B:69:0x01c2). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            int gap;
            Iterator<T> it;
            int bufferInitialCapacity;
            int gap2;
            AnonymousClass1<T> anonymousClass1;
            RingBuffer buffer;
            Iterator<T> it2;
            Object obj;
            int skip;
            ArrayList buffer2;
            int bufferInitialCapacity2;
            AnonymousClass1<T> anonymousClass12;
            int gap3;
            int bufferInitialCapacity3;
            ArrayList buffer3;
            Object obj2;
            int gap4;
            int bufferInitialCapacity4;
            SequenceScope sequenceScope = (SequenceScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    int bufferInitialCapacity5 = RangesKt.coerceAtMost(this.$size, 1024);
                    gap = this.$step - this.$size;
                    if (gap >= 0) {
                        ArrayList buffer4 = new ArrayList(bufferInitialCapacity5);
                        it2 = this.$iterator;
                        obj = coroutine_suspended;
                        skip = 0;
                        buffer2 = buffer4;
                        bufferInitialCapacity2 = bufferInitialCapacity5;
                        anonymousClass12 = this;
                        while (it2.hasNext()) {
                            T next = it2.next();
                            if (skip > 0) {
                                skip--;
                            } else {
                                buffer2.add(next);
                                if (buffer2.size() == anonymousClass12.$size) {
                                    anonymousClass12.L$0 = sequenceScope;
                                    anonymousClass12.L$1 = buffer2;
                                    anonymousClass12.L$2 = it2;
                                    anonymousClass12.L$3 = SpillingKt.nullOutSpilledVariable(next);
                                    anonymousClass12.I$0 = bufferInitialCapacity2;
                                    anonymousClass12.I$1 = gap;
                                    anonymousClass12.I$2 = skip;
                                    anonymousClass12.label = 1;
                                    if (sequenceScope.yield(buffer2, anonymousClass12) == obj) {
                                        return obj;
                                    }
                                    coroutine_suspended = obj;
                                    buffer3 = buffer2;
                                    if (anonymousClass12.$reuseBuffer) {
                                        buffer3 = new ArrayList(anonymousClass12.$size);
                                    } else {
                                        buffer3.clear();
                                    }
                                    int skip2 = gap;
                                    obj = coroutine_suspended;
                                    skip = skip2;
                                    buffer2 = buffer3;
                                    while (it2.hasNext()) {
                                    }
                                }
                            }
                        }
                        if (!buffer2.isEmpty() && (anonymousClass12.$partialWindows || buffer2.size() == anonymousClass12.$size)) {
                            anonymousClass12.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                            anonymousClass12.L$1 = SpillingKt.nullOutSpilledVariable(buffer2);
                            anonymousClass12.L$2 = null;
                            anonymousClass12.L$3 = null;
                            anonymousClass12.I$0 = bufferInitialCapacity2;
                            anonymousClass12.I$1 = gap;
                            anonymousClass12.I$2 = skip;
                            anonymousClass12.label = 2;
                            if (sequenceScope.yield(buffer2, anonymousClass12) != obj) {
                                return obj;
                            }
                            gap3 = gap;
                            bufferInitialCapacity3 = bufferInitialCapacity2;
                        }
                        return Unit.INSTANCE;
                    }
                    RingBuffer buffer5 = new RingBuffer(bufferInitialCapacity5);
                    it = this.$iterator;
                    bufferInitialCapacity = bufferInitialCapacity5;
                    gap2 = gap;
                    anonymousClass1 = this;
                    buffer = buffer5;
                    while (it.hasNext()) {
                        T next2 = it.next();
                        buffer.add((Object) next2);
                        if (buffer.isFull()) {
                            if (buffer.size() >= anonymousClass1.$size) {
                                List arrayList = anonymousClass1.$reuseBuffer ? buffer : new ArrayList(buffer);
                                anonymousClass1.L$0 = sequenceScope;
                                anonymousClass1.L$1 = buffer;
                                anonymousClass1.L$2 = it;
                                anonymousClass1.L$3 = SpillingKt.nullOutSpilledVariable(next2);
                                anonymousClass1.I$0 = bufferInitialCapacity;
                                anonymousClass1.I$1 = gap2;
                                anonymousClass1.label = 3;
                                if (sequenceScope.yield(arrayList, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                buffer.removeFirst(anonymousClass1.$step);
                                while (it.hasNext()) {
                                }
                            } else {
                                buffer = buffer.expanded(anonymousClass1.$size);
                            }
                        }
                    }
                    if (anonymousClass1.$partialWindows) {
                        return Unit.INSTANCE;
                    }
                    int i = gap2;
                    obj2 = coroutine_suspended;
                    gap4 = i;
                    if (buffer.size() <= anonymousClass1.$step) {
                        List arrayList2 = anonymousClass1.$reuseBuffer ? buffer : new ArrayList(buffer);
                        anonymousClass1.L$0 = sequenceScope;
                        anonymousClass1.L$1 = buffer;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.L$3 = null;
                        anonymousClass1.I$0 = bufferInitialCapacity;
                        anonymousClass1.I$1 = gap4;
                        anonymousClass1.label = 4;
                        if (sequenceScope.yield(arrayList2, anonymousClass1) == obj2) {
                            return obj2;
                        }
                        buffer.removeFirst(anonymousClass1.$step);
                        if (buffer.size() <= anonymousClass1.$step) {
                            if (buffer.isEmpty()) {
                                return Unit.INSTANCE;
                            }
                            anonymousClass1.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                            anonymousClass1.L$1 = SpillingKt.nullOutSpilledVariable(buffer);
                            anonymousClass1.L$2 = null;
                            anonymousClass1.L$3 = null;
                            anonymousClass1.I$0 = bufferInitialCapacity;
                            anonymousClass1.I$1 = gap4;
                            anonymousClass1.label = 5;
                            if (sequenceScope.yield(buffer, anonymousClass1) == obj2) {
                                return obj2;
                            }
                            bufferInitialCapacity4 = bufferInitialCapacity;
                            return Unit.INSTANCE;
                        }
                    }
                    break;
                case 1:
                    int gap5 = this.I$2;
                    gap = this.I$1;
                    bufferInitialCapacity2 = this.I$0;
                    Object obj3 = this.L$3;
                    it2 = (Iterator) this.L$2;
                    ArrayList buffer6 = (ArrayList) this.L$1;
                    ResultKt.throwOnFailure($result);
                    buffer3 = buffer6;
                    anonymousClass12 = this;
                    if (anonymousClass12.$reuseBuffer) {
                    }
                    int skip22 = gap;
                    obj = coroutine_suspended;
                    skip = skip22;
                    buffer2 = buffer3;
                    while (it2.hasNext()) {
                    }
                    if (!buffer2.isEmpty()) {
                        anonymousClass12.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                        anonymousClass12.L$1 = SpillingKt.nullOutSpilledVariable(buffer2);
                        anonymousClass12.L$2 = null;
                        anonymousClass12.L$3 = null;
                        anonymousClass12.I$0 = bufferInitialCapacity2;
                        anonymousClass12.I$1 = gap;
                        anonymousClass12.I$2 = skip;
                        anonymousClass12.label = 2;
                        if (sequenceScope.yield(buffer2, anonymousClass12) != obj) {
                        }
                    }
                    return Unit.INSTANCE;
                case 2:
                    int i2 = this.I$2;
                    gap3 = this.I$1;
                    bufferInitialCapacity3 = this.I$0;
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 3:
                    gap2 = this.I$1;
                    bufferInitialCapacity = this.I$0;
                    Object obj4 = this.L$3;
                    it = (Iterator) this.L$2;
                    buffer = (RingBuffer) this.L$1;
                    ResultKt.throwOnFailure($result);
                    anonymousClass1 = this;
                    buffer.removeFirst(anonymousClass1.$step);
                    while (it.hasNext()) {
                    }
                    if (anonymousClass1.$partialWindows) {
                    }
                    break;
                case 4:
                    int bufferInitialCapacity6 = this.I$1;
                    bufferInitialCapacity = this.I$0;
                    RingBuffer buffer7 = (RingBuffer) this.L$1;
                    ResultKt.throwOnFailure($result);
                    obj2 = coroutine_suspended;
                    gap4 = bufferInitialCapacity6;
                    anonymousClass1 = this;
                    buffer = buffer7;
                    buffer.removeFirst(anonymousClass1.$step);
                    if (buffer.size() <= anonymousClass1.$step) {
                    }
                    break;
                case 5:
                    gap4 = this.I$1;
                    bufferInitialCapacity4 = this.I$0;
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final <T> Iterator<List<T>> windowedIterator(Iterator<? extends T> iterator, int size, int step, boolean partialWindows, boolean reuseBuffer) {
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        return !iterator.hasNext() ? EmptyIterator.INSTANCE : SequencesKt.iterator(new AnonymousClass1(size, step, iterator, reuseBuffer, partialWindows, null));
    }
}
