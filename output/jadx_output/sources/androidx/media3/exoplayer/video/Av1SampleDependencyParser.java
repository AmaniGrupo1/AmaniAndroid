package androidx.media3.exoplayer.video;

import androidx.media3.container.ObuParser;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public final class Av1SampleDependencyParser {
    private static final int MAX_BYTES_FROM_KEYFRAME_TO_READ = 500;
    private static final int MAX_OBU_COUNT_FOR_PARTIAL_SKIP = 8;
    private final ByteBuffer delayedKeyFrameTruncatedSample = ByteBuffer.allocateDirect(500);
    private ObuParser.SequenceHeader sequenceHeader;

    public int sampleLimitAfterSkippingNonReferenceFrame(ByteBuffer sample, boolean skipFrameHeaders) {
        if (this.delayedKeyFrameTruncatedSample.hasRemaining()) {
            updateSequenceHeaders(ObuParser.split(this.delayedKeyFrameTruncatedSample));
            emptyDelayedKeyFrameTruncatedSample();
        }
        List<ObuParser.Obu> obuList = ObuParser.split(sample);
        updateSequenceHeaders(obuList);
        int skippedFramesCount = 0;
        int last = obuList.size() - 1;
        while (last >= 0 && canSkipObu(obuList.get(last), skipFrameHeaders)) {
            if (obuList.get(last).type == 6 || obuList.get(last).type == 3) {
                skippedFramesCount++;
            }
            last--;
        }
        if (skippedFramesCount > 1 || last + 1 >= 8) {
            return sample.limit();
        }
        if (last >= 0) {
            return obuList.get(last).payload.limit();
        }
        return sample.position();
    }

    public void queueInputBuffer(ByteBuffer sample) {
        int samplePosition = sample.position();
        int sampleLimit = sample.limit();
        sample.limit(Math.min(sampleLimit, samplePosition + 500));
        this.delayedKeyFrameTruncatedSample.clear();
        this.delayedKeyFrameTruncatedSample.put(sample);
        this.delayedKeyFrameTruncatedSample.flip();
        sample.position(samplePosition);
        sample.limit(sampleLimit);
    }

    public void reset() {
        this.sequenceHeader = null;
        emptyDelayedKeyFrameTruncatedSample();
    }

    private boolean canSkipObu(ObuParser.Obu obu, boolean skipFrameHeaders) {
        if (obu.type == 2 || obu.type == 15) {
            return true;
        }
        if (obu.type == 3 && !skipFrameHeaders) {
            return false;
        }
        if ((obu.type != 6 && obu.type != 3) || this.sequenceHeader == null) {
            return false;
        }
        ObuParser.FrameHeader frameHeader = ObuParser.FrameHeader.parse(this.sequenceHeader, obu);
        return (frameHeader == null || frameHeader.isDependedOn()) ? false : true;
    }

    private void updateSequenceHeaders(List<ObuParser.Obu> obuList) {
        for (int i = 0; i < obuList.size(); i++) {
            if (obuList.get(i).type == 1) {
                this.sequenceHeader = ObuParser.SequenceHeader.parse(obuList.get(i));
            }
        }
    }

    private void emptyDelayedKeyFrameTruncatedSample() {
        this.delayedKeyFrameTruncatedSample.position(this.delayedKeyFrameTruncatedSample.limit());
    }
}
