package j$.util.stream;

import java.util.Objects;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.StreamSupport;

/* JADX INFO: loaded from: classes19.dex */
public final class DesugarStream {
    private DesugarStream() {
    }

    public static <T> java.util.stream.Stream<T> iterate(final T seed, final Predicate<? super T> hasNext, final UnaryOperator<T> next) {
        Objects.requireNonNull(next);
        Objects.requireNonNull(hasNext);
        Spliterator<T> spliterator = new Spliterators.AbstractSpliterator<T>(Long.MAX_VALUE, 1040) { // from class: j$.util.stream.DesugarStream.1
            boolean finished;
            T prev;
            boolean started;

            @Override // java.util.Spliterator
            public boolean tryAdvance(Consumer<? super T> consumer) {
                T t;
                Objects.requireNonNull(consumer);
                if (this.finished) {
                    return false;
                }
                if (this.started) {
                    t = (T) next.apply(this.prev);
                } else {
                    t = (T) seed;
                    this.started = true;
                }
                if (!hasNext.test(t)) {
                    this.prev = null;
                    this.finished = true;
                    return false;
                }
                this.prev = t;
                consumer.accept(t);
                return true;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Spliterator
            public void forEachRemaining(Consumer<? super T> action) {
                Objects.requireNonNull(action);
                if (this.finished) {
                    return;
                }
                this.finished = true;
                Object objApply = this.started ? next.apply(this.prev) : seed;
                this.prev = null;
                while (hasNext.test(objApply)) {
                    action.accept(objApply);
                    objApply = next.apply(objApply);
                }
            }
        };
        return StreamSupport.stream(spliterator, false);
    }
}
