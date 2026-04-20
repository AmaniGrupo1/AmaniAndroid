package com.google.firebase.storage.internal;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes22.dex */
public class AdaptiveStreamBuffer {
    private static final String TAG = "AdaptiveStreamBuffer";
    private static final Runtime runtime = Runtime.getRuntime();
    private byte[] buffer;
    private final InputStream source;
    private int availableBytes = 0;
    private boolean adaptiveMode = true;
    private boolean reachedEnd = false;

    public AdaptiveStreamBuffer(InputStream source, int initialBufferSize) {
        this.source = source;
        this.buffer = new byte[initialBufferSize];
    }

    public int available() {
        return this.availableBytes;
    }

    public byte[] get() {
        return this.buffer;
    }

    public int advance(int bytes) throws IOException {
        if (bytes <= this.availableBytes) {
            this.availableBytes -= bytes;
            System.arraycopy(this.buffer, bytes, this.buffer, 0, this.availableBytes);
            return bytes;
        }
        this.availableBytes = 0;
        int bytesAdvanced = this.availableBytes;
        while (bytesAdvanced < bytes) {
            int currentSkip = (int) this.source.skip(bytes - bytesAdvanced);
            if (currentSkip > 0) {
                bytesAdvanced += currentSkip;
            } else if (currentSkip != 0) {
                continue;
            } else if (this.source.read() != -1) {
                bytesAdvanced++;
            } else {
                return bytesAdvanced;
            }
        }
        return bytesAdvanced;
    }

    public int fill(int targetSize) throws IOException {
        if (targetSize > this.buffer.length) {
            targetSize = Math.min(targetSize, resize(targetSize));
        }
        while (true) {
            if (this.availableBytes >= targetSize) {
                break;
            }
            int currentRead = this.source.read(this.buffer, this.availableBytes, targetSize - this.availableBytes);
            if (currentRead == -1) {
                this.reachedEnd = true;
                break;
            }
            this.availableBytes += currentRead;
        }
        return this.availableBytes;
    }

    private int resize(int targetSize) {
        int newBufferSize = Math.max(this.buffer.length * 2, targetSize);
        long currentFootprint = runtime.totalMemory() - runtime.freeMemory();
        long availableMemory = runtime.maxMemory() - currentFootprint;
        if (this.adaptiveMode && newBufferSize < availableMemory) {
            try {
                byte[] chunkBuffer = new byte[newBufferSize];
                System.arraycopy(this.buffer, 0, chunkBuffer, 0, this.availableBytes);
                this.buffer = chunkBuffer;
            } catch (OutOfMemoryError e) {
                Log.w(TAG, "Turning off adaptive buffer resizing due to low memory.");
                this.adaptiveMode = false;
            }
        } else {
            Log.w(TAG, "Turning off adaptive buffer resizing to conserve memory.");
        }
        return this.buffer.length;
    }

    public boolean isFinished() {
        return this.reachedEnd;
    }

    public void close() throws IOException {
        this.source.close();
    }
}
