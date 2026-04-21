package androidx.media3.extractor.metadata.id3;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class PrivFrame extends Id3Frame {
    public static final String ID = "PRIV";
    public final String owner;
    public final byte[] privateData;

    public PrivFrame(String owner, byte[] privateData) {
        super(ID);
        this.owner = owner;
        this.privateData = privateData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PrivFrame other = (PrivFrame) obj;
        if (Objects.equals(this.owner, other.owner) && Arrays.equals(this.privateData, other.privateData)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + (this.owner != null ? this.owner.hashCode() : 0);
        return (result * 31) + Arrays.hashCode(this.privateData);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public String toString() {
        return this.id + ": owner=" + this.owner;
    }
}
