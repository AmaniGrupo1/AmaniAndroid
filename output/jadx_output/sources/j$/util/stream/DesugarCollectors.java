package j$.util.stream;

import j$.time.Duration;
import j$.time.ZoneId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collector;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes19.dex */
public final class DesugarCollectors {
    static final Set<Collector.Characteristics> CH_NOID = Collections.emptySet();
    static final Set<Collector.Characteristics> CH_UNORDERED_NOID = Collections.unmodifiableSet(EnumSet.of(Collector.Characteristics.UNORDERED));

    /* JADX INFO: renamed from: j$.util.stream.DesugarCollectors$0, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass0 {
        public static /* synthetic */ Set m(Object[] objArr) {
            HashSet hashSet = new HashSet(objArr.length);
            for (Object obj : objArr) {
                if (!hashSet.add(Objects.requireNonNull(obj))) {
                    throw new IllegalArgumentException("duplicate element: " + obj);
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }
    }

    private DesugarCollectors() {
    }

    public static <T, A, R> Collector<T, ?, R> filtering(final Predicate<? super T> predicate, Collector<? super T, A, R> downstream) {
        final BiConsumer<A, ? super T> downstreamAccumulator = downstream.accumulator();
        return new CollectorImpl(downstream.supplier(), new BiConsumer() { // from class: j$.util.stream.DesugarCollectors.14
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                DesugarCollectors.lambda$filtering$0(predicate, downstreamAccumulator, obj, obj2);
            }
        }, downstream.combiner(), downstream.finisher(), downstream.characteristics());
    }

    static /* synthetic */ void lambda$filtering$0(Predicate predicate, BiConsumer downstreamAccumulator, Object r, Object t) {
        if (predicate.test(t)) {
            downstreamAccumulator.accept(r, t);
        }
    }

