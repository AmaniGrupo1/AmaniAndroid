package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes22.dex */
@ElementTypesAreNonnullByDefault
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    private static final byte ABSENT = -1;
    private static final int BYTE_MASK = 255;
    private static final int BYTE_MAX_SIZE = 128;
    static final ImmutableMap<Object, Object> EMPTY = new RegularImmutableMap(null, new Object[0], 0);
    private static final int SHORT_MASK = 65535;
    private static final int SHORT_MAX_SIZE = 32768;
    private static final long serialVersionUID = 0;
    final transient Object[] alternatingKeysAndValues;

    @CheckForNull
    private final transient Object hashTable;
    private final transient int size;

    static <K, V> RegularImmutableMap<K, V> create(int n, Object[] alternatingKeysAndValues) {
        return create(n, alternatingKeysAndValues, null);
    }

    static <K, V> RegularImmutableMap<K, V> create(int n, Object[] alternatingKeysAndValues, ImmutableMap.Builder<K, V> builder) {
        Object hashTable;
        if (n == 0) {
            RegularImmutableMap<K, V> empty = (RegularImmutableMap) EMPTY;
            return empty;
        }
        if (n == 1) {
            CollectPreconditions.checkEntryNotNull(Objects.requireNonNull(alternatingKeysAndValues[0]), Objects.requireNonNull(alternatingKeysAndValues[1]));
            return new RegularImmutableMap<>(null, alternatingKeysAndValues, 1);
        }
        Preconditions.checkPositionIndex(n, alternatingKeysAndValues.length >> 1);
        int tableSize = ImmutableSet.chooseTableSize(n);
        Object hashTablePlus = createHashTable(alternatingKeysAndValues, n, tableSize, 0);
        if (hashTablePlus instanceof Object[]) {
            Object[] hashTableAndSizeAndDuplicate = (Object[]) hashTablePlus;
            ImmutableMap.Builder.DuplicateKey duplicateKey = (ImmutableMap.Builder.DuplicateKey) hashTableAndSizeAndDuplicate[2];
            if (builder == null) {
                throw duplicateKey.exception();
            }
            builder.duplicateKey = duplicateKey;
            hashTable = hashTableAndSizeAndDuplicate[0];
            n = ((Integer) hashTableAndSizeAndDuplicate[1]).intValue();
            alternatingKeysAndValues = Arrays.copyOf(alternatingKeysAndValues, n * 2);
        } else {
            hashTable = hashTablePlus;
        }
        return new RegularImmutableMap<>(hashTable, alternatingKeysAndValues, n);
    }

    @CheckForNull
    private static Object createHashTable(Object[] objArr, int i, int i2, int i3) {
        boolean z;
        boolean z2 = true;
        if (i == 1) {
            CollectPreconditions.checkEntryNotNull(Objects.requireNonNull(objArr[i3]), Objects.requireNonNull(objArr[i3 ^ 1]));
            return null;
        }
        int i4 = i2 - 1;
        ImmutableMap.Builder.DuplicateKey duplicateKey = null;
        int i5 = -1;
        if (i2 <= 128) {
            byte[] bArr = new byte[i2];
            Arrays.fill(bArr, (byte) -1);
            int i6 = 0;
            int i7 = 0;
            while (i7 < i) {
                int i8 = (i7 * 2) + i3;
                int i9 = (i6 * 2) + i3;
                Object objRequireNonNull = Objects.requireNonNull(objArr[i8]);
                Object objRequireNonNull2 = Objects.requireNonNull(objArr[i8 ^ 1]);
                CollectPreconditions.checkEntryNotNull(objRequireNonNull, objRequireNonNull2);
                int iSmear = Hashing.smear(objRequireNonNull.hashCode());
                while (true) {
                    int i10 = iSmear & i4;
                    z = z2;
                    int i11 = bArr[i10] & 255;
                    if (i11 == 255) {
                        bArr[i10] = (byte) i9;
                        if (i6 < i7) {
                            objArr[i9] = objRequireNonNull;
                            objArr[i9 ^ 1] = objRequireNonNull2;
                        }
                        i6++;
                    } else if (!objRequireNonNull.equals(objArr[i11])) {
                        iSmear = i10 + 1;
                        z2 = z;
                    } else {
                        ImmutableMap.Builder.DuplicateKey duplicateKey2 = new ImmutableMap.Builder.DuplicateKey(objRequireNonNull, objRequireNonNull2, Objects.requireNonNull(objArr[i11 ^ 1]));
                        objArr[i11 ^ 1] = objRequireNonNull2;
                        duplicateKey = duplicateKey2;
                        break;
                    }
                }
                i7++;
                z2 = z;
            }
            boolean z3 = z2;
            if (i6 == i) {
                return bArr;
            }
            Object[] objArr2 = new Object[3];
            objArr2[0] = bArr;
            objArr2[z3 ? 1 : 0] = Integer.valueOf(i6);
            objArr2[2] = duplicateKey;
            return objArr2;
        }
        if (i2 <= 32768) {
            short[] sArr = new short[i2];
            Arrays.fill(sArr, (short) -1);
            int i12 = 0;
            for (int i13 = 0; i13 < i; i13++) {
                int i14 = (i13 * 2) + i3;
                int i15 = (i12 * 2) + i3;
                Object objRequireNonNull3 = Objects.requireNonNull(objArr[i14]);
                Object objRequireNonNull4 = Objects.requireNonNull(objArr[i14 ^ 1]);
                CollectPreconditions.checkEntryNotNull(objRequireNonNull3, objRequireNonNull4);
                int iSmear2 = Hashing.smear(objRequireNonNull3.hashCode());
                while (true) {
                    int i16 = iSmear2 & i4;
                    int i17 = sArr[i16] & 65535;
                    if (i17 == 65535) {
                        sArr[i16] = (short) i15;
                        if (i12 < i13) {
                            objArr[i15] = objRequireNonNull3;
                            objArr[i15 ^ 1] = objRequireNonNull4;
                        }
                        i12++;
                    } else if (!objRequireNonNull3.equals(objArr[i17])) {
                        iSmear2 = i16 + 1;
                    } else {
                        ImmutableMap.Builder.DuplicateKey duplicateKey3 = new ImmutableMap.Builder.DuplicateKey(objRequireNonNull3, objRequireNonNull4, Objects.requireNonNull(objArr[i17 ^ 1]));
                        objArr[i17 ^ 1] = objRequireNonNull4;
                        duplicateKey = duplicateKey3;
                        break;
                    }
                }
            }
            return i12 == i ? sArr : new Object[]{sArr, Integer.valueOf(i12), duplicateKey};
        }
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        int i18 = 0;
        int i19 = 0;
        while (i19 < i) {
            int i20 = (i19 * 2) + i3;
            int i21 = (i18 * 2) + i3;
            Object objRequireNonNull5 = Objects.requireNonNull(objArr[i20]);
            Object objRequireNonNull6 = Objects.requireNonNull(objArr[i20 ^ 1]);
            CollectPreconditions.checkEntryNotNull(objRequireNonNull5, objRequireNonNull6);
            int iSmear3 = Hashing.smear(objRequireNonNull5.hashCode());
            while (true) {
                int i22 = iSmear3 & i4;
                int i23 = iArr[i22];
                if (i23 == i5) {
                    iArr[i22] = i21;
                    if (i18 < i19) {
                        objArr[i21] = objRequireNonNull5;
                        objArr[i21 ^ 1] = objRequireNonNull6;
                    }
                    i18++;
                } else if (!objRequireNonNull5.equals(objArr[i23])) {
                    iSmear3 = i22 + 1;
                    i5 = -1;
                } else {
                    ImmutableMap.Builder.DuplicateKey duplicateKey4 = new ImmutableMap.Builder.DuplicateKey(objRequireNonNull5, objRequireNonNull6, Objects.requireNonNull(objArr[i23 ^ 1]));
                    objArr[i23 ^ 1] = objRequireNonNull6;
                    duplicateKey = duplicateKey4;
                    break;
                }
            }
            i19++;
            i5 = -1;
        }
        return i18 == i ? iArr : new Object[]{iArr, Integer.valueOf(i18), duplicateKey};
    }

    @CheckForNull
    static Object createHashTableOrThrow(Object[] alternatingKeysAndValues, int n, int tableSize, int keyOffset) {
        Object hashTablePlus = createHashTable(alternatingKeysAndValues, n, tableSize, keyOffset);
        if (hashTablePlus instanceof Object[]) {
            Object[] hashTableAndSizeAndDuplicate = (Object[]) hashTablePlus;
            ImmutableMap.Builder.DuplicateKey duplicateKey = (ImmutableMap.Builder.DuplicateKey) hashTableAndSizeAndDuplicate[2];
            throw duplicateKey.exception();
        }
        return hashTablePlus;
    }

    private RegularImmutableMap(@CheckForNull Object hashTable, Object[] alternatingKeysAndValues, int size) {
        this.hashTable = hashTable;
        this.alternatingKeysAndValues = alternatingKeysAndValues;
        this.size = size;
    }

    @Override // java.util.Map
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        V v = (V) get(this.hashTable, this.alternatingKeysAndValues, this.size, 0, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    @CheckForNull
    static Object get(@CheckForNull Object hashTableObject, Object[] alternatingKeysAndValues, int size, int keyOffset, @CheckForNull Object key) {
        if (key == null) {
            return null;
        }
        if (size == 1) {
            if (!Objects.requireNonNull(alternatingKeysAndValues[keyOffset]).equals(key)) {
                return null;
            }
            return Objects.requireNonNull(alternatingKeysAndValues[keyOffset ^ 1]);
        }
        if (hashTableObject == null) {
            return null;
        }
        if (hashTableObject instanceof byte[]) {
            byte[] hashTable = (byte[]) hashTableObject;
            int mask = hashTable.length - 1;
            int h = Hashing.smear(key.hashCode());
            while (true) {
                int h2 = h & mask;
                int keyIndex = hashTable[h2] & 255;
                if (keyIndex == 255) {
                    return null;
                }
                if (!key.equals(alternatingKeysAndValues[keyIndex])) {
                    h = h2 + 1;
                } else {
                    return alternatingKeysAndValues[keyIndex ^ 1];
                }
            }
        } else if (hashTableObject instanceof short[]) {
            short[] hashTable2 = (short[]) hashTableObject;
            int mask2 = hashTable2.length - 1;
            int h3 = Hashing.smear(key.hashCode());
            while (true) {
                int h4 = h3 & mask2;
                int keyIndex2 = hashTable2[h4] & 65535;
                if (keyIndex2 == 65535) {
                    return null;
                }
                if (!key.equals(alternatingKeysAndValues[keyIndex2])) {
                    h3 = h4 + 1;
                } else {
                    return alternatingKeysAndValues[keyIndex2 ^ 1];
                }
            }
        } else {
            int[] hashTable3 = (int[]) hashTableObject;
            int mask3 = hashTable3.length - 1;
            int h5 = Hashing.smear(key.hashCode());
            while (true) {
                int h6 = h5 & mask3;
                int keyIndex3 = hashTable3[h6];
                if (keyIndex3 == -1) {
                    return null;
                }
                if (!key.equals(alternatingKeysAndValues[keyIndex3])) {
                    h5 = h6 + 1;
                } else {
                    return alternatingKeysAndValues[keyIndex3 ^ 1];
                }
            }
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new EntrySet(this, this.alternatingKeysAndValues, 0, this.size);
    }

    static class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        private final transient Object[] alternatingKeysAndValues;
        private final transient int keyOffset;
        private final transient ImmutableMap<K, V> map;
        private final transient int size;

        EntrySet(ImmutableMap<K, V> map, Object[] alternatingKeysAndValues, int keyOffset, int size) {
            this.map = map;
            this.alternatingKeysAndValues = alternatingKeysAndValues;
            this.keyOffset = keyOffset;
            this.size = size;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }

        @Override // com.google.common.collect.ImmutableCollection
        int copyIntoArray(Object[] dst, int offset) {
            return asList().copyIntoArray(dst, offset);
        }

        @Override // com.google.common.collect.ImmutableSet
        ImmutableList<Map.Entry<K, V>> createAsList() {
            return new ImmutableList<Map.Entry<K, V>>() { // from class: com.google.common.collect.RegularImmutableMap.EntrySet.1
                @Override // java.util.List
                public Map.Entry<K, V> get(int index) {
                    Preconditions.checkElementIndex(index, EntrySet.this.size);
                    return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(EntrySet.this.alternatingKeysAndValues[(index * 2) + EntrySet.this.keyOffset]), Objects.requireNonNull(EntrySet.this.alternatingKeysAndValues[(index * 2) + (EntrySet.this.keyOffset ^ 1)]));
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return EntrySet.this.size;
                }

                @Override // com.google.common.collect.ImmutableCollection
                public boolean isPartialView() {
                    return true;
                }

                @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
                Object writeReplace() {
                    return super.writeReplace();
                }
            };
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object object) {
            if (!(object instanceof Map.Entry)) {
                return false;
            }
            Map.Entry<?, ?> entry = (Map.Entry) object;
            Object k = entry.getKey();
            Object v = entry.getValue();
            return v != null && v.equals(this.map.get(k));
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.size;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        ImmutableList<K> keyList = new KeysOrValuesAsList(this.alternatingKeysAndValues, 0, this.size);
        return new KeySet(this, keyList);
    }

    static final class KeysOrValuesAsList extends ImmutableList<Object> {
        private final transient Object[] alternatingKeysAndValues;
        private final transient int offset;
        private final transient int size;

        KeysOrValuesAsList(Object[] alternatingKeysAndValues, int offset, int size) {
            this.alternatingKeysAndValues = alternatingKeysAndValues;
            this.offset = offset;
            this.size = size;
        }

        @Override // java.util.List
        public Object get(int index) {
            Preconditions.checkElementIndex(index, this.size);
            return Objects.requireNonNull(this.alternatingKeysAndValues[(index * 2) + this.offset]);
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.size;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    static final class KeySet<K> extends ImmutableSet<K> {
        private final transient ImmutableList<K> list;
        private final transient ImmutableMap<K, ?> map;

        KeySet(ImmutableMap<K, ?> map, ImmutableList<K> list) {
            this.map = map;
            this.list = list;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
        public UnmodifiableIterator<K> iterator() {
            return asList().iterator();
        }

        @Override // com.google.common.collect.ImmutableCollection
        int copyIntoArray(Object[] dst, int offset) {
            return asList().copyIntoArray(dst, offset);
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public ImmutableList<K> asList() {
            return this.list;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object object) {
            return this.map.get(object) != null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.map.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> createValues() {
        return new KeysOrValuesAsList(this.alternatingKeysAndValues, 1, this.size);
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return super.writeReplace();
    }
}
