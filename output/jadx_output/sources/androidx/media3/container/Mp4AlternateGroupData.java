package androidx.media3.container;

import androidx.media3.common.Metadata;

/* JADX INFO: loaded from: classes21.dex */
public final class Mp4AlternateGroupData implements Metadata.Entry {
    public final int alternateGroup;

    public Mp4AlternateGroupData(int alternateGroup) {
        this.alternateGroup = alternateGroup;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Mp4AlternateGroupData)) {
            return false;
        }
        Mp4AlternateGroupData other = (Mp4AlternateGroupData) obj;
        return this.alternateGroup == other.alternateGroup;
    }

    public int hashCode() {
        return this.alternateGroup;
    }

    public String toString() {
        return "Mp4AlternateGroup: " + this.alternateGroup;
    }
}