    public static <T, U, A, R> Collector<T, ?, R> flatMapping(final Function<? super T, ? extends java.util.stream.Stream<? extends U>> mapper, Collector<? super U, A, R> downstream) {
        final BiConsumer<A, ? super U> downstreamAccumulator = downstream.accumulator();
        return new CollectorImpl(downstream.supplier(), new BiConsumer() { // from class: j$.util.stream.DesugarCollectors.10
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                DesugarCollectors.lambda$flatMapping$2(mapper, downstreamAccumulator, obj, obj2);
            }
        }, downstream.combiner(), downstream.finisher(), downstream.characteristics());
    }

    static /* synthetic */ void lambda$flatMapping$2(Function mapper, final BiConsumer downstreamAccumulator, final Object r, Object t) {
        java.util.stream.Stream stream = (java.util.stream.Stream) mapper.apply(t);
        if (stream != null) {
            try {
                ((java.util.stream.Stream) stream.sequential()).forEach(new Consumer() { // from class: j$.util.stream.DesugarCollectors.9
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        downstreamAccumulator.accept(r, obj);
                    }
                });
            } catch (Throwable th) {
                if (stream != null) {
                    try {
                        stream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (stream != null) {
            stream.close();
        }
    }

    public static <T> Collector<T, ?, List<T>> toUnmodifiableList() {
        return new CollectorImpl(new Supplier() { // from class: j$.util.stream.DesugarCollectors.1
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ArrayList();
            }
        }, new BiConsumer() { // from class: j$.util.stream.DesugarCollectors.2
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((List) obj).add(obj2);
            }
        }, new BinaryOperator() { // from class: j$.util.stream.DesugarCollectors.3
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return DesugarCollectors.lambda$toUnmodifiableList$3((List) obj, (List) obj2);
            }
        }, new Function() { // from class: j$.util.stream.DesugarCollectors.4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DesugarCollectors.lambda$toUnmodifiableList$4((List) obj);
            }
        }, CH_NOID);
    }

    static /* synthetic */ List lambda$toUnmodifiableList$3(List left, List right) {
        left.addAll(right);
        return left;
    }

    static /* synthetic */ List lambda$toUnmodifiableList$4(List list) {
        return Duration.DurationUnits.AnonymousClass0.m(list.toArray());
    }

    public static <T, K, U> Collector<T, ?, Map<K, U>> toUnmodifiableMap(Function<? super T, ? extends K> keyMapper, Function<? super T, ? extends U> valueMapper) {
        Objects.requireNonNull(keyMapper, "keyMapper");
        Objects.requireNonNull(valueMapper, "valueMapper");
        return Collectors.collectingAndThen(Collectors.toMap(keyMapper, valueMapper), new Function() { // from class: j$.util.stream.DesugarCollectors.11
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DesugarCollectors.lambda$toUnmodifiableMap$5((Map) obj);
            }
        });
    }

    static /* synthetic */ Map lambda$toUnmodifiableMap$5(Map map) {
        return ZoneId.AnonymousClass2.m((Map.Entry[]) map.entrySet().toArray(new Map.Entry[0]));
    }

    public static <T, K, U> Collector<T, ?, Map<K, U>> toUnmodifiableMap(Function<? super T, ? extends K> keyMapper, Function<? super T, ? extends U> valueMapper, BinaryOperator<U> mergeFunction) {
        Objects.requireNonNull(keyMapper, "keyMapper");
        Objects.requireNonNull(valueMapper, "valueMapper");
        Objects.requireNonNull(mergeFunction, "mergeFunction");
        return Collectors.collectingAndThen(Collectors.toMap(keyMapper, valueMapper, mergeFunction, new Supplier() { // from class: j$.util.stream.DesugarCollectors.12
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HashMap();
            }
        }), new Function() { // from class: j$.util.stream.DesugarCollectors.13
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DesugarCollectors.lambda$toUnmodifiableMap$6((HashMap) obj);
            }
        });
    }

    static /* synthetic */ Map lambda$toUnmodifiableMap$6(HashMap map) {
        return ZoneId.AnonymousClass2.m((Map.Entry[]) map.entrySet().toArray(new Map.Entry[0]));
    }

    public static <T> Collector<T, ?, Set<T>> toUnmodifiableSet() {
        return new CollectorImpl(new Supplier() { // from class: j$.util.stream.DesugarCollectors.5
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HashSet();
            }
        }, new BiConsumer() { // from class: j$.util.stream.DesugarCollectors.6
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Set) obj).add(obj2);
            }
        }, new BinaryOperator() { // from class: j$.util.stream.DesugarCollectors.7
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return DesugarCollectors.lambda$toUnmodifiableSet$7((Set) obj, (Set) obj2);
            }
        }, new Function() { // from class: j$.util.stream.DesugarCollectors.8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DesugarCollectors.lambda$toUnmodifiableSet$8((Set) obj);
            }
        }, CH_UNORDERED_NOID);
    }

    static /* synthetic */ Set lambda$toUnmodifiableSet$7(Set left, Set right) {
        if (left.size() < right.size()) {
            right.addAll(left);
            return right;
        }
        left.addAll(right);
        return left;
    }

    static /* synthetic */ Set lambda$toUnmodifiableSet$8(Set set) {
        return AnonymousClass0.m(set.toArray());
    }

    static class CollectorImpl<T, A, R> implements Collector<T, A, R> {
        private final BiConsumer<A, T> accumulator;
        private final Set<Collector.Characteristics> characteristics;
        private final BinaryOperator<A> combiner;
        private final Function<A, R> finisher;
        private final Supplier<A> supplier;

        /* JADX WARN: Generic types in debug info not equals: j$.util.stream.DesugarCollectors$CollectorImpl != java.util.stream.DesugarCollectors$CollectorImpl<T, A, R> */
        CollectorImpl(Supplier<A> supplier, BiConsumer<A, T> accumulator, BinaryOperator<A> combiner, Function<A, R> finisher, Set<Collector.Characteristics> characteristics) {
            this.supplier = supplier;
            this.accumulator = accumulator;
            this.combiner = combiner;
            this.finisher = finisher;
            this.characteristics = characteristics;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.stream.DesugarCollectors$CollectorImpl != java.util.stream.DesugarCollectors$CollectorImpl<T, A, R> */
        CollectorImpl(Supplier<A> supplier, BiConsumer<A, T> accumulator, BinaryOperator<A> combiner, Set<Collector.Characteristics> characteristics) {
            this(supplier, accumulator, combiner, DesugarCollectors.castingIdentity(), characteristics);
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.stream.DesugarCollectors$CollectorImpl != java.util.stream.DesugarCollectors$CollectorImpl<T, A, R> */
        @Override // java.util.stream.Collector
        public BiConsumer<A, T> accumulator() {
            return this.accumulator;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.stream.DesugarCollectors$CollectorImpl != java.util.stream.DesugarCollectors$CollectorImpl<T, A, R> */
        @Override // java.util.stream.Collector
        public Supplier<A> supplier() {
            return this.supplier;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.stream.DesugarCollectors$CollectorImpl != java.util.stream.DesugarCollectors$CollectorImpl<T, A, R> */
        @Override // java.util.stream.Collector
        public BinaryOperator<A> combiner() {
            return this.combiner;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.stream.DesugarCollectors$CollectorImpl != java.util.stream.DesugarCollectors$CollectorImpl<T, A, R> */
        @Override // java.util.stream.Collector
        public Function<A, R> finisher() {
            return this.finisher;
        }

        /* JADX WARN: Generic types in debug info not equals: j$.util.stream.DesugarCollectors$CollectorImpl != java.util.stream.DesugarCollectors$CollectorImpl<T, A, R> */
        @Override // java.util.stream.Collector
        public Set<Collector.Characteristics> characteristics() {
            return this.characteristics;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <I, R> Function<I, R> castingIdentity() {
        return new Function() { // from class: j$.util.stream.DesugarCollectors.15
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DesugarCollectors.lambda$castingIdentity$9(obj);
            }
        };
    }

    static /* synthetic */ Object lambda$castingIdentity$9(Object i) {
        return i;
    }
}
