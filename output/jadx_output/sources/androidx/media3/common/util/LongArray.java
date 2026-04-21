package androidx.media3.common.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes21.dex */
public final class LongArray {
    private static final int DEFAULT_INITIAL_CAPACITY = 32;
    private int size;
    private long[] values;

    public LongArray() {
        this(32);
    }

    public LongArray(int initialCapacity) {
        this.values = new long[initialCapacity];
    }

    public void add(long value) {
        if (this.size == this.values.length) {
            this.values = Arrays.copyOf(this.values, this.size * 2);
        }
        long[] jArr = this.values;
        int i = this.size;
        this.size = i + 1;
        jArr[i] = value;
    }

    public void addAll(long[] values) {
        int newSize = this.size + values.length;
        if (newSize > this.values.length) {
            this.values = Arrays.copyOf(this.values, Math.max(this.values.length * 2, newSize));
        }
        System.arraycopy(values, 0, this.values, this.size, values.length);
        this.size = newSize;
    }

    public long get(int index) {
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException("Invalid index " + index + ", size is " + this.size);
        }
        return this.values[index];
    }

    public int size() {
        return this.size;
    }

    public long[] toArray() {
        return Arrays.copyOf(this.values, this.size);
    }
}
