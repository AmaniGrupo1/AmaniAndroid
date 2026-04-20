package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SniffFailure;
import com.google.common.primitives.ImmutableIntArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public final class UnsupportedBrandsSniffFailure implements SniffFailure {
    public final ImmutableIntArray compatibleBrands;
    public final int majorBrand;

    public UnsupportedBrandsSniffFailure(int majorBrand, int[] compatibleBrands) {
        ImmutableIntArray immutableIntArrayOf;
        this.majorBrand = majorBrand;
        if (compatibleBrands != null) {
            immutableIntArrayOf = ImmutableIntArray.copyOf(compatibleBrands);
        } else {
            immutableIntArrayOf = ImmutableIntArray.of();
        }
        this.compatibleBrands = immutableIntArrayOf;
    }

    public String toString() {
        List<String> compatibleBrandStrings = new ArrayList<>(this.compatibleBrands.length());
        for (int i = 0; i < this.compatibleBrands.length(); i++) {
            compatibleBrandStrings.add(Util.toFourccString(this.compatibleBrands.get(i)));
        }
        return "UnsupportedBrands{major=" + Util.toFourccString(this.majorBrand) + ", compatible=" + compatibleBrandStrings + "}";
    }
}
