package androidx.media3.container;

import androidx.media3.common.Metadata;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Floats;

/* JADX INFO: loaded from: classes21.dex */
public final class Mp4LocationData implements Metadata.Entry {
    public final float latitude;
    public final float longitude;

    public Mp4LocationData(float latitude, float longitude) {
        Preconditions.checkArgument(latitude >= -90.0f && latitude <= 90.0f && longitude >= -180.0f && longitude <= 180.0f, "Invalid latitude or longitude");
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Mp4LocationData other = (Mp4LocationData) obj;
        if (this.latitude == other.latitude && this.longitude == other.longitude) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + Floats.hashCode(this.latitude);
        return (result * 31) + Floats.hashCode(this.longitude);
    }

    public String toString() {
        return "xyz: latitude=" + this.latitude + ", longitude=" + this.longitude;
    }
}
