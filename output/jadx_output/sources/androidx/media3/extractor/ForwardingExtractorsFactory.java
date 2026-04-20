package androidx.media3.extractor;

import android.net.Uri;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes21.dex */
public class ForwardingExtractorsFactory implements ExtractorsFactory {
    private final ExtractorsFactory factory;

    public ForwardingExtractorsFactory(ExtractorsFactory factory) {
        this.factory = factory;
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public ExtractorsFactory experimentalSetTextTrackTranscodingEnabled(boolean textTrackTranscodingEnabled) {
        return this.factory.experimentalSetTextTrackTranscodingEnabled(textTrackTranscodingEnabled);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public ExtractorsFactory setSubtitleParserFactory(SubtitleParser.Factory subtitleParserFactory) {
        return this.factory.setSubtitleParserFactory(subtitleParserFactory);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public ExtractorsFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int codecsToParseWithinGopSampleDependencies) {
        return this.factory.experimentalSetCodecsToParseWithinGopSampleDependencies(codecsToParseWithinGopSampleDependencies);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] createExtractors() {
        return this.factory.createExtractors();
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] createExtractors(Uri uri, Map<String, List<String>> responseHeaders) {
        return this.factory.createExtractors(uri, responseHeaders);
    }
}
