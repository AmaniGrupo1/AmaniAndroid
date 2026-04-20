package j$.util;

import java.util.LinkedHashSet;
import java.util.Spliterator;
import java.util.Spliterators;

/* JADX INFO: loaded from: classes19.dex */
public final /* synthetic */ class DesugarLinkedHashSet {
    private DesugarLinkedHashSet() {
    }

    public static Spliterator spliterator(LinkedHashSet linkedHashSet) {
        return Spliterators.spliterator(linkedHashSet, 17);
    }
}
