package androidx.media3.exoplayer;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaDataSource;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.net.Uri;
import android.os.PersistableBundle;
import androidx.media3.common.DrmInitData;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.source.BundledExtractorsAdapter;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.ExtractorsFactory;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes21.dex */
@Deprecated
public final class MediaExtractorCompat {
    public static final int SEEK_TO_CLOSEST_SYNC = 2;
    public static final int SEEK_TO_NEXT_SYNC = 1;
    public static final int SEEK_TO_PREVIOUS_SYNC = 0;
    private final MediaExtractorCompatInternal delegate;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SeekMode {
    }

    public MediaExtractorCompat(Context context) {
        this(new DefaultExtractorsFactory(), new DefaultDataSource.Factory(context));
    }

    public MediaExtractorCompat(ExtractorsFactory extractorsFactory, DataSource.Factory dataSourceFactory) {
        this.delegate = new MediaExtractorCompatInternal(new BundledExtractorsAdapter(extractorsFactory), dataSourceFactory);
    }

    public void setDataSource(Uri uri, long offset) throws IOException {
        this.delegate.setDataSource(uri, offset);
    }

    public void setDataSource(AssetFileDescriptor assetFileDescriptor) throws IOException {
        this.delegate.setDataSource(assetFileDescriptor);
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        this.delegate.setDataSource(fileDescriptor);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long offset, long length) throws IOException {
        this.delegate.setDataSource(fileDescriptor, offset, length);
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> headers) throws IOException {
        this.delegate.setDataSource(context, uri, headers);
    }

    public void setDataSource(String path) throws IOException {
        this.delegate.setDataSource(path);
    }

    public void setDataSource(String path, Map<String, String> headers) throws IOException {
        this.delegate.setDataSource(path, headers);
    }

    public void setDataSource(MediaDataSource mediaDataSource) throws IOException {
        this.delegate.setDataSource(mediaDataSource);
    }

    public void release() {
        this.delegate.release();
    }

    public int getTrackCount() {
        return this.delegate.getTrackCount();
    }

    public MediaFormat getTrackFormat(int trackIndex) {
        return this.delegate.getTrackFormat(trackIndex);
    }

    public void selectTrack(int trackIndex) {
        this.delegate.selectTrack(trackIndex);
    }

    public void unselectTrack(int trackIndex) {
        this.delegate.unselectTrack(trackIndex);
    }

    public void seekTo(long timeUs, int mode) {
        this.delegate.seekTo(timeUs, mode);
    }

    public boolean advance() {
        return this.delegate.advance();
    }

    public int readSampleData(ByteBuffer buffer, int offset) {
        return this.delegate.readSampleData(buffer, offset);
    }

    public int getSampleTrackIndex() {
        return this.delegate.getSampleTrackIndex();
    }

    public long getSampleSize() {
        return this.delegate.getSampleSize();
    }

    public long getSampleTime() {
        return this.delegate.getSampleTime();
    }

    public int getSampleFlags() {
        return this.delegate.getSampleFlags();
    }

    public boolean getSampleCryptoInfo(MediaCodec.CryptoInfo info) {
        return this.delegate.getSampleCryptoInfo(info);
    }

    public void setLogSessionId(LogSessionId logSessionId) {
        this.delegate.setLogSessionId(logSessionId);
    }

    public LogSessionId getLogSessionId() {
        return this.delegate.getLogSessionId();
    }

    public DrmInitData getDrmInitData() {
        return this.delegate.getDrmInitData();
    }

    public long getCachedDuration() {
        return this.delegate.getCachedDuration();
    }

    public boolean hasCacheReachedEndOfStream() {
        return this.delegate.hasCacheReachedEndOfStream();
    }

    public PersistableBundle getMetrics() {
        return this.delegate.getMetrics();
    }

    public Map<UUID, byte[]> getPsshInfo() {
        return this.delegate.getPsshInfo();
    }

    public Allocator getAllocator() {
        return this.delegate.getAllocator();
    }
}
