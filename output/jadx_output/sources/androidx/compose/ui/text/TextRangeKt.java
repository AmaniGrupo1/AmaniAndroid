package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: compiled from: TextRange.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0000\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000b\u001a\u0013\u0010\u0007\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\t¢\u0006\u0002\u0010\r\u001a!\u0010\u000e\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002¨\u0006\u0015"}, d2 = {"substring", "", "", "range", "Landroidx/compose/ui/text/TextRange;", "substring-FDrldGo", "(Ljava/lang/CharSequence;J)Ljava/lang/String;", "TextRange", TtmlNode.START, "", TtmlNode.END, "(II)J", "index", "(I)J", "coerceIn", "minimumValue", "maximumValue", "coerceIn-8ffj60Q", "(JII)J", "packWithCheck", "", "ui-text"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TextRangeKt {
    /* JADX INFO: renamed from: substring-FDrldGo, reason: not valid java name */
    public static final String m6935substringFDrldGo(CharSequence $this$substring_u2dFDrldGo, long j) {
        return $this$substring_u2dFDrldGo.subSequence(TextRange.m6926getMinimpl(j), TextRange.m6925getMaximpl(j)).toString();
    }

    public static final long TextRange(int start, int end) {
        return TextRange.m6917constructorimpl(packWithCheck(start, end));
    }

    public static final long TextRange(int index) {
        return TextRange(index, index);
    }

    /* JADX INFO: renamed from: coerceIn-8ffj60Q, reason: not valid java name */
    public static final long m6934coerceIn8ffj60Q(long j, int minimumValue, int maximumValue) {
        int $this$fastCoerceAtLeast$iv$iv = TextRange.m6928getStartimpl(j);
        if ($this$fastCoerceAtLeast$iv$iv < minimumValue) {
            $this$fastCoerceAtLeast$iv$iv = minimumValue;
        }
        if ($this$fastCoerceAtLeast$iv$iv > maximumValue) {
            $this$fastCoerceAtLeast$iv$iv = maximumValue;
        }
        int $this$fastCoerceIn$iv = TextRange.m6923getEndimpl(j);
        int minimumValue$iv$iv = minimumValue;
        if ($this$fastCoerceIn$iv >= minimumValue$iv$iv) {
            minimumValue$iv$iv = $this$fastCoerceIn$iv;
        }
        int maximumValue$iv$iv = maximumValue;
        if (minimumValue$iv$iv <= maximumValue$iv$iv) {
            maximumValue$iv$iv = minimumValue$iv$iv;
        }
        if ($this$fastCoerceAtLeast$iv$iv != TextRange.m6928getStartimpl(j) || maximumValue$iv$iv != TextRange.m6923getEndimpl(j)) {
            return TextRange($this$fastCoerceAtLeast$iv$iv, maximumValue$iv$iv);
        }
        return j;
    }

    private static final long packWithCheck(int start, int end) {
        boolean value$iv = start >= 0 && end >= 0;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("start and end cannot be negative. [start: " + start + ", end: " + end + AbstractJsonLexerKt.END_LIST);
        }
        return (((long) start) << 32) | (((long) end) & 4294967295L);
    }
}
