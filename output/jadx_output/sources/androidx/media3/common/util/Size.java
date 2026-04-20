package androidx.media3.common.util;

import android.os.Bundle;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class Size {
    private final int height;
    private final int width;
    public static final Size UNKNOWN = new Size(-1, -1);
    public static final Size ZERO = new Size(0, 0);
    private static final String FIELD_WIDTH = Util.intToStringMaxRadix(0);
    private static final String FIELD_HEIGHT = Util.intToStringMaxRadix(1);

    public Size(int width, int height) {
        Preconditions.checkArgument((width == -1 || width >= 0) && (height == -1 || height >= 0));
        this.width = width;
        this.height = height;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size other = (Size) obj;
        if (this.width != other.width || this.height != other.height) {
            return false;
        }
        return true;
    }

    public String toString() {
        return this.width + "x" + this.height;
    }

    public int hashCode() {
        return this.height ^ ((this.width << 16) | (this.width >>> 16));
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_WIDTH, this.width);
        bundle.putInt(FIELD_HEIGHT, this.height);
        return bundle;
    }

    public static Size fromBundle(Bundle bundle) {
        int width = bundle.getInt(FIELD_WIDTH, -1);
        int height = bundle.getInt(FIELD_HEIGHT, -1);
        return new Size(width, height);
    }
}
