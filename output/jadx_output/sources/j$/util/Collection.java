package j$.util;

import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes19.dex */
public interface Collection<E> {

    /* JADX INFO: renamed from: j$.util.Collection$-EL, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class EL {
        public static /* synthetic */ Object[] toArray(java.util.Collection collection, IntFunction intFunction) {
            return collection instanceof Collection ? ((Collection) collection).toArray(intFunction) : CC.$default$toArray(collection, intFunction);
        }
    }

    <T> T[] toArray(IntFunction<T[]> intFunction);

    /* JADX INFO: renamed from: j$.util.Collection$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static Object[] $default$toArray(java.util.Collection _this, IntFunction intFunction) {
            return _this.toArray((Object[]) intFunction.apply(0));
        }
    }
}
