package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.DataReader;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SniffFailure;
import androidx.media3.extractor.mp3.Mp3Extractor;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes21.dex */
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {
    private Extractor extractor;
    private ExtractorInput extractorInput;
    private final ExtractorsFactory extractorsFactory;

    public BundledExtractorsAdapter(ExtractorsFactory extractorsFactory) {
        this.extractorsFactory = extractorsFactory;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0084  */
    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void init(DataReader dataReader, Uri uri, Map<String, List<String>> responseHeaders, long position, long length, ExtractorOutput output) throws IOException {
        boolean z;
        ExtractorInput extractorInput = new DefaultExtractorInput(dataReader, position, length);
        this.extractorInput = extractorInput;
        if (this.extractor != null) {
            return;
        }
        Extractor[] extractors = this.extractorsFactory.createExtractors(uri, responseHeaders);
        ImmutableList.Builder<SniffFailure> sniffFailures = ImmutableList.builderWithExpectedSize(extractors.length);
        if (extractors.length == 1) {
            this.extractor = extractors[0];
        } else {
            int length2 = extractors.length;
            int i = 0;
            while (true) {
                if (i >= length2) {
                    break;
                }
                Extractor extractor = extractors[i];
                try {
                } catch (EOFException e) {
                    if (this.extractor != null || extractorInput.getPosition() == position) {
                    }
                } catch (Throwable th) {
                    Preconditions.checkState(this.extractor != null || extractorInput.getPosition() == position);
                    extractorInput.resetPeekPosition();
                    throw th;
                }
                if (extractor.sniff(extractorInput)) {
                    this.extractor = extractor;
                    Preconditions.checkState(this.extractor != null || extractorInput.getPosition() == position);
                    extractorInput.resetPeekPosition();
                } else {
                    List<SniffFailure> sniffFailureDetails = extractor.getSniffFailureDetails();
                    sniffFailures.addAll((Iterable<? extends SniffFailure>) sniffFailureDetails);
                    if (this.extractor != null || extractorInput.getPosition() == position) {
                        z = true;
                    }
                    Preconditions.checkState(z);
                    extractorInput.resetPeekPosition();
                    i++;
                }
                z = false;
                Preconditions.checkState(z);
                extractorInput.resetPeekPosition();
                i++;
            }
            if (this.extractor == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + Joiner.on(", ").join(Lists.transform(ImmutableList.copyOf(extractors), new Function() { // from class: androidx.media3.exoplayer.source.BundledExtractorsAdapter$$ExternalSyntheticLambda0
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj) {
                        return ((Extractor) obj).getUnderlyingImplementation().getClass().getSimpleName();
                    }
                })) + ") could read the stream.", (Uri) Preconditions.checkNotNull(uri), sniffFailures.build());
            }
        }
        this.extractor.init(output);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void release() {
        if (this.extractor != null) {
            this.extractor.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        if (this.extractor == null) {
            return;
        }
        Extractor underlyingExtractor = this.extractor.getUnderlyingImplementation();
        if (underlyingExtractor instanceof Mp3Extractor) {
            ((Mp3Extractor) underlyingExtractor).disableSeeking();
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        if (this.extractorInput != null) {
            return this.extractorInput.getPosition();
        }
        return -1L;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void seek(long position, long seekTimeUs) {
        ((Extractor) Preconditions.checkNotNull(this.extractor)).seek(position, seekTimeUs);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public int read(PositionHolder positionHolder) throws IOException {
        return ((Extractor) Preconditions.checkNotNull(this.extractor)).read((ExtractorInput) Preconditions.checkNotNull(this.extractorInput), positionHolder);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public String getUnderlyingImplementationName() {
        if (this.extractor != null) {
            return this.extractor.getUnderlyingImplementation().getClass().getSimpleName();
        }
        return null;
    }
}
