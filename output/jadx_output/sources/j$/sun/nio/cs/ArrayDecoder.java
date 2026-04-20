package j$.sun.nio.cs;

/* JADX INFO: loaded from: classes19.dex */
public interface ArrayDecoder {
    int decode(byte[] bArr, int i, int i2, char[] cArr);

    default boolean isASCIICompatible() {
        return false;
    }
}
