package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;

/* JADX INFO: compiled from: EditingBuffer.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"updateRangeAfterDelete", "Landroidx/compose/ui/text/TextRange;", "target", "deleted", "updateRangeAfterDelete-pWDy79M", "(JJ)J", "ui-text"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class EditingBufferKt {
    /* JADX INFO: renamed from: updateRangeAfterDelete-pWDy79M, reason: not valid java name */
    public static final long m7092updateRangeAfterDeletepWDy79M(long j, long j2) {
        int targetMin = TextRange.m6926getMinimpl(j);
        int targetMax = TextRange.m6925getMaximpl(j);
        if (TextRange.m6930intersects5zctL8(j2, j)) {
            if (TextRange.m6918contains5zctL8(j2, j)) {
                targetMin = TextRange.m6926getMinimpl(j2);
                targetMax = targetMin;
            } else if (TextRange.m6918contains5zctL8(j, j2)) {
                targetMax -= TextRange.m6924getLengthimpl(j2);
            } else if (TextRange.m6919containsimpl(j2, targetMin)) {
                targetMin = TextRange.m6926getMinimpl(j2);
                targetMax -= TextRange.m6924getLengthimpl(j2);
            } else {
                targetMax = TextRange.m6926getMinimpl(j2);
            }
        } else if (targetMax > TextRange.m6926getMinimpl(j2)) {
            targetMin -= TextRange.m6924getLengthimpl(j2);
            targetMax -= TextRange.m6924getLengthimpl(j2);
        }
        return TextRangeKt.TextRange(targetMin, targetMax);
    }
}
