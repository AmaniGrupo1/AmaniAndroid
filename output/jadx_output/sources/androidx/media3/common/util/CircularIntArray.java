package androidx.media3.common.util;

/* JADX INFO: loaded from: classes21.dex */
public final class CircularIntArray {
    private int capacityBitmask = 7;
    private int[] elements = new int[8];
    private int head;
    private int tail;

    public void addLast(int e) {
        this.elements[this.tail] = e;
        this.tail = (this.tail + 1) & this.capacityBitmask;
        if (this.tail == this.head) {
            doubleCapacity();
        }
    }

    public int popFirst() {
        if (this.head == this.tail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int result = this.elements[this.head];
        this.head = (this.head + 1) & this.capacityBitmask;
        return result;
    }

    public void clear() {
        this.tail = this.head;
    }

    public boolean isEmpty() {
        return this.head == this.tail;
    }

    private void doubleCapacity() {
        int n = this.elements.length;
        int r = n - this.head;
        int newCapacity = n << 1;
        int[] a = new int[newCapacity];
        System.arraycopy(this.elements, this.head, a, 0, r);
        System.arraycopy(this.elements, 0, a, r, this.head);
        this.elements = a;
        this.head = 0;
        this.tail = n;
        this.capacityBitmask = newCapacity - 1;
    }
}
