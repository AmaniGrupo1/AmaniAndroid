package androidx.media3.extractor.heif;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SingleSampleExtractor;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes21.dex */
public final class HeifExtractor implements Extractor {
    public static final int FLAG_READ_IMAGE = 1;
    private final boolean extractImage;
    private final Extractor extractor;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public HeifExtractor() {
        this(0);
    }

    public HeifExtractor(int flags) {
        this.extractImage = (flags & 1) != 0;
        if (this.extractImage) {
            this.extractor = new SingleSampleExtractor(-1, -1, "image/heif");
        } else {
            this.extractor = new HeicMotionPhotoExtractor();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws IOException {
        if (this.extractImage) {
            return HeifSniffer.sniff(input, false);
        }
        return this.extractor.sniff(input);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.extractor.init(output);
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        return this.extractor.read(input, seekPosition);
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long position, long timeUs) {
        this.extractor.seek(position, timeUs);
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        this.extractor.release();
    }
}
