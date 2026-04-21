package j$.sun.nio.cs;

import j$.sun.misc.DesugarUnsafe;

/* JADX INFO: loaded from: classes19.dex */
class StringUTF16 {
    private static final DesugarUnsafe unsafe = DesugarUnsafe.getUnsafe();

    StringUTF16() {
    }

    public static char getChar(byte[] val, int index) {
        return unsafe.getChar(val, ((long) DesugarUnsafe.ARRAY_BYTE_BASE_OFFSET) + (((long) (DesugarUnsafe.ARRAY_BYTE_INDEX_SCALE * index)) * 2));
    }
}
