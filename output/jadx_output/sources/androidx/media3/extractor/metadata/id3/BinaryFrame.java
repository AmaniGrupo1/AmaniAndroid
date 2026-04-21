package androidx.media3.extractor.metadata.id3;

import java.util.Arrays;

/* JADX INFO: loaded from: classes21.dex */
public final class BinaryFrame extends Id3Frame {
    public final byte[] data;

    public BinaryFrame(String id, byte[] data) {
        super(id);
        this.data = data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BinaryFrame other = (BinaryFrame) obj;
        if (this.id.equals(other.id) && Arrays.equals(this.data, other.data)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + this.id.hashCode();
        return (result * 31) + Arrays.hashCode(this.data);
    }
}
