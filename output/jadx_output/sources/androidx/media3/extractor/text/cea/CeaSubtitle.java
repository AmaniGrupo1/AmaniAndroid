package androidx.media3.extractor.text.cea;

import androidx.media3.common.text.Cue;
import androidx.media3.extractor.text.Subtitle;
import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
final class CeaSubtitle implements Subtitle {
    private final List<Cue> cues;

    public CeaSubtitle(List<Cue> cues) {
        this.cues = cues;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long timeUs) {
        return timeUs < 0 ? 0 : -1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int index) {
        Preconditions.checkArgument(index == 0);
        return 0L;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public List<Cue> getCues(long timeUs) {
        return timeUs >= 0 ? this.cues : Collections.emptyList();
    }
}
