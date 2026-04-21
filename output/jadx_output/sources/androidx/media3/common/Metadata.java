package androidx.media3.common;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Util;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Longs;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public final class Metadata {
    private final Entry[] entries;
    public final long presentationTimeUs;

    public interface Entry {
        default Format getWrappedMetadataFormat() {
            return null;
        }

        default byte[] getWrappedMetadataBytes() {
            return null;
        }

        default void populateMediaMetadata(MediaMetadata.Builder builder) {
        }
    }

    public Metadata(Entry... entries) {
        this(C.TIME_UNSET, entries);
    }

    public Metadata(long presentationTimeUs, Entry... entries) {
        this.presentationTimeUs = presentationTimeUs;
        this.entries = entries;
    }

    public Metadata(List<? extends Entry> entries) {
        this((Entry[]) entries.toArray(new Entry[0]));
    }

    public Metadata(long presentationTimeUs, List<? extends Entry> entries) {
        this(presentationTimeUs, (Entry[]) entries.toArray(new Entry[0]));
    }

    public int length() {
        return this.entries.length;
    }

    public Entry get(int index) {
        return this.entries[index];
    }

    public <T extends Entry> T getFirstEntryOfType(Class<T> cls) {
        return (T) getFirstMatchingEntry(cls, Predicates.alwaysTrue());
    }

    public <T extends Entry> T getFirstMatchingEntry(Class<T> cls, Predicate<T> predicate) {
        for (Entry entry : this.entries) {
            T t = (T) entryIfMatches(entry, cls, predicate);
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    public <T extends Entry> ImmutableList<T> getEntriesOfType(Class<T> clazz) {
        ImmutableList.Builder<T> matchingEntries = ImmutableList.builder();
        for (Entry entry : this.entries) {
            if (clazz.isAssignableFrom(entry.getClass())) {
                matchingEntries.add(clazz.cast(entry));
            }
        }
        return matchingEntries.build();
    }

    public <T extends Entry> ImmutableList<T> getMatchingEntries(Class<T> clazz, Predicate<T> predicate) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Entry entry : this.entries) {
            Entry entryEntryIfMatches = entryIfMatches(entry, clazz, predicate);
            if (entryEntryIfMatches != null) {
                builder.add(entryEntryIfMatches);
            }
        }
        return builder.build();
    }

    private <T extends Entry> T entryIfMatches(Entry entry, Class<T> clazz, Predicate<T> predicate) {
        if (clazz.isAssignableFrom(entry.getClass())) {
            T castEntry = clazz.cast(entry);
            if (predicate.apply(castEntry)) {
                return castEntry;
            }
            return null;
        }
        return null;
    }

    public Metadata copyWithAppendedEntriesFrom(Metadata other) {
        if (other == null) {
            return this;
        }
        return copyWithAppendedEntries(other.entries);
    }

    public Metadata copyWithAppendedEntries(Entry... entriesToAppend) {
        if (entriesToAppend.length == 0) {
            return this;
        }
        return new Metadata(this.presentationTimeUs, (Entry[]) Util.nullSafeArrayConcatenation(this.entries, entriesToAppend));
    }

    public Metadata copyWithPresentationTimeUs(long presentationTimeUs) {
        if (this.presentationTimeUs == presentationTimeUs) {
            return this;
        }
        return new Metadata(presentationTimeUs, this.entries);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Metadata other = (Metadata) obj;
        if (Arrays.equals(this.entries, other.entries) && this.presentationTimeUs == other.presentationTimeUs) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = Arrays.hashCode(this.entries);
        return (result * 31) + Longs.hashCode(this.presentationTimeUs);
    }

    public String toString() {
        return "entries=" + Arrays.toString(this.entries) + (this.presentationTimeUs == C.TIME_UNSET ? "" : ", presentationTimeUs=" + this.presentationTimeUs);
    }
}
