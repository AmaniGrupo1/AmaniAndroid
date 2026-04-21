package androidx.collection;

import androidx.collection.MutableOrderedSetWrapper;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: compiled from: OrderedScatterSet.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.MutableOrderedSetWrapper$iterator$1$iterator$1", f = "OrderedScatterSet.kt", i = {0, 0, 0}, l = {1489}, m = "invokeSuspend", n = {"$this$iterator", "nodes$iv", "previousNode$iv"}, s = {"L$0", "L$3", "I$0"})
final class MutableOrderedSetWrapper$iterator$1$iterator$1<E> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super E>, Continuation<? super Unit>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ MutableOrderedSetWrapper<E> this$0;
    final /* synthetic */ MutableOrderedSetWrapper.AnonymousClass1 this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MutableOrderedSetWrapper$iterator$1$iterator$1(MutableOrderedSetWrapper<E> mutableOrderedSetWrapper, MutableOrderedSetWrapper.AnonymousClass1 anonymousClass1, Continuation<? super MutableOrderedSetWrapper$iterator$1$iterator$1> continuation) {
        super(2, continuation);
        this.this$0 = mutableOrderedSetWrapper;
        this.this$1 = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MutableOrderedSetWrapper$iterator$1$iterator$1 mutableOrderedSetWrapper$iterator$1$iterator$1 = new MutableOrderedSetWrapper$iterator$1$iterator$1(this.this$0, this.this$1, continuation);
        mutableOrderedSetWrapper$iterator$1$iterator$1.L$0 = obj;
        return mutableOrderedSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super E> sequenceScope, Continuation<? super Unit> continuation) {
        return ((MutableOrderedSetWrapper$iterator$1$iterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0097  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0086 -> B:14:0x008e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        int candidate$iv;
        SequenceScope $this$iterator;
        MutableOrderedSetWrapper<E> mutableOrderedSetWrapper;
        long[] nodes$iv;
        MutableOrderedSetWrapper.AnonymousClass1 anonymousClass1;
        MutableOrderedSetWrapper$iterator$1$iterator$1<E> mutableOrderedSetWrapper$iterator$1$iterator$1;
        MutableOrderedSetWrapper$iterator$1$iterator$1<E> mutableOrderedSetWrapper$iterator$1$iterator$12;
        int previousNode$iv;
        MutableOrderedSetWrapper.AnonymousClass1 anonymousClass12;
        MutableOrderedSetWrapper<E> mutableOrderedSetWrapper2;
        long[] nodes$iv2;
        SequenceScope $this$iterator2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                SequenceScope $this$iterator3 = (SequenceScope) this.L$0;
                OrderedScatterSet this_$iv = ((MutableOrderedSetWrapper) this.this$0).parent;
                MutableOrderedSetWrapper.AnonymousClass1 anonymousClass13 = this.this$1;
                MutableOrderedSetWrapper<E> mutableOrderedSetWrapper3 = this.this$0;
                long[] nodes$iv3 = this_$iv.nodes;
                candidate$iv = this_$iv.tail;
                $this$iterator = $this$iterator3;
                mutableOrderedSetWrapper = mutableOrderedSetWrapper3;
                nodes$iv = nodes$iv3;
                anonymousClass1 = anonymousClass13;
                mutableOrderedSetWrapper$iterator$1$iterator$1 = this;
                if (candidate$iv != Integer.MAX_VALUE) {
                    long $this$previousNode$iv$iv = nodes$iv[candidate$iv];
                    int previousNode$iv2 = (int) (($this$previousNode$iv$iv >> 31) & SieveCacheKt.NodeLinkMask);
                    anonymousClass1.setCurrent(candidate$iv);
                    Object obj = ((MutableOrderedSetWrapper) mutableOrderedSetWrapper).parent.elements[candidate$iv];
                    mutableOrderedSetWrapper$iterator$1$iterator$1.L$0 = $this$iterator;
                    mutableOrderedSetWrapper$iterator$1$iterator$1.L$1 = anonymousClass1;
                    mutableOrderedSetWrapper$iterator$1$iterator$1.L$2 = mutableOrderedSetWrapper;
                    mutableOrderedSetWrapper$iterator$1$iterator$1.L$3 = nodes$iv;
                    mutableOrderedSetWrapper$iterator$1$iterator$1.I$0 = previousNode$iv2;
                    mutableOrderedSetWrapper$iterator$1$iterator$1.label = 1;
                    if ($this$iterator.yield(obj, mutableOrderedSetWrapper$iterator$1$iterator$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    long[] jArr = nodes$iv;
                    mutableOrderedSetWrapper$iterator$1$iterator$12 = mutableOrderedSetWrapper$iterator$1$iterator$1;
                    previousNode$iv = previousNode$iv2;
                    anonymousClass12 = anonymousClass1;
                    mutableOrderedSetWrapper2 = mutableOrderedSetWrapper;
                    nodes$iv2 = jArr;
                    $this$iterator2 = $this$iterator;
                    $this$iterator = $this$iterator2;
                    candidate$iv = previousNode$iv;
                    mutableOrderedSetWrapper$iterator$1$iterator$1 = mutableOrderedSetWrapper$iterator$1$iterator$12;
                    nodes$iv = nodes$iv2;
                    mutableOrderedSetWrapper = mutableOrderedSetWrapper2;
                    anonymousClass1 = anonymousClass12;
                    if (candidate$iv != Integer.MAX_VALUE) {
                        return Unit.INSTANCE;
                    }
                }
                break;
            case 1:
                previousNode$iv = this.I$0;
                long[] nodes$iv4 = (long[]) this.L$3;
                MutableOrderedSetWrapper<E> mutableOrderedSetWrapper4 = (MutableOrderedSetWrapper) this.L$2;
                MutableOrderedSetWrapper.AnonymousClass1 anonymousClass14 = (MutableOrderedSetWrapper.AnonymousClass1) this.L$1;
                $this$iterator2 = (SequenceScope) this.L$0;
                ResultKt.throwOnFailure($result);
                anonymousClass12 = anonymousClass14;
                mutableOrderedSetWrapper2 = mutableOrderedSetWrapper4;
                nodes$iv2 = nodes$iv4;
                mutableOrderedSetWrapper$iterator$1$iterator$12 = this;
                $this$iterator = $this$iterator2;
                candidate$iv = previousNode$iv;
                mutableOrderedSetWrapper$iterator$1$iterator$1 = mutableOrderedSetWrapper$iterator$1$iterator$12;
                nodes$iv = nodes$iv2;
                mutableOrderedSetWrapper = mutableOrderedSetWrapper2;
                anonymousClass1 = anonymousClass12;
                if (candidate$iv != Integer.MAX_VALUE) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
