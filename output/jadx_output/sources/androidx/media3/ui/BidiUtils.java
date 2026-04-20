package androidx.media3.ui;

import android.text.BidiFormatter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextDirectionHeuristics;
import androidx.media3.common.util.Log;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: loaded from: classes21.dex */
final class BidiUtils {
    private static final String TAG = "BidiUtils";
    private static final Splitter LF_SPLITTER = Splitter.on("\n");
    private static final Splitter CRLF_SPLITTER = Splitter.on("\r\n");
    private static final Joiner LF_JOINER = Joiner.on("\n");

    BidiUtils() {
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    static boolean containsRtl(CharSequence input) {
        if (input == null) {
            return false;
        }
        int length = input.length();
        int offset = 0;
        while (offset < length) {
            int codePoint = Character.codePointAt(input, offset);
            byte dir = Character.getDirectionality(codePoint);
            if (dir == 1 || dir == 2 || dir == 16 || dir == 17) {
                return true;
            }
            offset += Character.charCount(codePoint);
        }
        return false;
    }

    public static CharSequence wrapText(CharSequence input) {
        List<String> lines;
        int eolLength;
        BidiFormatter bidiFormatter;
        BidiFormatter bidiFormatter2;
        BidiFormatter bidiFormatter3 = BidiFormatter.getInstance();
        Spanned spannedInput = null;
        Object[] spans = null;
        int[] spanStarts = null;
        int[] spanEnds = null;
        if (input instanceof Spanned) {
            spannedInput = (Spanned) input;
            spans = spannedInput.getSpans(0, input.length(), Object.class);
            spanStarts = new int[spans.length];
            spanEnds = new int[spans.length];
            Arrays.fill(spanStarts, -1);
            Arrays.fill(spanEnds, -1);
        }
        if (input.toString().contains("\r\n")) {
            lines = CRLF_SPLITTER.splitToList(input);
            eolLength = 2;
        } else {
            lines = LF_SPLITTER.splitToList(input);
            eolLength = 1;
        }
        List<String> wrappedLines = new ArrayList<>(lines.size());
        int spanUpdate = 0;
        int lineStart = 0;
        for (String line : lines) {
            String wrappedLine = bidiFormatter3.unicodeWrap(line, TextDirectionHeuristics.LTR);
            if (spans == null) {
                bidiFormatter = bidiFormatter3;
            } else {
                Preconditions.checkNotNull(spannedInput);
                Preconditions.checkNotNull(spanStarts);
                Preconditions.checkNotNull(spanEnds);
                int diff = wrappedLine.length() - line.length();
                if (diff > 0) {
                    spanUpdate++;
                }
                int j = 0;
                while (j < spans.length) {
                    if (spanStarts[j] >= 0 || spannedInput.getSpanStart(spans[j]) < lineStart) {
                        bidiFormatter2 = bidiFormatter3;
                    } else {
                        bidiFormatter2 = bidiFormatter3;
                        if (spannedInput.getSpanStart(spans[j]) < lineStart + line.length()) {
                            spanStarts[j] = spanUpdate;
                        }
                    }
                    if (spanEnds[j] < 0 && spannedInput.getSpanEnd(spans[j]) - 1 >= lineStart && spannedInput.getSpanEnd(spans[j]) - 1 < line.length() + lineStart) {
                        spanEnds[j] = spanUpdate;
                    }
                    j++;
                    bidiFormatter3 = bidiFormatter2;
                }
                bidiFormatter = bidiFormatter3;
                lineStart += line.length() + eolLength;
                if (diff > 0) {
                    spanUpdate++;
                }
            }
            wrappedLines.add(wrappedLine);
            bidiFormatter3 = bidiFormatter;
        }
        SpannableStringBuilder wrapped = new SpannableStringBuilder(LF_JOINER.join(wrappedLines));
        if (spans != null) {
            Preconditions.checkNotNull(spannedInput);
            Preconditions.checkNotNull(spanStarts);
            Preconditions.checkNotNull(spanEnds);
            for (int i = 0; i < spans.length; i++) {
                int start = spannedInput.getSpanStart(spans[i]) + spanStarts[i];
                int end = spannedInput.getSpanEnd(spans[i]) + spanEnds[i];
                int flags = spannedInput.getSpanFlags(spans[i]);
                if (start >= 0 && start < wrapped.length() && end >= 0 && end <= wrapped.length()) {
                    wrapped.setSpan(spans[i], start, end, flags);
                } else {
                    Log.w(TAG, "Span out of bounds: start=" + start + ",end=" + end + ",len=" + wrapped.length());
                }
            }
        }
        return wrapped;
    }
}
