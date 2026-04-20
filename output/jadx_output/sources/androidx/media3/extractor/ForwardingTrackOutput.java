package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.TrackOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes21.dex */
public class ForwardingTrackOutput implements TrackOutput {
    private final TrackOutput trackOutput;

    public ForwardingTrackOutput(TrackOutput trackOutput) {
        this.trackOutput = trackOutput;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void durationUs(long durationUs) {
        this.trackOutput.durationUs(durationUs);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void format(Format format) {
        this.trackOutput.format(format);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int sampleData(DataReader input, int length, boolean allowEndOfInput) throws IOException {
        return this.trackOutput.sampleData(input, length, allowEndOfInput);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleData(ParsableByteArray data, int length) {
        this.trackOutput.sampleData(data, length);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int sampleData(DataReader input, int length, boolean allowEndOfInput, int sampleDataPart) throws IOException {
        return this.trackOutput.sampleData(input, length, allowEndOfInput, sampleDataPart);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleData(ParsableByteArray data, int length, int sampleDataPart) {
        this.trackOutput.sampleData(data, length, sampleDataPart);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleMetadata(long timeUs, int flags, int size, int offset, TrackOutput.CryptoData cryptoData) {
        this.trackOutput.sampleMetadata(timeUs, flags, size, offset, cryptoData);
    }
}
