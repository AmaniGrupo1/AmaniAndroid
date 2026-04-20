package androidx.media3.common.util;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes21.dex */
public interface TimestampIterator {
    TimestampIterator copyOf();

    boolean hasNext();

    long next();

    default long getLastTimestampUs() {
        return C.TIME_UNSET;
    }
}
