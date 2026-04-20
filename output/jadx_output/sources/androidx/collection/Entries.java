package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
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

/* JADX INFO: compiled from: ScatterMap.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010&\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010(\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00040\u0003B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001d\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0096\u0002J\"\u0010\u000f\u001a\u00020\r2\u0018\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0011H\u0016J\b\u0010\u0012\u001a\u00020\rH\u0016J\u001b\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0014H\u0096\u0002R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Landroidx/collection/Entries;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "", "parent", "Landroidx/collection/ScatterMap;", "(Landroidx/collection/ScatterMap;)V", "size", "", "getSize", "()I", "contains", "", "element", "containsAll", "elements", "", "isEmpty", "iterator", "", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class Entries<K, V> implements Set<Map.Entry<? extends K, ? extends V>>, KMappedMarker {
    private final ScatterMap<K, V> parent;

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean add(Map.Entry<? extends K, ? extends V> entry) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
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

    public Entries(ScatterMap<K, V> parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.parent = parent;
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean contains(Object element) {
        if (element instanceof Map.Entry) {
            return contains((Map.Entry) element);
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public int getSize() {
        return this.parent._size;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.parent.isEmpty();
    }

    /* JADX INFO: renamed from: androidx.collection.Entries$iterator$1, reason: invalid class name */
    /* JADX INFO: compiled from: ScatterMap.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "androidx.collection.Entries$iterator$1", f = "ScatterMap.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {1414}, m = "invokeSuspend", n = {"$this$iterator", "m$iv", "lastIndex$iv", "i$iv", "slot$iv", "bitCount$iv", "j$iv"}, s = {"L$0", "L$2", "I$0", "I$1", "J$0", "I$2", "I$3"})
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Map.Entry<? extends K, ? extends V>>, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ Entries<K, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Entries<K, V> entries, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = entries;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Map.Entry<? extends K, ? extends V>> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00f4  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0069 -> B:13:0x007e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00c9 -> B:25:0x00ce). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00cc -> B:25:0x00ce). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00e8 -> B:30:0x00ec). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object $result;
            int i;
            SequenceScope $this$iterator;
            Entries<K, V> entries;
            int $i$f$forEachIndexed;
            int bitCount$iv;
            int j$iv;
            AnonymousClass1 anonymousClass1;
            int i$iv;
            long[] m$iv;
            int lastIndex$iv;
            long slot$iv;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    $result = obj;
                    SequenceScope $this$iterator2 = (SequenceScope) this.L$0;
                    ScatterMap this_$iv = ((Entries) this.this$0).parent;
                    Entries<K, V> entries2 = this.this$0;
                    int bitCount$iv2 = 0;
                    long[] m$iv2 = this_$iv.metadata;
                    int lastIndex$iv2 = m$iv2.length - 2;
                    int i$iv2 = 0;
                    if (0 > lastIndex$iv2) {
                        return Unit.INSTANCE;
                    }
                    AnonymousClass1 anonymousClass12 = this;
                    long slot$iv2 = m$iv2[i$iv2];
                    i = 8;
                    if ((((~slot$iv2) << 7) & slot$iv2 & (-9187201950435737472L)) == -9187201950435737472L) {
                        int bitCount$iv3 = 8 - ((~(i$iv2 - lastIndex$iv2)) >>> 31);
                        $this$iterator = $this$iterator2;
                        entries = entries2;
                        $i$f$forEachIndexed = bitCount$iv2;
                        bitCount$iv = bitCount$iv3;
                        j$iv = 0;
                        anonymousClass1 = anonymousClass12;
                        i$iv = i$iv2;
                        m$iv = m$iv2;
                        lastIndex$iv = lastIndex$iv2;
                        slot$iv = slot$iv2;
                        if (j$iv < bitCount$iv) {
                            long value$iv$iv = slot$iv & 255;
                            if (value$iv$iv < 128) {
                                int index = (i$iv << 3) + j$iv;
                                Object $result2 = $result;
                                MapEntry mapEntry = new MapEntry(((Entries) entries).parent.keys[index], ((Entries) entries).parent.values[index]);
                                anonymousClass1.L$0 = $this$iterator;
                                anonymousClass1.L$1 = entries;
                                anonymousClass1.L$2 = m$iv;
                                anonymousClass1.I$0 = lastIndex$iv;
                                anonymousClass1.I$1 = i$iv;
                                anonymousClass1.J$0 = slot$iv;
                                anonymousClass1.I$2 = bitCount$iv;
                                anonymousClass1.I$3 = j$iv;
                                anonymousClass1.label = 1;
                                if ($this$iterator.yield(mapEntry, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                $result = $result2;
                            }
                            slot$iv >>= i;
                            j$iv++;
                            if (j$iv < bitCount$iv) {
                            }
                        } else {
                            if (bitCount$iv == i) {
                                bitCount$iv2 = $i$f$forEachIndexed;
                                i$iv2 = i$iv;
                                lastIndex$iv2 = lastIndex$iv;
                                m$iv2 = m$iv;
                                entries2 = entries;
                                $this$iterator2 = $this$iterator;
                                anonymousClass12 = anonymousClass1;
                                if (i$iv2 == lastIndex$iv2) {
                                    i$iv2++;
                                    long slot$iv22 = m$iv2[i$iv2];
                                    i = 8;
                                    if ((((~slot$iv22) << 7) & slot$iv22 & (-9187201950435737472L)) == -9187201950435737472L) {
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
                    $i$f$forEachIndexed = 0;
                    j$iv = this.I$3;
                    bitCount$iv = this.I$2;
                    slot$iv = this.J$0;
                    i$iv = this.I$1;
                    lastIndex$iv = this.I$0;
                    m$iv = (long[]) this.L$2;
                    entries = (Entries) this.L$1;
                    $this$iterator = (SequenceScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    anonymousClass1 = this;
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

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return SequencesKt.iterator(new AnonymousClass1(this, null));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!Intrinsics.areEqual(this.parent.get((K) entry.getKey()), entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    public boolean contains(Map.Entry<? extends K, ? extends V> element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return Intrinsics.areEqual(this.parent.get(element.getKey()), element.getValue());
    }
}
