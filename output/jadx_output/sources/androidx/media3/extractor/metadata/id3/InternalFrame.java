package androidx.media3.extractor.metadata.id3;

import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class InternalFrame extends Id3Frame {
    public static final String ID = "----";
    public final String description;
    public final String domain;
    public final String text;

    public InternalFrame(String domain, String description, String text) {
        super(ID);
        this.domain = domain;
        this.description = description;
        this.text = text;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InternalFrame other = (InternalFrame) obj;
        if (Objects.equals(this.description, other.description) && Objects.equals(this.domain, other.domain) && Objects.equals(this.text, other.text)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + (this.domain != null ? this.domain.hashCode() : 0);
        return (((result * 31) + (this.description != null ? this.description.hashCode() : 0)) * 31) + (this.text != null ? this.text.hashCode() : 0);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public String toString() {
        return this.id + ": domain=" + this.domain + ", description=" + this.description;
    }
}
