package j$.sun.util;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes19.dex */
public abstract class PreHashedMap<V> extends AbstractMap<String, V> {
    private final Object[] ht;
    private final int mask;
    private final int rows;
    private final int shift;
    private final int size;

    protected abstract void init(Object[] objArr);

    /* JADX WARN: Generic types in debug info not equals: j$.sun.util.PreHashedMap != sun.util.PreHashedMap<V> */
    protected PreHashedMap(int rows, int size, int shift, int mask) {
        this.rows = rows;
        this.size = size;
        this.shift = shift;
        this.mask = mask;
        this.ht = new Object[rows];
        init(this.ht);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.sun.util.PreHashedMap != sun.util.PreHashedMap<V> */
    /* JADX WARN: Multi-variable type inference failed */
    private V toV(Object obj) {
        return obj;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.sun.util.PreHashedMap != sun.util.PreHashedMap<V> */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object k) {
        int h = (k.hashCode() >> this.shift) & this.mask;
        Object[] a = (Object[]) this.ht[h];
        if (a == null) {
            return null;
        }
        while (!a[0].equals(k)) {
            if (a.length < 3) {
                return null;
            }
            a = (Object[]) a[2];
        }
        return toV(a[1]);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.sun.util.PreHashedMap != sun.util.PreHashedMap<V> */
    @Override // java.util.AbstractMap, java.util.Map
    public V put(String k, V v) {
        int h = (k.hashCode() >> this.shift) & this.mask;
        Object[] a = (Object[]) this.ht[h];
        if (a == null) {
            throw new UnsupportedOperationException(k);
        }
        while (!a[0].equals(k)) {
            if (a.length < 3) {
                throw new UnsupportedOperationException(k);
            }
            a = (Object[]) a[2];
        }
        V ov = toV(a[1]);
        a[1] = v;
        return ov;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.sun.util.PreHashedMap != sun.util.PreHashedMap<V> */
    @Override // java.util.AbstractMap, java.util.Map
    public Set<String> keySet() {
        return new AbstractSet<String>() { // from class: j$.sun.util.PreHashedMap.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return PreHashedMap.this.size;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<String> iterator() {
                return new Iterator<String>() { // from class: j$.sun.util.PreHashedMap.1.1
                    private int i = -1;
                    Object[] a = null;
                    String cur = null;

                    private boolean findNext() {
                        if (this.a != null) {
                            if (this.a.length == 3) {
                                this.a = (Object[]) this.a[2];
                                this.cur = (String) this.a[0];
                                return true;
                            }
                            this.i++;
                            this.a = null;
                        }
                        this.cur = null;
                        if (this.i >= PreHashedMap.this.rows) {
                            return false;
                        }
                        if (this.i < 0 || PreHashedMap.this.ht[this.i] == null) {
                            do {
                                int i = this.i + 1;
                                this.i = i;
                                if (i >= PreHashedMap.this.rows) {
                                    return false;
                                }
                            } while (PreHashedMap.this.ht[this.i] == null);
                        }
                        this.a = (Object[]) PreHashedMap.this.ht[this.i];
                        this.cur = (String) this.a[0];
                        return true;
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        if (this.cur != null) {
                            return true;
                        }
                        return findNext();
                    }

                    @Override // java.util.Iterator
                    public String next() {
                        if (this.cur == null && !findNext()) {
                            throw new NoSuchElementException();
                        }
                        String s = this.cur;
                        this.cur = null;
                        return s;
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
                };
            }
        };
    }

    /* JADX INFO: renamed from: j$.sun.util.PreHashedMap$2, reason: invalid class name */
    class AnonymousClass2 extends AbstractSet<Map.Entry<String, V>> {
        AnonymousClass2() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return PreHashedMap.this.size;
        }

        /* JADX INFO: renamed from: j$.sun.util.PreHashedMap$2$1, reason: invalid class name */
        class AnonymousClass1 implements Iterator<Map.Entry<String, V>> {
            final Iterator<String> i;

            AnonymousClass1() {
                this.i = PreHashedMap.this.keySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.i.hasNext();
            }

            @Override // java.util.Iterator
            public Map.Entry<String, V> next() {
                return new Map.Entry<String, V>() { // from class: j$.sun.util.PreHashedMap.2.1.1
                    String k;

                    {
                        this.k = AnonymousClass1.this.i.next();
                    }

                    @Override // java.util.Map.Entry
                    public String getKey() {
                        return this.k;
                    }

                    @Override // java.util.Map.Entry
                    public V getValue() {
                        return (V) PreHashedMap.this.get(this.k);
                    }

                    @Override // java.util.Map.Entry
                    public int hashCode() {
                        int iHashCode;
                        Object obj = PreHashedMap.this.get(this.k);
                        int iHashCode2 = this.k.hashCode();
                        if (obj == null) {
                            iHashCode = 0;
                        } else {
                            iHashCode = obj.hashCode();
                        }
                        return iHashCode2 + iHashCode;
                    }

                    @Override // java.util.Map.Entry
                    public boolean equals(Object ob) {
                        if (ob == this) {
                            return true;
                        }
                        if (!(ob instanceof Map.Entry)) {
                            return false;
                        }
                        Map.Entry<?, ?> that = (Map.Entry) ob;
                        if (getKey() != null ? getKey().equals(that.getKey()) : that.getKey() == null) {
                            if (getValue() == null) {
                                if (that.getValue() == null) {
                                    return true;
                                }
                            } else if (getValue().equals(that.getValue())) {
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // java.util.Map.Entry
                    public V setValue(V v) {
                        throw new UnsupportedOperationException();
                    }
                };
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<String, V>> iterator() {
            return new AnonymousClass1();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: j$.sun.util.PreHashedMap != sun.util.PreHashedMap<V> */
    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, V>> entrySet() {
        return new AnonymousClass2();
    }
}
