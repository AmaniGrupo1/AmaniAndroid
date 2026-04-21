package com.google.common.cache;

import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.Uninterruptibles;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes21.dex */
class LocalCache<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final int DRAIN_MAX = 16;
    static final int DRAIN_THRESHOLD = 63;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    final int concurrencyLevel;

    @CheckForNull
    final CacheLoader<? super K, V> defaultLoader;
    final EntryFactory entryFactory;

    @CheckForNull
    @LazyInit
    Set<Map.Entry<K, V>> entrySet;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final AbstractCache.StatsCounter globalStatsCounter;
    final Equivalence<Object> keyEquivalence;

    @CheckForNull
    @LazyInit
    Set<K> keySet;
    final Strength keyStrength;
    final long maxWeight;
    final long refreshNanos;
    final RemovalListener<K, V> removalListener;
    final Queue<RemovalNotification<K, V>> removalNotificationQueue;
    final int segmentMask;
    final int segmentShift;
    final Segment<K, V>[] segments;
    final Ticker ticker;
    final Equivalence<Object> valueEquivalence;
    final Strength valueStrength;

    @CheckForNull
    @LazyInit
    Collection<V> values;
    final Weigher<K, V> weigher;
    static final Logger logger = Logger.getLogger(LocalCache.class.getName());
    static final ValueReference<Object, Object> UNSET = new ValueReference<Object, Object>() { // from class: com.google.common.cache.LocalCache.1
        @Override // com.google.common.cache.LocalCache.ValueReference
        @CheckForNull
        public Object get() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 0;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        @CheckForNull
        public ReferenceEntry<Object, Object> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<Object, Object> copyFor(ReferenceQueue<Object> queue, @CheckForNull Object value, ReferenceEntry<Object, Object> entry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        @CheckForNull
        public Object waitForValue() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(Object newValue) {
        }
    };
    static final Queue<?> DISCARDING_QUEUE = new AbstractQueue<Object>() { // from class: com.google.common.cache.LocalCache.2
        @Override // java.util.Queue
        public boolean offer(Object o) {
            return true;
        }

        @Override // java.util.Queue
        @CheckForNull
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        @CheckForNull
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return ImmutableSet.of().iterator();
        }
    };

    enum Strength {
        STRONG { // from class: com.google.common.cache.LocalCache.Strength.1
            @Override // com.google.common.cache.LocalCache.Strength
            <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> entry, V value, int weight) {
                if (weight == 1) {
                    return new StrongValueReference(value);
                }
                return new WeightedStrongValueReference(value, weight);
            }

            @Override // com.google.common.cache.LocalCache.Strength
            Equivalence<Object> defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        SOFT { // from class: com.google.common.cache.LocalCache.Strength.2
            @Override // com.google.common.cache.LocalCache.Strength
            <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> entry, V value, int weight) {
                if (weight == 1) {
                    return new SoftValueReference(segment.valueReferenceQueue, value, entry);
                }
                return new WeightedSoftValueReference(segment.valueReferenceQueue, value, entry, weight);
            }

            @Override // com.google.common.cache.LocalCache.Strength
            Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }
        },
        WEAK { // from class: com.google.common.cache.LocalCache.Strength.3
            @Override // com.google.common.cache.LocalCache.Strength
            <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> entry, V value, int weight) {
                if (weight == 1) {
                    return new WeakValueReference(segment.valueReferenceQueue, value, entry);
                }
                return new WeightedWeakValueReference(segment.valueReferenceQueue, value, entry, weight);
            }

            @Override // com.google.common.cache.LocalCache.Strength
            Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        abstract Equivalence<Object> defaultEquivalence();

        abstract <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> entry, V value, int weight);
    }

    interface ValueReference<K, V> {
        ValueReference<K, V> copyFor(ReferenceQueue<V> queue, @CheckForNull V value, ReferenceEntry<K, V> entry);

        @CheckForNull
        V get();

        @CheckForNull
        ReferenceEntry<K, V> getEntry();

        int getWeight();

        boolean isActive();

        boolean isLoading();

        void notifyNewValue(@CheckForNull V newValue);

        V waitForValue() throws ExecutionException;
    }

    LocalCache(CacheBuilder<? super K, ? super V> cacheBuilder, @CheckForNull CacheLoader<? super K, V> cacheLoader) {
        Queue<RemovalNotification<K, V>> concurrentLinkedQueue;
        this.concurrencyLevel = Math.min(cacheBuilder.getConcurrencyLevel(), 65536);
        this.keyStrength = cacheBuilder.getKeyStrength();
        this.valueStrength = cacheBuilder.getValueStrength();
        this.keyEquivalence = cacheBuilder.getKeyEquivalence();
        this.valueEquivalence = cacheBuilder.getValueEquivalence();
        this.maxWeight = cacheBuilder.getMaximumWeight();
        this.weigher = (Weigher<K, V>) cacheBuilder.getWeigher();
        this.expireAfterAccessNanos = cacheBuilder.getExpireAfterAccessNanos();
        this.expireAfterWriteNanos = cacheBuilder.getExpireAfterWriteNanos();
        this.refreshNanos = cacheBuilder.getRefreshNanos();
        this.removalListener = (RemovalListener<K, V>) cacheBuilder.getRemovalListener();
        if (this.removalListener == CacheBuilder.NullListener.INSTANCE) {
            concurrentLinkedQueue = discardingQueue();
        } else {
            concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        }
        this.removalNotificationQueue = concurrentLinkedQueue;
        this.ticker = cacheBuilder.getTicker(recordsTime());
        this.entryFactory = EntryFactory.getFactory(this.keyStrength, usesAccessEntries(), usesWriteEntries());
        this.globalStatsCounter = cacheBuilder.getStatsCounterSupplier().get();
        this.defaultLoader = cacheLoader;
        int iMin = Math.min(cacheBuilder.getInitialCapacity(), 1073741824);
        if (evictsBySize() && !customWeigher()) {
            iMin = (int) Math.min(iMin, this.maxWeight);
        }
        int i = 0;
        int i2 = 1;
        while (i2 < this.concurrencyLevel && (!evictsBySize() || ((long) i2) * 20 <= this.maxWeight)) {
            i++;
            i2 <<= 1;
        }
        this.segmentShift = 32 - i;
        this.segmentMask = i2 - 1;
        this.segments = newSegmentArray(i2);
        int i3 = iMin / i2;
        int i4 = 1;
        while (i4 < (i3 * i2 < iMin ? i3 + 1 : i3)) {
            i4 <<= 1;
        }
        if (evictsBySize()) {
            long j = 1;
            long j2 = (this.maxWeight / ((long) i2)) + 1;
            long j3 = this.maxWeight % ((long) i2);
            int i5 = 0;
            while (i5 < this.segments.length) {
                long j4 = j;
                if (i5 == j3) {
                    j2 -= j4;
                }
                this.segments[i5] = createSegment(i4, j2, cacheBuilder.getStatsCounterSupplier().get());
                i5++;
                j = j4;
            }
            return;
        }
        for (int i6 = 0; i6 < this.segments.length; i6++) {
            this.segments[i6] = createSegment(i4, -1L, cacheBuilder.getStatsCounterSupplier().get());
        }
    }

    boolean evictsBySize() {
        return this.maxWeight >= 0;
    }

    boolean customWeigher() {
        return this.weigher != CacheBuilder.OneWeigher.INSTANCE;
    }

    boolean expires() {
        return expiresAfterWrite() || expiresAfterAccess();
    }

    boolean expiresAfterWrite() {
        return this.expireAfterWriteNanos > 0;
    }

    boolean expiresAfterAccess() {
        return this.expireAfterAccessNanos > 0;
    }

    boolean refreshes() {
        return this.refreshNanos > 0;
    }

    boolean usesAccessQueue() {
        return expiresAfterAccess() || evictsBySize();
    }

    boolean usesWriteQueue() {
        return expiresAfterWrite();
    }

    boolean recordsWrite() {
        return expiresAfterWrite() || refreshes();
    }

    boolean recordsAccess() {
        return expiresAfterAccess();
    }

    boolean recordsTime() {
        return recordsWrite() || recordsAccess();
    }

    boolean usesWriteEntries() {
        return usesWriteQueue() || recordsWrite();
    }

    boolean usesAccessEntries() {
        return usesAccessQueue() || recordsAccess();
    }

    boolean usesKeyReferences() {
        return this.keyStrength != Strength.STRONG;
    }

    boolean usesValueReferences() {
        return this.valueStrength != Strength.STRONG;
    }

    enum EntryFactory {
        STRONG { // from class: com.google.common.cache.LocalCache.EntryFactory.1
            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
                return new StrongEntry(key, hash, next);
            }
        },
        STRONG_ACCESS { // from class: com.google.common.cache.LocalCache.EntryFactory.2
            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
                return new StrongAccessEntry(key, hash, next);
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext, K key) {
                ReferenceEntry<K, V> newEntry = super.copyEntry(segment, original, newNext, key);
                copyAccessEntry(original, newEntry);
                return newEntry;
            }
        },
        STRONG_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.3
            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
                return new StrongWriteEntry(key, hash, next);
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext, K key) {
                ReferenceEntry<K, V> newEntry = super.copyEntry(segment, original, newNext, key);
                copyWriteEntry(original, newEntry);
                return newEntry;
            }
        },
        STRONG_ACCESS_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.4
            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
                return new StrongAccessWriteEntry(key, hash, next);
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext, K key) {
                ReferenceEntry<K, V> newEntry = super.copyEntry(segment, original, newNext, key);
                copyAccessEntry(original, newEntry);
                copyWriteEntry(original, newEntry);
                return newEntry;
            }
        },
        WEAK { // from class: com.google.common.cache.LocalCache.EntryFactory.5
            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
                return new WeakEntry(segment.keyReferenceQueue, key, hash, next);
            }
        },
        WEAK_ACCESS { // from class: com.google.common.cache.LocalCache.EntryFactory.6
            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
                return new WeakAccessEntry(segment.keyReferenceQueue, key, hash, next);
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext, K key) {
                ReferenceEntry<K, V> newEntry = super.copyEntry(segment, original, newNext, key);
                copyAccessEntry(original, newEntry);
                return newEntry;
            }
        },
        WEAK_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.7
            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
                return new WeakWriteEntry(segment.keyReferenceQueue, key, hash, next);
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext, K key) {
                ReferenceEntry<K, V> newEntry = super.copyEntry(segment, original, newNext, key);
                copyWriteEntry(original, newEntry);
                return newEntry;
            }
        },
        WEAK_ACCESS_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.8
            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
                return new WeakAccessWriteEntry(segment.keyReferenceQueue, key, hash, next);
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext, K key) {
                ReferenceEntry<K, V> newEntry = super.copyEntry(segment, original, newNext, key);
                copyAccessEntry(original, newEntry);
                copyWriteEntry(original, newEntry);
                return newEntry;
            }
        };

        static final int ACCESS_MASK = 1;
        static final int WEAK_MASK = 4;
        static final int WRITE_MASK = 2;
        static final EntryFactory[] factories = {STRONG, STRONG_ACCESS, STRONG_WRITE, STRONG_ACCESS_WRITE, WEAK, WEAK_ACCESS, WEAK_WRITE, WEAK_ACCESS_WRITE};

        abstract <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K key, int hash, @CheckForNull ReferenceEntry<K, V> next);

        static EntryFactory getFactory(Strength strength, boolean z, boolean z2) {
            return factories[(strength == Strength.WEAK ? 4 : 0) | (z ? 1 : 0) | (z2 ? 2 : 0)];
        }

        <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext, K key) {
            return newEntry(segment, key, original.getHash(), newNext);
        }

        <K, V> void copyAccessEntry(ReferenceEntry<K, V> original, ReferenceEntry<K, V> newEntry) {
            newEntry.setAccessTime(original.getAccessTime());
            LocalCache.connectAccessOrder(original.getPreviousInAccessQueue(), newEntry);
            LocalCache.connectAccessOrder(newEntry, original.getNextInAccessQueue());
            LocalCache.nullifyAccessOrder(original);
        }

        <K, V> void copyWriteEntry(ReferenceEntry<K, V> original, ReferenceEntry<K, V> newEntry) {
            newEntry.setWriteTime(original.getWriteTime());
            LocalCache.connectWriteOrder(original.getPreviousInWriteQueue(), newEntry);
            LocalCache.connectWriteOrder(newEntry, original.getNextInWriteQueue());
            LocalCache.nullifyWriteOrder(original);
        }
    }

    static <K, V> ValueReference<K, V> unset() {
        return (ValueReference<K, V>) UNSET;
    }

    private enum NullEntry implements ReferenceEntry<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.ReferenceEntry
        @CheckForNull
        public ValueReference<Object, Object> getValueReference() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<Object, Object> valueReference) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        @CheckForNull
        public ReferenceEntry<Object, Object> getNext() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            return 0;
        }

        @Override // com.google.common.cache.ReferenceEntry
        @CheckForNull
        public Object getKey() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return 0L;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setAccessTime(long time) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getNextInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<Object, Object> next) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getPreviousInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<Object, Object> previous) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return 0L;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setWriteTime(long time) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getNextInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<Object, Object> next) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getPreviousInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<Object, Object> previous) {
        }
    }

    static abstract class AbstractReferenceEntry<K, V> implements ReferenceEntry<K, V> {
        AbstractReferenceEntry() {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setAccessTime(long time) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> next) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> previous) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setWriteTime(long time) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> next) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> previous) {
            throw new UnsupportedOperationException();
        }
    }

    static <K, V> ReferenceEntry<K, V> nullEntry() {
        return NullEntry.INSTANCE;
    }

    static <E> Queue<E> discardingQueue() {
        return (Queue<E>) DISCARDING_QUEUE;
    }

    static class StrongEntry<K, V> extends AbstractReferenceEntry<K, V> {
        final int hash;
        final K key;

        @CheckForNull
        final ReferenceEntry<K, V> next;
        volatile ValueReference<K, V> valueReference = LocalCache.unset();

        StrongEntry(K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            this.key = key;
            this.hash = hash;
            this.next = next;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public K getKey() {
            return this.key;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            return this.valueReference;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            this.valueReference = valueReference;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public int getHash() {
            return this.hash;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            return this.next;
        }
    }

    static final class StrongAccessEntry<K, V> extends StrongEntry<K, V> {
        volatile long accessTime;
        ReferenceEntry<K, V> nextAccess;
        ReferenceEntry<K, V> previousAccess;

        StrongAccessEntry(K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            super(key, hash, next);
            this.accessTime = Long.MAX_VALUE;
            this.nextAccess = LocalCache.nullEntry();
            this.previousAccess = LocalCache.nullEntry();
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.accessTime;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long time) {
            this.accessTime = time;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> next) {
            this.nextAccess = next;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> previous) {
            this.previousAccess = previous;
        }
    }

    static final class StrongWriteEntry<K, V> extends StrongEntry<K, V> {
        ReferenceEntry<K, V> nextWrite;
        ReferenceEntry<K, V> previousWrite;
        volatile long writeTime;

        StrongWriteEntry(K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            super(key, hash, next);
            this.writeTime = Long.MAX_VALUE;
            this.nextWrite = LocalCache.nullEntry();
            this.previousWrite = LocalCache.nullEntry();
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.writeTime;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long time) {
            this.writeTime = time;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> next) {
            this.nextWrite = next;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> previous) {
            this.previousWrite = previous;
        }
    }

    static final class StrongAccessWriteEntry<K, V> extends StrongEntry<K, V> {
        volatile long accessTime;
        ReferenceEntry<K, V> nextAccess;
        ReferenceEntry<K, V> nextWrite;
        ReferenceEntry<K, V> previousAccess;
        ReferenceEntry<K, V> previousWrite;
        volatile long writeTime;

        StrongAccessWriteEntry(K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            super(key, hash, next);
            this.accessTime = Long.MAX_VALUE;
            this.nextAccess = LocalCache.nullEntry();
            this.previousAccess = LocalCache.nullEntry();
            this.writeTime = Long.MAX_VALUE;
            this.nextWrite = LocalCache.nullEntry();
            this.previousWrite = LocalCache.nullEntry();
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.accessTime;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long time) {
            this.accessTime = time;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> next) {
            this.nextAccess = next;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> previous) {
            this.previousAccess = previous;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.writeTime;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long time) {
            this.writeTime = time;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> next) {
            this.nextWrite = next;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> previous) {
            this.previousWrite = previous;
        }
    }

    static class WeakEntry<K, V> extends WeakReference<K> implements ReferenceEntry<K, V> {
        final int hash;

        @CheckForNull
        final ReferenceEntry<K, V> next;
        volatile ValueReference<K, V> valueReference;

        WeakEntry(ReferenceQueue<K> queue, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            super(key, queue);
            this.valueReference = LocalCache.unset();
            this.hash = hash;
            this.next = next;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public K getKey() {
            return (K) get();
        }

        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        public void setAccessTime(long time) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public void setNextInAccessQueue(ReferenceEntry<K, V> next) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInAccessQueue(ReferenceEntry<K, V> previous) {
            throw new UnsupportedOperationException();
        }

        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        public void setWriteTime(long time) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public void setNextInWriteQueue(ReferenceEntry<K, V> next) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInWriteQueue(ReferenceEntry<K, V> previous) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            return this.valueReference;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            this.valueReference = valueReference;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            return this.hash;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            return this.next;
        }
    }

    static final class WeakAccessEntry<K, V> extends WeakEntry<K, V> {
        volatile long accessTime;
        ReferenceEntry<K, V> nextAccess;
        ReferenceEntry<K, V> previousAccess;

        WeakAccessEntry(ReferenceQueue<K> queue, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            super(queue, key, hash, next);
            this.accessTime = Long.MAX_VALUE;
            this.nextAccess = LocalCache.nullEntry();
            this.previousAccess = LocalCache.nullEntry();
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.accessTime;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long time) {
            this.accessTime = time;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> next) {
            this.nextAccess = next;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> previous) {
            this.previousAccess = previous;
        }
    }

    static final class WeakWriteEntry<K, V> extends WeakEntry<K, V> {
        ReferenceEntry<K, V> nextWrite;
        ReferenceEntry<K, V> previousWrite;
        volatile long writeTime;

        WeakWriteEntry(ReferenceQueue<K> queue, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            super(queue, key, hash, next);
            this.writeTime = Long.MAX_VALUE;
            this.nextWrite = LocalCache.nullEntry();
            this.previousWrite = LocalCache.nullEntry();
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.writeTime;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long time) {
            this.writeTime = time;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> next) {
            this.nextWrite = next;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> previous) {
            this.previousWrite = previous;
        }
    }

    static final class WeakAccessWriteEntry<K, V> extends WeakEntry<K, V> {
        volatile long accessTime;
        ReferenceEntry<K, V> nextAccess;
        ReferenceEntry<K, V> nextWrite;
        ReferenceEntry<K, V> previousAccess;
        ReferenceEntry<K, V> previousWrite;
        volatile long writeTime;

        WeakAccessWriteEntry(ReferenceQueue<K> queue, K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            super(queue, key, hash, next);
            this.accessTime = Long.MAX_VALUE;
            this.nextAccess = LocalCache.nullEntry();
            this.previousAccess = LocalCache.nullEntry();
            this.writeTime = Long.MAX_VALUE;
            this.nextWrite = LocalCache.nullEntry();
            this.previousWrite = LocalCache.nullEntry();
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.accessTime;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long time) {
            this.accessTime = time;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> next) {
            this.nextAccess = next;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> previous) {
            this.previousAccess = previous;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.writeTime;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long time) {
            this.writeTime = time;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> next) {
            this.nextWrite = next;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> previous) {
            this.previousWrite = previous;
        }
    }

    static class WeakValueReference<K, V> extends WeakReference<V> implements ValueReference<K, V> {
        final ReferenceEntry<K, V> entry;

        WeakValueReference(ReferenceQueue<V> queue, V referent, ReferenceEntry<K, V> entry) {
            super(referent, queue);
            this.entry = entry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return this.entry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V newValue) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> queue, V value, ReferenceEntry<K, V> entry) {
            return new WeakValueReference(queue, value, entry);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }
    }

    static class SoftValueReference<K, V> extends SoftReference<V> implements ValueReference<K, V> {
        final ReferenceEntry<K, V> entry;

        SoftValueReference(ReferenceQueue<V> queue, V referent, ReferenceEntry<K, V> entry) {
            super(referent, queue);
            this.entry = entry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return this.entry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V newValue) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> queue, V value, ReferenceEntry<K, V> entry) {
            return new SoftValueReference(queue, value, entry);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }
    }

    static class StrongValueReference<K, V> implements ValueReference<K, V> {
        final V referent;

        StrongValueReference(V referent) {
            this.referent = referent;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V get() {
            return this.referent;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> queue, V value, ReferenceEntry<K, V> entry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V newValue) {
        }
    }

    static final class WeightedWeakValueReference<K, V> extends WeakValueReference<K, V> {
        final int weight;

        WeightedWeakValueReference(ReferenceQueue<V> queue, V referent, ReferenceEntry<K, V> entry, int weight) {
            super(queue, referent, entry);
            this.weight = weight;
        }

        @Override // com.google.common.cache.LocalCache.WeakValueReference, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.weight;
        }

        @Override // com.google.common.cache.LocalCache.WeakValueReference, com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> queue, V value, ReferenceEntry<K, V> entry) {
            return new WeightedWeakValueReference(queue, value, entry, this.weight);
        }
    }

    static final class WeightedSoftValueReference<K, V> extends SoftValueReference<K, V> {
        final int weight;

        WeightedSoftValueReference(ReferenceQueue<V> queue, V referent, ReferenceEntry<K, V> entry, int weight) {
            super(queue, referent, entry);
            this.weight = weight;
        }

        @Override // com.google.common.cache.LocalCache.SoftValueReference, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.weight;
        }

        @Override // com.google.common.cache.LocalCache.SoftValueReference, com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> queue, V value, ReferenceEntry<K, V> entry) {
            return new WeightedSoftValueReference(queue, value, entry, this.weight);
        }
    }

    static final class WeightedStrongValueReference<K, V> extends StrongValueReference<K, V> {
        final int weight;

        WeightedStrongValueReference(V referent, int weight) {
            super(referent);
            this.weight = weight;
        }

        @Override // com.google.common.cache.LocalCache.StrongValueReference, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.weight;
        }
    }

    static int rehash(int h) {
        int h2 = h + ((h << 15) ^ (-12931));
        int h3 = h2 ^ (h2 >>> 10);
        int h4 = h3 + (h3 << 3);
        int h5 = h4 ^ (h4 >>> 6);
        int h6 = h5 + (h5 << 2) + (h5 << 14);
        return (h6 >>> 16) ^ h6;
    }

    ReferenceEntry<K, V> newEntry(K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
        Segment<K, V> segment = segmentFor(hash);
        segment.lock();
        try {
            return segment.newEntry(key, hash, next);
        } finally {
            segment.unlock();
        }
    }

    ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext) {
        int hash = original.getHash();
        return segmentFor(hash).copyEntry(original, newNext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    ValueReference<K, V> newValueReference(ReferenceEntry<K, V> entry, V value, int weight) {
        int hash = entry.getHash();
        return this.valueStrength.referenceValue(segmentFor(hash), entry, Preconditions.checkNotNull(value), weight);
    }

    int hash(@CheckForNull Object key) {
        int h = this.keyEquivalence.hash(key);
        return rehash(h);
    }

    void reclaimValue(ValueReference<K, V> valueReference) {
        ReferenceEntry<K, V> entry = valueReference.getEntry();
        int hash = entry.getHash();
        segmentFor(hash).reclaimValue(entry.getKey(), hash, valueReference);
    }

    void reclaimKey(ReferenceEntry<K, V> entry) throws Throwable {
        int hash = entry.getHash();
        segmentFor(hash).reclaimKey(entry, hash);
    }

    boolean isLive(ReferenceEntry<K, V> entry, long now) {
        return segmentFor(entry.getHash()).getLiveValue(entry, now) != null;
    }

    Segment<K, V> segmentFor(int hash) {
        return this.segments[(hash >>> this.segmentShift) & this.segmentMask];
    }

    Segment<K, V> createSegment(int initialCapacity, long maxSegmentWeight, AbstractCache.StatsCounter statsCounter) {
        return new Segment<>(this, initialCapacity, maxSegmentWeight, statsCounter);
    }

    @CheckForNull
    V getLiveValue(ReferenceEntry<K, V> entry, long now) {
        V value;
        if (entry.getKey() == null || (value = entry.getValueReference().get()) == null || isExpired(entry, now)) {
            return null;
        }
        return value;
    }

    boolean isExpired(ReferenceEntry<K, V> entry, long now) {
        Preconditions.checkNotNull(entry);
        if (!expiresAfterAccess() || now - entry.getAccessTime() < this.expireAfterAccessNanos) {
            return expiresAfterWrite() && now - entry.getWriteTime() >= this.expireAfterWriteNanos;
        }
        return true;
    }

    static <K, V> void connectAccessOrder(ReferenceEntry<K, V> previous, ReferenceEntry<K, V> next) {
        previous.setNextInAccessQueue(next);
        next.setPreviousInAccessQueue(previous);
    }

    static <K, V> void nullifyAccessOrder(ReferenceEntry<K, V> nulled) {
        ReferenceEntry<K, V> nullEntry = nullEntry();
        nulled.setNextInAccessQueue(nullEntry);
        nulled.setPreviousInAccessQueue(nullEntry);
    }

    static <K, V> void connectWriteOrder(ReferenceEntry<K, V> previous, ReferenceEntry<K, V> next) {
        previous.setNextInWriteQueue(next);
        next.setPreviousInWriteQueue(previous);
    }

    static <K, V> void nullifyWriteOrder(ReferenceEntry<K, V> nulled) {
        ReferenceEntry<K, V> nullEntry = nullEntry();
        nulled.setNextInWriteQueue(nullEntry);
        nulled.setPreviousInWriteQueue(nullEntry);
    }

    void processPendingNotifications() {
        while (true) {
            RemovalNotification<K, V> notification = this.removalNotificationQueue.poll();
            if (notification != null) {
                try {
                    this.removalListener.onRemoval(notification);
                } catch (Throwable e) {
                    logger.log(Level.WARNING, "Exception thrown by removal listener", e);
                }
            } else {
                return;
            }
        }
    }

    final Segment<K, V>[] newSegmentArray(int ssize) {
        return new Segment[ssize];
    }

    static class Segment<K, V> extends ReentrantLock {
        final Queue<ReferenceEntry<K, V>> accessQueue;
        volatile int count;

        @CheckForNull
        final ReferenceQueue<K> keyReferenceQueue;
        final LocalCache<K, V> map;
        final long maxSegmentWeight;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        final Queue<ReferenceEntry<K, V>> recencyQueue;
        final AbstractCache.StatsCounter statsCounter;

        @CheckForNull
        volatile AtomicReferenceArray<ReferenceEntry<K, V>> table;
        int threshold;
        long totalWeight;

        @CheckForNull
        final ReferenceQueue<V> valueReferenceQueue;
        final Queue<ReferenceEntry<K, V>> writeQueue;

        Segment(LocalCache<K, V> map, int initialCapacity, long maxSegmentWeight, AbstractCache.StatsCounter statsCounter) {
            this.map = map;
            this.maxSegmentWeight = maxSegmentWeight;
            this.statsCounter = (AbstractCache.StatsCounter) Preconditions.checkNotNull(statsCounter);
            initTable(newEntryArray(initialCapacity));
            this.keyReferenceQueue = map.usesKeyReferences() ? new ReferenceQueue<>() : null;
            this.valueReferenceQueue = map.usesValueReferences() ? new ReferenceQueue<>() : null;
            this.recencyQueue = map.usesAccessQueue() ? new ConcurrentLinkedQueue<>() : LocalCache.discardingQueue();
            this.writeQueue = map.usesWriteQueue() ? new WriteQueue<>() : LocalCache.discardingQueue();
            this.accessQueue = map.usesAccessQueue() ? new AccessQueue<>() : LocalCache.discardingQueue();
        }

        AtomicReferenceArray<ReferenceEntry<K, V>> newEntryArray(int size) {
            return new AtomicReferenceArray<>(size);
        }

        void initTable(AtomicReferenceArray<ReferenceEntry<K, V>> newTable) {
            this.threshold = (newTable.length() * 3) / 4;
            if (!this.map.customWeigher() && this.threshold == this.maxSegmentWeight) {
                this.threshold++;
            }
            this.table = newTable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        ReferenceEntry<K, V> newEntry(K key, int hash, @CheckForNull ReferenceEntry<K, V> next) {
            return this.map.entryFactory.newEntry(this, Preconditions.checkNotNull(key), hash, next);
        }

        @CheckForNull
        ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> original, ReferenceEntry<K, V> newNext) {
            K key = original.getKey();
            if (key == null) {
                return null;
            }
            ValueReference<K, V> valueReference = original.getValueReference();
            V value = valueReference.get();
            if (value == null && valueReference.isActive()) {
                return null;
            }
            ReferenceEntry<K, V> newEntry = this.map.entryFactory.copyEntry(this, original, newNext, key);
            newEntry.setValueReference(valueReference.copyFor(this.valueReferenceQueue, value, newEntry));
            return newEntry;
        }

        void setValue(ReferenceEntry<K, V> entry, K key, V value, long now) {
            ValueReference<K, V> previous = entry.getValueReference();
            int weight = this.map.weigher.weigh(key, value);
            Preconditions.checkState(weight >= 0, "Weights must be non-negative");
            ValueReference<K, V> valueReference = this.map.valueStrength.referenceValue(this, entry, value, weight);
            entry.setValueReference(valueReference);
            recordWrite(entry, weight, now);
            previous.notifyNewValue(value);
        }

        V get(K key, int hash, CacheLoader<? super K, V> loader) throws Throwable {
            Throwable th;
            ExecutionException ee;
            K key2;
            int hash2;
            CacheLoader<? super K, V> loader2;
            ReferenceEntry<K, V> e;
            Preconditions.checkNotNull(key);
            Preconditions.checkNotNull(loader);
            try {
                try {
                    try {
                    } catch (ExecutionException e2) {
                        ee = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    postReadCleanup();
                    throw th;
                }
            } catch (ExecutionException e3) {
                ee = e3;
            } catch (Throwable th3) {
                th = th3;
                postReadCleanup();
                throw th;
            }
            if (this.count != 0 && (e = getEntry(key, hash)) != null) {
                long now = this.map.ticker.read();
                V value = getLiveValue(e, now);
                if (value != null) {
                    recordRead(e, now);
                    this.statsCounter.recordHits(1);
                    V vScheduleRefresh = scheduleRefresh(e, key, hash, value, now, loader);
                    postReadCleanup();
                    return vScheduleRefresh;
                }
                key2 = key;
                hash2 = hash;
                loader2 = loader;
                ValueReference<K, V> valueReference = e.getValueReference();
                if (valueReference.isLoading()) {
                    V vWaitForLoadingValue = waitForLoadingValue(e, key2, valueReference);
                    postReadCleanup();
                    return vWaitForLoadingValue;
                }
                Throwable cause = ee.getCause();
                if (cause instanceof Error) {
                    throw new ExecutionError((Error) cause);
                }
                if (cause instanceof RuntimeException) {
                    throw new UncheckedExecutionException(cause);
                }
                throw ee;
            }
            key2 = key;
            hash2 = hash;
            loader2 = loader;
            V vLockedGetOrLoad = lockedGetOrLoad(key2, hash2, loader2);
            postReadCleanup();
            return vLockedGetOrLoad;
        }

        @CheckForNull
        V get(Object key, int hash) throws Throwable {
            Throwable th;
            try {
            } catch (Throwable th2) {
                th = th2;
            }
            if (this.count != 0) {
                long now = this.map.ticker.read();
                ReferenceEntry<K, V> e = getLiveEntry(key, hash, now);
                if (e == null) {
                    postReadCleanup();
                    return null;
                }
                V value = e.getValueReference().get();
                try {
                    if (value != null) {
                        recordRead(e, now);
                        V vScheduleRefresh = scheduleRefresh(e, e.getKey(), hash, value, now, this.map.defaultLoader);
                        postReadCleanup();
                        return vScheduleRefresh;
                    }
                    tryDrainReferenceQueues();
                } catch (Throwable th3) {
                    th = th3;
                }
                postReadCleanup();
                throw th;
            }
            postReadCleanup();
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
        
            r6 = r4.getValueReference();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
        
            if (r6.isLoading() == false) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
        
            r9 = false;
            r12 = r4;
            r2 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        
            r2 = r6.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        
            if (r2 != null) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0063, code lost:
        
            r12 = r4;
            enqueueNotification(r5, r3, r2, r6.getWeight(), com.google.common.cache.RemovalCause.COLLECTED);
            r3 = r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0074, code lost:
        
            r12 = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x007d, code lost:
        
            if (r18.map.isExpired(r12, r4) == false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0086, code lost:
        
            r3 = r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0088, code lost:
        
            enqueueNotification(r5, r3, r2, r6.getWeight(), com.google.common.cache.RemovalCause.EXPIRED);
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        
            r18.writeQueue.remove(r12);
            r18.accessQueue.remove(r12);
            r18.count = r0;
            r2 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x009b, code lost:
        
            recordLockedRead(r12, r4);
            r18.statsCounter.recordHits(1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00a8, code lost:
        
            unlock();
            postWriteCleanup();
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00ae, code lost:
        
            return r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00b3, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00c4, code lost:
        
            if (r9 == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00c6, code lost:
        
            r8 = new com.google.common.cache.LocalCache.LoadingValueReference<>();
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00cc, code lost:
        
            if (r12 != null) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ce, code lost:
        
            r4 = newEntry(r19, r3, r4);
            r4.setValueReference(r8);
            r4.set(r14, r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00d9, code lost:
        
            r12.setValueReference(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00dc, code lost:
        
            r4 = r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00de, code lost:
        
            r4 = r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00df, code lost:
        
            unlock();
            postWriteCleanup();
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00e6, code lost:
        
            if (r9 == false) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00e8, code lost:
        
            monitor-enter(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00eb, code lost:
        
            r0 = loadSync(r19, r3, r8, r21);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ef, code lost:
        
            monitor-exit(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00f0, code lost:
        
            r18.statsCounter.recordMisses(1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00f6, code lost:
        
            return r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00f7, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00f9, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00fa, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00fc, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00ff, code lost:
        
            r18.statsCounter.recordMisses(1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0105, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x010c, code lost:
        
            return waitForLoadingValue(r4, r19, r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0110, code lost:
        
            unlock();
            postWriteCleanup();
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0116, code lost:
        
            throw r0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        V lockedGetOrLoad(K key, int hash, CacheLoader<? super K, V> loader) throws Throwable {
            int i = hash;
            ValueReference<K, V> valueReference = null;
            LoadingValueReference<K, V> loadingValueReference = null;
            boolean createNewEntry = true;
            lock();
            try {
                long now = this.map.ticker.read();
                preWriteCleanup(now);
                int newCount = this.count - 1;
                AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                int index = i & (table.length() - 1);
                ReferenceEntry<K, V> e = table.get(index);
                while (true) {
                    if (e == null) {
                        ReferenceEntry<K, V> e2 = e;
                        break;
                    }
                    K entryKey = e.getKey();
                    if (e.getHash() == i && entryKey != null && this.map.keyEquivalence.equivalent(key, entryKey)) {
                        break;
                    }
                    e = e.getNext();
                }
            } catch (Throwable th) {
                th = th;
            }
        }

        V waitForLoadingValue(ReferenceEntry<K, V> e, K key, ValueReference<K, V> valueReference) throws ExecutionException {
            if (!valueReference.isLoading()) {
                throw new AssertionError();
            }
            Preconditions.checkState(!Thread.holdsLock(e), "Recursive load of: %s", key);
            try {
                V value = valueReference.waitForValue();
                if (value == null) {
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + key + ".");
                }
                long now = this.map.ticker.read();
                recordRead(e, now);
                return value;
            } finally {
                this.statsCounter.recordMisses(1);
            }
        }

        V loadSync(K key, int hash, LoadingValueReference<K, V> loadingValueReference, CacheLoader<? super K, V> loader) throws ExecutionException {
            ListenableFuture<V> loadingFuture = loadingValueReference.loadFuture(key, loader);
            return getAndRecordStats(key, hash, loadingValueReference, loadingFuture);
        }

        ListenableFuture<V> loadAsync(final K key, final int hash, final LoadingValueReference<K, V> loadingValueReference, CacheLoader<? super K, V> loader) {
            final ListenableFuture<V> loadingFuture = loadingValueReference.loadFuture(key, loader);
            loadingFuture.addListener(new Runnable() { // from class: com.google.common.cache.LocalCache$Segment$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m8265lambda$loadAsync$0$comgooglecommoncacheLocalCache$Segment(key, hash, loadingValueReference, loadingFuture);
                }
            }, MoreExecutors.directExecutor());
            return loadingFuture;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: lambda$loadAsync$0$com-google-common-cache-LocalCache$Segment, reason: not valid java name */
        /* synthetic */ void m8265lambda$loadAsync$0$comgooglecommoncacheLocalCache$Segment(Object obj, int hash, LoadingValueReference loadingValueReference, ListenableFuture loadingFuture) {
            try {
                getAndRecordStats(obj, hash, loadingValueReference, loadingFuture);
            } catch (Throwable t) {
                LocalCache.logger.log(Level.WARNING, "Exception thrown during refresh", t);
                loadingValueReference.setException(t);
            }
        }

        V getAndRecordStats(K k, int i, LoadingValueReference<K, V> loadingValueReference, ListenableFuture<V> listenableFuture) throws ExecutionException {
            V v = null;
            try {
                V v2 = (V) Uninterruptibles.getUninterruptibly(listenableFuture);
                if (v2 == null) {
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + k + ".");
                }
                this.statsCounter.recordLoadSuccess(loadingValueReference.elapsedNanos());
                storeLoadedValue(k, i, loadingValueReference, v2);
                return v2;
            } finally {
                if (v == null) {
                    this.statsCounter.recordLoadException(loadingValueReference.elapsedNanos());
                    removeLoadingValue(k, i, loadingValueReference);
                }
            }
        }

        V scheduleRefresh(ReferenceEntry<K, V> entry, K key, int hash, V oldValue, long now, CacheLoader<? super K, V> loader) {
            V newValue;
            if (this.map.refreshes() && now - entry.getWriteTime() > this.map.refreshNanos && !entry.getValueReference().isLoading() && (newValue = refresh(key, hash, loader, true)) != null) {
                return newValue;
            }
            return oldValue;
        }

        @CheckForNull
        V refresh(K k, int i, CacheLoader<? super K, V> cacheLoader, boolean z) {
            LoadingValueReference<K, V> loadingValueReferenceInsertLoadingValueReference = insertLoadingValueReference(k, i, z);
            if (loadingValueReferenceInsertLoadingValueReference == null) {
                return null;
            }
            ListenableFuture<V> listenableFutureLoadAsync = loadAsync(k, i, loadingValueReferenceInsertLoadingValueReference, cacheLoader);
            if (listenableFutureLoadAsync.isDone()) {
                try {
                    return (V) Uninterruptibles.getUninterruptibly(listenableFutureLoadAsync);
                } catch (Throwable th) {
                }
            }
            return null;
        }

        @CheckForNull
        LoadingValueReference<K, V> insertLoadingValueReference(final K key, final int hash, boolean checkTime) {
            lock();
            try {
                long now = this.map.ticker.read();
                preWriteCleanup(now);
                AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                int index = (table.length() - 1) & hash;
                ReferenceEntry<K, V> first = table.get(index);
                for (ReferenceEntry<K, V> e = first; e != null; e = e.getNext()) {
                    K entryKey = e.getKey();
                    if (e.getHash() == hash && entryKey != null && this.map.keyEquivalence.equivalent(key, entryKey)) {
                        ValueReference<K, V> valueReference = e.getValueReference();
                        if (!valueReference.isLoading() && (!checkTime || now - e.getWriteTime() >= this.map.refreshNanos)) {
                            this.modCount++;
                            LoadingValueReference<K, V> loadingValueReference = new LoadingValueReference<>(valueReference);
                            e.setValueReference(loadingValueReference);
                            return loadingValueReference;
                        }
                        unlock();
                        postWriteCleanup();
                        return null;
                    }
                }
                this.modCount++;
                LoadingValueReference<K, V> loadingValueReference2 = new LoadingValueReference<>();
                ReferenceEntry<K, V> e2 = newEntry(key, hash, first);
                e2.setValueReference(loadingValueReference2);
                table.set(index, e2);
                return loadingValueReference2;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        void drainReferenceQueues() throws Throwable {
            if (this.map.usesKeyReferences()) {
                drainKeyReferenceQueue();
            }
            if (this.map.usesValueReferences()) {
                drainValueReferenceQueue();
            }
        }

        void drainKeyReferenceQueue() throws Throwable {
            int i = 0;
            do {
                Reference<? extends K> referencePoll = this.keyReferenceQueue.poll();
                if (referencePoll != null) {
                    this.map.reclaimKey((ReferenceEntry) referencePoll);
                    i++;
                } else {
                    return;
                }
            } while (i != 16);
        }

        void drainValueReferenceQueue() {
            int i = 0;
            do {
                Reference<? extends V> referencePoll = this.valueReferenceQueue.poll();
                if (referencePoll != null) {
                    this.map.reclaimValue((ValueReference) referencePoll);
                    i++;
                } else {
                    return;
                }
            } while (i != 16);
        }

        void clearReferenceQueues() {
            if (this.map.usesKeyReferences()) {
                clearKeyReferenceQueue();
            }
            if (this.map.usesValueReferences()) {
                clearValueReferenceQueue();
            }
        }

        void clearKeyReferenceQueue() {
            while (this.keyReferenceQueue.poll() != null) {
            }
        }

        void clearValueReferenceQueue() {
            while (this.valueReferenceQueue.poll() != null) {
            }
        }

        void recordRead(ReferenceEntry<K, V> entry, long now) {
            if (this.map.recordsAccess()) {
                entry.setAccessTime(now);
            }
            this.recencyQueue.add(entry);
        }

        void recordLockedRead(ReferenceEntry<K, V> entry, long now) {
            if (this.map.recordsAccess()) {
                entry.setAccessTime(now);
            }
            this.accessQueue.add(entry);
        }

        void recordWrite(ReferenceEntry<K, V> entry, int weight, long now) {
            drainRecencyQueue();
            this.totalWeight += (long) weight;
            if (this.map.recordsAccess()) {
                entry.setAccessTime(now);
            }
            if (this.map.recordsWrite()) {
                entry.setWriteTime(now);
            }
            this.accessQueue.add(entry);
            this.writeQueue.add(entry);
        }

        void drainRecencyQueue() {
            while (true) {
                ReferenceEntry<K, V> e = this.recencyQueue.poll();
                if (e != null) {
                    if (this.accessQueue.contains(e)) {
                        this.accessQueue.add(e);
                    }
                } else {
                    return;
                }
            }
        }

        void tryExpireEntries(long now) {
            if (tryLock()) {
                try {
                    expireEntries(now);
                } finally {
                    unlock();
                }
            }
        }

        void expireEntries(long now) {
            ReferenceEntry<K, V> e;
            ReferenceEntry<K, V> e2;
            drainRecencyQueue();
            do {
                e = this.writeQueue.peek();
                if (e == null || !this.map.isExpired(e, now)) {
                    do {
                        e2 = this.accessQueue.peek();
                        if (e2 == null || !this.map.isExpired(e2, now)) {
                            return;
                        }
                    } while (removeEntry(e2, e2.getHash(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (removeEntry(e, e.getHash(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        void enqueueNotification(@CheckForNull K key, int hash, @CheckForNull V value, int weight, RemovalCause cause) {
            this.totalWeight -= (long) weight;
            if (cause.wasEvicted()) {
                this.statsCounter.recordEviction();
            }
            if (this.map.removalNotificationQueue != LocalCache.DISCARDING_QUEUE) {
                RemovalNotification<K, V> notification = RemovalNotification.create(key, value, cause);
                this.map.removalNotificationQueue.offer(notification);
            }
        }

        void evictEntries(ReferenceEntry<K, V> newest) {
            if (!this.map.evictsBySize()) {
                return;
            }
            drainRecencyQueue();
            if (newest.getValueReference().getWeight() > this.maxSegmentWeight && !removeEntry(newest, newest.getHash(), RemovalCause.SIZE)) {
                throw new AssertionError();
            }
            while (this.totalWeight > this.maxSegmentWeight) {
                ReferenceEntry<K, V> e = getNextEvictable();
                if (!removeEntry(e, e.getHash(), RemovalCause.SIZE)) {
                    throw new AssertionError();
                }
            }
        }

        ReferenceEntry<K, V> getNextEvictable() {
            for (ReferenceEntry<K, V> e : this.accessQueue) {
                int weight = e.getValueReference().getWeight();
                if (weight > 0) {
                    return e;
                }
            }
            throw new AssertionError();
        }

        ReferenceEntry<K, V> getFirst(int hash) {
            AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
            return table.get((table.length() - 1) & hash);
        }

        @CheckForNull
        ReferenceEntry<K, V> getEntry(Object key, int hash) {
            for (ReferenceEntry<K, V> e = getFirst(hash); e != null; e = e.getNext()) {
                if (e.getHash() == hash) {
                    K entryKey = e.getKey();
                    if (entryKey == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(key, entryKey)) {
                        return e;
                    }
                }
            }
            return null;
        }

        @CheckForNull
        ReferenceEntry<K, V> getLiveEntry(Object key, int hash, long now) {
            ReferenceEntry<K, V> e = getEntry(key, hash);
            if (e == null) {
                return null;
            }
            if (this.map.isExpired(e, now)) {
                tryExpireEntries(now);
                return null;
            }
            return e;
        }

        V getLiveValue(ReferenceEntry<K, V> entry, long now) {
            if (entry.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V value = entry.getValueReference().get();
            if (value == null) {
                tryDrainReferenceQueues();
                return null;
            }
            if (this.map.isExpired(entry, now)) {
                tryExpireEntries(now);
                return null;
            }
            return value;
        }

        boolean containsKey(Object key, int hash) {
            try {
                if (this.count == 0) {
                    return false;
                }
                long now = this.map.ticker.read();
                ReferenceEntry<K, V> e = getLiveEntry(key, hash, now);
                if (e == null) {
                    return false;
                }
                return e.getValueReference().get() != null;
            } finally {
                postReadCleanup();
            }
        }

        boolean containsValue(Object value) {
            try {
                if (this.count != 0) {
                    long now = this.map.ticker.read();
                    AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                    int length = table.length();
                    for (int i = 0; i < length; i++) {
                        for (ReferenceEntry<K, V> e = table.get(i); e != null; e = e.getNext()) {
                            V entryValue = getLiveValue(e, now);
                            if (entryValue != null && this.map.valueEquivalence.equivalent(value, entryValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                postReadCleanup();
                return false;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        @CheckForNull
        V put(K key, int hash, V value, boolean onlyIfAbsent) throws Throwable {
            int newCount;
            Segment<K, V> segment = this;
            int i = hash;
            segment.lock();
            try {
                long now = segment.map.ticker.read();
                segment.preWriteCleanup(now);
                int newCount2 = segment.count + 1;
                if (newCount2 > segment.threshold) {
                    segment.expand();
                    int newCount3 = segment.count + 1;
                }
                AtomicReferenceArray<ReferenceEntry<K, V>> table = segment.table;
                int index = i & (table.length() - 1);
                ReferenceEntry<K, V> first = table.get(index);
                ReferenceEntry<K, V> e = first;
                while (e != null) {
                    try {
                        K entryKey = e.getKey();
                        if (e.getHash() == i && entryKey != null && segment.map.keyEquivalence.equivalent(key, entryKey)) {
                            ValueReference<K, V> valueReference = e.getValueReference();
                            V entryValue = valueReference.get();
                            if (entryValue == null) {
                                segment.modCount++;
                                if (valueReference.isActive()) {
                                    segment.enqueueNotification(key, i, entryValue, valueReference.getWeight(), RemovalCause.COLLECTED);
                                    segment = this;
                                    ReferenceEntry<K, V> e2 = e;
                                    segment.setValue(e2, key, value, now);
                                    newCount = segment.count;
                                    e = e2;
                                } else {
                                    segment.setValue(e, key, value, now);
                                    newCount = segment.count + 1;
                                }
                                segment.count = newCount;
                                segment.evictEntries(e);
                                segment.unlock();
                                segment.postWriteCleanup();
                                return null;
                            }
                            if (onlyIfAbsent) {
                                segment.recordLockedRead(e, now);
                                segment.unlock();
                                segment.postWriteCleanup();
                                return entryValue;
                            }
                            try {
                                segment.modCount++;
                                try {
                                    segment.enqueueNotification(key, hash, entryValue, valueReference.getWeight(), RemovalCause.REPLACED);
                                    ReferenceEntry<K, V> e3 = e;
                                    setValue(e3, key, value, now);
                                    evictEntries(e3);
                                    unlock();
                                    postWriteCleanup();
                                    return entryValue;
                                } catch (Throwable th) {
                                    th = th;
                                    segment.unlock();
                                    segment.postWriteCleanup();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } else {
                            long now2 = now;
                            ReferenceEntry<K, V> e4 = e;
                            e = e4.getNext();
                            i = hash;
                            now = now2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                long now3 = now;
                int i2 = i;
                try {
                    segment.modCount++;
                    ReferenceEntry<K, V> newEntry = segment.newEntry(key, i2, first);
                    segment.setValue(newEntry, key, value, now3);
                    table.set(index, newEntry);
                    int newCount4 = segment.count + 1;
                    segment.count = newCount4;
                    segment.evictEntries(newEntry);
                    segment.unlock();
                    segment.postWriteCleanup();
                    return null;
                } catch (Throwable th4) {
                    th = th4;
                    segment.unlock();
                    segment.postWriteCleanup();
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }

        void expand() {
            AtomicReferenceArray<ReferenceEntry<K, V>> oldTable = this.table;
            int oldCapacity = oldTable.length();
            if (oldCapacity >= 1073741824) {
                return;
            }
            int newCount = this.count;
            AtomicReferenceArray<ReferenceEntry<K, V>> newTable = newEntryArray(oldCapacity << 1);
            this.threshold = (newTable.length() * 3) / 4;
            int newMask = newTable.length() - 1;
            for (int oldIndex = 0; oldIndex < oldCapacity; oldIndex++) {
                ReferenceEntry<K, V> head = oldTable.get(oldIndex);
                if (head != null) {
                    ReferenceEntry<K, V> next = head.getNext();
                    int headIndex = head.getHash() & newMask;
                    if (next == null) {
                        newTable.set(headIndex, head);
                    } else {
                        ReferenceEntry<K, V> tail = head;
                        int tailIndex = headIndex;
                        for (ReferenceEntry<K, V> e = next; e != null; e = e.getNext()) {
                            int newIndex = e.getHash() & newMask;
                            if (newIndex != tailIndex) {
                                tailIndex = newIndex;
                                tail = e;
                            }
                        }
                        newTable.set(tailIndex, tail);
                        for (ReferenceEntry<K, V> e2 = head; e2 != tail; e2 = e2.getNext()) {
                            int newIndex2 = e2.getHash() & newMask;
                            ReferenceEntry<K, V> newNext = newTable.get(newIndex2);
                            ReferenceEntry<K, V> newFirst = copyEntry(e2, newNext);
                            if (newFirst != null) {
                                newTable.set(newIndex2, newFirst);
                            } else {
                                removeCollectedEntry(e2);
                                newCount--;
                            }
                        }
                    }
                }
            }
            this.table = newTable;
            this.count = newCount;
        }

        boolean replace(K key, int hash, V oldValue, V newValue) throws Throwable {
            int i = hash;
            lock();
            try {
                long now = this.map.ticker.read();
                preWriteCleanup(now);
                AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                int index = i & (table.length() - 1);
                ReferenceEntry<K, V> e = table.get(index);
                ReferenceEntry<K, V> e2 = e;
                while (e2 != null) {
                    K entryKey = e2.getKey();
                    if (e2.getHash() == i && entryKey != null && this.map.keyEquivalence.equivalent(key, entryKey)) {
                        ValueReference<K, V> valueReference = e2.getValueReference();
                        V entryValue = valueReference.get();
                        if (entryValue == null) {
                            if (valueReference.isActive()) {
                                int i2 = this.count - 1;
                                this.modCount++;
                                ReferenceEntry<K, V> newFirst = removeValueFromChain(e, e2, entryKey, i, entryValue, valueReference, RemovalCause.COLLECTED);
                                int newCount = this.count - 1;
                                table.set(index, newFirst);
                                this.count = newCount;
                            }
                            unlock();
                            postWriteCleanup();
                            return false;
                        }
                        ReferenceEntry<K, V> e3 = e2;
                        if (!this.map.valueEquivalence.equivalent(oldValue, entryValue)) {
                            recordLockedRead(e3, now);
                            unlock();
                            postWriteCleanup();
                            return false;
                        }
                        this.modCount++;
                        enqueueNotification(key, hash, entryValue, valueReference.getWeight(), RemovalCause.REPLACED);
                        setValue(e3, key, newValue, now);
                        evictEntries(e3);
                        unlock();
                        postWriteCleanup();
                        return true;
                    }
                    ReferenceEntry<K, V> first = e;
                    ReferenceEntry<K, V> first2 = e2;
                    long now2 = now;
                    try {
                        e2 = first2.getNext();
                        i = hash;
                        now = now2;
                        e = first;
                    } catch (Throwable th) {
                        th = th;
                        unlock();
                        postWriteCleanup();
                        throw th;
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @CheckForNull
        V replace(K key, int hash, V newValue) {
            int i = hash;
            lock();
            try {
                long now = this.map.ticker.read();
                preWriteCleanup(now);
                AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                int index = i & (table.length() - 1);
                ReferenceEntry<K, V> first = table.get(index);
                ReferenceEntry<K, V> e = first;
                while (e != null) {
                    K entryKey = e.getKey();
                    if (e.getHash() == i && entryKey != null && this.map.keyEquivalence.equivalent(key, entryKey)) {
                        ValueReference<K, V> valueReference = e.getValueReference();
                        V entryValue = valueReference.get();
                        if (entryValue != null) {
                            ReferenceEntry<K, V> e2 = e;
                            this.modCount++;
                            enqueueNotification(key, hash, entryValue, valueReference.getWeight(), RemovalCause.REPLACED);
                            setValue(e2, key, newValue, now);
                            evictEntries(e2);
                            return entryValue;
                        }
                        if (valueReference.isActive()) {
                            int i2 = this.count - 1;
                            this.modCount++;
                            ReferenceEntry<K, V> newFirst = removeValueFromChain(first, e, entryKey, i, entryValue, valueReference, RemovalCause.COLLECTED);
                            int newCount = this.count - 1;
                            table.set(index, newFirst);
                            this.count = newCount;
                        }
                        return null;
                    }
                    ReferenceEntry<K, V> first2 = first;
                    ReferenceEntry<K, V> e3 = e;
                    long now2 = now;
                    e = e3.getNext();
                    i = hash;
                    now = now2;
                    first = first2;
                }
                return null;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        @CheckForNull
        V remove(Object key, int hash) throws Throwable {
            RemovalCause cause;
            int i = hash;
            lock();
            try {
                long now = this.map.ticker.read();
                preWriteCleanup(now);
                int i2 = this.count - 1;
                AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                int index = i & (table.length() - 1);
                ReferenceEntry<K, V> first = table.get(index);
                ReferenceEntry<K, V> e = first;
                while (e != null) {
                    K entryKey = e.getKey();
                    if (e.getHash() == i && entryKey != null) {
                        try {
                            if (this.map.keyEquivalence.equivalent(key, entryKey)) {
                                ValueReference<K, V> valueReference = e.getValueReference();
                                V entryValue = valueReference.get();
                                if (entryValue != null) {
                                    cause = RemovalCause.EXPLICIT;
                                } else {
                                    if (!valueReference.isActive()) {
                                        unlock();
                                        postWriteCleanup();
                                        return null;
                                    }
                                    cause = RemovalCause.COLLECTED;
                                }
                                this.modCount++;
                                ReferenceEntry<K, V> newFirst = removeValueFromChain(first, e, entryKey, i, entryValue, valueReference, cause);
                                int newCount = this.count - 1;
                                table.set(index, newFirst);
                                this.count = newCount;
                                unlock();
                                postWriteCleanup();
                                return entryValue;
                            }
                        } catch (Throwable th) {
                            th = th;
                            unlock();
                            postWriteCleanup();
                            throw th;
                        }
                    }
                    e = e.getNext();
                    i = hash;
                }
                unlock();
                postWriteCleanup();
                return null;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        boolean remove(Object key, int hash, Object value) throws Throwable {
            boolean z;
            RemovalCause cause;
            int i = hash;
            lock();
            try {
                long now = this.map.ticker.read();
                preWriteCleanup(now);
                boolean z2 = true;
                int i2 = this.count - 1;
                AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                int index = i & (table.length() - 1);
                ReferenceEntry<K, V> first = table.get(index);
                ReferenceEntry<K, V> e = first;
                while (e != null) {
                    K entryKey = e.getKey();
                    if (e.getHash() != i || entryKey == null) {
                        z = z2;
                    } else {
                        try {
                            if (this.map.keyEquivalence.equivalent(key, entryKey)) {
                                ValueReference<K, V> valueReference = e.getValueReference();
                                V entryValue = valueReference.get();
                                boolean z3 = z2;
                                if (this.map.valueEquivalence.equivalent(value, entryValue)) {
                                    cause = RemovalCause.EXPLICIT;
                                } else {
                                    if (entryValue != null || !valueReference.isActive()) {
                                        unlock();
                                        postWriteCleanup();
                                        return false;
                                    }
                                    cause = RemovalCause.COLLECTED;
                                }
                                this.modCount++;
                                ReferenceEntry<K, V> newFirst = removeValueFromChain(first, e, entryKey, i, entryValue, valueReference, cause);
                                int newCount = this.count - 1;
                                table.set(index, newFirst);
                                this.count = newCount;
                                if (cause != RemovalCause.EXPLICIT) {
                                    z3 = false;
                                }
                                unlock();
                                postWriteCleanup();
                                return z3;
                            }
                            z = z2;
                        } catch (Throwable th) {
                            th = th;
                            unlock();
                            postWriteCleanup();
                            throw th;
                        }
                    }
                    try {
                        e = e.getNext();
                        i = hash;
                        z2 = z;
                    } catch (Throwable th2) {
                        th = th2;
                        unlock();
                        postWriteCleanup();
                        throw th;
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } catch (Throwable th3) {
                th = th3;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0062, code lost:
        
            if (r4 != com.google.common.cache.LocalCache.UNSET) goto L65;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        boolean storeLoadedValue(K key, int hash, LoadingValueReference<K, V> oldValueReference, V newValue) throws Throwable {
            long now;
            int newCount;
            AtomicReferenceArray<ReferenceEntry<K, V>> table;
            int index;
            ReferenceEntry<K, V> first;
            ReferenceEntry<K, V> e;
            RemovalCause removalCause;
            Segment<K, V> segment = this;
            int i = hash;
            segment.lock();
            try {
                now = segment.map.ticker.read();
                segment.preWriteCleanup(now);
                newCount = segment.count + 1;
                if (newCount > segment.threshold) {
                    segment.expand();
                    newCount = segment.count + 1;
                }
                table = segment.table;
                index = i & (table.length() - 1);
                first = table.get(index);
                e = first;
            } catch (Throwable th) {
                th = th;
            }
            while (e != null) {
                K entryKey = e.getKey();
                if (e.getHash() == i && entryKey != null && segment.map.keyEquivalence.equivalent(key, entryKey)) {
                    ValueReference<K, V> valueReference = e.getValueReference();
                    V entryValue = valueReference.get();
                    try {
                        if (oldValueReference != valueReference) {
                            if (entryValue == null) {
                            }
                            segment.enqueueNotification(key, i, newValue, 0, RemovalCause.REPLACED);
                            segment.unlock();
                            segment.postWriteCleanup();
                            return false;
                        }
                        try {
                            segment.modCount++;
                            if (oldValueReference.isActive()) {
                                if (entryValue == null) {
                                    removalCause = RemovalCause.COLLECTED;
                                } else {
                                    try {
                                        removalCause = RemovalCause.REPLACED;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        segment = this;
                                    }
                                }
                                RemovalCause cause = removalCause;
                                segment.enqueueNotification(key, hash, entryValue, oldValueReference.getWeight(), cause);
                                newCount--;
                            }
                            segment = this;
                            ReferenceEntry<K, V> e2 = e;
                            try {
                                segment.setValue(e2, key, newValue, now);
                                segment.count = newCount;
                                segment.evictEntries(e2);
                                segment.unlock();
                                segment.postWriteCleanup();
                                return true;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } else {
                    try {
                        e = e.getNext();
                        i = i;
                        now = now;
                    } catch (Throwable th6) {
                        th = th6;
                    }
                }
                segment.unlock();
                segment.postWriteCleanup();
                throw th;
            }
            segment.modCount++;
            ReferenceEntry<K, V> newEntry = segment.newEntry(key, i, first);
            segment.setValue(newEntry, key, newValue, now);
            table.set(index, newEntry);
            segment.count = newCount;
            segment.evictEntries(newEntry);
            segment.unlock();
            segment.postWriteCleanup();
            return true;
        }

        void clear() throws Throwable {
            if (this.count != 0) {
                lock();
                try {
                    long now = this.map.ticker.read();
                    preWriteCleanup(now);
                    AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                    for (int i = 0; i < table.length(); i++) {
                        for (ReferenceEntry<K, V> e = table.get(i); e != null; e = e.getNext()) {
                            if (e.getValueReference().isActive()) {
                                K key = e.getKey();
                                V value = e.getValueReference().get();
                                RemovalCause cause = (key == null || value == null) ? RemovalCause.COLLECTED : RemovalCause.EXPLICIT;
                                try {
                                    enqueueNotification(key, e.getHash(), value, e.getValueReference().getWeight(), cause);
                                } catch (Throwable th) {
                                    th = th;
                                    unlock();
                                    postWriteCleanup();
                                    throw th;
                                }
                            }
                        }
                    }
                    for (int i2 = 0; i2 < table.length(); i2++) {
                        table.set(i2, null);
                    }
                    clearReferenceQueues();
                    this.writeQueue.clear();
                    this.accessQueue.clear();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                    unlock();
                    postWriteCleanup();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        @CheckForNull
        ReferenceEntry<K, V> removeValueFromChain(ReferenceEntry<K, V> first, ReferenceEntry<K, V> entry, @CheckForNull K key, int hash, V value, ValueReference<K, V> valueReference, RemovalCause cause) {
            enqueueNotification(key, hash, value, valueReference.getWeight(), cause);
            this.writeQueue.remove(entry);
            this.accessQueue.remove(entry);
            if (valueReference.isLoading()) {
                valueReference.notifyNewValue(null);
                return first;
            }
            return removeEntryFromChain(first, entry);
        }

        @CheckForNull
        ReferenceEntry<K, V> removeEntryFromChain(ReferenceEntry<K, V> first, ReferenceEntry<K, V> entry) {
            int newCount = this.count;
            ReferenceEntry<K, V> newFirst = entry.getNext();
            for (ReferenceEntry<K, V> e = first; e != entry; e = e.getNext()) {
                ReferenceEntry<K, V> next = copyEntry(e, newFirst);
                if (next != null) {
                    newFirst = next;
                } else {
                    removeCollectedEntry(e);
                    newCount--;
                }
            }
            this.count = newCount;
            return newFirst;
        }

        void removeCollectedEntry(ReferenceEntry<K, V> entry) {
            enqueueNotification(entry.getKey(), entry.getHash(), entry.getValueReference().get(), entry.getValueReference().getWeight(), RemovalCause.COLLECTED);
            this.writeQueue.remove(entry);
            this.accessQueue.remove(entry);
        }

        boolean reclaimKey(ReferenceEntry<K, V> entry, int hash) throws Throwable {
            Throwable th;
            AtomicReferenceArray<ReferenceEntry<K, V>> table;
            int index;
            ReferenceEntry<K, V> first;
            ReferenceEntry<K, V> e;
            lock();
            try {
                int i = this.count - 1;
                table = this.table;
                index = (table.length() - 1) & hash;
                first = table.get(index);
                e = first;
            } catch (Throwable th2) {
                th = th2;
            }
            while (e != null) {
                if (e == entry) {
                    this.modCount++;
                    ReferenceEntry<K, V> newFirst = removeValueFromChain(first, e, e.getKey(), hash, e.getValueReference().get(), e.getValueReference(), RemovalCause.COLLECTED);
                    int newCount = this.count - 1;
                    table.set(index, newFirst);
                    this.count = newCount;
                    unlock();
                    postWriteCleanup();
                    return true;
                }
                int hash2 = hash;
                try {
                    e = e.getNext();
                    hash = hash2;
                } catch (Throwable th3) {
                    th = th3;
                }
                th = th3;
                unlock();
                postWriteCleanup();
                throw th;
            }
            unlock();
            postWriteCleanup();
            return false;
        }

        boolean reclaimValue(K key, int hash, ValueReference<K, V> valueReference) {
            int i = hash;
            lock();
            try {
                int i2 = this.count - 1;
                AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                int index = i & (table.length() - 1);
                ReferenceEntry<K, V> first = table.get(index);
                ReferenceEntry<K, V> e = first;
                while (e != null) {
                    K entryKey = e.getKey();
                    if (e.getHash() == i && entryKey != null && this.map.keyEquivalence.equivalent(key, entryKey)) {
                        ValueReference<K, V> v = e.getValueReference();
                        if (v != valueReference) {
                            unlock();
                            if (!isHeldByCurrentThread()) {
                                postWriteCleanup();
                            }
                            return false;
                        }
                        this.modCount++;
                        ReferenceEntry<K, V> newFirst = removeValueFromChain(first, e, entryKey, i, valueReference.get(), valueReference, RemovalCause.COLLECTED);
                        int newCount = this.count - 1;
                        table.set(index, newFirst);
                        this.count = newCount;
                        return true;
                    }
                    e = e.getNext();
                    i = hash;
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
            }
        }

        boolean removeLoadingValue(K key, int hash, LoadingValueReference<K, V> valueReference) {
            lock();
            try {
                AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
                int index = (table.length() - 1) & hash;
                ReferenceEntry<K, V> first = table.get(index);
                for (ReferenceEntry<K, V> e = first; e != null; e = e.getNext()) {
                    K entryKey = e.getKey();
                    if (e.getHash() == hash && entryKey != null && this.map.keyEquivalence.equivalent(key, entryKey)) {
                        ValueReference<K, V> v = e.getValueReference();
                        if (v != valueReference) {
                            return false;
                        }
                        if (valueReference.isActive()) {
                            e.setValueReference(valueReference.getOldValue());
                        } else {
                            ReferenceEntry<K, V> newFirst = removeEntryFromChain(first, e);
                            table.set(index, newFirst);
                        }
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        boolean removeEntry(ReferenceEntry<K, V> entry, int hash, RemovalCause cause) {
            int i = this.count - 1;
            AtomicReferenceArray<ReferenceEntry<K, V>> table = this.table;
            int index = hash & (table.length() - 1);
            ReferenceEntry<K, V> first = table.get(index);
            for (ReferenceEntry<K, V> e = first; e != null; e = e.getNext()) {
                if (e == entry) {
                    this.modCount++;
                    ReferenceEntry<K, V> newFirst = removeValueFromChain(first, e, e.getKey(), hash, e.getValueReference().get(), e.getValueReference(), cause);
                    int newCount = this.count - 1;
                    table.set(index, newFirst);
                    this.count = newCount;
                    return true;
                }
            }
            return false;
        }

        void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                cleanUp();
            }
        }

        void preWriteCleanup(long now) {
            runLockedCleanup(now);
        }

        void postWriteCleanup() {
            runUnlockedCleanup();
        }

        void cleanUp() {
            long now = this.map.ticker.read();
            runLockedCleanup(now);
            runUnlockedCleanup();
        }

        void runLockedCleanup(long now) {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                    expireEntries(now);
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        void runUnlockedCleanup() {
            if (!isHeldByCurrentThread()) {
                this.map.processPendingNotifications();
            }
        }
    }

    static class LoadingValueReference<K, V> implements ValueReference<K, V> {
        final SettableFuture<V> futureValue;
        volatile ValueReference<K, V> oldValue;
        final Stopwatch stopwatch;

        public LoadingValueReference() {
            this(LocalCache.unset());
        }

        public LoadingValueReference(ValueReference<K, V> oldValue) {
            this.futureValue = SettableFuture.create();
            this.stopwatch = Stopwatch.createUnstarted();
            this.oldValue = oldValue;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return this.oldValue.isActive();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.oldValue.getWeight();
        }

        public boolean set(@CheckForNull V newValue) {
            return this.futureValue.set(newValue);
        }

        public boolean setException(Throwable t) {
            return this.futureValue.setException(t);
        }

        private ListenableFuture<V> fullyFailedFuture(Throwable t) {
            return Futures.immediateFailedFuture(t);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(@CheckForNull V newValue) {
            if (newValue != null) {
                set(newValue);
            } else {
                this.oldValue = LocalCache.unset();
            }
        }

        public ListenableFuture<V> loadFuture(K key, CacheLoader<? super K, V> loader) {
            try {
                this.stopwatch.start();
                V previousValue = this.oldValue.get();
                if (previousValue == null) {
                    V newValue = loader.load(key);
                    return set(newValue) ? this.futureValue : Futures.immediateFuture(newValue);
                }
                ListenableFuture<V> newValue2 = loader.reload(key, previousValue);
                if (newValue2 == null) {
                    return Futures.immediateFuture(null);
                }
                return Futures.transform(newValue2, new Function() { // from class: com.google.common.cache.LocalCache$LoadingValueReference$$ExternalSyntheticLambda0
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj) {
                        return this.f$0.m8264x59597480(obj);
                    }
                }, MoreExecutors.directExecutor());
            } catch (Throwable t) {
                ListenableFuture<V> result = setException(t) ? this.futureValue : fullyFailedFuture(t);
                if (t instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return result;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: lambda$loadFuture$0$com-google-common-cache-LocalCache$LoadingValueReference, reason: not valid java name */
        /* synthetic */ Object m8264x59597480(Object obj) {
            set(obj);
            return obj;
        }

        public long elapsedNanos() {
            return this.stopwatch.elapsed(TimeUnit.NANOSECONDS);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() throws ExecutionException {
            return (V) Uninterruptibles.getUninterruptibly(this.futureValue);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V get() {
            return this.oldValue.get();
        }

        public ValueReference<K, V> getOldValue() {
            return this.oldValue;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> queue, @CheckForNull V value, ReferenceEntry<K, V> entry) {
            return this;
        }
    }

    static final class WriteQueue<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {
        final ReferenceEntry<K, V> head = new AbstractReferenceEntry<K, V>() { // from class: com.google.common.cache.LocalCache.WriteQueue.1
            ReferenceEntry<K, V> nextWrite = this;
            ReferenceEntry<K, V> previousWrite = this;

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public long getWriteTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setWriteTime(long time) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getNextInWriteQueue() {
                return this.nextWrite;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setNextInWriteQueue(ReferenceEntry<K, V> next) {
                this.nextWrite = next;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getPreviousInWriteQueue() {
                return this.previousWrite;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setPreviousInWriteQueue(ReferenceEntry<K, V> previous) {
                this.previousWrite = previous;
            }
        };

        WriteQueue() {
        }

        @Override // java.util.Queue
        public boolean offer(ReferenceEntry<K, V> entry) {
            LocalCache.connectWriteOrder(entry.getPreviousInWriteQueue(), entry.getNextInWriteQueue());
            LocalCache.connectWriteOrder(this.head.getPreviousInWriteQueue(), entry);
            LocalCache.connectWriteOrder(entry, this.head);
            return true;
        }

        @Override // java.util.Queue
        @CheckForNull
        public ReferenceEntry<K, V> peek() {
            ReferenceEntry<K, V> next = this.head.getNextInWriteQueue();
            if (next == this.head) {
                return null;
            }
            return next;
        }

        @Override // java.util.Queue
        @CheckForNull
        public ReferenceEntry<K, V> poll() {
            ReferenceEntry<K, V> next = this.head.getNextInWriteQueue();
            if (next == this.head) {
                return null;
            }
            remove(next);
            return next;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object o) {
            ReferenceEntry<K, V> e = (ReferenceEntry) o;
            ReferenceEntry<K, V> previous = e.getPreviousInWriteQueue();
            ReferenceEntry<K, V> next = e.getNextInWriteQueue();
            LocalCache.connectWriteOrder(previous, next);
            LocalCache.nullifyWriteOrder(e);
            return next != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object o) {
            ReferenceEntry<K, V> e = (ReferenceEntry) o;
            return e.getNextInWriteQueue() != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.head.getNextInWriteQueue() == this.head;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int size = 0;
            for (ReferenceEntry<K, V> e = this.head.getNextInWriteQueue(); e != this.head; e = e.getNextInWriteQueue()) {
                size++;
            }
            return size;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            ReferenceEntry<K, V> e = this.head.getNextInWriteQueue();
            while (e != this.head) {
                ReferenceEntry<K, V> next = e.getNextInWriteQueue();
                LocalCache.nullifyWriteOrder(e);
                e = next;
            }
            this.head.setNextInWriteQueue(this.head);
            this.head.setPreviousInWriteQueue(this.head);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<ReferenceEntry<K, V>> iterator() {
            return new AbstractSequentialIterator<ReferenceEntry<K, V>>(peek()) { // from class: com.google.common.cache.LocalCache.WriteQueue.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractSequentialIterator
                @CheckForNull
                public ReferenceEntry<K, V> computeNext(ReferenceEntry<K, V> previous) {
                    ReferenceEntry<K, V> next = previous.getNextInWriteQueue();
                    if (next == WriteQueue.this.head) {
                        return null;
                    }
                    return next;
                }
            };
        }
    }

    static final class AccessQueue<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {
        final ReferenceEntry<K, V> head = new AbstractReferenceEntry<K, V>() { // from class: com.google.common.cache.LocalCache.AccessQueue.1
            ReferenceEntry<K, V> nextAccess = this;
            ReferenceEntry<K, V> previousAccess = this;

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public long getAccessTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setAccessTime(long time) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getNextInAccessQueue() {
                return this.nextAccess;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setNextInAccessQueue(ReferenceEntry<K, V> next) {
                this.nextAccess = next;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getPreviousInAccessQueue() {
                return this.previousAccess;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setPreviousInAccessQueue(ReferenceEntry<K, V> previous) {
                this.previousAccess = previous;
            }
        };

        AccessQueue() {
        }

        @Override // java.util.Queue
        public boolean offer(ReferenceEntry<K, V> entry) {
            LocalCache.connectAccessOrder(entry.getPreviousInAccessQueue(), entry.getNextInAccessQueue());
            LocalCache.connectAccessOrder(this.head.getPreviousInAccessQueue(), entry);
            LocalCache.connectAccessOrder(entry, this.head);
            return true;
        }

        @Override // java.util.Queue
        @CheckForNull
        public ReferenceEntry<K, V> peek() {
            ReferenceEntry<K, V> next = this.head.getNextInAccessQueue();
            if (next == this.head) {
                return null;
            }
            return next;
        }

        @Override // java.util.Queue
        @CheckForNull
        public ReferenceEntry<K, V> poll() {
            ReferenceEntry<K, V> next = this.head.getNextInAccessQueue();
            if (next == this.head) {
                return null;
            }
            remove(next);
            return next;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object o) {
            ReferenceEntry<K, V> e = (ReferenceEntry) o;
            ReferenceEntry<K, V> previous = e.getPreviousInAccessQueue();
            ReferenceEntry<K, V> next = e.getNextInAccessQueue();
            LocalCache.connectAccessOrder(previous, next);
            LocalCache.nullifyAccessOrder(e);
            return next != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object o) {
            ReferenceEntry<K, V> e = (ReferenceEntry) o;
            return e.getNextInAccessQueue() != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.head.getNextInAccessQueue() == this.head;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int size = 0;
            for (ReferenceEntry<K, V> e = this.head.getNextInAccessQueue(); e != this.head; e = e.getNextInAccessQueue()) {
                size++;
            }
            return size;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            ReferenceEntry<K, V> e = this.head.getNextInAccessQueue();
            while (e != this.head) {
                ReferenceEntry<K, V> next = e.getNextInAccessQueue();
                LocalCache.nullifyAccessOrder(e);
                e = next;
            }
            this.head.setNextInAccessQueue(this.head);
            this.head.setPreviousInAccessQueue(this.head);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<ReferenceEntry<K, V>> iterator() {
            return new AbstractSequentialIterator<ReferenceEntry<K, V>>(peek()) { // from class: com.google.common.cache.LocalCache.AccessQueue.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractSequentialIterator
                @CheckForNull
                public ReferenceEntry<K, V> computeNext(ReferenceEntry<K, V> previous) {
                    ReferenceEntry<K, V> next = previous.getNextInAccessQueue();
                    if (next == AccessQueue.this.head) {
                        return null;
                    }
                    return next;
                }
            };
        }
    }

    public void cleanUp() {
        for (Segment<K, V> segment : this.segments) {
            segment.cleanUp();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        long sum = 0;
        Segment<K, V>[] segments = this.segments;
        for (Segment<K, V> segment : segments) {
            if (segment.count != 0) {
                return false;
            }
            sum += (long) segment.modCount;
        }
        if (sum == 0) {
            return true;
        }
        for (Segment<K, V> segment2 : segments) {
            if (segment2.count != 0) {
                return false;
            }
            sum -= (long) segment2.modCount;
        }
        return sum == 0;
    }

    long longSize() {
        Segment<K, V>[] segments = this.segments;
        long sum = 0;
        for (Segment<K, V> segment : segments) {
            sum += (long) Math.max(0, segment.count);
        }
        return sum;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return Ints.saturatedCast(longSize());
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public V get(@CheckForNull Object key) {
        if (key == null) {
            return null;
        }
        int hash = hash(key);
        return segmentFor(hash).get(key, hash);
    }

    V get(K key, CacheLoader<? super K, V> loader) throws ExecutionException {
        int hash = hash(Preconditions.checkNotNull(key));
        return segmentFor(hash).get(key, hash, loader);
    }

    @CheckForNull
    public V getIfPresent(Object key) throws Throwable {
        int hash = hash(Preconditions.checkNotNull(key));
        V value = segmentFor(hash).get(key, hash);
        AbstractCache.StatsCounter statsCounter = this.globalStatsCounter;
        if (value == null) {
            statsCounter.recordMisses(1);
        } else {
            statsCounter.recordHits(1);
        }
        return value;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CheckForNull
    public V getOrDefault(@CheckForNull Object key, @CheckForNull V defaultValue) {
        V result = get(key);
        return result != null ? result : defaultValue;
    }

    V getOrLoad(K key) throws ExecutionException {
        return get(key, this.defaultLoader);
    }

    /* JADX WARN: Multi-variable type inference failed */
    ImmutableMap<K, V> getAllPresent(Iterable<?> keys) {
        int hits = 0;
        int misses = 0;
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (Object key : keys) {
            V value = get(key);
            if (value == null) {
                misses++;
            } else {
                builder.put(key, value);
                hits++;
            }
        }
        this.globalStatsCounter.recordHits(hits);
        this.globalStatsCounter.recordMisses(misses);
        return builder.buildKeepingLast();
    }

    ImmutableMap<K, V> getAll(Iterable<? extends K> keys) throws ExecutionException {
        int hits = 0;
        int misses = 0;
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        Set<K> keysToLoad = Sets.newLinkedHashSet();
        for (K key : keys) {
            V v = get(key);
            if (!linkedHashMapNewLinkedHashMap.containsKey(key)) {
                linkedHashMapNewLinkedHashMap.put(key, v);
                if (v == null) {
                    misses++;
                    keysToLoad.add(key);
                } else {
                    hits++;
                }
            }
        }
        try {
            if (!keysToLoad.isEmpty()) {
                try {
                    Map<K, V> newEntries = loadAll(Collections.unmodifiableSet(keysToLoad), this.defaultLoader);
                    for (K key2 : keysToLoad) {
                        V value = newEntries.get(key2);
                        if (value == null) {
                            throw new CacheLoader.InvalidCacheLoadException("loadAll failed to return a value for " + key2);
                        }
                        linkedHashMapNewLinkedHashMap.put(key2, value);
                    }
                } catch (CacheLoader.UnsupportedLoadingOperationException e) {
                    for (K key3 : keysToLoad) {
                        misses--;
                        linkedHashMapNewLinkedHashMap.put(key3, get(key3, this.defaultLoader));
                    }
                }
            }
            return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
        } finally {
            this.globalStatsCounter.recordHits(hits);
            this.globalStatsCounter.recordMisses(misses);
        }
    }

    @CheckForNull
    Map<K, V> loadAll(Set<? extends K> set, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        Preconditions.checkNotNull(cacheLoader);
        Preconditions.checkNotNull(set);
        Stopwatch stopwatchCreateStarted = Stopwatch.createStarted();
        boolean z = false;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                Map<? super K, V> mapLoadAll = cacheLoader.loadAll(set);
                                boolean z2 = true;
                                if (mapLoadAll == null) {
                                    this.globalStatsCounter.recordLoadException(stopwatchCreateStarted.elapsed(TimeUnit.NANOSECONDS));
                                    throw new CacheLoader.InvalidCacheLoadException(cacheLoader + " returned null map from loadAll");
                                }
                                stopwatchCreateStarted.stop();
                                boolean z3 = false;
                                for (Map.Entry<K, V> entry : mapLoadAll.entrySet()) {
                                    K key = entry.getKey();
                                    V value = entry.getValue();
                                    if (key == null || value == null) {
                                        z3 = true;
                                    } else {
                                        put(key, value);
                                    }
                                }
                                AbstractCache.StatsCounter statsCounter = this.globalStatsCounter;
                                if (z3) {
                                    statsCounter.recordLoadException(stopwatchCreateStarted.elapsed(TimeUnit.NANOSECONDS));
                                    throw new CacheLoader.InvalidCacheLoadException(cacheLoader + " returned null keys or values from loadAll");
                                }
                                statsCounter.recordLoadSuccess(stopwatchCreateStarted.elapsed(TimeUnit.NANOSECONDS));
                                return mapLoadAll;
                            } catch (CacheLoader.UnsupportedLoadingOperationException e) {
                                throw e;
                            }
                        } catch (Exception e2) {
                            throw new ExecutionException(e2);
                        }
                    } catch (RuntimeException e3) {
                        throw new UncheckedExecutionException(e3);
                    }
                } catch (Error e4) {
                    throw new ExecutionError(e4);
                }
            } catch (InterruptedException e5) {
                Thread.currentThread().interrupt();
                throw new ExecutionException(e5);
            }
        } finally {
            if (!z) {
                this.globalStatsCounter.recordLoadException(stopwatchCreateStarted.elapsed(TimeUnit.NANOSECONDS));
            }
        }
    }

    @CheckForNull
    ReferenceEntry<K, V> getEntry(@CheckForNull Object key) {
        if (key == null) {
            return null;
        }
        int hash = hash(key);
        return segmentFor(hash).getEntry(key, hash);
    }

    void refresh(K key) {
        int hash = hash(Preconditions.checkNotNull(key));
        segmentFor(hash).refresh(key, hash, this.defaultLoader, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@CheckForNull Object key) {
        if (key == null) {
            return false;
        }
        int hash = hash(key);
        return segmentFor(hash).containsKey(key, hash);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        r9 = r9 + ((long) r13.modCount);
        r5 = r16;
        r2 = r17;
        r3 = r3;
        r12 = r12 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [int] */
    /* JADX WARN: Type inference failed for: r12v3 */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean containsValue(@CheckForNull Object obj) {
        long j;
        boolean z = false;
        if (obj == null) {
            return false;
        }
        long j2 = this.ticker.read();
        Segment<K, V>[] segmentArr = this.segments;
        long j3 = -1;
        int i = 0;
        while (i < 3) {
            long j4 = 0;
            int length = segmentArr.length;
            ?? r12 = z;
            while (r12 < length) {
                Segment<K, V> segment = segmentArr[r12];
                int i2 = segment.count;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = segment.table;
                boolean z2 = z;
                int i3 = 0;
                while (true) {
                    Segment<K, V>[] segmentArr2 = segmentArr;
                    if (i3 < atomicReferenceArray.length()) {
                        ReferenceEntry<K, V> next = atomicReferenceArray.get(i3);
                        while (next != null) {
                            int i4 = i3;
                            V liveValue = segment.getLiveValue(next, j2);
                            if (liveValue != null) {
                                j = j2;
                                if (this.valueEquivalence.equivalent(obj, liveValue)) {
                                    return true;
                                }
                            } else {
                                j = j2;
                            }
                            next = next.getNext();
                            i3 = i4;
                            j2 = j;
                        }
                        i3++;
                        segmentArr = segmentArr2;
                    }
                }
            }
            boolean z3 = z;
            long j5 = j2;
            Segment<K, V>[] segmentArr3 = segmentArr;
            if (j4 != j3) {
                j3 = j4;
                i++;
                segmentArr = segmentArr3;
                z = z3;
                j2 = j5;
            } else {
                return z3;
            }
        }
        return z;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public V put(K key, V value) {
        Preconditions.checkNotNull(key);
        Preconditions.checkNotNull(value);
        int hash = hash(key);
        return segmentFor(hash).put(key, hash, value, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CheckForNull
    public V putIfAbsent(K key, V value) {
        Preconditions.checkNotNull(key);
        Preconditions.checkNotNull(value);
        int hash = hash(key);
        return segmentFor(hash).put(key, hash, value, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> m) {
        for (Map.Entry<? extends K, ? extends V> e : m.entrySet()) {
            put(e.getKey(), e.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public V remove(@CheckForNull Object key) {
        if (key == null) {
            return null;
        }
        int hash = hash(key);
        return segmentFor(hash).remove(key, hash);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(@CheckForNull Object key, @CheckForNull Object value) {
        if (key == null || value == null) {
            return false;
        }
        int hash = hash(key);
        return segmentFor(hash).remove(key, hash, value);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K key, @CheckForNull V oldValue, V newValue) {
        Preconditions.checkNotNull(key);
        Preconditions.checkNotNull(newValue);
        if (oldValue == null) {
            return false;
        }
        int hash = hash(key);
        return segmentFor(hash).replace(key, hash, oldValue, newValue);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CheckForNull
    public V replace(K key, V value) {
        Preconditions.checkNotNull(key);
        Preconditions.checkNotNull(value);
        int hash = hash(key);
        return segmentFor(hash).replace(key, hash, value);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() throws Throwable {
        for (Segment<K, V> segment : this.segments) {
            segment.clear();
        }
    }

    void invalidateAll(Iterable<?> keys) {
        for (Object key : keys) {
            remove(key);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> ks = this.keySet;
        if (ks != null) {
            return ks;
        }
        KeySet keySet = new KeySet();
        this.keySet = keySet;
        return keySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> vs = this.values;
        if (vs != null) {
            return vs;
        }
        Values values = new Values();
        this.values = values;
        return values;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> es = this.entrySet;
        if (es != null) {
            return es;
        }
        EntrySet entrySet = new EntrySet();
        this.entrySet = entrySet;
        return entrySet;
    }

    abstract class HashIterator<T> implements Iterator<T> {

        @CheckForNull
        Segment<K, V> currentSegment;

        @CheckForNull
        AtomicReferenceArray<ReferenceEntry<K, V>> currentTable;

        @CheckForNull
        LocalCache<K, V>.WriteThroughEntry lastReturned;

        @CheckForNull
        ReferenceEntry<K, V> nextEntry;

        @CheckForNull
        LocalCache<K, V>.WriteThroughEntry nextExternal;
        int nextSegmentIndex;
        int nextTableIndex = -1;

        @Override // java.util.Iterator
        public abstract T next();

        HashIterator() {
            this.nextSegmentIndex = LocalCache.this.segments.length - 1;
            advance();
        }

        final void advance() {
            this.nextExternal = null;
            if (nextInChain() || nextInTable()) {
                return;
            }
            while (this.nextSegmentIndex >= 0) {
                Segment<K, V>[] segmentArr = LocalCache.this.segments;
                int i = this.nextSegmentIndex;
                this.nextSegmentIndex = i - 1;
                this.currentSegment = segmentArr[i];
                if (this.currentSegment.count != 0) {
                    this.currentTable = this.currentSegment.table;
                    this.nextTableIndex = this.currentTable.length() - 1;
                    if (nextInTable()) {
                        return;
                    }
                }
            }
        }

        boolean nextInChain() {
            if (this.nextEntry != null) {
                do {
                    this.nextEntry = this.nextEntry.getNext();
                    if (this.nextEntry == null) {
                        return false;
                    }
                } while (!advanceTo(this.nextEntry));
                return true;
            }
            return false;
        }

        boolean nextInTable() {
            while (this.nextTableIndex >= 0) {
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.currentTable;
                int i = this.nextTableIndex;
                this.nextTableIndex = i - 1;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(i);
                this.nextEntry = referenceEntry;
                if (referenceEntry != null && (advanceTo(this.nextEntry) || nextInChain())) {
                    return true;
                }
            }
            return false;
        }

        boolean advanceTo(ReferenceEntry<K, V> entry) {
            try {
                long now = LocalCache.this.ticker.read();
                K key = entry.getKey();
                Object liveValue = LocalCache.this.getLiveValue(entry, now);
                if (liveValue != null) {
                    this.nextExternal = new WriteThroughEntry(key, liveValue);
                    this.currentSegment.postReadCleanup();
                    return true;
                }
                this.currentSegment.postReadCleanup();
                return false;
            } catch (Throwable th) {
                this.currentSegment.postReadCleanup();
                throw th;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.nextExternal != null;
        }

        LocalCache<K, V>.WriteThroughEntry nextEntry() {
            if (this.nextExternal == null) {
                throw new NoSuchElementException();
            }
            this.lastReturned = this.nextExternal;
            advance();
            return this.lastReturned;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.lastReturned != null);
            LocalCache.this.remove(this.lastReturned.getKey());
            this.lastReturned = null;
        }
    }

    final class KeyIterator extends LocalCache<K, V>.HashIterator<K> {
        KeyIterator() {
            super();
        }

        @Override // com.google.common.cache.LocalCache.HashIterator, java.util.Iterator
        public K next() {
            return nextEntry().getKey();
        }
    }

    final class ValueIterator extends LocalCache<K, V>.HashIterator<V> {
        ValueIterator() {
            super();
        }

        @Override // com.google.common.cache.LocalCache.HashIterator, java.util.Iterator
        public V next() {
            return nextEntry().getValue();
        }
    }

    final class WriteThroughEntry implements Map.Entry<K, V> {
        final K key;
        V value;

        WriteThroughEntry(K key, V value) {
            this.key = key;
            this.value = value;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@CheckForNull Object object) {
            if (!(object instanceof Map.Entry)) {
                return false;
            }
            Map.Entry<?, ?> that = (Map.Entry) object;
            return this.key.equals(that.getKey()) && this.value.equals(that.getValue());
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.key.hashCode() ^ this.value.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) LocalCache.this.put(this.key, v);
            this.value = v;
            return v2;
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    final class EntryIterator extends LocalCache<K, V>.HashIterator<Map.Entry<K, V>> {
        EntryIterator() {
            super();
        }

        @Override // com.google.common.cache.LocalCache.HashIterator, java.util.Iterator
        public Map.Entry<K, V> next() {
            return nextEntry();
        }
    }

    abstract class AbstractCacheSet<T> extends AbstractSet<T> {
        AbstractCacheSet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LocalCache.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return LocalCache.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() throws Throwable {
            LocalCache.this.clear();
        }
    }

    final class KeySet extends LocalCache<K, V>.AbstractCacheSet<K> {
        KeySet() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new KeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object o) {
            return LocalCache.this.containsKey(o);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object o) {
            return LocalCache.this.remove(o) != null;
        }
    }

    final class Values extends AbstractCollection<V> {
        Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return LocalCache.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return LocalCache.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() throws Throwable {
            LocalCache.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new ValueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object o) {
            return LocalCache.this.containsValue(o);
        }
    }

    final class EntrySet extends LocalCache<K, V>.AbstractCacheSet<Map.Entry<K, V>> {
        EntrySet() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new EntryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object o) {
            Map.Entry<?, ?> e;
            Object key;
            Object obj;
            return (o instanceof Map.Entry) && (key = (e = (Map.Entry) o).getKey()) != null && (obj = LocalCache.this.get(key)) != null && LocalCache.this.valueEquivalence.equivalent(e.getValue(), obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object o) {
            Map.Entry<?, ?> e;
            Object key;
            return (o instanceof Map.Entry) && (key = (e = (Map.Entry) o).getKey()) != null && LocalCache.this.remove(key, e.getValue());
        }
    }

    static class ManualSerializationProxy<K, V> extends ForwardingCache<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        final int concurrencyLevel;

        @CheckForNull
        transient Cache<K, V> delegate;
        final long expireAfterAccessNanos;
        final long expireAfterWriteNanos;
        final Equivalence<Object> keyEquivalence;
        final Strength keyStrength;
        final CacheLoader<? super K, V> loader;
        final long maxWeight;
        final RemovalListener<? super K, ? super V> removalListener;

        @CheckForNull
        final Ticker ticker;
        final Equivalence<Object> valueEquivalence;
        final Strength valueStrength;
        final Weigher<K, V> weigher;

        ManualSerializationProxy(LocalCache<K, V> cache) {
            this(cache.keyStrength, cache.valueStrength, cache.keyEquivalence, cache.valueEquivalence, cache.expireAfterWriteNanos, cache.expireAfterAccessNanos, cache.maxWeight, cache.weigher, cache.concurrencyLevel, cache.removalListener, cache.ticker, cache.defaultLoader);
        }

        private ManualSerializationProxy(Strength keyStrength, Strength valueStrength, Equivalence<Object> keyEquivalence, Equivalence<Object> valueEquivalence, long expireAfterWriteNanos, long expireAfterAccessNanos, long maxWeight, Weigher<K, V> weigher, int concurrencyLevel, RemovalListener<? super K, ? super V> removalListener, Ticker ticker, CacheLoader<? super K, V> loader) {
            this.keyStrength = keyStrength;
            this.valueStrength = valueStrength;
            this.keyEquivalence = keyEquivalence;
            this.valueEquivalence = valueEquivalence;
            this.expireAfterWriteNanos = expireAfterWriteNanos;
            this.expireAfterAccessNanos = expireAfterAccessNanos;
            this.maxWeight = maxWeight;
            this.weigher = weigher;
            this.concurrencyLevel = concurrencyLevel;
            this.removalListener = removalListener;
            this.ticker = (ticker == Ticker.systemTicker() || ticker == CacheBuilder.NULL_TICKER) ? null : ticker;
            this.loader = loader;
        }

        CacheBuilder<K, V> recreateCacheBuilder() {
            CacheBuilder<K, V> cacheBuilder = (CacheBuilder<K, V>) CacheBuilder.newBuilder().setKeyStrength(this.keyStrength).setValueStrength(this.valueStrength).keyEquivalence(this.keyEquivalence).valueEquivalence(this.valueEquivalence).concurrencyLevel(this.concurrencyLevel).removalListener(this.removalListener);
            cacheBuilder.strictParsing = false;
            if (this.expireAfterWriteNanos > 0) {
                cacheBuilder.expireAfterWrite(this.expireAfterWriteNanos, TimeUnit.NANOSECONDS);
            }
            if (this.expireAfterAccessNanos > 0) {
                cacheBuilder.expireAfterAccess(this.expireAfterAccessNanos, TimeUnit.NANOSECONDS);
            }
            if (this.weigher != CacheBuilder.OneWeigher.INSTANCE) {
                cacheBuilder.weigher(this.weigher);
                if (this.maxWeight != -1) {
                    cacheBuilder.maximumWeight(this.maxWeight);
                }
            } else if (this.maxWeight != -1) {
                cacheBuilder.maximumSize(this.maxWeight);
            }
            if (this.ticker != null) {
                cacheBuilder.ticker(this.ticker);
            }
            return cacheBuilder;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.delegate = (Cache<K, V>) recreateCacheBuilder().build();
        }

        private Object readResolve() {
            return this.delegate;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public Cache<K, V> delegate() {
            return this.delegate;
        }
    }

    static final class LoadingSerializationProxy<K, V> extends ManualSerializationProxy<K, V> implements LoadingCache<K, V>, Serializable {
        private static final long serialVersionUID = 1;

        @CheckForNull
        transient LoadingCache<K, V> autoDelegate;

        LoadingSerializationProxy(LocalCache<K, V> cache) {
            super(cache);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.autoDelegate = (LoadingCache<K, V>) recreateCacheBuilder().build(this.loader);
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K key) throws ExecutionException {
            return this.autoDelegate.get(key);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K key) {
            return this.autoDelegate.getUnchecked(key);
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> keys) throws ExecutionException {
            return this.autoDelegate.getAll(keys);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public V apply(K key) {
            return this.autoDelegate.apply(key);
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K key) {
            this.autoDelegate.refresh(key);
        }

        private Object readResolve() {
            return this.autoDelegate;
        }
    }

    static class LocalManualCache<K, V> implements Cache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        final LocalCache<K, V> localCache;

        LocalManualCache(CacheBuilder<? super K, ? super V> builder) {
            this(new LocalCache(builder, null));
        }

        private LocalManualCache(LocalCache<K, V> localCache) {
            this.localCache = localCache;
        }

        @Override // com.google.common.cache.Cache
        @CheckForNull
        public V getIfPresent(Object key) {
            return this.localCache.getIfPresent(key);
        }

        @Override // com.google.common.cache.Cache
        public V get(K key, final Callable<? extends V> valueLoader) throws ExecutionException {
            Preconditions.checkNotNull(valueLoader);
            return this.localCache.get(key, new CacheLoader<Object, V>(this) { // from class: com.google.common.cache.LocalCache.LocalManualCache.1
                final /* synthetic */ LocalManualCache this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.common.cache.CacheLoader
                public V load(Object obj) throws Exception {
                    return (V) valueLoader.call();
                }
            });
        }

        @Override // com.google.common.cache.Cache
        public ImmutableMap<K, V> getAllPresent(Iterable<?> keys) {
            return this.localCache.getAllPresent(keys);
        }

        @Override // com.google.common.cache.Cache
        public void put(K key, V value) {
            this.localCache.put(key, value);
        }

        @Override // com.google.common.cache.Cache
        public void putAll(Map<? extends K, ? extends V> m) {
            this.localCache.putAll(m);
        }

        @Override // com.google.common.cache.Cache
        public void invalidate(Object key) {
            Preconditions.checkNotNull(key);
            this.localCache.remove(key);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll(Iterable<?> keys) {
            this.localCache.invalidateAll(keys);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll() throws Throwable {
            this.localCache.clear();
        }

        @Override // com.google.common.cache.Cache
        public long size() {
            return this.localCache.longSize();
        }

        @Override // com.google.common.cache.Cache
        public ConcurrentMap<K, V> asMap() {
            return this.localCache;
        }

        @Override // com.google.common.cache.Cache
        public CacheStats stats() {
            AbstractCache.SimpleStatsCounter aggregator = new AbstractCache.SimpleStatsCounter();
            aggregator.incrementBy(this.localCache.globalStatsCounter);
            for (Segment<K, V> segment : this.localCache.segments) {
                aggregator.incrementBy(segment.statsCounter);
            }
            return aggregator.snapshot();
        }

        @Override // com.google.common.cache.Cache
        public void cleanUp() {
            this.localCache.cleanUp();
        }

        Object writeReplace() {
            return new ManualSerializationProxy(this.localCache);
        }

        private void readObject(ObjectInputStream in) throws InvalidObjectException {
            throw new InvalidObjectException("Use ManualSerializationProxy");
        }
    }

    static class LocalLoadingCache<K, V> extends LocalManualCache<K, V> implements LoadingCache<K, V> {
        private static final long serialVersionUID = 1;

        LocalLoadingCache(CacheBuilder<? super K, ? super V> builder, CacheLoader<? super K, V> loader) {
            super();
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K key) throws ExecutionException {
            return this.localCache.getOrLoad(key);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K key) {
            try {
                return get(key);
            } catch (ExecutionException e) {
                throw new UncheckedExecutionException(e.getCause());
            }
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> keys) throws ExecutionException {
            return this.localCache.getAll(keys);
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K key) {
            this.localCache.refresh(key);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K key) {
            return getUnchecked(key);
        }

        @Override // com.google.common.cache.LocalCache.LocalManualCache
        Object writeReplace() {
            return new LoadingSerializationProxy(this.localCache);
        }

        private void readObject(ObjectInputStream in) throws InvalidObjectException {
            throw new InvalidObjectException("Use LoadingSerializationProxy");
        }
    }
}
