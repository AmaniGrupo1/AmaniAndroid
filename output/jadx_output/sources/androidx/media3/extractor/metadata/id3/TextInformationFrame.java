package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Util;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class TextInformationFrame extends Id3Frame {
    public final String description;

    @Deprecated
    public final String value;
    public final ImmutableList<String> values;

    public TextInformationFrame(String id, String description, List<String> values) {
        super(id);
        Preconditions.checkArgument(!values.isEmpty());
        this.description = description;
        this.values = ImmutableList.copyOf((Collection) values);
        this.value = this.values.get(0);
    }

    @Deprecated
    public TextInformationFrame(String id, String description, String value) {
        this(id, description, ImmutableList.of(value));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0112  */
    @Override // androidx.media3.common.Metadata.Entry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        byte b;
        String str = this.id;
        switch (str.hashCode()) {
            case 82815:
                b = !str.equals("TAL") ? (byte) -1 : (byte) 6;
                break;
            case 82878:
                if (str.equals("TCM")) {
                    b = Ascii.DLE;
                    break;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    b = Ascii.FF;
                    break;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    b = 2;
                    break;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    b = 4;
                    break;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    b = Ascii.DC2;
                    break;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    b = 8;
                    break;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    b = 0;
                    break;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    b = Ascii.DC4;
                    break;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    b = 10;
                    break;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    b = 7;
                    break;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    b = 17;
                    break;
                }
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    b = Ascii.SYN;
                    break;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    b = Ascii.CR;
                    break;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    b = Ascii.SO;
                    break;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    b = Ascii.SI;
                    break;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    b = Ascii.NAK;
                    break;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    b = 1;
                    break;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    b = 3;
                    break;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    b = 5;
                    break;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    b = 19;
                    break;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    b = 9;
                    break;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    b = Ascii.VT;
                    break;
                }
                break;
        }
        switch (b) {
            case 0:
            case 1:
                builder.setTitle(this.values.get(0));
                break;
            case 2:
            case 3:
                builder.setArtist(this.values.get(0));
                break;
            case 4:
            case 5:
                builder.setAlbumArtist(this.values.get(0));
                break;
            case 6:
            case 7:
                builder.setAlbumTitle(this.values.get(0));
                break;
            case 8:
            case 9:
                String[] trackNumbers = Util.split(this.values.get(0), "/");
                try {
                    int trackNumber = Integer.parseInt(trackNumbers[0]);
                    Integer totalTrackCount = trackNumbers.length > 1 ? Integer.valueOf(Integer.parseInt(trackNumbers[1])) : null;
                    builder.setTrackNumber(Integer.valueOf(trackNumber)).setTotalTrackCount(totalTrackCount);
                } catch (NumberFormatException e) {
                    return;
                }
                break;
            case 10:
            case 11:
                try {
                    builder.setRecordingYear(Integer.valueOf(Integer.parseInt(this.values.get(0))));
                } catch (NumberFormatException e2) {
                    return;
                }
                break;
            case 12:
            case 13:
                try {
                    String date = this.values.get(0);
                    int month = Integer.parseInt(date.substring(2, 4));
                    int day = Integer.parseInt(date.substring(0, 2));
                    builder.setRecordingMonth(Integer.valueOf(month)).setRecordingDay(Integer.valueOf(day));
                } catch (NumberFormatException e3) {
                    return;
                } catch (StringIndexOutOfBoundsException e4) {
                    return;
                }
                break;
            case 14:
                List<Integer> recordingDate = parseId3v2point4TimestampFrameForDate(this.values.get(0));
                switch (recordingDate.size()) {
                    case 3:
                        builder.setRecordingDay(recordingDate.get(2));
                    case 2:
                        builder.setRecordingMonth(recordingDate.get(1));
                    case 1:
                        builder.setRecordingYear(recordingDate.get(0));
                        break;
                }
                break;
            case 15:
                List<Integer> releaseDate = parseId3v2point4TimestampFrameForDate(this.values.get(0));
                switch (releaseDate.size()) {
                    case 3:
                        builder.setReleaseDay(releaseDate.get(2));
                    case 2:
                        builder.setReleaseMonth(releaseDate.get(1));
                    case 1:
                        builder.setReleaseYear(releaseDate.get(0));
                        break;
                }
                break;
            case 16:
            case 17:
                builder.setComposer(this.values.get(0));
                break;
            case 18:
            case 19:
                builder.setConductor(this.values.get(0));
                break;
            case 20:
            case 21:
                builder.setWriter(this.values.get(0));
                break;
            case 22:
                Integer genreCode = Ints.tryParse(this.values.get(0));
                if (genreCode == null) {
                    builder.setGenre(this.values.get(0));
                } else {
                    String genre = Id3Util.resolveV1Genre(genreCode.intValue());
                    if (genre != null) {
                        builder.setGenre(genre);
                    }
                }
                break;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TextInformationFrame other = (TextInformationFrame) obj;
        if (Objects.equals(this.id, other.id) && Objects.equals(this.description, other.description) && this.values.equals(other.values)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + this.id.hashCode();
        return (((result * 31) + (this.description != null ? this.description.hashCode() : 0)) * 31) + this.values.hashCode();
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public String toString() {
        return this.id + ": description=" + this.description + ": values=" + this.values;
    }

    private static List<Integer> parseId3v2point4TimestampFrameForDate(String value) {
        List<Integer> dates = new ArrayList<>();
        try {
            if (value.length() >= 10) {
                dates.add(Integer.valueOf(Integer.parseInt(value.substring(0, 4))));
                dates.add(Integer.valueOf(Integer.parseInt(value.substring(5, 7))));
                dates.add(Integer.valueOf(Integer.parseInt(value.substring(8, 10))));
            } else if (value.length() >= 7) {
                dates.add(Integer.valueOf(Integer.parseInt(value.substring(0, 4))));
                dates.add(Integer.valueOf(Integer.parseInt(value.substring(5, 7))));
            } else if (value.length() >= 4) {
                dates.add(Integer.valueOf(Integer.parseInt(value.substring(0, 4))));
            }
            return dates;
        } catch (NumberFormatException e) {
            return new ArrayList();
        }
    }
}
