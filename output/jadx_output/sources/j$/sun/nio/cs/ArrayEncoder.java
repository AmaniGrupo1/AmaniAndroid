package j$.sun.nio.cs;

/* JADX INFO: loaded from: classes19.dex */
public interface ArrayEncoder {
    int encode(char[] cArr, int i, int i2, byte[] bArr);

    default int encodeFromLatin1(byte[] src, int sp, int len, byte[] dst) {
        return -1;
    }

    default int encodeFromUTF16(byte[] src, int sp, int len, byte[] dst) {
        return -1;
    }

    default boolean isASCIICompatible() {
        return false;
    }
}
