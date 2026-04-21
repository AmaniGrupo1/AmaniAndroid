package androidx.media3.datasource;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.Sets;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Set;

/* JADX INFO: loaded from: classes21.dex */
public class FileDescriptorDataSource extends BaseDataSource {
    private static final Set<FileDescriptor> inUseFileDescriptors = Sets.newConcurrentHashSet();
    private long bytesRemaining;
    private final FileDescriptor fileDescriptor;
    private FileInputStream inputStream;
    private final long length;
    private final long offset;
    private boolean opened;
    private Uri uri;

    public FileDescriptorDataSource(FileDescriptor fileDescriptor, long offset, long length) {
        super(false);
        this.fileDescriptor = (FileDescriptor) Preconditions.checkNotNull(fileDescriptor);
        this.offset = offset;
        this.length = length;
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws DataSourceException {
        int i;
        try {
            this.uri = dataSpec.uri;
            transferInitializing(dataSpec);
            if (!inUseFileDescriptors.add(this.fileDescriptor)) {
                throw new DataSourceException(new IllegalStateException("Attempted to re-use an already in-use file descriptor"), -2);
            }
            if (this.length != -1 && dataSpec.position > this.length) {
                throw new DataSourceException(2008);
            }
            seekFileDescriptor(this.fileDescriptor, this.offset + dataSpec.position);
            this.inputStream = new FileInputStream(this.fileDescriptor);
            if (this.length == -1) {
                FileChannel channel = this.inputStream.getChannel();
                long channelSize = channel.size();
                if (channelSize == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    this.bytesRemaining = channelSize - channel.position();
                    if (this.bytesRemaining < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            } else {
                this.bytesRemaining = this.length - dataSpec.position;
                if (this.bytesRemaining < 0) {
                    throw new DataSourceException(2008);
                }
            }
            if (dataSpec.length != -1) {
                this.bytesRemaining = this.bytesRemaining == -1 ? dataSpec.length : Math.min(this.bytesRemaining, dataSpec.length);
            }
            this.opened = true;
            transferStarted(dataSpec);
            return dataSpec.length != -1 ? dataSpec.length : this.bytesRemaining;
        } catch (DataSourceException e) {
            throw e;
        } catch (IOException e2) {
            if (e2 instanceof FileNotFoundException) {
                i = PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND;
            } else {
                i = 2000;
            }
            throw new DataSourceException(e2, i);
        }
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] buffer, int offset, int length) throws DataSourceException {
        if (length == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        int bytesToRead = this.bytesRemaining == -1 ? length : (int) Math.min(this.bytesRemaining, length);
        try {
            int bytesRead = ((FileInputStream) Util.castNonNull(this.inputStream)).read(buffer, offset, bytesToRead);
            if (bytesRead == -1) {
                return -1;
            }
            if (this.bytesRemaining != -1) {
                this.bytesRemaining -= (long) bytesRead;
            }
            bytesTransferred(bytesRead);
            return bytesRead;
        } catch (IOException e) {
            throw new DataSourceException(e, 2000);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws DataSourceException {
        this.uri = null;
        inUseFileDescriptors.remove(this.fileDescriptor);
        try {
            try {
                if (this.inputStream != null) {
                    this.inputStream.close();
                }
            } catch (IOException e) {
                throw new DataSourceException(e, 2000);
            }
        } finally {
            this.inputStream = null;
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        }
    }

    private static void seekFileDescriptor(FileDescriptor fileDescriptor, long position) throws DataSourceException {
        try {
            Os.lseek(fileDescriptor, position, OsConstants.SEEK_SET);
        } catch (ErrnoException e) {
            throw new DataSourceException(e, 2000);
        }
    }
}
