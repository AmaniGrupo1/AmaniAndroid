package androidx.media3.container;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes21.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final byte AUXILIARY_TRACKS_SAMPLES_INTERLEAVED = 1;
    public static final byte AUXILIARY_TRACKS_SAMPLES_NOT_INTERLEAVED = 0;
    public static final int DEFAULT_LOCALE_INDICATOR = 0;
    public static final String KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    public static final String KEY_AUXILIARY_TRACKS_INTERLEAVED = "auxiliary.tracks.interleaved";
    public static final String KEY_AUXILIARY_TRACKS_LENGTH = "auxiliary.tracks.length";
    public static final String KEY_AUXILIARY_TRACKS_MAP = "auxiliary.tracks.map";
    public static final String KEY_AUXILIARY_TRACKS_OFFSET = "auxiliary.tracks.offset";
    public static final int TYPE_INDICATOR_8_BIT_UNSIGNED_INT = 75;
    public static final int TYPE_INDICATOR_FLOAT32 = 23;
    public static final int TYPE_INDICATOR_INT32 = 67;
    public static final int TYPE_INDICATOR_RESERVED = 0;
    public static final int TYPE_INDICATOR_STRING = 1;
    public static final int TYPE_INDICATOR_UNSIGNED_INT64 = 78;
    public final String key;
    public final int localeIndicator;
    public final int typeIndicator;
    public final byte[] value;

    public MdtaMetadataEntry(String key, byte[] value, int typeIndicator) {
        this(key, value, 0, typeIndicator);
    }

    public MdtaMetadataEntry(String key, byte[] value, int localeIndicator, int typeIndicator) {
        validateData(key, value, typeIndicator);
        this.key = key;
        this.value = value;
        this.localeIndicator = localeIndicator;
        this.typeIndicator = typeIndicator;
    }

    public List<Integer> getAuxiliaryTrackTypesFromMap() {
        Preconditions.checkState(this.key.equals(KEY_AUXILIARY_TRACKS_MAP), "Metadata is not an auxiliary tracks map");
        int numberOfTracks = this.value[1];
        List<Integer> trackTypes = new ArrayList<>();
        for (int i = 0; i < numberOfTracks; i++) {
            trackTypes.add(Integer.valueOf(this.value[i + 2]));
        }
        return trackTypes;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry other = (MdtaMetadataEntry) obj;
        if (this.key.equals(other.key) && Arrays.equals(this.value, other.value) && this.localeIndicator == other.localeIndicator && this.typeIndicator == other.typeIndicator) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + this.key.hashCode();
        return (((((result * 31) + Arrays.hashCode(this.value)) * 31) + this.localeIndicator) * 31) + this.typeIndicator;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        String formattedValue;
        switch (this.typeIndicator) {
            case 0:
                String formattedValue2 = this.key;
                if (formattedValue2.equals(KEY_AUXILIARY_TRACKS_MAP)) {
                    formattedValue = getFormattedValueForAuxiliaryTracksMap(getAuxiliaryTrackTypesFromMap());
                } else {
                    formattedValue = Util.toHexString(this.value);
                }
                break;
            case 1:
                formattedValue = Util.fromUtf8Bytes(this.value);
                break;
            case 23:
                formattedValue = String.valueOf(Float.intBitsToFloat(Ints.fromByteArray(this.value)));
                break;
            case TYPE_INDICATOR_INT32 /* 67 */:
                formattedValue = String.valueOf(Ints.fromByteArray(this.value));
                break;
            case 75:
                formattedValue = String.valueOf(MdtaMetadataEntry$$ExternalSyntheticBackport0.m(this.value[0]));
                break;
            case TYPE_INDICATOR_UNSIGNED_INT64 /* 78 */:
                formattedValue = String.valueOf(new ParsableByteArray(this.value).readUnsignedLongToLong());
                break;
        }
        return "mdta: key=" + this.key + ", value=" + formattedValue;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void validateData(String key, byte[] value, int typeIndicator) {
        boolean z;
        switch (key) {
            case "com.android.capture.fps":
                Preconditions.checkArgument(typeIndicator == 23 && value.length == 4);
                break;
            case "auxiliary.tracks.offset":
            case "auxiliary.tracks.length":
                Preconditions.checkArgument(typeIndicator == 78 && value.length == 8);
                break;
            case "auxiliary.tracks.map":
                Preconditions.checkArgument(typeIndicator == 0);
                break;
            case "auxiliary.tracks.interleaved":
                if (typeIndicator != 75 || value.length != 1 || (value[0] != 0 && value[0] != 1)) {
                    z = false;
                }
                Preconditions.checkArgument(z);
                break;
        }
    }

    private static String getFormattedValueForAuxiliaryTracksMap(List<Integer> trackTypes) {
        StringBuilder sb = new StringBuilder();
        sb.append("track types = ");
        Joiner.on(AbstractJsonLexerKt.COMMA).appendTo(sb, (Iterable<? extends Object>) trackTypes);
        return sb.toString();
    }
}
