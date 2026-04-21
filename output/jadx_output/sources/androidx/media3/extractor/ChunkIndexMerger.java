package androidx.media3.extractor;

import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes21.dex */
public final class ChunkIndexMerger {
    private final Map<Long, ChunkIndex> chunkMap = new LinkedHashMap();

    public void add(ChunkIndex chunk) {
        if (chunk.timesUs.length > 0 && !this.chunkMap.containsKey(Long.valueOf(chunk.timesUs[0]))) {
            this.chunkMap.put(Long.valueOf(chunk.timesUs[0]), chunk);
        }
    }

    public ChunkIndex merge() {
        List<int[]> sizesList = new ArrayList<>();
        List<long[]> offsetsList = new ArrayList<>();
        List<long[]> durationsList = new ArrayList<>();
        List<long[]> timesList = new ArrayList<>();
        for (ChunkIndex chunk : this.chunkMap.values()) {
            sizesList.add(chunk.sizes);
            offsetsList.add(chunk.offsets);
            durationsList.add(chunk.durationsUs);
            timesList.add(chunk.timesUs);
        }
        return new ChunkIndex(Ints.concat((int[][]) sizesList.toArray(new int[sizesList.size()][])), Longs.concat((long[][]) offsetsList.toArray(new long[offsetsList.size()][])), Longs.concat((long[][]) durationsList.toArray(new long[durationsList.size()][])), Longs.concat((long[][]) timesList.toArray(new long[timesList.size()][])));
    }

    public void clear() {
        this.chunkMap.clear();
    }

    public int size() {
        return this.chunkMap.size();
    }
}
