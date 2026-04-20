package androidx.media3.extractor.metadata.mp4;

import androidx.media3.common.Metadata;
import com.google.common.primitives.Floats;

/* JADX INFO: loaded from: classes21.dex */
public final class SmtaMetadataEntry implements Metadata.Entry {
    public final float captureFrameRate;
    public final int svcTemporalLayerCount;

    public SmtaMetadataEntry(float captureFrameRate, int svcTemporalLayerCount) {
        this.captureFrameRate = captureFrameRate;
        this.svcTemporalLayerCount = svcTemporalLayerCount;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SmtaMetadataEntry other = (SmtaMetadataEntry) obj;
        if (this.captureFrameRate == other.captureFrameRate && this.svcTemporalLayerCount == other.svcTemporalLayerCount) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + Floats.hashCode(this.captureFrameRate);
        return (result * 31) + this.svcTemporalLayerCount;
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.captureFrameRate + ", svcTemporalLayerCount=" + this.svcTemporalLayerCount;
    }
}
