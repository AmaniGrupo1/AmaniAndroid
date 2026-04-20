package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* JADX INFO: compiled from: ScatterMap.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u00020\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.MutableKeys$iterator$1$iterator$1", f = "ScatterMap.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {1622}, m = "invokeSuspend", n = {"$this$iterator", "m$iv", "lastIndex$iv", "i$iv", "slot$iv", "bitCount$iv", "j$iv"}, s = {"L$0", "L$1", "I$0", "I$1", "J$0", "I$2", "I$3"})
final class MutableKeys$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Integer>, Continuation<? super Unit>, Object> {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ MutableKeys<K, V> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MutableKeys$iterator$1$iterator$1(MutableKeys<K, V> mutableKeys, Continuation<? super MutableKeys$iterator$1$iterator$1> continuation) {
        super(2, continuation);
        this.this$0 = mutableKeys;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MutableKeys$iterator$1$iterator$1 mutableKeys$iterator$1$iterator$1 = new MutableKeys$iterator$1$iterator$1(this.this$0, continuation);
        mutableKeys$iterator$1$iterator$1.L$0 = obj;
        return mutableKeys$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super Integer> sequenceScope, Continuation<? super Unit> continuation) {
        return ((MutableKeys$iterator$1$iterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0064 -> B:13:0x007b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00ab -> B:22:0x00ae). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00c5 -> B:27:0x00c9). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        int i;
        SequenceScope $this$iterator;
        long[] m$iv;
        int $i$f$forEachIndexed;
        int j$iv;
        int bitCount$iv;
        MutableKeys$iterator$1$iterator$1 mutableKeys$iterator$1$iterator$1;
        int lastIndex$iv;
        int i$iv;
        long slot$iv;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                SequenceScope $this$iterator2 = (SequenceScope) this.L$0;
                ScatterMap this_$iv = ((MutableKeys) this.this$0).parent;
                int $i$f$forEachIndexed2 = 0;
                long[] m$iv2 = this_$iv.metadata;
                int bitCount$iv2 = m$iv2.length - 2;
                int i$iv2 = 0;
                if (0 > bitCount$iv2) {
                    return Unit.INSTANCE;
                }
                MutableKeys$iterator$1$iterator$1 mutableKeys$iterator$1$iterator$12 = this;
                long slot$iv2 = m$iv2[i$iv2];
                i = 8;
                if ((((~slot$iv2) << 7) & slot$iv2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    $this$iterator = $this$iterator2;
                    m$iv = m$iv2;
                    $i$f$forEachIndexed = $i$f$forEachIndexed2;
                    j$iv = 0;
                    int i2 = bitCount$iv2;
                    bitCount$iv = 8 - ((~(i$iv2 - bitCount$iv2)) >>> 31);
                    mutableKeys$iterator$1$iterator$1 = mutableKeys$iterator$1$iterator$12;
                    lastIndex$iv = i2;
                    i$iv = i$iv2;
                    slot$iv = slot$iv2;
                    if (j$iv < bitCount$iv) {
                        long value$iv$iv = slot$iv & 255;
                        if (value$iv$iv >= 128) {
                            if (0 != 0) {
                                int index = (i$iv << 3) + j$iv;
                                Integer numBoxInt = Boxing.boxInt(index);
                                mutableKeys$iterator$1$iterator$1.L$0 = $this$iterator;
                                mutableKeys$iterator$1$iterator$1.L$1 = m$iv;
                                mutableKeys$iterator$1$iterator$1.I$0 = lastIndex$iv;
                                mutableKeys$iterator$1$iterator$1.I$1 = i$iv;
                                mutableKeys$iterator$1$iterator$1.J$0 = slot$iv;
                                mutableKeys$iterator$1$iterator$1.I$2 = bitCount$iv;
                                mutableKeys$iterator$1$iterator$1.I$3 = j$iv;
                                mutableKeys$iterator$1$iterator$1.label = 1;
                                if ($this$iterator.yield(numBoxInt, mutableKeys$iterator$1$iterator$1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                        } else if (1 != 0) {
                        }
                        slot$iv >>= i;
                        j$iv++;
                        if (j$iv < bitCount$iv) {
                        }
                    } else {
                        if (bitCount$iv == i) {
                            mutableKeys$iterator$1$iterator$12 = mutableKeys$iterator$1$iterator$1;
                            $i$f$forEachIndexed2 = $i$f$forEachIndexed;
                            i$iv2 = i$iv;
                            bitCount$iv2 = lastIndex$iv;
                            m$iv2 = m$iv;
                            $this$iterator2 = $this$iterator;
                            if (i$iv2 == bitCount$iv2) {
                                i$iv2++;
                                long slot$iv22 = m$iv2[i$iv2];
                                i = 8;
                                if ((((~slot$iv22) << 7) & slot$iv22 & (-9187201950435737472L)) == -9187201950435737472L) {
                                    if (i$iv2 == bitCount$iv2) {
                                    }
                                }
                            }
                        }
                        return Unit.INSTANCE;
                    }
                }
                break;
            case 1:
                $i$f$forEachIndexed = 0;
                j$iv = this.I$3;
                bitCount$iv = this.I$2;
                slot$iv = this.J$0;
                i$iv = this.I$1;
                lastIndex$iv = this.I$0;
                m$iv = (long[]) this.L$1;
                $this$iterator = (SequenceScope) this.L$0;
                ResultKt.throwOnFailure($result);
                mutableKeys$iterator$1$iterator$1 = this;
                i = 8;
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
