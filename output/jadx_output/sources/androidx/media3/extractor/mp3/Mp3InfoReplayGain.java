package androidx.media3.extractor.mp3;

import androidx.core.app.FrameMetricsAggregator;
import androidx.media3.common.Metadata;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes21.dex */
public final class Mp3InfoReplayGain implements Metadata.Entry {
    public GainField field1;
    public GainField field2;
    public final float peak;

    public static final class GainField {
        public static final int NAME_AUDIOPHILE = 2;
        public static final int NAME_RADIO = 1;
        public static final int ORIGINATOR_ARTIST = 1;
        public static final int ORIGINATOR_REPLAYGAIN = 3;
        public static final int ORIGINATOR_SIMPLE_RMS = 4;
        public static final int ORIGINATOR_UNSET = 0;
        public static final int ORIGINATOR_USER = 2;
        public final float gain;
        public final int name;
        public final int originator;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Name {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Originator {
        }

        private GainField(int name, int originator, float gain) {
            this.name = name;
            this.originator = originator;
            this.gain = gain;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static GainField parse(int field) {
            int name = (field >> 13) & 7;
            if (name == 0) {
                return null;
            }
            int originator = (field >> 10) & 7;
            float gain = ((field & FrameMetricsAggregator.EVERY_DURATION) * ((field & 512) != 0 ? -1 : 1)) / 10.0f;
            return new GainField(name, originator, gain);
        }

        public String toString() {
            return "GainField{name=" + this.name + ", originator=" + this.originator + ", gain=" + this.gain + AbstractJsonLexerKt.END_OBJ;
        }

        public boolean equals(Object o) {
            if (!(o instanceof GainField)) {
                return false;
            }
            GainField gainField = (GainField) o;
            return this.name == gainField.name && this.originator == gainField.originator && Float.compare(this.gain, gainField.gain) == 0;
        }

        public int hashCode() {
            int result = this.name;
            return (((result * 31) + this.originator) * 31) + Float.hashCode(this.gain);
        }
    }

    private Mp3InfoReplayGain(float peak, GainField field1, GainField field2) {
        this.peak = peak;
        this.field1 = field1;
        this.field2 = field2;
    }

    public static Mp3InfoReplayGain parse(float peak, int field1, int field2) {
        GainField parsedField1 = GainField.parse(field1);
        GainField parsedField2 = GainField.parse(field2);
        if (peak <= 0.0f && parsedField1 == null && parsedField2 == null) {
            return null;
        }
        return new Mp3InfoReplayGain(peak, parsedField1, parsedField2);
    }

    public String toString() {
        return "ReplayGain Xing/Info: peak=" + this.peak + ", field 1=" + this.field1 + ", field 2=" + this.field2;
    }

    public boolean equals(Object o) {
        if (!(o instanceof Mp3InfoReplayGain)) {
            return false;
        }
        Mp3InfoReplayGain that = (Mp3InfoReplayGain) o;
        return Float.compare(this.peak, that.peak) == 0 && Objects.equals(this.field1, that.field1) && Objects.equals(this.field2, that.field2);
    }

    public int hashCode() {
        int result = Float.hashCode(this.peak);
        return (((result * 31) + (this.field1 != null ? this.field1.hashCode() : 0)) * 31) + (this.field2 != null ? this.field2.hashCode() : 0);
    }
}
