package androidx.media3.exoplayer.offline;

import androidx.media3.common.StreamKey;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public interface FilterableManifest<T> {
    T copy(List<StreamKey> list);
}
