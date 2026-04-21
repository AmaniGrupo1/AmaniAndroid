package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import com.google.common.base.Predicate;
import com.google.common.collect.UnmodifiableIterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes21.dex */
public final class GaplessInfoHolder {
    private static final Pattern GAPLESS_COMMENT_PATTERN = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    private static final String GAPLESS_DESCRIPTION = "iTunSMPB";
    private static final String GAPLESS_DOMAIN = "com.apple.iTunes";
    public int encoderDelay = -1;
    public int encoderPadding = -1;

    /* JADX WARN: Multi-variable type inference failed */
    public boolean setFromMetadata(Metadata metadata) {
        UnmodifiableIterator it = metadata.getMatchingEntries(CommentFrame.class, new Predicate() { // from class: androidx.media3.extractor.GaplessInfoHolder$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((CommentFrame) obj).description.equals(GaplessInfoHolder.GAPLESS_DESCRIPTION);
            }
        }).iterator();
        while (it.hasNext()) {
            CommentFrame gaplessCommentFrame = (CommentFrame) it.next();
            if (setFromComment(gaplessCommentFrame.text)) {
                return true;
            }
        }
        UnmodifiableIterator it2 = metadata.getMatchingEntries(InternalFrame.class, new Predicate() { // from class: androidx.media3.extractor.GaplessInfoHolder$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return GaplessInfoHolder.lambda$setFromMetadata$1((InternalFrame) obj);
            }
        }).iterator();
        while (it2.hasNext()) {
            InternalFrame gaplessInternalFrame = (InternalFrame) it2.next();
            if (setFromComment(gaplessInternalFrame.text)) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean lambda$setFromMetadata$1(InternalFrame internalFrame) {
        return internalFrame.domain.equals(GAPLESS_DOMAIN) && internalFrame.description.equals(GAPLESS_DESCRIPTION);
    }

    private boolean setFromComment(String data) {
        Matcher matcher = GAPLESS_COMMENT_PATTERN.matcher(data);
        if (matcher.find()) {
            try {
                int encoderDelay = Integer.parseInt((String) Util.castNonNull(matcher.group(1)), 16);
                int encoderPadding = Integer.parseInt((String) Util.castNonNull(matcher.group(2)), 16);
                if (encoderDelay <= 0 && encoderPadding <= 0) {
                    return false;
                }
                this.encoderDelay = encoderDelay;
                this.encoderPadding = encoderPadding;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    public boolean hasGaplessInfo() {
        return (this.encoderDelay == -1 || this.encoderPadding == -1) ? false : true;
    }
}
