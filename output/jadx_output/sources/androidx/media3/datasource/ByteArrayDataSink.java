package androidx.media3.datasource;

import androidx.collection.SieveCacheKt;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes21.dex */
public final class ByteArrayDataSink implements DataSink {
    private ByteArrayOutputStream stream;

    @Override // androidx.media3.datasource.DataSink
    public void open(DataSpec dataSpec) {
        if (dataSpec.length == -1) {
            this.stream = new ByteArrayOutputStream();
        } else {
            Preconditions.checkArgument(dataSpec.length <= SieveCacheKt.NodeLinkMask);
            this.stream = new ByteArrayOutputStream((int) dataSpec.length);
        }
    }

    @Override // androidx.media3.datasource.DataSink
    public void close() throws IOException {
        ((ByteArrayOutputStream) Util.castNonNull(this.stream)).close();
    }

    @Override // androidx.media3.datasource.DataSink
    public void write(byte[] buffer, int offset, int length) {
        ((ByteArrayOutputStream) Util.castNonNull(this.stream)).write(buffer, offset, length);
    }

    public byte[] getData() {
        if (this.stream == null) {
            return null;
        }
        return this.stream.toByteArray();
    }
}
