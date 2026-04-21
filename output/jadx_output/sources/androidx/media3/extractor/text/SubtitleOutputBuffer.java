package androidx.media3.extractor.text;

import androidx.media3.common.text.Cue;
import androidx.media3.decoder.DecoderOutputBuffer;
import com.google.common.base.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public abstract class SubtitleOutputBuffer extends DecoderOutputBuffer implements Subtitle {
    private long subsampleOffsetUs;
    private Subtitle subtitle;

    public void setContent(long timeUs, Subtitle subtitle, long subsampleOffsetUs) {
        this.timeUs = timeUs;
        this.subtitle = subtitle;
        this.subsampleOffsetUs = subsampleOffsetUs == Long.MAX_VALUE ? this.timeUs : subsampleOffsetUs;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return ((Subtitle) Preconditions.checkNotNull(this.subtitle)).getEventTimeCount();
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int index) {
        return ((Subtitle) Preconditions.checkNotNull(this.subtitle)).getEventTime(index) + this.subsampleOffsetUs;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long timeUs) {
        return ((Subtitle) Preconditions.checkNotNull(this.subtitle)).getNextEventTimeIndex(timeUs - this.subsampleOffsetUs);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public List<Cue> getCues(long timeUs) {
        return ((Subtitle) Preconditions.checkNotNull(this.subtitle)).getCues(timeUs - this.subsampleOffsetUs);
    }

    @Override // androidx.media3.decoder.DecoderOutputBuffer, androidx.media3.decoder.Buffer
    public void clear() {
        super.clear();
        this.subtitle = null;
    }
}
