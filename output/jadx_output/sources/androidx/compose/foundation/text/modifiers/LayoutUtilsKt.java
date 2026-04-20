package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: LayoutUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\u001a/\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0000¢\u0006\u0004\b\t\u0010\n\u001a/\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\fH\u0000¢\u0006\u0004\b\u0011\u0010\u0012\"\u0018\u0010\u0013\u001a\u00020\u0004*\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"finalConstraints", "Landroidx/compose/ui/unit/Constraints;", "constraints", "softWrap", "", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "maxIntrinsicWidth", "", "finalConstraints-tfFHcEY", "(JZIF)J", "finalMaxWidth", "", "finalMaxWidth-tfFHcEY", "(JZIF)I", "finalMaxLines", "maxLinesIn", "finalMaxLines-xdlQI24", "(ZII)I", "isEllipsis", "isEllipsis-MW5-ApA", "(I)Z", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LayoutUtilsKt {
    /* JADX INFO: renamed from: finalConstraints-tfFHcEY, reason: not valid java name */
    public static final long m1546finalConstraintstfFHcEY(long j, boolean softWrap, int i, float maxIntrinsicWidth) {
        return Constraints.INSTANCE.m7467fitPrioritizingWidthZbe2FdA(0, m1548finalMaxWidthtfFHcEY(j, softWrap, i, maxIntrinsicWidth), 0, Constraints.m7457getMaxHeightimpl(j));
    }

    /* JADX INFO: renamed from: finalMaxWidth-tfFHcEY, reason: not valid java name */
    public static final int m1548finalMaxWidthtfFHcEY(long j, boolean softWrap, int i, float maxIntrinsicWidth) {
        int maxWidth;
        boolean widthMatters = softWrap || m1549isEllipsisMW5ApA(i);
        if (widthMatters && Constraints.m7454getHasBoundedWidthimpl(j)) {
            maxWidth = Constraints.m7458getMaxWidthimpl(j);
        } else {
            maxWidth = Integer.MAX_VALUE;
        }
        if (Constraints.m7460getMinWidthimpl(j) == maxWidth) {
            return maxWidth;
        }
        return RangesKt.coerceIn(TextDelegateKt.ceilToIntPx(maxIntrinsicWidth), Constraints.m7460getMinWidthimpl(j), maxWidth);
    }

    /* JADX INFO: renamed from: finalMaxLines-xdlQI24, reason: not valid java name */
    public static final int m1547finalMaxLinesxdlQI24(boolean softWrap, int i, int maxLinesIn) {
        boolean overwriteMaxLines = !softWrap && m1549isEllipsisMW5ApA(i);
        if (overwriteMaxLines) {
            return 1;
        }
        return RangesKt.coerceAtLeast(maxLinesIn, 1);
    }

    /* JADX INFO: renamed from: isEllipsis-MW5-ApA, reason: not valid java name */
    public static final boolean m1549isEllipsisMW5ApA(int i) {
        return TextOverflow.m7406equalsimpl0(i, TextOverflow.INSTANCE.m7416getEllipsisgIe3tQ8()) || TextOverflow.m7406equalsimpl0(i, TextOverflow.INSTANCE.m7418getStartEllipsisgIe3tQ8()) || TextOverflow.m7406equalsimpl0(i, TextOverflow.INSTANCE.m7417getMiddleEllipsisgIe3tQ8());
    }
}
