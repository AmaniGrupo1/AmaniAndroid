package j$.util;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/* JADX INFO: loaded from: classes19.dex */
public class DesugarCollections {
    private DesugarCollections() {
    }

    public static <T> java.util.Collection<T> unmodifiableCollection(java.util.Collection<? extends T> c) {
        return new UnmodifiableCollection(c);
    }

    static class UnmodifiableCollection<E> implements java.util.Collection<E>, Serializable {
        private static final long serialVersionUID = 1820017752578914078L;
        final java.util.Collection<? extends E> c;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        UnmodifiableCollection(java.util.Collection<? extends E> c) {
            if (c == null) {
                throw new NullPointerException();
            }
            this.c = c;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public int size() {
            return this.c.size();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.c.isEmpty();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean contains(Object o) {
            return this.c.contains(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public Object[] toArray() {
            return this.c.toArray();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) this.c.toArray(tArr);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        public String toString() {
            return this.c.toString();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return new Iterator<E>() { // from class: j$.util.DesugarCollections.UnmodifiableCollection.1
                private final Iterator<? extends E> i;

                {
                    this.i = UnmodifiableCollection.this.c.iterator();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.i.hasNext();
                }

                @Override // java.util.Iterator
                public E next() {
                    return this.i.next();
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Iterator
                public void forEachRemaining(Consumer<? super E> action) {
                    this.i.forEachRemaining(action);
                }
            };
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean remove(Object o) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean containsAll(java.util.Collection<?> coll) {
            return this.c.containsAll(coll);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean addAll(java.util.Collection<? extends E> coll) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean removeAll(java.util.Collection<?> coll) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean retainAll(java.util.Collection<?> coll) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.lang.Iterable
        public void forEach(Consumer<? super E> action) {
            this.c.forEach(action);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super E> filter) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<E> spliterator() {
            return this.c.spliterator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public Stream<E> stream() {
            return this.c.stream();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableCollection != java.util.DesugarCollections$UnmodifiableCollection<E> */
        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            return this.c.parallelStream();
        }
    }

    public static <T> Set<T> unmodifiableSet(Set<? extends T> s) {
        return new UnmodifiableSet(s);
    }

    static class UnmodifiableSet<E> extends UnmodifiableCollection<E> implements Set<E>, Serializable {
        private static final long serialVersionUID = -9215047833775013803L;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSet != java.util.DesugarCollections$UnmodifiableSet<E> */
        UnmodifiableSet(Set<? extends E> s) {
            super(s);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSet != java.util.DesugarCollections$UnmodifiableSet<E> */
        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object o) {
            return o == this || this.c.equals(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSet != java.util.DesugarCollections$UnmodifiableSet<E> */
        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return this.c.hashCode();
        }
    }

    public static <T> SortedSet<T> unmodifiableSortedSet(SortedSet<T> s) {
        return new UnmodifiableSortedSet(s);
    }

    static class UnmodifiableSortedSet<E> extends UnmodifiableSet<E> implements SortedSet<E>, Serializable {
        private static final long serialVersionUID = -4929149591599911165L;
        private final SortedSet<E> ss;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedSet != java.util.DesugarCollections$UnmodifiableSortedSet<E> */
        UnmodifiableSortedSet(SortedSet<E> s) {
            super(s);
            this.ss = s;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedSet != java.util.DesugarCollections$UnmodifiableSortedSet<E> */
        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return this.ss.comparator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedSet != java.util.DesugarCollections$UnmodifiableSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E fromElement, E toElement) {
            return new UnmodifiableSortedSet(this.ss.subSet(fromElement, toElement));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedSet != java.util.DesugarCollections$UnmodifiableSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E toElement) {
            return new UnmodifiableSortedSet(this.ss.headSet(toElement));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedSet != java.util.DesugarCollections$UnmodifiableSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E fromElement) {
            return new UnmodifiableSortedSet(this.ss.tailSet(fromElement));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedSet != java.util.DesugarCollections$UnmodifiableSortedSet<E> */
        @Override // java.util.SortedSet
        public E first() {
            return this.ss.first();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedSet != java.util.DesugarCollections$UnmodifiableSortedSet<E> */
        @Override // java.util.SortedSet
        public E last() {
            return this.ss.last();
        }
    }

    public static <T> List<T> unmodifiableList(List<? extends T> list) {
        if (list instanceof RandomAccess) {
            return new UnmodifiableRandomAccessList(list);
        }
        return new UnmodifiableList(list);
    }

    static class UnmodifiableList<E> extends UnmodifiableCollection<E> implements List<E> {
        private static final long serialVersionUID = -283967356065247728L;
        final List<? extends E> list;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        UnmodifiableList(List<? extends E> list) {
            super(list);
            this.list = list;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.Collection, java.util.List
        public boolean equals(Object o) {
            return o == this || this.list.equals(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            return this.list.hashCode();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public E get(int index) {
            return this.list.get(index);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public E set(int index, E element) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public void add(int index, E element) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public E remove(int index) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public int indexOf(Object o) {
            return this.list.indexOf(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public int lastIndexOf(Object o) {
            return this.list.lastIndexOf(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public boolean addAll(int index, java.util.Collection<? extends E> c) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public void replaceAll(UnaryOperator<E> operator) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public void sort(Comparator<? super E> c) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public ListIterator<E> listIterator(final int index) {
            return new ListIterator<E>() { // from class: j$.util.DesugarCollections.UnmodifiableList.1
                private final ListIterator<? extends E> i;

                {
                    this.i = UnmodifiableList.this.list.listIterator(index);
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public boolean hasNext() {
                    return this.i.hasNext();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public E next() {
                    return this.i.next();
                }

                @Override // java.util.ListIterator
                public boolean hasPrevious() {
                    return this.i.hasPrevious();
                }

                @Override // java.util.ListIterator
                public E previous() {
                    return this.i.previous();
                }

                @Override // java.util.ListIterator
                public int nextIndex() {
                    return this.i.nextIndex();
                }

                @Override // java.util.ListIterator
                public int previousIndex() {
                    return this.i.previousIndex();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.ListIterator
                public void set(E e) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.ListIterator
                public void add(E e) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Iterator
                public void forEachRemaining(Consumer<? super E> action) {
                    this.i.forEachRemaining(action);
                }
            };
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        @Override // java.util.List
        public List<E> subList(int fromIndex, int toIndex) {
            return new UnmodifiableList(this.list.subList(fromIndex, toIndex));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableList != java.util.DesugarCollections$UnmodifiableList<E> */
        private Object readResolve() {
            return this.list instanceof RandomAccess ? new UnmodifiableRandomAccessList(this.list) : this;
        }
    }

    static class UnmodifiableRandomAccessList<E> extends UnmodifiableList<E> implements RandomAccess {
        private static final long serialVersionUID = -2542308836966382001L;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableRandomAccessList != java.util.DesugarCollections$UnmodifiableRandomAccessList<E> */
        UnmodifiableRandomAccessList(List<? extends E> list) {
            super(list);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableRandomAccessList != java.util.DesugarCollections$UnmodifiableRandomAccessList<E> */
        @Override // j$.util.DesugarCollections.UnmodifiableList, java.util.List
        public List<E> subList(int fromIndex, int toIndex) {
            return new UnmodifiableRandomAccessList(this.list.subList(fromIndex, toIndex));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableRandomAccessList != java.util.DesugarCollections$UnmodifiableRandomAccessList<E> */
        private Object writeReplace() {
            return new UnmodifiableList(this.list);
        }
    }

    public static <K, V> Map<K, V> unmodifiableMap(Map<? extends K, ? extends V> m) {
        return new UnmodifiableMap(m);
    }

    private static class UnmodifiableMap<K, V> implements Map<K, V>, Serializable {
        private static final long serialVersionUID = -1034234728574286014L;
        private transient Set<Map.Entry<K, V>> entrySet;
        private transient Set<K> keySet;
        private final Map<? extends K, ? extends V> m;
        private transient java.util.Collection<V> values;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        UnmodifiableMap(Map<? extends K, ? extends V> m) {
            if (m == null) {
                throw new NullPointerException();
            }
            this.m = m;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public int size() {
            return this.m.size();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public boolean isEmpty() {
            return this.m.isEmpty();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public boolean containsKey(Object key) {
            return this.m.containsKey(key);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public boolean containsValue(Object val) {
            return this.m.containsValue(val);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V get(Object key) {
            return this.m.get(key);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V put(K key, V value) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V remove(Object key) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> m) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public Set<K> keySet() {
            if (this.keySet == null) {
                this.keySet = DesugarCollections.unmodifiableSet(this.m.keySet());
            }
            return this.keySet;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            if (this.entrySet == null) {
                this.entrySet = new UnmodifiableEntrySet(this.m.entrySet());
            }
            return this.entrySet;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public java.util.Collection<V> values() {
            if (this.values == null) {
                this.values = DesugarCollections.unmodifiableCollection(this.m.values());
            }
            return this.values;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public boolean equals(Object o) {
            return o == this || this.m.equals(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public int hashCode() {
            return this.m.hashCode();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        public String toString() {
            return this.m.toString();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V getOrDefault(Object k, V defaultValue) {
            return this.m.getOrDefault(k, defaultValue);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public void forEach(BiConsumer<? super K, ? super V> action) {
            this.m.forEach(action);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public void replaceAll(BiFunction<? super K, ? super V, ? extends V> function) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V putIfAbsent(K key, V value) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public boolean remove(Object key, Object value) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public boolean replace(K key, V oldValue, V newValue) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V replace(K key, V value) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V computeIfAbsent(K key, Function<? super K, ? extends V> mappingFunction) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap != java.util.DesugarCollections$UnmodifiableMap<K, V> */
        @Override // java.util.Map
        public V merge(K key, V value, BiFunction<? super V, ? super V, ? extends V> remappingFunction) {
            throw new UnsupportedOperationException();
        }

        static class UnmodifiableEntrySet<K, V> extends UnmodifiableSet<Map.Entry<K, V>> {
            private static final long serialVersionUID = 7854390611657943733L;

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            UnmodifiableEntrySet(Set<? extends Map.Entry<? extends K, ? extends V>> s) {
                super(s);
            }

            static <K, V> Consumer<Map.Entry<? extends K, ? extends V>> entryConsumer(final Consumer<? super Map.Entry<K, V>> action) {
                return new Consumer() { // from class: j$.util.DesugarCollections.UnmodifiableMap.UnmodifiableEntrySet.0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        UnmodifiableEntrySet.lambda$entryConsumer$0(action, (Map.Entry) obj);
                    }
                };
            }

            static /* synthetic */ void lambda$entryConsumer$0(Consumer action, Map.Entry e) {
                action.accept(new UnmodifiableEntry(e));
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.lang.Iterable
            public void forEach(Consumer<? super Map.Entry<K, V>> consumer) {
                Objects.requireNonNull(consumer);
                this.c.forEach((Consumer<? super T>) entryConsumer(consumer));
            }

            static final class UnmodifiableEntrySetSpliterator<K, V> implements Spliterator<Map.Entry<K, V>> {
                final Spliterator<Map.Entry<K, V>> s;

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                UnmodifiableEntrySetSpliterator(Spliterator<Map.Entry<K, V>> s) {
                    this.s = s;
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                @Override // java.util.Spliterator
                public boolean tryAdvance(Consumer<? super Map.Entry<K, V>> action) {
                    Objects.requireNonNull(action);
                    return this.s.tryAdvance(UnmodifiableEntrySet.entryConsumer(action));
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                @Override // java.util.Spliterator
                public void forEachRemaining(Consumer<? super Map.Entry<K, V>> action) {
                    Objects.requireNonNull(action);
                    this.s.forEachRemaining(UnmodifiableEntrySet.entryConsumer(action));
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                @Override // java.util.Spliterator
                public Spliterator<Map.Entry<K, V>> trySplit() {
                    Spliterator<Map.Entry<K, V>> split = this.s.trySplit();
                    if (split == null) {
                        return null;
                    }
                    return new UnmodifiableEntrySetSpliterator(split);
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                @Override // java.util.Spliterator
                public long estimateSize() {
                    return this.s.estimateSize();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                @Override // java.util.Spliterator
                public long getExactSizeIfKnown() {
                    return this.s.getExactSizeIfKnown();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                @Override // java.util.Spliterator
                public int characteristics() {
                    return this.s.characteristics();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                @Override // java.util.Spliterator
                public boolean hasCharacteristics(int characteristics) {
                    return this.s.hasCharacteristics(characteristics);
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<K, V> */
                @Override // java.util.Spliterator
                public Comparator<? super Map.Entry<K, V>> getComparator() {
                    return this.s.getComparator();
                }
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.util.Collection, java.lang.Iterable
            public Spliterator<Map.Entry<K, V>> spliterator() {
                return new UnmodifiableEntrySetSpliterator(this.c.spliterator());
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.util.Collection
            public Stream<Map.Entry<K, V>> stream() {
                return StreamSupport.stream(spliterator(), false);
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.util.Collection
            public Stream<Map.Entry<K, V>> parallelStream() {
                return StreamSupport.stream(spliterator(), true);
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.util.Collection, java.lang.Iterable
            public Iterator<Map.Entry<K, V>> iterator() {
                return new Iterator<Map.Entry<K, V>>() { // from class: j$.util.DesugarCollections.UnmodifiableMap.UnmodifiableEntrySet.1
                    private final Iterator<? extends Map.Entry<? extends K, ? extends V>> i;

                    {
                        this.i = UnmodifiableEntrySet.this.c.iterator();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.i.hasNext();
                    }

                    @Override // java.util.Iterator
                    public Map.Entry<K, V> next() {
                        return new UnmodifiableEntry(this.i.next());
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }

                    @Override // java.util.Iterator
                    public void forEachRemaining(Consumer<? super Map.Entry<K, V>> action) {
                        this.i.forEachRemaining(UnmodifiableEntrySet.entryConsumer(action));
                    }
                };
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.util.Collection
            public Object[] toArray() {
                Object[] a = this.c.toArray();
                for (int i = 0; i < a.length; i++) {
                    a[i] = new UnmodifiableEntry((Map.Entry) a[i]);
                }
                return a;
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                T[] tArr2 = (T[]) this.c.toArray(tArr.length == 0 ? tArr : Arrays.copyOf(tArr, 0));
                for (int i = 0; i < tArr2.length; i++) {
                    tArr2[i] = new UnmodifiableEntry((Map.Entry) tArr2[i]);
                }
                if (tArr2.length > tArr.length) {
                    return tArr2;
                }
                System.arraycopy(tArr2, 0, tArr, 0, tArr2.length);
                if (tArr.length > tArr2.length) {
                    tArr[tArr2.length] = null;
                }
                return tArr;
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.util.Collection
            public boolean contains(Object o) {
                if (!(o instanceof Map.Entry)) {
                    return false;
                }
                return this.c.contains(new UnmodifiableEntry((Map.Entry) o));
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            @Override // j$.util.DesugarCollections.UnmodifiableCollection, java.util.Collection
            public boolean containsAll(java.util.Collection<?> coll) {
                for (Object e : coll) {
                    if (!contains(e)) {
                        return false;
                    }
                }
                return true;
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<K, V> */
            @Override // j$.util.DesugarCollections.UnmodifiableSet, java.util.Collection, java.util.Set
            public boolean equals(Object o) {
                if (o == this) {
                    return true;
                }
                if (!(o instanceof Set)) {
                    return false;
                }
                Set<?> s = (Set) o;
                if (s.size() != this.c.size()) {
                    return false;
                }
                return containsAll(s);
            }

            private static class UnmodifiableEntry<K, V> implements Map.Entry<K, V> {
                private Map.Entry<? extends K, ? extends V> e;

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<K, V> */
                UnmodifiableEntry(Map.Entry<? extends K, ? extends V> e) {
                    this.e = (Map.Entry) Objects.requireNonNull(e);
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<K, V> */
                @Override // java.util.Map.Entry
                public K getKey() {
                    return this.e.getKey();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<K, V> */
                @Override // java.util.Map.Entry
                public V getValue() {
                    return this.e.getValue();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<K, V> */
                @Override // java.util.Map.Entry
                public V setValue(V value) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<K, V> */
                @Override // java.util.Map.Entry
                public int hashCode() {
                    return this.e.hashCode();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<K, V> */
                @Override // java.util.Map.Entry
                public boolean equals(Object o) {
                    if (this == o) {
                        return true;
                    }
                    if (!(o instanceof Map.Entry)) {
                        return false;
                    }
                    Map.Entry<?, ?> t = (Map.Entry) o;
                    return DesugarCollections.eq(this.e.getKey(), t.getKey()) && DesugarCollections.eq(this.e.getValue(), t.getValue());
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry != java.util.DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<K, V> */
                public String toString() {
                    return this.e.toString();
                }
            }
        }
    }

    public static <K, V> SortedMap<K, V> unmodifiableSortedMap(SortedMap<K, ? extends V> m) {
        return new UnmodifiableSortedMap(m);
    }

    static class UnmodifiableSortedMap<K, V> extends UnmodifiableMap<K, V> implements SortedMap<K, V>, Serializable {
        private static final long serialVersionUID = -8806743815996713206L;
        private final SortedMap<K, ? extends V> sm;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedMap != java.util.DesugarCollections$UnmodifiableSortedMap<K, V> */
        UnmodifiableSortedMap(SortedMap<K, ? extends V> m) {
            super(m);
            this.sm = m;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedMap != java.util.DesugarCollections$UnmodifiableSortedMap<K, V> */
        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.sm.comparator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedMap != java.util.DesugarCollections$UnmodifiableSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K fromKey, K toKey) {
            return new UnmodifiableSortedMap(this.sm.subMap(fromKey, toKey));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedMap != java.util.DesugarCollections$UnmodifiableSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K toKey) {
            return new UnmodifiableSortedMap(this.sm.headMap(toKey));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedMap != java.util.DesugarCollections$UnmodifiableSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K fromKey) {
            return new UnmodifiableSortedMap(this.sm.tailMap(fromKey));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedMap != java.util.DesugarCollections$UnmodifiableSortedMap<K, V> */
        @Override // java.util.SortedMap
        public K firstKey() {
            return this.sm.firstKey();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$UnmodifiableSortedMap != java.util.DesugarCollections$UnmodifiableSortedMap<K, V> */
        @Override // java.util.SortedMap
        public K lastKey() {
            return this.sm.lastKey();
        }
    }

    public static <T> java.util.Collection<T> bridge_synchronizedCollection(java.util.Collection<T> c, Object mutex) {
        return synchronizedCollection(c, mutex);
    }

    public static <T> Set<T> bridge_synchronizedSet(Set<T> s, Object mutex) {
        return synchronizedSet(s, mutex);
    }

    public static <T> List<T> bridge_synchronizedList(List<T> l, Object mutex) {
        return synchronizedList(l, mutex);
    }

    public static <T> java.util.Collection<T> synchronizedCollection(java.util.Collection<T> c) {
        return new SynchronizedCollection(c);
    }

    static <T> java.util.Collection<T> synchronizedCollection(java.util.Collection<T> c, Object mutex) {
        return new SynchronizedCollection(c, mutex);
    }

    static class SynchronizedCollection<E> implements java.util.Collection<E>, Serializable {
        private static final long serialVersionUID = 3053995032091335093L;
        final java.util.Collection<E> c;
        final Object mutex;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        SynchronizedCollection(java.util.Collection<E> c) {
            this.c = (java.util.Collection) Objects.requireNonNull(c);
            this.mutex = this;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        SynchronizedCollection(java.util.Collection<E> c, Object mutex) {
            this.c = (java.util.Collection) Objects.requireNonNull(c);
            this.mutex = Objects.requireNonNull(mutex);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = this.c.size();
            }
            return size;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.mutex) {
                zIsEmpty = this.c.isEmpty();
            }
            return zIsEmpty;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean contains(Object o) {
            boolean zContains;
            synchronized (this.mutex) {
                zContains = this.c.contains(o);
            }
            return zContains;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public Object[] toArray() {
            Object[] array;
            synchronized (this.mutex) {
                array = this.c.toArray();
            }
            return array;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.mutex) {
                tArr2 = (T[]) this.c.toArray(tArr);
            }
            return tArr2;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return this.c.iterator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean add(E e) {
            boolean zAdd;
            synchronized (this.mutex) {
                zAdd = this.c.add(e);
            }
            return zAdd;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean remove(Object o) {
            boolean zRemove;
            synchronized (this.mutex) {
                zRemove = this.c.remove(o);
            }
            return zRemove;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean containsAll(java.util.Collection<?> coll) {
            boolean zContainsAll;
            synchronized (this.mutex) {
                zContainsAll = this.c.containsAll(coll);
            }
            return zContainsAll;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean addAll(java.util.Collection<? extends E> coll) {
            boolean zAddAll;
            synchronized (this.mutex) {
                zAddAll = this.c.addAll(coll);
            }
            return zAddAll;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean removeAll(java.util.Collection<?> coll) {
            boolean zRemoveAll;
            synchronized (this.mutex) {
                zRemoveAll = this.c.removeAll(coll);
            }
            return zRemoveAll;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean retainAll(java.util.Collection<?> coll) {
            boolean zRetainAll;
            synchronized (this.mutex) {
                zRetainAll = this.c.retainAll(coll);
            }
            return zRetainAll;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public void clear() {
            synchronized (this.mutex) {
                this.c.clear();
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        public String toString() {
            String string;
            synchronized (this.mutex) {
                string = this.c.toString();
            }
            return string;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.lang.Iterable
        public void forEach(Consumer<? super E> consumer) {
            synchronized (this.mutex) {
                this.c.forEach(consumer);
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super E> filter) {
            boolean zRemoveIf;
            synchronized (this.mutex) {
                zRemoveIf = this.c.removeIf(filter);
            }
            return zRemoveIf;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<E> spliterator() {
            return this.c.spliterator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public Stream<E> stream() {
            return this.c.stream();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            return this.c.parallelStream();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedCollection != java.util.DesugarCollections$SynchronizedCollection<E> */
        private void writeObject(ObjectOutputStream s) {
            synchronized (this.mutex) {
                s.defaultWriteObject();
            }
        }
    }

    public static <T> Set<T> synchronizedSet(Set<T> s) {
        return new SynchronizedSet(s);
    }

    static <T> Set<T> synchronizedSet(Set<T> s, Object mutex) {
        return new SynchronizedSet(s, mutex);
    }

    static class SynchronizedSet<E> extends SynchronizedCollection<E> implements Set<E> {
        private static final long serialVersionUID = 487447009682186044L;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSet != java.util.DesugarCollections$SynchronizedSet<E> */
        SynchronizedSet(Set<E> s) {
            super(s);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSet != java.util.DesugarCollections$SynchronizedSet<E> */
        SynchronizedSet(Set<E> s, Object mutex) {
            super(s, mutex);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSet != java.util.DesugarCollections$SynchronizedSet<E> */
        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object o) {
            boolean zEquals;
            if (this == o) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = this.c.equals(o);
            }
            return zEquals;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSet != java.util.DesugarCollections$SynchronizedSet<E> */
        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = this.c.hashCode();
            }
            return iHashCode;
        }
    }

    public static <T> SortedSet<T> synchronizedSortedSet(SortedSet<T> s) {
        return new SynchronizedSortedSet(s);
    }

    static class SynchronizedSortedSet<E> extends SynchronizedSet<E> implements SortedSet<E> {
        private static final long serialVersionUID = 8695801310862127406L;
        private final SortedSet<E> ss;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedSet != java.util.DesugarCollections$SynchronizedSortedSet<E> */
        SynchronizedSortedSet(SortedSet<E> s) {
            super(s);
            this.ss = s;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedSet != java.util.DesugarCollections$SynchronizedSortedSet<E> */
        SynchronizedSortedSet(SortedSet<E> s, Object mutex) {
            super(s, mutex);
            this.ss = s;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedSet != java.util.DesugarCollections$SynchronizedSortedSet<E> */
        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator;
            synchronized (this.mutex) {
                comparator = this.ss.comparator();
            }
            return comparator;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedSet != java.util.DesugarCollections$SynchronizedSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E fromElement, E toElement) {
            SynchronizedSortedSet synchronizedSortedSet;
            synchronized (this.mutex) {
                synchronizedSortedSet = new SynchronizedSortedSet(this.ss.subSet(fromElement, toElement), this.mutex);
            }
            return synchronizedSortedSet;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedSet != java.util.DesugarCollections$SynchronizedSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E toElement) {
            SynchronizedSortedSet synchronizedSortedSet;
            synchronized (this.mutex) {
                synchronizedSortedSet = new SynchronizedSortedSet(this.ss.headSet(toElement), this.mutex);
            }
            return synchronizedSortedSet;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedSet != java.util.DesugarCollections$SynchronizedSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E fromElement) {
            SynchronizedSortedSet synchronizedSortedSet;
            synchronized (this.mutex) {
                synchronizedSortedSet = new SynchronizedSortedSet(this.ss.tailSet(fromElement), this.mutex);
            }
            return synchronizedSortedSet;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedSet != java.util.DesugarCollections$SynchronizedSortedSet<E> */
        @Override // java.util.SortedSet
        public E first() {
            E eFirst;
            synchronized (this.mutex) {
                eFirst = this.ss.first();
            }
            return eFirst;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedSet != java.util.DesugarCollections$SynchronizedSortedSet<E> */
        @Override // java.util.SortedSet
        public E last() {
            E eLast;
            synchronized (this.mutex) {
                eLast = this.ss.last();
            }
            return eLast;
        }
    }

    public static <T> List<T> synchronizedList(List<T> list) {
        if (list instanceof RandomAccess) {
            return new SynchronizedRandomAccessList(list);
        }
        return new SynchronizedList(list);
    }

    static <T> List<T> synchronizedList(List<T> list, Object mutex) {
        if (list instanceof RandomAccess) {
            return new SynchronizedRandomAccessList(list, mutex);
        }
        return new SynchronizedList(list, mutex);
    }

    static class SynchronizedList<E> extends SynchronizedCollection<E> implements List<E> {
        private static final long serialVersionUID = -7754090372962971524L;
        final List<E> list;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        SynchronizedList(List<E> list) {
            super(list);
            this.list = list;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        SynchronizedList(List<E> list, Object mutex) {
            super(list, mutex);
            this.list = list;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.Collection, java.util.List
        public boolean equals(Object o) {
            boolean zEquals;
            if (this == o) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = this.list.equals(o);
            }
            return zEquals;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = this.list.hashCode();
            }
            return iHashCode;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public E get(int index) {
            E e;
            synchronized (this.mutex) {
                e = this.list.get(index);
            }
            return e;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public E set(int index, E element) {
            E e;
            synchronized (this.mutex) {
                e = this.list.set(index, element);
            }
            return e;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public void add(int index, E element) {
            synchronized (this.mutex) {
                this.list.add(index, element);
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public E remove(int index) {
            E eRemove;
            synchronized (this.mutex) {
                eRemove = this.list.remove(index);
            }
            return eRemove;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public int indexOf(Object o) {
            int iIndexOf;
            synchronized (this.mutex) {
                iIndexOf = this.list.indexOf(o);
            }
            return iIndexOf;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public int lastIndexOf(Object o) {
            int iLastIndexOf;
            synchronized (this.mutex) {
                iLastIndexOf = this.list.lastIndexOf(o);
            }
            return iLastIndexOf;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public boolean addAll(int index, java.util.Collection<? extends E> c) {
            boolean zAddAll;
            synchronized (this.mutex) {
                zAddAll = this.list.addAll(index, c);
            }
            return zAddAll;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return this.list.listIterator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public ListIterator<E> listIterator(int index) {
            return this.list.listIterator(index);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public List<E> subList(int fromIndex, int toIndex) {
            SynchronizedList synchronizedList;
            synchronized (this.mutex) {
                synchronizedList = new SynchronizedList(this.list.subList(fromIndex, toIndex), this.mutex);
            }
            return synchronizedList;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public void replaceAll(UnaryOperator<E> operator) {
            synchronized (this.mutex) {
                this.list.replaceAll(operator);
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        @Override // java.util.List
        public void sort(Comparator<? super E> c) {
            synchronized (this.mutex) {
                this.list.sort(c);
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedList != java.util.DesugarCollections$SynchronizedList<E> */
        private Object readResolve() {
            return this.list instanceof RandomAccess ? new SynchronizedRandomAccessList(this.list) : this;
        }
    }

    static class SynchronizedRandomAccessList<E> extends SynchronizedList<E> implements RandomAccess {
        private static final long serialVersionUID = 1530674583602358482L;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedRandomAccessList != java.util.DesugarCollections$SynchronizedRandomAccessList<E> */
        SynchronizedRandomAccessList(List<E> list) {
            super(list);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedRandomAccessList != java.util.DesugarCollections$SynchronizedRandomAccessList<E> */
        SynchronizedRandomAccessList(List<E> list, Object mutex) {
            super(list, mutex);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedRandomAccessList != java.util.DesugarCollections$SynchronizedRandomAccessList<E> */
        @Override // j$.util.DesugarCollections.SynchronizedList, java.util.List
        public List<E> subList(int fromIndex, int toIndex) {
            SynchronizedRandomAccessList synchronizedRandomAccessList;
            synchronized (this.mutex) {
                synchronizedRandomAccessList = new SynchronizedRandomAccessList(this.list.subList(fromIndex, toIndex), this.mutex);
            }
            return synchronizedRandomAccessList;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedRandomAccessList != java.util.DesugarCollections$SynchronizedRandomAccessList<E> */
        private Object writeReplace() {
            return new SynchronizedList(this.list);
        }
    }

    public static <K, V> Map<K, V> synchronizedMap(Map<K, V> m) {
        return new SynchronizedMap(m);
    }

    private static class SynchronizedMap<K, V> implements Map<K, V>, Serializable {
        private static final long serialVersionUID = 1978198479659022715L;
        private transient Set<Map.Entry<K, V>> entrySet;
        private transient Set<K> keySet;
        private final Map<K, V> m;
        final Object mutex;
        private transient java.util.Collection<V> values;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        SynchronizedMap(Map<K, V> m) {
            this.m = (Map) Objects.requireNonNull(m);
            this.mutex = this;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        SynchronizedMap(Map<K, V> m, Object mutex) {
            this.m = m;
            this.mutex = mutex;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = this.m.size();
            }
            return size;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.mutex) {
                zIsEmpty = this.m.isEmpty();
            }
            return zIsEmpty;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public boolean containsKey(Object key) {
            boolean zContainsKey;
            synchronized (this.mutex) {
                zContainsKey = this.m.containsKey(key);
            }
            return zContainsKey;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public boolean containsValue(Object value) {
            boolean zContainsValue;
            synchronized (this.mutex) {
                zContainsValue = this.m.containsValue(value);
            }
            return zContainsValue;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V get(Object key) {
            V v;
            synchronized (this.mutex) {
                v = this.m.get(key);
            }
            return v;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V put(K key, V value) {
            V vPut;
            synchronized (this.mutex) {
                vPut = this.m.put(key, value);
            }
            return vPut;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V remove(Object key) {
            V vRemove;
            synchronized (this.mutex) {
                vRemove = this.m.remove(key);
            }
            return vRemove;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.mutex) {
                this.m.putAll(map);
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public void clear() {
            synchronized (this.mutex) {
                this.m.clear();
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.mutex) {
                if (this.keySet == null) {
                    this.keySet = new SynchronizedSet(this.m.keySet(), this.mutex);
                }
                set = this.keySet;
            }
            return set;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = new SynchronizedSet(this.m.entrySet(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public java.util.Collection<V> values() {
            java.util.Collection<V> collection;
            synchronized (this.mutex) {
                if (this.values == null) {
                    this.values = new SynchronizedCollection(this.m.values(), this.mutex);
                }
                collection = this.values;
            }
            return collection;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public boolean equals(Object o) {
            boolean zEquals;
            if (this == o) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = this.m.equals(o);
            }
            return zEquals;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = this.m.hashCode();
            }
            return iHashCode;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        public String toString() {
            String string;
            synchronized (this.mutex) {
                string = this.m.toString();
            }
            return string;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V getOrDefault(Object k, V defaultValue) {
            V orDefault;
            synchronized (this.mutex) {
                orDefault = this.m.getOrDefault(k, defaultValue);
            }
            return orDefault;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public void forEach(BiConsumer<? super K, ? super V> action) {
            synchronized (this.mutex) {
                this.m.forEach(action);
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public void replaceAll(BiFunction<? super K, ? super V, ? extends V> function) {
            synchronized (this.mutex) {
                this.m.replaceAll(function);
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V putIfAbsent(K key, V value) {
            V vPutIfAbsent;
            synchronized (this.mutex) {
                vPutIfAbsent = this.m.putIfAbsent(key, value);
            }
            return vPutIfAbsent;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public boolean remove(Object key, Object value) {
            boolean zRemove;
            synchronized (this.mutex) {
                zRemove = this.m.remove(key, value);
            }
            return zRemove;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public boolean replace(K key, V oldValue, V newValue) {
            boolean zReplace;
            synchronized (this.mutex) {
                zReplace = this.m.replace(key, oldValue, newValue);
            }
            return zReplace;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V replace(K key, V value) {
            V vReplace;
            synchronized (this.mutex) {
                vReplace = this.m.replace(key, value);
            }
            return vReplace;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V computeIfAbsent(K key, Function<? super K, ? extends V> mappingFunction) {
            V vComputeIfAbsent;
            synchronized (this.mutex) {
                vComputeIfAbsent = this.m.computeIfAbsent(key, mappingFunction);
            }
            return vComputeIfAbsent;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
            V vComputeIfPresent;
            synchronized (this.mutex) {
                vComputeIfPresent = this.m.computeIfPresent(key, remappingFunction);
            }
            return vComputeIfPresent;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
            V vCompute;
            synchronized (this.mutex) {
                vCompute = this.m.compute(key, remappingFunction);
            }
            return vCompute;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        @Override // java.util.Map
        public V merge(K key, V value, BiFunction<? super V, ? super V, ? extends V> remappingFunction) {
            V vMerge;
            synchronized (this.mutex) {
                vMerge = this.m.merge(key, value, remappingFunction);
            }
            return vMerge;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedMap != java.util.DesugarCollections$SynchronizedMap<K, V> */
        private void writeObject(ObjectOutputStream s) {
            synchronized (this.mutex) {
                s.defaultWriteObject();
            }
        }
    }

    public static <K, V> SortedMap<K, V> synchronizedSortedMap(SortedMap<K, V> m) {
        return new SynchronizedSortedMap(m);
    }

    static class SynchronizedSortedMap<K, V> extends SynchronizedMap<K, V> implements SortedMap<K, V> {
        private static final long serialVersionUID = -8798146769416483793L;
        private final SortedMap<K, V> sm;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedMap != java.util.DesugarCollections$SynchronizedSortedMap<K, V> */
        SynchronizedSortedMap(SortedMap<K, V> m) {
            super(m);
            this.sm = m;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedMap != java.util.DesugarCollections$SynchronizedSortedMap<K, V> */
        SynchronizedSortedMap(SortedMap<K, V> m, Object mutex) {
            super(m, mutex);
            this.sm = m;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedMap != java.util.DesugarCollections$SynchronizedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator;
            synchronized (this.mutex) {
                comparator = this.sm.comparator();
            }
            return comparator;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedMap != java.util.DesugarCollections$SynchronizedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K fromKey, K toKey) {
            SynchronizedSortedMap synchronizedSortedMap;
            synchronized (this.mutex) {
                synchronizedSortedMap = new SynchronizedSortedMap(this.sm.subMap(fromKey, toKey), this.mutex);
            }
            return synchronizedSortedMap;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedMap != java.util.DesugarCollections$SynchronizedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K toKey) {
            SynchronizedSortedMap synchronizedSortedMap;
            synchronized (this.mutex) {
                synchronizedSortedMap = new SynchronizedSortedMap(this.sm.headMap(toKey), this.mutex);
            }
            return synchronizedSortedMap;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedMap != java.util.DesugarCollections$SynchronizedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K fromKey) {
            SynchronizedSortedMap synchronizedSortedMap;
            synchronized (this.mutex) {
                synchronizedSortedMap = new SynchronizedSortedMap(this.sm.tailMap(fromKey), this.mutex);
            }
            return synchronizedSortedMap;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedMap != java.util.DesugarCollections$SynchronizedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public K firstKey() {
            K kFirstKey;
            synchronized (this.mutex) {
                kFirstKey = this.sm.firstKey();
            }
            return kFirstKey;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$SynchronizedSortedMap != java.util.DesugarCollections$SynchronizedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public K lastKey() {
            K kLastKey;
            synchronized (this.mutex) {
                kLastKey = this.sm.lastKey();
            }
            return kLastKey;
        }
    }

    public static <E> java.util.Collection<E> checkedCollection(java.util.Collection<E> c, Class<E> type) {
        return new CheckedCollection(c, type);
    }

    static <T> T[] zeroLengthArray(Class<T> cls) {
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 0));
    }

    static class CheckedCollection<E> implements java.util.Collection<E>, Serializable {
        private static final long serialVersionUID = 1578914078182001775L;
        final java.util.Collection<E> c;
        final Class<E> type;
        private E[] zeroLengthElementArray;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        /* JADX WARN: Multi-variable type inference failed */
        E typeCheck(Object obj) {
            if (obj != 0 && !this.type.isInstance(obj)) {
                throw new ClassCastException(badElementMsg(obj));
            }
            return obj;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        private String badElementMsg(Object o) {
            return "Attempt to insert " + o.getClass() + " element into collection with element type " + this.type;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        CheckedCollection(java.util.Collection<E> c, Class<E> type) {
            this.c = (java.util.Collection) Objects.requireNonNull(c, "c");
            this.type = (Class) Objects.requireNonNull(type, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public int size() {
            return this.c.size();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.c.isEmpty();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean contains(Object o) {
            return this.c.contains(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public Object[] toArray() {
            return this.c.toArray();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) this.c.toArray(tArr);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        public String toString() {
            return this.c.toString();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean remove(Object o) {
            return this.c.remove(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public void clear() {
            this.c.clear();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean containsAll(java.util.Collection<?> coll) {
            return this.c.containsAll(coll);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean removeAll(java.util.Collection<?> coll) {
            return this.c.removeAll(coll);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean retainAll(java.util.Collection<?> coll) {
            return this.c.retainAll(coll);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            final Iterator<E> it = this.c.iterator();
            return new Iterator<E>() { // from class: j$.util.DesugarCollections.CheckedCollection.1
                @Override // java.util.Iterator
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                public E next() {
                    return (E) it.next();
                }

                @Override // java.util.Iterator
                public void remove() {
                    it.remove();
                }

                @Override // java.util.Iterator
                public void forEachRemaining(Consumer<? super E> action) {
                    it.forEachRemaining(action);
                }
            };
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean add(E e) {
            return this.c.add(typeCheck(e));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        private E[] zeroLengthElementArray() {
            if (this.zeroLengthElementArray != null) {
                return this.zeroLengthElementArray;
            }
            E[] eArr = (E[]) DesugarCollections.zeroLengthArray(this.type);
            this.zeroLengthElementArray = eArr;
            return eArr;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        java.util.Collection<E> checkedCopyOf(java.util.Collection<? extends E> coll) {
            Object[] a;
            try {
                E[] z = zeroLengthElementArray();
                a = coll.toArray(z);
                if (a.getClass() != z.getClass()) {
                    a = Arrays.copyOf(a, a.length, z.getClass());
                }
            } catch (ArrayStoreException e) {
                a = (Object[]) coll.toArray().clone();
                for (Object o : a) {
                    typeCheck(o);
                }
            }
            return Arrays.asList(a);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean addAll(java.util.Collection<? extends E> coll) {
            return this.c.addAll(checkedCopyOf(coll));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.lang.Iterable
        public void forEach(Consumer<? super E> action) {
            this.c.forEach(action);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super E> filter) {
            return this.c.removeIf(filter);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<E> spliterator() {
            return this.c.spliterator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public Stream<E> stream() {
            return this.c.stream();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedCollection != java.util.DesugarCollections$CheckedCollection<E> */
        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            return this.c.parallelStream();
        }
    }

    public static <E> Set<E> checkedSet(Set<E> s, Class<E> type) {
        return new CheckedSet(s, type);
    }

    static class CheckedSet<E> extends CheckedCollection<E> implements Set<E>, Serializable {
        private static final long serialVersionUID = 4694047833775013803L;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSet != java.util.DesugarCollections$CheckedSet<E> */
        CheckedSet(Set<E> s, Class<E> elementType) {
            super(s, elementType);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSet != java.util.DesugarCollections$CheckedSet<E> */
        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object o) {
            return o == this || this.c.equals(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSet != java.util.DesugarCollections$CheckedSet<E> */
        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return this.c.hashCode();
        }
    }

    public static <E> SortedSet<E> checkedSortedSet(SortedSet<E> s, Class<E> type) {
        return new CheckedSortedSet(s, type);
    }

    static class CheckedSortedSet<E> extends CheckedSet<E> implements SortedSet<E>, Serializable {
        private static final long serialVersionUID = 1599911165492914959L;
        private final SortedSet<E> ss;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedSet != java.util.DesugarCollections$CheckedSortedSet<E> */
        CheckedSortedSet(SortedSet<E> s, Class<E> type) {
            super(s, type);
            this.ss = s;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedSet != java.util.DesugarCollections$CheckedSortedSet<E> */
        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return this.ss.comparator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedSet != java.util.DesugarCollections$CheckedSortedSet<E> */
        @Override // java.util.SortedSet
        public E first() {
            return this.ss.first();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedSet != java.util.DesugarCollections$CheckedSortedSet<E> */
        @Override // java.util.SortedSet
        public E last() {
            return this.ss.last();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedSet != java.util.DesugarCollections$CheckedSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E fromElement, E toElement) {
            return DesugarCollections.checkedSortedSet(this.ss.subSet(fromElement, toElement), this.type);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedSet != java.util.DesugarCollections$CheckedSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E toElement) {
            return DesugarCollections.checkedSortedSet(this.ss.headSet(toElement), this.type);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedSet != java.util.DesugarCollections$CheckedSortedSet<E> */
        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E fromElement) {
            return DesugarCollections.checkedSortedSet(this.ss.tailSet(fromElement), this.type);
        }
    }

    public static <E> List<E> checkedList(List<E> list, Class<E> type) {
        if (list instanceof RandomAccess) {
            return new CheckedRandomAccessList(list, type);
        }
        return new CheckedList(list, type);
    }

    static class CheckedList<E> extends CheckedCollection<E> implements List<E> {
        private static final long serialVersionUID = 65247728283967356L;
        final List<E> list;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        CheckedList(List<E> list, Class<E> type) {
            super(list, type);
            this.list = list;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.Collection, java.util.List
        public boolean equals(Object o) {
            return o == this || this.list.equals(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            return this.list.hashCode();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public E get(int index) {
            return this.list.get(index);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public E remove(int index) {
            return this.list.remove(index);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public int indexOf(Object o) {
            return this.list.indexOf(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public int lastIndexOf(Object o) {
            return this.list.lastIndexOf(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public E set(int index, E element) {
            return this.list.set(index, typeCheck(element));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public void add(int index, E element) {
            this.list.add(index, typeCheck(element));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public boolean addAll(int index, java.util.Collection<? extends E> c) {
            return this.list.addAll(index, checkedCopyOf(c));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public ListIterator<E> listIterator(int index) {
            final ListIterator<E> i = this.list.listIterator(index);
            return new ListIterator<E>() { // from class: j$.util.DesugarCollections.CheckedList.1
                @Override // java.util.ListIterator, java.util.Iterator
                public boolean hasNext() {
                    return i.hasNext();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public E next() {
                    return (E) i.next();
                }

                @Override // java.util.ListIterator
                public boolean hasPrevious() {
                    return i.hasPrevious();
                }

                @Override // java.util.ListIterator
                public E previous() {
                    return (E) i.previous();
                }

                @Override // java.util.ListIterator
                public int nextIndex() {
                    return i.nextIndex();
                }

                @Override // java.util.ListIterator
                public int previousIndex() {
                    return i.previousIndex();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public void remove() {
                    i.remove();
                }

                @Override // java.util.ListIterator
                public void set(E e) {
                    i.set(CheckedList.this.typeCheck(e));
                }

                @Override // java.util.ListIterator
                public void add(E e) {
                    i.add(CheckedList.this.typeCheck(e));
                }

                @Override // java.util.Iterator
                public void forEachRemaining(Consumer<? super E> action) {
                    i.forEachRemaining(action);
                }
            };
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public List<E> subList(int fromIndex, int toIndex) {
            return new CheckedList(this.list.subList(fromIndex, toIndex), this.type);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public void replaceAll(final UnaryOperator<E> operator) {
            Objects.requireNonNull(operator);
            this.list.replaceAll(new UnaryOperator() { // from class: j$.util.DesugarCollections.CheckedList.0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CheckedList.this.m8531lambda$replaceAll$0$javautilDesugarCollections$CheckedList(operator, obj);
                }
            });
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        /* JADX INFO: renamed from: lambda$replaceAll$0$java-util-DesugarCollections$CheckedList, reason: not valid java name */
        /* synthetic */ Object m8531lambda$replaceAll$0$javautilDesugarCollections$CheckedList(UnaryOperator operator, Object e) {
            return typeCheck(operator.apply(e));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedList != java.util.DesugarCollections$CheckedList<E> */
        @Override // java.util.List
        public void sort(Comparator<? super E> c) {
            this.list.sort(c);
        }
    }

    static class CheckedRandomAccessList<E> extends CheckedList<E> implements RandomAccess {
        private static final long serialVersionUID = 1638200125423088369L;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedRandomAccessList != java.util.DesugarCollections$CheckedRandomAccessList<E> */
        CheckedRandomAccessList(List<E> list, Class<E> type) {
            super(list, type);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedRandomAccessList != java.util.DesugarCollections$CheckedRandomAccessList<E> */
        @Override // j$.util.DesugarCollections.CheckedList, java.util.List
        public List<E> subList(int fromIndex, int toIndex) {
            return new CheckedRandomAccessList(this.list.subList(fromIndex, toIndex), this.type);
        }
    }

    public static <K, V> Map<K, V> checkedMap(Map<K, V> m, Class<K> keyType, Class<V> valueType) {
        return new CheckedMap(m, keyType, valueType);
    }

    private static class CheckedMap<K, V> implements Map<K, V>, Serializable {
        private static final long serialVersionUID = 5742860141034234728L;
        private transient Set<Map.Entry<K, V>> entrySet;
        final Class<K> keyType;
        private final Map<K, V> m;
        final Class<V> valueType;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        private void typeCheck(Object key, Object value) {
            if (key != null && !this.keyType.isInstance(key)) {
                throw new ClassCastException(badKeyMsg(key));
            }
            if (value != null && !this.valueType.isInstance(value)) {
                throw new ClassCastException(badValueMsg(value));
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        private BiFunction<? super K, ? super V, ? extends V> typeCheck(final BiFunction<? super K, ? super V, ? extends V> func) {
            Objects.requireNonNull(func);
            return new BiFunction() { // from class: j$.util.DesugarCollections.CheckedMap.0
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return CheckedMap.this.m8534lambda$typeCheck$0$javautilDesugarCollections$CheckedMap(func, obj, obj2);
                }
            };
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        /* JADX INFO: renamed from: lambda$typeCheck$0$java-util-DesugarCollections$CheckedMap, reason: not valid java name */
        /* synthetic */ Object m8534lambda$typeCheck$0$javautilDesugarCollections$CheckedMap(BiFunction func, Object k, Object v) {
            Object objApply = func.apply(k, v);
            typeCheck(k, objApply);
            return objApply;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        private String badKeyMsg(Object key) {
            return "Attempt to insert " + key.getClass() + " key into map with key type " + this.keyType;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        private String badValueMsg(Object value) {
            return "Attempt to insert " + value.getClass() + " value into map with value type " + this.valueType;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        CheckedMap(Map<K, V> m, Class<K> keyType, Class<V> valueType) {
            this.m = (Map) Objects.requireNonNull(m);
            this.keyType = (Class) Objects.requireNonNull(keyType);
            this.valueType = (Class) Objects.requireNonNull(valueType);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public int size() {
            return this.m.size();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public boolean isEmpty() {
            return this.m.isEmpty();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public boolean containsKey(Object key) {
            return this.m.containsKey(key);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public boolean containsValue(Object v) {
            return this.m.containsValue(v);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V get(Object key) {
            return this.m.get(key);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V remove(Object key) {
            return this.m.remove(key);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public void clear() {
            this.m.clear();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public Set<K> keySet() {
            return this.m.keySet();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public java.util.Collection<V> values() {
            return this.m.values();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public boolean equals(Object o) {
            return o == this || this.m.equals(o);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public int hashCode() {
            return this.m.hashCode();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        public String toString() {
            return this.m.toString();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V put(K key, V value) {
            typeCheck(key, value);
            return this.m.put(key, value);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            Object[] array = map.entrySet().toArray();
            ArrayList<Map.Entry> arrayList = new ArrayList(array.length);
            for (Object obj : array) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                typeCheck(key, value);
                arrayList.add(new AbstractMap.SimpleImmutableEntry(key, value));
            }
            for (Map.Entry entry2 : arrayList) {
                this.m.put(entry2.getKey(), entry2.getValue());
            }
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            if (this.entrySet == null) {
                this.entrySet = new CheckedEntrySet(this.m.entrySet(), this.valueType);
            }
            return this.entrySet;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public void forEach(BiConsumer<? super K, ? super V> action) {
            this.m.forEach(action);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public void replaceAll(BiFunction<? super K, ? super V, ? extends V> function) {
            this.m.replaceAll(typeCheck(function));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V putIfAbsent(K key, V value) {
            typeCheck(key, value);
            return this.m.putIfAbsent(key, value);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public boolean remove(Object key, Object value) {
            return this.m.remove(key, value);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public boolean replace(K key, V oldValue, V newValue) {
            typeCheck(key, newValue);
            return this.m.replace(key, oldValue, newValue);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V replace(K key, V value) {
            typeCheck(key, value);
            return this.m.replace(key, value);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V computeIfAbsent(K key, final Function<? super K, ? extends V> mappingFunction) {
            Objects.requireNonNull(mappingFunction);
            return this.m.computeIfAbsent(key, new Function() { // from class: j$.util.DesugarCollections.CheckedMap.2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CheckedMap.this.m8532lambda$computeIfAbsent$1$javautilDesugarCollections$CheckedMap(mappingFunction, obj);
                }
            });
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        /* JADX INFO: renamed from: lambda$computeIfAbsent$1$java-util-DesugarCollections$CheckedMap, reason: not valid java name */
        /* synthetic */ Object m8532lambda$computeIfAbsent$1$javautilDesugarCollections$CheckedMap(Function mappingFunction, Object k) {
            Object objApply = mappingFunction.apply(k);
            typeCheck(k, objApply);
            return objApply;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
            return this.m.computeIfPresent(key, typeCheck(remappingFunction));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
            return this.m.compute(key, typeCheck(remappingFunction));
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        @Override // java.util.Map
        public V merge(K key, V value, final BiFunction<? super V, ? super V, ? extends V> remappingFunction) {
            Objects.requireNonNull(remappingFunction);
            return this.m.merge(key, value, new BiFunction() { // from class: j$.util.DesugarCollections.CheckedMap.1
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return CheckedMap.this.m8533lambda$merge$2$javautilDesugarCollections$CheckedMap(remappingFunction, obj, obj2);
                }
            });
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap != java.util.DesugarCollections$CheckedMap<K, V> */
        /* JADX INFO: renamed from: lambda$merge$2$java-util-DesugarCollections$CheckedMap, reason: not valid java name */
        /* synthetic */ Object m8533lambda$merge$2$javautilDesugarCollections$CheckedMap(BiFunction remappingFunction, Object v1, Object v2) {
            Object objApply = remappingFunction.apply(v1, v2);
            typeCheck(null, objApply);
            return objApply;
        }

        static class CheckedEntrySet<K, V> implements Set<Map.Entry<K, V>> {
            private final Set<Map.Entry<K, V>> s;
            private final Class<V> valueType;

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            CheckedEntrySet(Set<Map.Entry<K, V>> s, Class<V> valueType) {
                this.s = s;
                this.valueType = valueType;
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public int size() {
                return this.s.size();
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean isEmpty() {
                return this.s.isEmpty();
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            public String toString() {
                return this.s.toString();
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public int hashCode() {
                return this.s.hashCode();
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public void clear() {
                this.s.clear();
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean add(Map.Entry<K, V> e) {
                throw new UnsupportedOperationException();
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean addAll(java.util.Collection<? extends Map.Entry<K, V>> coll) {
                throw new UnsupportedOperationException();
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection, java.lang.Iterable
            public Iterator<Map.Entry<K, V>> iterator() {
                final Iterator<Map.Entry<K, V>> i = this.s.iterator();
                return new Iterator<Map.Entry<K, V>>() { // from class: j$.util.DesugarCollections.CheckedMap.CheckedEntrySet.1
                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return i.hasNext();
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        i.remove();
                    }

                    @Override // java.util.Iterator
                    public Map.Entry<K, V> next() {
                        return CheckedEntrySet.checkedEntry((Map.Entry) i.next(), CheckedEntrySet.this.valueType);
                    }

                    @Override // java.util.Iterator
                    public void forEachRemaining(final Consumer<? super Map.Entry<K, V>> action) {
                        i.forEachRemaining(new Consumer() { // from class: j$.util.DesugarCollections.CheckedMap.CheckedEntrySet.1.0
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                m8536x88a167ca(action, (Map.Entry) obj);
                            }
                        });
                    }

                    /* JADX INFO: renamed from: lambda$forEachRemaining$0$java-util-DesugarCollections$CheckedMap$CheckedEntrySet$1, reason: not valid java name */
                    /* synthetic */ void m8536x88a167ca(Consumer action, Map.Entry e) {
                        action.accept(CheckedEntrySet.checkedEntry(e, CheckedEntrySet.this.valueType));
                    }
                };
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public Object[] toArray() {
                Object[] source = this.s.toArray();
                Object[] dest = source.getClass() == Object[].class ? source : new Object[source.length];
                for (int i = 0; i < source.length; i++) {
                    dest[i] = checkedEntry((Map.Entry) source[i], this.valueType);
                }
                return dest;
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Set, java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                T[] tArr2 = (T[]) this.s.toArray(tArr.length == 0 ? tArr : Arrays.copyOf(tArr, 0));
                for (int i = 0; i < tArr2.length; i++) {
                    tArr2[i] = checkedEntry((Map.Entry) tArr2[i], this.valueType);
                }
                if (tArr2.length > tArr.length) {
                    return tArr2;
                }
                System.arraycopy(tArr2, 0, tArr, 0, tArr2.length);
                if (tArr.length > tArr2.length) {
                    tArr[tArr2.length] = null;
                }
                return tArr;
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean contains(Object o) {
                if (!(o instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry<?, ?> e = (Map.Entry) o;
                return this.s.contains(e instanceof CheckedEntry ? e : checkedEntry(e, this.valueType));
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean containsAll(java.util.Collection<?> c) {
                for (Object o : c) {
                    if (!contains(o)) {
                        return false;
                    }
                }
                return true;
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean remove(Object o) {
                if (!(o instanceof Map.Entry)) {
                    return false;
                }
                return this.s.remove(new AbstractMap.SimpleImmutableEntry((Map.Entry) o));
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean removeAll(java.util.Collection<?> c) {
                return batchRemove(c, false);
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean retainAll(java.util.Collection<?> c) {
                return batchRemove(c, true);
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            private boolean batchRemove(java.util.Collection<?> c, boolean complement) {
                Objects.requireNonNull(c);
                boolean modified = false;
                Iterator<Map.Entry<K, V>> it = iterator();
                while (it.hasNext()) {
                    if (c.contains(it.next()) != complement) {
                        it.remove();
                        modified = true;
                    }
                }
                return modified;
            }

            /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet != java.util.DesugarCollections$CheckedMap$CheckedEntrySet<K, V> */
            @Override // java.util.Set, java.util.Collection
            public boolean equals(Object o) {
                if (o == this) {
                    return true;
                }
                if (!(o instanceof Set)) {
                    return false;
                }
                Set<?> that = (Set) o;
                return that.size() == this.s.size() && containsAll(that);
            }

            static <K, V, T> CheckedEntry<K, V, T> checkedEntry(Map.Entry<K, V> e, Class<T> valueType) {
                return new CheckedEntry<>(e, valueType);
            }

            private static class CheckedEntry<K, V, T> implements Map.Entry<K, V> {
                private final Map.Entry<K, V> e;
                private final Class<T> valueType;

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry != java.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<K, V, T> */
                CheckedEntry(Map.Entry<K, V> e, Class<T> valueType) {
                    this.e = (Map.Entry) Objects.requireNonNull(e);
                    this.valueType = (Class) Objects.requireNonNull(valueType);
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry != java.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<K, V, T> */
                @Override // java.util.Map.Entry
                public K getKey() {
                    return this.e.getKey();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry != java.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<K, V, T> */
                @Override // java.util.Map.Entry
                public V getValue() {
                    return this.e.getValue();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry != java.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<K, V, T> */
                @Override // java.util.Map.Entry
                public int hashCode() {
                    return this.e.hashCode();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry != java.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<K, V, T> */
                public String toString() {
                    return this.e.toString();
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry != java.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<K, V, T> */
                @Override // java.util.Map.Entry
                public V setValue(V value) {
                    if (value != null && !this.valueType.isInstance(value)) {
                        throw new ClassCastException(badValueMsg(value));
                    }
                    return this.e.setValue(value);
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry != java.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<K, V, T> */
                private String badValueMsg(Object value) {
                    return "Attempt to insert " + value.getClass() + " value into map with value type " + this.valueType;
                }

                /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry != java.util.DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<K, V, T> */
                @Override // java.util.Map.Entry
                public boolean equals(Object o) {
                    if (o == this) {
                        return true;
                    }
                    if (!(o instanceof Map.Entry)) {
                        return false;
                    }
                    return this.e.equals(new AbstractMap.SimpleImmutableEntry((Map.Entry) o));
                }
            }
        }
    }

    public static <K, V> SortedMap<K, V> checkedSortedMap(SortedMap<K, V> m, Class<K> keyType, Class<V> valueType) {
        return new CheckedSortedMap(m, keyType, valueType);
    }

    static class CheckedSortedMap<K, V> extends CheckedMap<K, V> implements SortedMap<K, V>, Serializable {
        private static final long serialVersionUID = 1599671320688067438L;
        private final SortedMap<K, V> sm;

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedMap != java.util.DesugarCollections$CheckedSortedMap<K, V> */
        CheckedSortedMap(SortedMap<K, V> m, Class<K> keyType, Class<V> valueType) {
            super(m, keyType, valueType);
            this.sm = m;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedMap != java.util.DesugarCollections$CheckedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.sm.comparator();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedMap != java.util.DesugarCollections$CheckedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public K firstKey() {
            return this.sm.firstKey();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedMap != java.util.DesugarCollections$CheckedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public K lastKey() {
            return this.sm.lastKey();
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedMap != java.util.DesugarCollections$CheckedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K fromKey, K toKey) {
            return DesugarCollections.checkedSortedMap(this.sm.subMap(fromKey, toKey), this.keyType, this.valueType);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedMap != java.util.DesugarCollections$CheckedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K toKey) {
            return DesugarCollections.checkedSortedMap(this.sm.headMap(toKey), this.keyType, this.valueType);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.DesugarCollections$CheckedSortedMap != java.util.DesugarCollections$CheckedSortedMap<K, V> */
        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K fromKey) {
            return DesugarCollections.checkedSortedMap(this.sm.tailMap(fromKey), this.keyType, this.valueType);
        }
    }

    static boolean eq(Object o1, Object o2) {
        return o1 == null ? o2 == null : o1.equals(o2);
    }
}
