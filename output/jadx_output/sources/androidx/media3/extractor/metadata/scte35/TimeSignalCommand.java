package androidx.media3.extractor.metadata.scte35;

import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;

/* JADX INFO: loaded from: classes21.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public final long playbackPositionUs;
    public final long ptsTime;

    private TimeSignalCommand(long ptsTime, long playbackPositionUs) {
        this.ptsTime = ptsTime;
        this.playbackPositionUs = playbackPositionUs;
    }

    static TimeSignalCommand parseFromSection(ParsableByteArray sectionData, long ptsAdjustment, TimestampAdjuster timestampAdjuster) {
        long ptsTime = parseSpliceTime(sectionData, ptsAdjustment);
        long playbackPositionUs = timestampAdjuster.adjustTsTimestamp(ptsTime);
        return new TimeSignalCommand(ptsTime, playbackPositionUs);
    }

    static long parseSpliceTime(ParsableByteArray sectionData, long ptsAdjustment) {
        long firstByte = sectionData.readUnsignedByte();
        if ((128 & firstByte) == 0) {
            return C.TIME_UNSET;
        }
        long ptsTime = ((1 & firstByte) << 32) | sectionData.readUnsignedInt();
        return (ptsTime + ptsAdjustment) & 8589934591L;
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public String toString() {
        return "SCTE-35 TimeSignalCommand { ptsTime=" + this.ptsTime + ", playbackPositionUs= " + this.playbackPositionUs + " }";
    }
}
