package androidx.media3.extractor;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public class ForwardingExtractor implements Extractor {
    private final Extractor delegate;

    public ForwardingExtractor(Extractor delegate) {
        this.delegate = delegate;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws IOException {
        return this.delegate.sniff(input);
    }

    @Override // androidx.media3.extractor.Extractor
    public List<SniffFailure> getSniffFailureDetails() {
        return this.delegate.getSniffFailureDetails();
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.delegate.init(output);
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        return this.delegate.read(input, seekPosition);
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long position, long timeUs) {
        this.delegate.seek(position, timeUs);
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        this.delegate.release();
    }

    @Override // androidx.media3.extractor.Extractor
    public Extractor getUnderlyingImplementation() {
        return this.delegate.getUnderlyingImplementation();
    }
}
