package androidx.collection;

import androidx.collection.MutableSetWrapper;
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
/* JADX INFO: compiled from: ScatterSet.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.MutableSetWrapper$iterator$1$iterator$1", f = "ScatterSet.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {1188}, m = "invokeSuspend", n = {"$this$iterator", "m$iv", "lastIndex$iv", "i$iv", "slot$iv", "bitCount$iv", "j$iv"}, s = {"L$0", "L$3", "I$0", "I$1", "J$0", "I$2", "I$3"})
final class MutableSetWrapper$iterator$1$iterator$1<E> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super E>, Continuation<? super Unit>, Object> {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ MutableSetWrapper<E> this$0;
    final /* synthetic */ MutableSetWrapper.AnonymousClass1 this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MutableSetWrapper$iterator$1$iterator$1(MutableSetWrapper<E> mutableSetWrapper, MutableSetWrapper.AnonymousClass1 anonymousClass1, Continuation<? super MutableSetWrapper$iterator$1$iterator$1> continuation) {
        super(2, continuation);
        this.this$0 = mutableSetWrapper;
        this.this$1 = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MutableSetWrapper$iterator$1$iterator$1 mutableSetWrapper$iterator$1$iterator$1 = new MutableSetWrapper$iterator$1$iterator$1(this.this$0, this.this$1, continuation);
        mutableSetWrapper$iterator$1$iterator$1.L$0 = obj;
        return mutableSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super E> sequenceScope, Continuation<? super Unit> continuation) {
        return ((MutableSetWrapper$iterator$1$iterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ff  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0074 -> B:13:0x008a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00ce -> B:25:0x00d5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00d3 -> B:25:0x00d5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00ef -> B:30:0x00f5). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        int i;
        Object $result;
        SequenceScope $this$iterator;
        MutableSetWrapper.AnonymousClass1 anonymousClass1;
        MutableSetWrapper<E> mutableSetWrapper;
        int j$iv;
        int $i$f$forEachIndex;
        int bitCount$iv;
        MutableSetWrapper$iterator$1$iterator$1<E> mutableSetWrapper$iterator$1$iterator$1;
        int i$iv;
        long[] m$iv;
        int lastIndex$iv;
        long slot$iv;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                i = 8;
                ResultKt.throwOnFailure(obj);
                $result = obj;
                $this$iterator = (SequenceScope) this.L$0;
                ScatterSet this_$iv = ((MutableSetWrapper) this.this$0).parent;
                MutableSetWrapper.AnonymousClass1 anonymousClass12 = this.this$1;
                MutableSetWrapper<E> mutableSetWrapper2 = this.this$0;
                int bitCount$iv2 = 0;
                long[] m$iv2 = this_$iv.metadata;
                int lastIndex$iv2 = m$iv2.length - 2;
                int i$iv2 = 0;
                if (0 > lastIndex$iv2) {
                    return Unit.INSTANCE;
                }
                MutableSetWrapper$iterator$1$iterator$1<E> mutableSetWrapper$iterator$1$iterator$12 = this;
                long slot$iv2 = m$iv2[i$iv2];
                long[] m$iv3 = m$iv2;
                if ((((~slot$iv2) << 7) & slot$iv2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    int bitCount$iv3 = 8 - ((~(i$iv2 - lastIndex$iv2)) >>> 31);
                    anonymousClass1 = anonymousClass12;
                    mutableSetWrapper = mutableSetWrapper2;
                    j$iv = 0;
                    $i$f$forEachIndex = bitCount$iv2;
                    bitCount$iv = bitCount$iv3;
                    mutableSetWrapper$iterator$1$iterator$1 = mutableSetWrapper$iterator$1$iterator$12;
                    i$iv = i$iv2;
                    m$iv = m$iv3;
                    lastIndex$iv = lastIndex$iv2;
                    slot$iv = slot$iv2;
                    if (j$iv < bitCount$iv) {
                        long value$iv$iv = slot$iv & 255;
                        if (value$iv$iv < 128) {
                            int index = (i$iv << 3) + j$iv;
                            anonymousClass1.setCurrent(index);
                            Object obj2 = ((MutableSetWrapper) mutableSetWrapper).parent.elements[index];
                            mutableSetWrapper$iterator$1$iterator$1.L$0 = $this$iterator;
                            mutableSetWrapper$iterator$1$iterator$1.L$1 = anonymousClass1;
                            mutableSetWrapper$iterator$1$iterator$1.L$2 = mutableSetWrapper;
                            mutableSetWrapper$iterator$1$iterator$1.L$3 = m$iv;
                            mutableSetWrapper$iterator$1$iterator$1.I$0 = lastIndex$iv;
                            mutableSetWrapper$iterator$1$iterator$1.I$1 = i$iv;
                            mutableSetWrapper$iterator$1$iterator$1.J$0 = slot$iv;
                            mutableSetWrapper$iterator$1$iterator$1.I$2 = bitCount$iv;
                            mutableSetWrapper$iterator$1$iterator$1.I$3 = j$iv;
                            Object $result2 = $result;
                            mutableSetWrapper$iterator$1$iterator$1.label = 1;
                            if ($this$iterator.yield(obj2, mutableSetWrapper$iterator$1$iterator$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result = $result2;
                        }
                        slot$iv >>= i;
                        j$iv++;
                        if (j$iv < bitCount$iv) {
                        }
                    } else {
                        int i2 = i;
                        if (bitCount$iv == i2) {
                            bitCount$iv2 = $i$f$forEachIndex;
                            i$iv2 = i$iv;
                            lastIndex$iv2 = lastIndex$iv;
                            m$iv2 = m$iv;
                            mutableSetWrapper2 = mutableSetWrapper;
                            anonymousClass12 = anonymousClass1;
                            mutableSetWrapper$iterator$1$iterator$12 = mutableSetWrapper$iterator$1$iterator$1;
                            if (i$iv2 == lastIndex$iv2) {
                                i$iv2++;
                                i = i2;
                                long slot$iv22 = m$iv2[i$iv2];
                                long[] m$iv32 = m$iv2;
                                if ((((~slot$iv22) << 7) & slot$iv22 & (-9187201950435737472L)) == -9187201950435737472L) {
                                    i2 = i;
                                    m$iv2 = m$iv32;
                                    if (i$iv2 == lastIndex$iv2) {
                                    }
                                }
                            }
                        }
                        return Unit.INSTANCE;
                    }
                }
                break;
            case 1:
                $result = obj;
                $i$f$forEachIndex = 0;
                j$iv = this.I$3;
                bitCount$iv = this.I$2;
                slot$iv = this.J$0;
                i$iv = this.I$1;
                lastIndex$iv = this.I$0;
                m$iv = (long[]) this.L$3;
                mutableSetWrapper = (MutableSetWrapper) this.L$2;
                anonymousClass1 = (MutableSetWrapper.AnonymousClass1) this.L$1;
                i = 8;
                $this$iterator = (SequenceScope) this.L$0;
                ResultKt.throwOnFailure($result);
                mutableSetWrapper$iterator$1$iterator$1 = this;
                slot$iv >>= i;
                j$iv++;
                if (j$iv < bitCount$iv) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
