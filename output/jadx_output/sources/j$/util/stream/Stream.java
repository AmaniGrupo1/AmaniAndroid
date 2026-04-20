package j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes19.dex */
public interface Stream<T> {

    /* JADX INFO: renamed from: j$.util.stream.Stream$-EL, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class EL {
        public static /* synthetic */ List toList(java.util.stream.Stream stream) {
            return stream instanceof Stream ? ((Stream) stream).toList() : CC.$default$toList(stream);
        }
    }

    /* JADX INFO: renamed from: j$.util.stream.Stream$0, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass0 implements Runnable {
        public final /* synthetic */ java.util.stream.Stream f$0;

        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.close();
        }
    }

    List<T> toList();

    /* JADX INFO: renamed from: j$.util.stream.Stream$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static List $default$toList(java.util.stream.Stream _this) {
            return Collections.unmodifiableList(new ArrayList(Arrays.asList(_this.toArray())));
        }
    }
}
