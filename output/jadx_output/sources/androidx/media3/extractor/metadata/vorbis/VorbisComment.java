package androidx.media3.extractor.metadata.vorbis;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import com.google.common.base.Ascii;
import com.google.common.primitives.Ints;

/* JADX INFO: loaded from: classes21.dex */
public final class VorbisComment implements Metadata.Entry {
    public final String key;
    public final String value;

    public VorbisComment(String key, String value) {
        this.key = Ascii.toUpperCase(key);
        this.value = value;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0071  */
    @Override // androidx.media3.common.Metadata.Entry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        switch (this.key) {
            case "TITLE":
                builder.setTitle(this.value);
                break;
            case "ARTIST":
                builder.setArtist(this.value);
                break;
            case "ALBUM":
                builder.setAlbumTitle(this.value);
                break;
            case "ALBUMARTIST":
                builder.setAlbumArtist(this.value);
                break;
            case "TRACKNUMBER":
                Integer trackNumber = Ints.tryParse(this.value);
                if (trackNumber != null) {
                    builder.setTrackNumber(trackNumber);
                    break;
                }
                break;
            case "TOTALTRACKS":
                Integer totalTracks = Ints.tryParse(this.value);
                if (totalTracks != null) {
                    builder.setTotalTrackCount(totalTracks);
                    break;
                }
                break;
            case "DISCNUMBER":
                Integer discNumber = Ints.tryParse(this.value);
                if (discNumber != null) {
                    builder.setDiscNumber(discNumber);
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer totalDiscs = Ints.tryParse(this.value);
                if (totalDiscs != null) {
                    builder.setTotalDiscCount(totalDiscs);
                    break;
                }
                break;
            case "GENRE":
                builder.setGenre(this.value);
                break;
            case "DESCRIPTION":
                builder.setDescription(this.value);
                break;
        }
    }

    public String toString() {
        return "VC: " + this.key + "=" + this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VorbisComment other = (VorbisComment) obj;
        if (this.key.equals(other.key) && this.value.equals(other.value)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + this.key.hashCode();
        return (result * 31) + this.value.hashCode();
    }
}
