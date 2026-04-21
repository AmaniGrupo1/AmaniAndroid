package androidx.media3.common.util;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class GlRect {
    public int bottom;
    public int left;
    public int right;
    public int top;

    public GlRect(int width, int height) {
        this(0, 0, width, height);
    }

    public GlRect(int left, int bottom, int right, int top) {
        Preconditions.checkArgument(left <= right && bottom <= top);
        this.left = left;
        this.bottom = bottom;
        this.right = right;
        this.top = top;
    }
}
