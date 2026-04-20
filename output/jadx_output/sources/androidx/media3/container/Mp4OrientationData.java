package androidx.media3.container;

import androidx.media3.common.Metadata;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class Mp4OrientationData implements Metadata.Entry {
    public final int orientation;

    public Mp4OrientationData(int orientation) {
        Preconditions.checkArgument(orientation == 0 || orientation == 90 || orientation == 180 || orientation == 270, "Unsupported orientation");
        this.orientation = orientation;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Mp4OrientationData)) {
            return false;
        }
        Mp4OrientationData other = (Mp4OrientationData) obj;
        return this.orientation == other.orientation;
    }

    public int hashCode() {
        int result = (17 * 31) + Integer.hashCode(this.orientation);
        return result;
    }

    public String toString() {
        return "Orientation= " + this.orientation;
    }
}
