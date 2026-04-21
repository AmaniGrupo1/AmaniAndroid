package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: ScatterSet.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\rJ\u0016\u0010\u000e\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J\u0013\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0007H\u0016J\b\u0010\u0015\u001a\u00020\u000bH\u0016J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u001a"}, d2 = {"Landroidx/collection/SetWrapper;", ExifInterface.LONGITUDE_EAST, "", "parent", "Landroidx/collection/ScatterSet;", "(Landroidx/collection/ScatterSet;)V", "size", "", "getSize", "()I", "contains", "", "element", "(Ljava/lang/Object;)Z", "containsAll", "elements", "", "equals", "other", "", "hashCode", "isEmpty", "iterator", "", "toString", "", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
class SetWrapper<E> implements Set<E>, KMappedMarker {
    private final ScatterSet<E> parent;

    @Override // java.util.Set, java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    public SetWrapper(ScatterSet<E> parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.parent = parent;
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public int getSize() {
        return this.parent._size;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            if (!this.parent.contains((E) it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object element) {
        return this.parent.contains(element);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.parent.isEmpty();
    }

    /* JADX INFO: renamed from: androidx.collection.SetWrapper$iterator$1, reason: invalid class name */
    /* JADX INFO: compiled from: ScatterSet.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "androidx.collection.SetWrapper$iterator$1", f = "ScatterSet.kt", i = {0, 0, 0, 0, 0, 0, 0, 0}, l = {1153}, m = "invokeSuspend", n = {"$this$iterator", "elements$iv", "m$iv$iv", "lastIndex$iv$iv", "i$iv$iv", "slot$iv$iv", "bitCount$iv$iv", "j$iv$iv"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "J$0", "I$2", "I$3"})
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super E>, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ SetWrapper<E> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SetWrapper<E> setWrapper, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = setWrapper;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super E> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00ca  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ed  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x006f -> B:13:0x0083). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00ba -> B:25:0x00c2). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00c0 -> B:25:0x00c2). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00e1 -> B:31:0x00e5). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            int i;
            Object $result;
            long slot$iv$iv;
            int bitCount$iv$iv;
            long[] m$iv$iv;
            int lastIndex$iv$iv;
            int i$iv$iv;
            int j$iv$iv;
            SequenceScope $this$iterator;
            Object[] elements$iv;
            int $i$f$forEachIndex;
            AnonymousClass1 anonymousClass1 = this;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (anonymousClass1.label) {
                case 0:
                    i = 8;
                    ResultKt.throwOnFailure(obj);
                    $result = obj;
                    SequenceScope $this$iterator2 = (SequenceScope) anonymousClass1.L$0;
                    ScatterSet this_$iv = ((SetWrapper) anonymousClass1.this$0).parent;
                    Object[] elements$iv2 = this_$iv.elements;
                    int $i$f$forEachIndex2 = 0;
                    long[] m$iv$iv2 = this_$iv.metadata;
                    int lastIndex$iv$iv2 = m$iv$iv2.length - 2;
                    int i$iv$iv2 = 0;
                    if (0 > lastIndex$iv$iv2) {
                        return Unit.INSTANCE;
                    }
                    AnonymousClass1 anonymousClass12 = anonymousClass1;
                    slot$iv$iv = m$iv$iv2[i$iv$iv2];
                    Object obj2 = coroutine_suspended;
                    if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) == -9187201950435737472L) {
                        int bitCount$iv$iv2 = 8 - ((~(i$iv$iv2 - lastIndex$iv$iv2)) >>> 31);
                        AnonymousClass1 anonymousClass13 = anonymousClass12;
                        bitCount$iv$iv = bitCount$iv$iv2;
                        anonymousClass1 = anonymousClass13;
                        m$iv$iv = m$iv$iv2;
                        lastIndex$iv$iv = lastIndex$iv$iv2;
                        i$iv$iv = i$iv$iv2;
                        j$iv$iv = 0;
                        $this$iterator = $this$iterator2;
                        elements$iv = elements$iv2;
                        $i$f$forEachIndex = $i$f$forEachIndex2;
                        coroutine_suspended = obj2;
                        if (j$iv$iv < bitCount$iv$iv) {
                            long value$iv$iv$iv = 255 & slot$iv$iv;
                            if (value$iv$iv$iv < 128) {
                                int index$iv = (i$iv$iv << 3) + j$iv$iv;
                                Object element = elements$iv[index$iv];
                                anonymousClass1.L$0 = $this$iterator;
                                anonymousClass1.L$1 = elements$iv;
                                anonymousClass1.L$2 = m$iv$iv;
                                anonymousClass1.I$0 = lastIndex$iv$iv;
                                anonymousClass1.I$1 = i$iv$iv;
                                anonymousClass1.J$0 = slot$iv$iv;
                                anonymousClass1.I$2 = bitCount$iv$iv;
                                anonymousClass1.I$3 = j$iv$iv;
                                Object $result2 = $result;
                                anonymousClass1.label = 1;
                                if ($this$iterator.yield(element, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                $result = $result2;
                            }
                            slot$iv$iv >>= i;
                            j$iv$iv++;
                            if (j$iv$iv < bitCount$iv$iv) {
                                Object $result3 = $result;
                                int i2 = i;
                                if (bitCount$iv$iv != i2) {
                                    return Unit.INSTANCE;
                                }
                                anonymousClass12 = anonymousClass1;
                                i = i2;
                                $i$f$forEachIndex2 = $i$f$forEachIndex;
                                i$iv$iv2 = i$iv$iv;
                                lastIndex$iv$iv2 = lastIndex$iv$iv;
                                $result = $result3;
                                elements$iv2 = elements$iv;
                                $this$iterator2 = $this$iterator;
                                m$iv$iv2 = m$iv$iv;
                                if (i$iv$iv2 == lastIndex$iv$iv2) {
                                    i$iv$iv2++;
                                    slot$iv$iv = m$iv$iv2[i$iv$iv2];
                                    Object obj22 = coroutine_suspended;
                                    if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) == -9187201950435737472L) {
                                        coroutine_suspended = obj22;
                                        if (i$iv$iv2 == lastIndex$iv$iv2) {
                                            return Unit.INSTANCE;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    break;
                case 1:
                    $result = obj;
                    $i$f$forEachIndex = 0;
                    j$iv$iv = anonymousClass1.I$3;
                    bitCount$iv$iv = anonymousClass1.I$2;
                    slot$iv$iv = anonymousClass1.J$0;
                    i$iv$iv = anonymousClass1.I$1;
                    lastIndex$iv$iv = anonymousClass1.I$0;
                    m$iv$iv = (long[]) anonymousClass1.L$2;
                    i = 8;
                    elements$iv = (Object[]) anonymousClass1.L$1;
                    $this$iterator = (SequenceScope) anonymousClass1.L$0;
                    ResultKt.throwOnFailure($result);
                    slot$iv$iv >>= i;
                    j$iv$iv++;
                    if (j$iv$iv < bitCount$iv$iv) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return SequencesKt.iterator(new AnonymousClass1(this, null));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || getClass() != other.getClass()) {
            return false;
        }
        return Intrinsics.areEqual(this.parent, ((SetWrapper) other).parent);
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        return this.parent.hashCode();
    }

    public String toString() {
        return this.parent.toString();
    }
}
