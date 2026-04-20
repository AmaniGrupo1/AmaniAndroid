package androidx.media3.exoplayer.util;

import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.Loader;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

/* JADX INFO: loaded from: classes21.dex */
public final class SntpClient {
    public static final int DEFAULT_TIMEOUT_MS = 1000;
    private static final int MAX_RETRY_COUNT = 10;
    private static final int NTP_LEAP_NOSYNC = 3;
    private static final int NTP_MODE_BROADCAST = 5;
    private static final int NTP_MODE_CLIENT = 3;
    private static final int NTP_MODE_SERVER = 4;
    private static final int NTP_PACKET_SIZE = 48;
    private static final int NTP_PORT = 123;
    private static final int NTP_STRATUM_DEATH = 0;
    private static final int NTP_STRATUM_MAX = 15;
    private static final int NTP_VERSION = 3;
    private static final long OFFSET_1900_TO_1970 = 2208988800L;
    private static final int ORIGINATE_TIME_OFFSET = 24;
    private static final int RECEIVE_TIME_OFFSET = 32;
    private static final int TRANSMIT_TIME_OFFSET = 40;
    private static long elapsedRealtimeOffsetMs;
    private static boolean isInitialized;
    private static final Object loaderLock = new Object();
    private static final Object valueLock = new Object();
    public static final String DEFAULT_NTP_HOST = "time.android.com";
    private static String ntpHost = DEFAULT_NTP_HOST;
    private static int timeoutMs = 1000;
    private static long maxElapsedTimeUntilUpdateMs = C.TIME_UNSET;
    private static long lastUpdateElapsedRealtime = C.TIME_UNSET;

    public interface InitializationCallback {
        void onInitializationFailed(IOException iOException);

        void onInitialized();
    }

    private SntpClient() {
    }

    public static String getNtpHost() {
        String str;
        synchronized (valueLock) {
            str = ntpHost;
        }
        return str;
    }

    public static void setNtpHost(String ntpHost2) {
        synchronized (valueLock) {
            if (!ntpHost.equals(ntpHost2)) {
                ntpHost = ntpHost2;
                isInitialized = false;
            }
        }
    }

    public static int getTimeoutMs() {
        int i;
        synchronized (valueLock) {
            i = timeoutMs;
        }
        return i;
    }

    public static void setTimeoutMs(int timeoutMs2) {
        synchronized (valueLock) {
            if (timeoutMs != timeoutMs2) {
                timeoutMs = timeoutMs2;
                isInitialized = false;
            }
        }
    }

    public static void setMaxElapsedTimeUntilUpdateMs(long maxElapsedTimeUntilUpdateMs2) {
        synchronized (valueLock) {
            maxElapsedTimeUntilUpdateMs = maxElapsedTimeUntilUpdateMs2;
        }
    }

    public static long getMaxElapsedTimeUntilUpdateMs() {
        long j;
        synchronized (valueLock) {
            j = maxElapsedTimeUntilUpdateMs;
        }
        return j;
    }

    public static boolean isInitialized() {
        boolean z;
        synchronized (valueLock) {
            if (lastUpdateElapsedRealtime != C.TIME_UNSET && maxElapsedTimeUntilUpdateMs != C.TIME_UNSET) {
                long deltaLastUpdate = SystemClock.elapsedRealtime() - lastUpdateElapsedRealtime;
                isInitialized = isInitialized && deltaLastUpdate < maxElapsedTimeUntilUpdateMs;
            }
            z = isInitialized;
        }
        return z;
    }

    public static long getElapsedRealtimeOffsetMs() {
        long j;
        synchronized (valueLock) {
            j = isInitialized ? elapsedRealtimeOffsetMs : C.TIME_UNSET;
        }
        return j;
    }

    public static void initialize(Loader loader, InitializationCallback callback) {
        if (isInitialized()) {
            if (callback != null) {
                callback.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.startLoading(new NtpTimeLoadable(), new NtpTimeCallback(callback), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long loadNtpTimeOffsetMs() throws Throwable {
        DatagramSocket socket;
        Throwable th;
        DatagramSocket socket2 = new DatagramSocket();
        try {
            socket2.setSoTimeout(getTimeoutMs());
            InetAddress[] addresses = InetAddress.getAllByName(getNtpHost());
            int length = addresses.length;
            char c = 0;
            SocketTimeoutException timeoutException = null;
            int i = 0;
            int retryCount = 0;
            while (i < length) {
                InetAddress address = addresses[i];
                byte[] buffer = new byte[48];
                DatagramPacket request = new DatagramPacket(buffer, buffer.length, address, NTP_PORT);
                buffer[c] = Ascii.ESC;
                long requestTime = System.currentTimeMillis();
                long requestTicks = SystemClock.elapsedRealtime();
                writeTimestamp(buffer, 40, requestTime);
                socket2.send(request);
                char c2 = c;
                DatagramPacket response = new DatagramPacket(buffer, buffer.length);
                try {
                    socket2.receive(response);
                    long responseTicks = SystemClock.elapsedRealtime();
                    long responseTime = requestTime + (responseTicks - requestTicks);
                    byte leap = (byte) ((buffer[c2] >> 6) & 3);
                    byte mode = (byte) (buffer[c2] & 7);
                    DatagramSocket socket3 = socket2;
                    int stratum = buffer[1] & 255;
                    long originateTime = readTimestamp(buffer, 24);
                    long receiveTime = readTimestamp(buffer, 32);
                    long transmitTime = readTimestamp(buffer, 40);
                    checkValidServerReply(leap, mode, stratum, transmitTime);
                    long clockOffset = ((receiveTime - originateTime) + (transmitTime - responseTime)) / 2;
                    long ntpTime = responseTime + clockOffset;
                    long j = ntpTime - responseTicks;
                    socket3.close();
                    return j;
                } catch (SocketTimeoutException e) {
                    socket = socket2;
                    InetAddress[] addresses2 = addresses;
                    if (timeoutException == null) {
                        timeoutException = e;
                    } else {
                        timeoutException.addSuppressed(e);
                    }
                    int retryCount2 = retryCount + 1;
                    if (retryCount < 10) {
                        try {
                            i++;
                            retryCount = retryCount2;
                            c = c2;
                            socket2 = socket;
                            addresses = addresses2;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                socket.close();
                                throw th;
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                                throw th;
                            }
                        }
                    } else {
                        throw ((SocketTimeoutException) Preconditions.checkNotNull(timeoutException));
                    }
                }
            }
            throw ((SocketTimeoutException) Preconditions.checkNotNull(timeoutException));
        } catch (Throwable th4) {
            socket = socket2;
            th = th4;
        }
    }

    private static long readTimestamp(byte[] buffer, int offset) {
        long seconds = read32(buffer, offset);
        long fraction = read32(buffer, offset + 4);
        if (seconds == 0 && fraction == 0) {
            return 0L;
        }
        return ((seconds - OFFSET_1900_TO_1970) * 1000) + ((1000 * fraction) / 4294967296L);
    }

    private static void writeTimestamp(byte[] buffer, int offset, long time) {
        if (time == 0) {
            Arrays.fill(buffer, offset, offset + 8, (byte) 0);
            return;
        }
        long seconds = time / 1000;
        long milliseconds = time - (seconds * 1000);
        long seconds2 = seconds + OFFSET_1900_TO_1970;
        int offset2 = offset + 1;
        buffer[offset] = (byte) (seconds2 >> 24);
        int offset3 = offset2 + 1;
        buffer[offset2] = (byte) (seconds2 >> 16);
        int offset4 = offset3 + 1;
        buffer[offset3] = (byte) (seconds2 >> 8);
        int offset5 = offset4 + 1;
        buffer[offset4] = (byte) (seconds2 >> 0);
        long fraction = (4294967296L * milliseconds) / 1000;
        int offset6 = offset5 + 1;
        buffer[offset5] = (byte) (fraction >> 24);
        int offset7 = offset6 + 1;
        buffer[offset6] = (byte) (fraction >> 16);
        int offset8 = offset7 + 1;
        buffer[offset7] = (byte) (fraction >> 8);
        int i = offset8 + 1;
        buffer[offset8] = (byte) (Math.random() * 255.0d);
    }

    private static long read32(byte[] buffer, int offset) {
        byte b0 = buffer[offset];
        byte b1 = buffer[offset + 1];
        byte b2 = buffer[offset + 2];
        byte b3 = buffer[offset + 3];
        int i0 = (b0 & 128) == 128 ? (b0 & 127) + 128 : b0;
        int i1 = (b1 & 128) == 128 ? (b1 & 127) + 128 : b1;
        int i2 = (b2 & 128) == 128 ? (b2 & 127) + 128 : b2;
        int i3 = (b3 & 128) == 128 ? (b3 & 127) + 128 : b3;
        return (((long) i0) << 24) + (((long) i1) << 16) + (((long) i2) << 8) + ((long) i3);
    }

    private static void checkValidServerReply(byte leap, byte mode, int stratum, long transmitTime) throws IOException {
        if (leap == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (mode != 4 && mode != 5) {
            throw new IOException("SNTP: Untrusted mode: " + ((int) mode));
        }
        if (stratum == 0 || stratum > 15) {
            throw new IOException("SNTP: Untrusted stratum: " + stratum);
        }
        if (transmitTime == 0) {
            throw new IOException("SNTP: Zero transmitTime");
        }
    }

    private static final class NtpTimeLoadable implements Loader.Loadable {
        private NtpTimeLoadable() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() throws IOException {
            synchronized (SntpClient.loaderLock) {
                synchronized (SntpClient.valueLock) {
                    if (SntpClient.isInitialized) {
                        return;
                    }
                    long offsetMs = SntpClient.loadNtpTimeOffsetMs();
                    synchronized (SntpClient.valueLock) {
                        long unused = SntpClient.lastUpdateElapsedRealtime = SystemClock.elapsedRealtime();
                        long unused2 = SntpClient.elapsedRealtimeOffsetMs = offsetMs;
                        boolean unused3 = SntpClient.isInitialized = true;
                    }
                }
            }
        }
    }

    private static final class NtpTimeCallback implements Loader.Callback<Loader.Loadable> {
        private final InitializationCallback callback;

        public NtpTimeCallback(InitializationCallback callback) {
            this.callback = callback;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(Loader.Loadable loadable, long elapsedRealtimeMs, long loadDurationMs) {
            if (this.callback != null) {
                boolean zIsInitialized = SntpClient.isInitialized();
                InitializationCallback initializationCallback = this.callback;
                if (!zIsInitialized) {
                    initializationCallback.onInitializationFailed(new IOException(new ConcurrentModificationException()));
                } else {
                    initializationCallback.onInitialized();
                }
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(Loader.Loadable loadable, long elapsedRealtimeMs, long loadDurationMs, boolean released) {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(Loader.Loadable loadable, long elapsedRealtimeMs, long loadDurationMs, IOException error, int errorCount) {
            if (this.callback != null) {
                this.callback.onInitializationFailed(error);
            }
            return Loader.DONT_RETRY;
        }
    }
}
