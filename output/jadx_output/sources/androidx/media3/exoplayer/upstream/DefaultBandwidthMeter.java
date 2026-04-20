package androidx.media3.exoplayer.upstream;

import android.content.Context;
import android.os.Handler;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.runtime.ComposerImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.spatial.RectListKt;
import androidx.core.location.LocationRequestCompat;
import androidx.core.view.MotionEventCompat;
import androidx.media3.common.C;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.Util;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.work.multiprocess.RemoteWorkManager;
import com.google.api.Endpoint;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.primitives.SignedBytes;
import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
import io.grpc.internal.GrpcUtil;
import java.util.HashMap;
import java.util.Map;
import kotlin.io.encoding.Base64;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Utf8;

/* JADX INFO: loaded from: classes21.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_3G;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_4G;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    private static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;
    private static DefaultBandwidthMeter singletonInstance;
    private long bitrateEstimate;
    private final Clock clock;
    private final Context context;
    private String countryCode;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private final ImmutableMap<Integer, Long> initialBitrateEstimates;
    private long lastReportedBitrateEstimate;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private final SlidingPercentile slidingPercentile;
    private int streamCount;
    private long totalBytesTransferred;
    private long totalElapsedTimeMs;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = ImmutableList.of(4300000L, 3200000L, 2400000L, 1700000L, 860000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = ImmutableList.of(1500000L, 980000L, 750000L, 520000L, 290000L);

    static {
        Long lValueOf = Long.valueOf(SilenceSkippingAudioProcessor.DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = ImmutableList.of((long) lValueOf, 1300000L, 1000000L, 860000L, 610000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = ImmutableList.of(2500000L, 1700000L, (long) Long.valueOf(RemoteWorkManager.MAX_SESSION_TIMEOUT_MILLIS), 970000L, 680000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = ImmutableList.of(4700000L, 2800000L, 2100000L, 1700000L, 980000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = ImmutableList.of(2700000L, (long) lValueOf, 1600000L, 1300000L, 1000000L);
    }

    public static final class Builder {
        private Clock clock;
        private final Context context;
        private final Map<Integer, Long> initialBitrateEstimates;
        private boolean resetOnNetworkTypeChange;
        private int slidingWindowMaxWeight;

        public Builder(Context context) {
            this.context = context == null ? null : context.getApplicationContext();
            this.slidingWindowMaxWeight = 2000;
            this.clock = Clock.DEFAULT;
            this.resetOnNetworkTypeChange = true;
            this.initialBitrateEstimates = new HashMap(8);
            this.initialBitrateEstimates.put(0, 1000000L);
            this.initialBitrateEstimates.put(2, Long.valueOf(C.TIME_UNSET));
            this.initialBitrateEstimates.put(3, Long.valueOf(C.TIME_UNSET));
            this.initialBitrateEstimates.put(4, Long.valueOf(C.TIME_UNSET));
            this.initialBitrateEstimates.put(5, Long.valueOf(C.TIME_UNSET));
            this.initialBitrateEstimates.put(10, Long.valueOf(C.TIME_UNSET));
            this.initialBitrateEstimates.put(9, Long.valueOf(C.TIME_UNSET));
            this.initialBitrateEstimates.put(7, Long.valueOf(C.TIME_UNSET));
        }

        public Builder setSlidingWindowMaxWeight(int slidingWindowMaxWeight) {
            this.slidingWindowMaxWeight = slidingWindowMaxWeight;
            return this;
        }

        public Builder setInitialBitrateEstimate(long initialBitrateEstimate) {
            for (Integer networkType : this.initialBitrateEstimates.keySet()) {
                setInitialBitrateEstimate(networkType.intValue(), initialBitrateEstimate);
            }
            return this;
        }

        public Builder setInitialBitrateEstimate(int networkType, long initialBitrateEstimate) {
            this.initialBitrateEstimates.put(Integer.valueOf(networkType), Long.valueOf(initialBitrateEstimate));
            return this;
        }

        public Builder setInitialBitrateEstimate(String countryCode) {
            String countryCode2 = Ascii.toUpperCase(countryCode);
            for (Integer networkType : this.initialBitrateEstimates.keySet()) {
                setInitialBitrateEstimate(networkType.intValue(), DefaultBandwidthMeter.getInitialBitrateEstimatesForCountry(countryCode2, networkType.intValue()));
            }
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setResetOnNetworkTypeChange(boolean resetOnNetworkTypeChange) {
            this.resetOnNetworkTypeChange = resetOnNetworkTypeChange;
            return this;
        }

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }
    }

    public static synchronized DefaultBandwidthMeter getSingletonInstance(Context context) {
        if (singletonInstance == null) {
            singletonInstance = new Builder(context).build();
        }
        return singletonInstance;
    }

    private DefaultBandwidthMeter(Context context, Map<Integer, Long> initialBitrateEstimates, int maxWeight, Clock clock, boolean resetOnNetworkTypeChange) {
        this.context = context == null ? null : context.getApplicationContext();
        this.initialBitrateEstimates = ImmutableMap.copyOf((Map) initialBitrateEstimates);
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.slidingPercentile = new SlidingPercentile(maxWeight);
        this.clock = clock;
        this.resetOnNetworkTypeChange = resetOnNetworkTypeChange;
        if (context != null) {
            NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
            this.networkType = networkTypeObserver.getNetworkType();
            this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(this.networkType);
            networkTypeObserver.register(new NetworkTypeObserver.Listener() { // from class: androidx.media3.exoplayer.upstream.DefaultBandwidthMeter$$ExternalSyntheticLambda0
                @Override // androidx.media3.common.util.NetworkTypeObserver.Listener
                public final void onNetworkTypeChanged(int i) throws Throwable {
                    this.f$0.onNetworkTypeChanged(i);
                }
            }, BackgroundExecutor.get());
            return;
        }
        this.networkType = 0;
        this.bitrateEstimate = 1000000L;
    }

    public synchronized void setNetworkTypeOverride(int networkType) {
        this.networkTypeOverride = networkType;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(networkType);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public void addEventListener(Handler eventHandler, BandwidthMeter.EventListener eventListener) {
        Preconditions.checkNotNull(eventHandler);
        Preconditions.checkNotNull(eventListener);
        this.eventDispatcher.addListener(eventHandler, eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    @Override // androidx.media3.datasource.TransferListener
    public void onTransferInitializing(DataSource source, DataSpec dataSpec, boolean isNetwork) {
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferStart(DataSource source, DataSpec dataSpec, boolean isNetwork) {
        if (isTransferAtFullNetworkSpeed(dataSpec, isNetwork)) {
            if (this.streamCount == 0) {
                this.sampleStartTimeMs = this.clock.elapsedRealtime();
            }
            this.streamCount++;
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onBytesTransferred(DataSource source, DataSpec dataSpec, boolean isNetwork, int bytesTransferred) {
        if (isTransferAtFullNetworkSpeed(dataSpec, isNetwork)) {
            this.sampleBytesTransferred += (long) bytesTransferred;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0059 A[Catch: all -> 0x007b, TRY_ENTER, TryCatch #2 {all -> 0x007b, blocks: (B:3:0x0001, B:7:0x0009, B:11:0x0011, B:13:0x002e, B:23:0x0064, B:22:0x0059), top: B:37:0x0001 }] */
    @Override // androidx.media3.datasource.TransferListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void onTransferEnd(DataSource source, DataSpec dataSpec, boolean isNetwork) throws Throwable {
        Throwable th;
        DefaultBandwidthMeter defaultBandwidthMeter;
        try {
            try {
                if (isTransferAtFullNetworkSpeed(dataSpec, isNetwork)) {
                    Preconditions.checkState(this.streamCount > 0);
                    long nowMs = this.clock.elapsedRealtime();
                    int sampleElapsedTimeMs = (int) (nowMs - this.sampleStartTimeMs);
                    this.totalElapsedTimeMs += (long) sampleElapsedTimeMs;
                    this.totalBytesTransferred += this.sampleBytesTransferred;
                    if (sampleElapsedTimeMs <= 0) {
                        defaultBandwidthMeter = this;
                    } else {
                        float bitsPerSecond = (this.sampleBytesTransferred * 8000.0f) / sampleElapsedTimeMs;
                        this.slidingPercentile.addSample((int) Math.sqrt(this.sampleBytesTransferred), bitsPerSecond);
                        if (this.totalElapsedTimeMs < 2000) {
                            try {
                                if (this.totalBytesTransferred >= 524288) {
                                    this.bitrateEstimate = (long) this.slidingPercentile.getPercentile(0.5f);
                                }
                                defaultBandwidthMeter = this;
                                defaultBandwidthMeter.maybeNotifyBandwidthSample(sampleElapsedTimeMs, this.sampleBytesTransferred, this.bitrateEstimate);
                                defaultBandwidthMeter.sampleStartTimeMs = nowMs;
                                defaultBandwidthMeter.sampleBytesTransferred = 0L;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                    defaultBandwidthMeter.streamCount--;
                    return;
                }
                return;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        th = th;
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int networkType) throws Throwable {
        Throwable th;
        try {
            try {
                if (this.networkType != 0) {
                    try {
                        if (!this.resetOnNetworkTypeChange) {
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                if (this.networkTypeOverrideSet) {
                    networkType = this.networkTypeOverride;
                }
                if (this.networkType != networkType || this.countryCode == null) {
                    this.networkType = networkType;
                    if (networkType == 1 || networkType == 0 || networkType == 8) {
                        return;
                    }
                    if (this.countryCode == null) {
                        this.countryCode = Util.getCountryCode(this.context);
                    }
                    this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
                    long nowMs = this.clock.elapsedRealtime();
                    int sampleElapsedTimeMs = this.streamCount > 0 ? (int) (nowMs - this.sampleStartTimeMs) : 0;
                    maybeNotifyBandwidthSample(sampleElapsedTimeMs, this.sampleBytesTransferred, this.bitrateEstimate);
                    this.sampleStartTimeMs = nowMs;
                    this.sampleBytesTransferred = 0L;
                    this.totalBytesTransferred = 0L;
                    this.totalElapsedTimeMs = 0L;
                    this.slidingPercentile.reset();
                    return;
                }
                return;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        th = th;
        throw th;
    }

    private void maybeNotifyBandwidthSample(int elapsedMs, long bytesTransferred, long bitrateEstimate) {
        if (elapsedMs == 0 && bytesTransferred == 0 && bitrateEstimate == this.lastReportedBitrateEstimate) {
            return;
        }
        this.lastReportedBitrateEstimate = bitrateEstimate;
        this.eventDispatcher.bandwidthSample(elapsedMs, bytesTransferred, bitrateEstimate);
    }

    private long getInitialBitrateEstimateForNetworkType(int networkType) {
        Long initialBitrateEstimate = this.initialBitrateEstimates.get(Integer.valueOf(networkType));
        if (initialBitrateEstimate == null) {
            initialBitrateEstimate = this.initialBitrateEstimates.get(0);
        } else if (initialBitrateEstimate.longValue() == C.TIME_UNSET) {
            initialBitrateEstimate = Long.valueOf(getInitialBitrateEstimatesForCountry(this.countryCode, networkType));
        }
        if (initialBitrateEstimate == null) {
            initialBitrateEstimate = 1000000L;
        }
        return initialBitrateEstimate.longValue();
    }

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean isNetwork) {
        return isNetwork && !dataSpec.isFlagSet(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getInitialBitrateEstimatesForCountry(String countryCode, int networkType) {
        int[] groupIndices = getInitialBitrateCountryGroupAssignment(Strings.nullToEmpty(countryCode));
        switch (networkType) {
            case 2:
            case 7:
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI.get(groupIndices[0]).longValue();
            case 3:
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(groupIndices[1]).longValue();
            case 4:
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(groupIndices[2]).longValue();
            case 5:
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(groupIndices[3]).longValue();
            case 6:
            case 8:
            default:
                return 1000000L;
            case 9:
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(groupIndices[5]).longValue();
            case 10:
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(groupIndices[4]).longValue();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:722:0x0b2c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int[] getInitialBitrateCountryGroupAssignment(String country) {
        byte b;
        switch (country.hashCode()) {
            case 2083:
                b = !country.equals("AD") ? (byte) -1 : (byte) 205;
                break;
            case 2084:
                if (country.equals("AE")) {
                    b = 0;
                    break;
                }
                break;
            case 2085:
                if (country.equals("AF")) {
                    b = 168;
                    break;
                }
                break;
            case 2086:
                if (country.equals("AG")) {
                    b = Ascii.NAK;
                    break;
                }
                break;
            case 2088:
                if (country.equals("AI")) {
                    b = 206;
                    break;
                }
                break;
            case 2091:
                if (country.equals("AL")) {
                    b = 1;
                    break;
                }
                break;
            case 2092:
                if (country.equals("AM")) {
                    b = 115;
                    break;
                }
                break;
            case 2094:
                if (country.equals("AO")) {
                    b = 2;
                    break;
                }
                break;
            case 2096:
                if (country.equals("AQ")) {
                    b = 145;
                    break;
                }
                break;
            case 2097:
                if (country.equals("AR")) {
                    b = 3;
                    break;
                }
                break;
            case 2098:
                if (country.equals("AS")) {
                    b = 4;
                    break;
                }
                break;
            case 2099:
                if (country.equals("AT")) {
                    b = 137;
                    break;
                }
                break;
            case 2100:
                if (country.equals("AU")) {
                    b = 5;
                    break;
                }
                break;
            case 2102:
                if (country.equals("AW")) {
                    b = 6;
                    break;
                }
                break;
            case 2103:
                if (country.equals("AX")) {
                    b = 198;
                    break;
                }
                break;
            case 2105:
                if (country.equals("AZ")) {
                    b = 157;
                    break;
                }
                break;
            case 2111:
                if (country.equals("BA")) {
                    b = 186;
                    break;
                }
                break;
            case 2112:
                if (country.equals("BB")) {
                    b = 207;
                    break;
                }
                break;
            case 2114:
                if (country.equals("BD")) {
                    b = 7;
                    break;
                }
                break;
            case 2115:
                if (country.equals("BE")) {
                    b = 8;
                    break;
                }
                break;
            case 2116:
                if (country.equals("BF")) {
                    b = 171;
                    break;
                }
                break;
            case 2117:
                if (country.equals("BG")) {
                    b = 150;
                    break;
                }
                break;
            case 2118:
                if (country.equals("BH")) {
                    b = 9;
                    break;
                }
                break;
            case 2119:
                if (country.equals("BI")) {
                    b = 227;
                    break;
                }
                break;
            case 2120:
                if (country.equals("BJ")) {
                    b = 10;
                    break;
                }
                break;
            case 2122:
                if (country.equals("BL")) {
                    b = 127;
                    break;
                }
                break;
            case 2123:
                if (country.equals("BM")) {
                    b = Ascii.VT;
                    break;
                }
                break;
            case 2124:
                if (country.equals("BN")) {
                    b = Ascii.FF;
                    break;
                }
                break;
            case 2125:
                if (country.equals("BO")) {
                    b = Ascii.CR;
                    break;
                }
                break;
            case 2127:
                if (country.equals("BQ")) {
                    b = 208;
                    break;
                }
                break;
            case 2128:
                if (country.equals("BR")) {
                    b = Ascii.SO;
                    break;
                }
                break;
            case 2129:
                if (country.equals("BS")) {
                    b = Ascii.SI;
                    break;
                }
                break;
            case 2130:
                if (country.equals("BT")) {
                    b = Ascii.DLE;
                    break;
                }
                break;
            case 2133:
                if (country.equals("BW")) {
                    b = 17;
                    break;
                }
                break;
            case 2135:
                if (country.equals("BY")) {
                    b = Ascii.DC2;
                    break;
                }
                break;
            case 2136:
                if (country.equals("BZ")) {
                    b = Ascii.ETB;
                    break;
                }
                break;
            case 2142:
                if (country.equals("CA")) {
                    b = 192;
                    break;
                }
                break;
            case 2145:
                if (country.equals("CD")) {
                    b = 92;
                    break;
                }
                break;
            case 2147:
                if (country.equals("CF")) {
                    b = 19;
                    break;
                }
                break;
            case 2148:
                if (country.equals("CG")) {
                    b = 88;
                    break;
                }
                break;
            case 2149:
                if (country.equals("CH")) {
                    b = Ascii.DC4;
                    break;
                }
                break;
            case 2150:
                if (country.equals("CI")) {
                    b = Ascii.SYN;
                    break;
                }
                break;
            case 2152:
                if (country.equals("CK")) {
                    b = Ascii.CAN;
                    break;
                }
                break;
            case 2153:
                if (country.equals("CL")) {
                    b = 176;
                    break;
                }
                break;
            case 2154:
                if (country.equals("CM")) {
                    b = 99;
                    break;
                }
                break;
            case 2155:
                if (country.equals("CN")) {
                    b = Ascii.EM;
                    break;
                }
                break;
            case 2156:
                if (country.equals("CO")) {
                    b = Ascii.SUB;
                    break;
                }
                break;
            case 2159:
                if (country.equals("CR")) {
                    b = 108;
                    break;
                }
                break;
            case 2162:
                if (country.equals("CU")) {
                    b = 180;
                    break;
                }
                break;
            case 2163:
                if (country.equals("CV")) {
                    b = Ascii.ESC;
                    break;
                }
                break;
            case 2164:
                if (country.equals("CW")) {
                    b = 209;
                    break;
                }
                break;
            case 2165:
                if (country.equals("CX")) {
                    b = 199;
                    break;
                }
                break;
            case 2166:
                if (country.equals("CY")) {
                    b = Ascii.FS;
                    break;
                }
                break;
            case 2167:
                if (country.equals("CZ")) {
                    b = Ascii.GS;
                    break;
                }
                break;
            case 2177:
                if (country.equals("DE")) {
                    b = Ascii.RS;
                    break;
                }
                break;
            case 2182:
                if (country.equals("DJ")) {
                    b = 158;
                    break;
                }
                break;
            case 2183:
                if (country.equals("DK")) {
                    b = Ascii.US;
                    break;
                }
                break;
            case 2185:
                if (country.equals("DM")) {
                    b = 210;
                    break;
                }
                break;
            case 2187:
                if (country.equals("DO")) {
                    b = 78;
                    break;
                }
                break;
            case 2198:
                if (country.equals("DZ")) {
                    b = 178;
                    break;
                }
                break;
            case 2206:
                if (country.equals("EC")) {
                    b = 32;
                    break;
                }
                break;
            case 2208:
                if (country.equals("EE")) {
                    b = 138;
                    break;
                }
                break;
            case 2210:
                if (country.equals("EG")) {
                    b = 89;
                    break;
                }
                break;
            case 2221:
                if (country.equals("ER")) {
                    b = 146;
                    break;
                }
                break;
            case 2222:
                if (country.equals("ES")) {
                    b = 33;
                    break;
                }
                break;
            case 2223:
                if (country.equals("ET")) {
                    b = 34;
                    break;
                }
                break;
            case 2243:
                if (country.equals("FI")) {
                    b = 35;
                    break;
                }
                break;
            case 2244:
                if (country.equals("FJ")) {
                    b = 36;
                    break;
                }
                break;
            case 2245:
                if (country.equals("FK")) {
                    b = 153;
                    break;
                }
                break;
            case 2247:
                if (country.equals("FM")) {
                    b = 37;
                    break;
                }
                break;
            case 2249:
                if (country.equals("FO")) {
                    b = 38;
                    break;
                }
                break;
            case 2252:
                if (country.equals("FR")) {
                    b = 39;
                    break;
                }
                break;
            case 2266:
                if (country.equals("GA")) {
                    b = 40;
                    break;
                }
                break;
            case 2267:
                if (country.equals("GB")) {
                    b = 41;
                    break;
                }
                break;
            case 2269:
                if (country.equals("GD")) {
                    b = 42;
                    break;
                }
                break;
            case 2270:
                if (country.equals("GE")) {
                    b = 43;
                    break;
                }
                break;
            case 2271:
                if (country.equals("GF")) {
                    b = 44;
                    break;
                }
                break;
            case 2272:
                if (country.equals("GG")) {
                    b = 45;
                    break;
                }
                break;
            case 2273:
                if (country.equals("GH")) {
                    b = 46;
                    break;
                }
                break;
            case 2274:
                if (country.equals("GI")) {
                    b = Utf8.REPLACEMENT_BYTE;
                    break;
                }
                break;
            case 2277:
                if (country.equals("GL")) {
                    b = 83;
                    break;
                }
                break;
            case 2278:
                if (country.equals("GM")) {
                    b = 164;
                    break;
                }
                break;
            case 2279:
                if (country.equals("GN")) {
                    b = 47;
                    break;
                }
                break;
            case 2281:
                if (country.equals("GP")) {
                    b = 48;
                    break;
                }
                break;
            case 2282:
                if (country.equals("GQ")) {
                    b = 228;
                    break;
                }
                break;
            case 2283:
                if (country.equals("GR")) {
                    b = 49;
                    break;
                }
                break;
            case 2285:
                if (country.equals("GT")) {
                    b = 50;
                    break;
                }
                break;
            case 2286:
                if (country.equals("GU")) {
                    b = 51;
                    break;
                }
                break;
            case 2288:
                if (country.equals("GW")) {
                    b = 52;
                    break;
                }
                break;
            case 2290:
                if (country.equals("GY")) {
                    b = 53;
                    break;
                }
                break;
            case 2307:
                if (country.equals("HK")) {
                    b = 54;
                    break;
                }
                break;
            case 2314:
                if (country.equals("HR")) {
                    b = 72;
                    break;
                }
                break;
            case 2316:
                if (country.equals("HT")) {
                    b = 229;
                    break;
                }
                break;
            case 2317:
                if (country.equals("HU")) {
                    b = 139;
                    break;
                }
                break;
            case 2331:
                if (country.equals("ID")) {
                    b = 55;
                    break;
                }
                break;
            case 2332:
                if (country.equals("IE")) {
                    b = 56;
                    break;
                }
                break;
            case 2339:
                if (country.equals("IL")) {
                    b = 57;
                    break;
                }
                break;
            case 2340:
                if (country.equals("IM")) {
                    b = SignedBytes.MAX_POWER_OF_TWO;
                    break;
                }
                break;
            case 2341:
                if (country.equals("IN")) {
                    b = 58;
                    break;
                }
                break;
            case 2342:
                if (country.equals("IO")) {
                    b = 59;
                    break;
                }
                break;
            case 2344:
                if (country.equals("IQ")) {
                    b = 60;
                    break;
                }
                break;
            case 2345:
                if (country.equals("IR")) {
                    b = Base64.padSymbol;
                    break;
                }
                break;
            case 2346:
                if (country.equals("IS")) {
                    b = 140;
                    break;
                }
                break;
            case 2347:
                if (country.equals("IT")) {
                    b = 62;
                    break;
                }
                break;
            case 2363:
                if (country.equals("JE")) {
                    b = 65;
                    break;
                }
                break;
            case 2371:
                if (country.equals("JM")) {
                    b = 66;
                    break;
                }
                break;
            case 2373:
                if (country.equals("JO")) {
                    b = 187;
                    break;
                }
                break;
            case 2374:
                if (country.equals("JP")) {
                    b = 67;
                    break;
                }
                break;
            case 2394:
                if (country.equals("KE")) {
                    b = 68;
                    break;
                }
                break;
            case 2396:
                if (country.equals("KG")) {
                    b = 69;
                    break;
                }
                break;
            case 2397:
                if (country.equals("KH")) {
                    b = 70;
                    break;
                }
                break;
            case 2398:
                if (country.equals("KI")) {
                    b = 181;
                    break;
                }
                break;
            case 2402:
                if (country.equals("KM")) {
                    b = 218;
                    break;
                }
                break;
            case 2403:
                if (country.equals("KN")) {
                    b = 211;
                    break;
                }
                break;
            case 2407:
                if (country.equals("KR")) {
                    b = 71;
                    break;
                }
                break;
            case 2412:
                if (country.equals("KW")) {
                    b = 73;
                    break;
                }
                break;
            case 2414:
                if (country.equals("KY")) {
                    b = 212;
                    break;
                }
                break;
            case 2415:
                if (country.equals("KZ")) {
                    b = 74;
                    break;
                }
                break;
            case 2421:
                if (country.equals("LA")) {
                    b = 75;
                    break;
                }
                break;
            case 2422:
                if (country.equals("LB")) {
                    b = 76;
                    break;
                }
                break;
            case 2423:
                if (country.equals("LC")) {
                    b = 77;
                    break;
                }
                break;
            case 2429:
                if (country.equals("LI")) {
                    b = 200;
                    break;
                }
                break;
            case 2431:
                if (country.equals("LK")) {
                    b = 94;
                    break;
                }
                break;
            case 2438:
                if (country.equals("LR")) {
                    b = 79;
                    break;
                }
                break;
            case 2439:
                if (country.equals("LS")) {
                    b = 119;
                    break;
                }
                break;
            case 2440:
                if (country.equals("LT")) {
                    b = 80;
                    break;
                }
                break;
            case 2441:
                if (country.equals("LU")) {
                    b = 81;
                    break;
                }
                break;
            case 2442:
                if (country.equals("LV")) {
                    b = 141;
                    break;
                }
                break;
            case 2445:
                if (country.equals("LY")) {
                    b = 159;
                    break;
                }
                break;
            case 2452:
                if (country.equals("MA")) {
                    b = 82;
                    break;
                }
                break;
            case 2454:
                if (country.equals("MC")) {
                    b = 84;
                    break;
                }
                break;
            case 2455:
                if (country.equals("MD")) {
                    b = 85;
                    break;
                }
                break;
            case 2456:
                if (country.equals("ME")) {
                    b = 86;
                    break;
                }
                break;
            case 2457:
                if (country.equals("MF")) {
                    b = 87;
                    break;
                }
                break;
            case 2458:
                if (country.equals("MG")) {
                    b = 90;
                    break;
                }
                break;
            case 2459:
                if (country.equals("MH")) {
                    b = 220;
                    break;
                }
                break;
            case 2462:
                if (country.equals("MK")) {
                    b = 91;
                    break;
                }
                break;
            case 2463:
                if (country.equals("ML")) {
                    b = 93;
                    break;
                }
                break;
            case 2464:
                if (country.equals("MM")) {
                    b = 95;
                    break;
                }
                break;
            case 2465:
                if (country.equals("MN")) {
                    b = 96;
                    break;
                }
                break;
            case 2466:
                if (country.equals("MO")) {
                    b = 97;
                    break;
                }
                break;
            case 2467:
                if (country.equals("MP")) {
                    b = 128;
                    break;
                }
                break;
            case 2468:
                if (country.equals("MQ")) {
                    b = 98;
                    break;
                }
                break;
            case 2469:
                if (country.equals("MR")) {
                    b = 100;
                    break;
                }
                break;
            case 2470:
                if (country.equals("MS")) {
                    b = 201;
                    break;
                }
                break;
            case 2471:
                if (country.equals("MT")) {
                    b = 142;
                    break;
                }
                break;
            case 2472:
                if (country.equals("MU")) {
                    b = 101;
                    break;
                }
                break;
            case 2473:
                if (country.equals("MV")) {
                    b = 102;
                    break;
                }
                break;
            case 2474:
                if (country.equals("MW")) {
                    b = 103;
                    break;
                }
                break;
            case 2475:
                if (country.equals("MX")) {
                    b = 104;
                    break;
                }
                break;
            case 2476:
                if (country.equals("MY")) {
                    b = 105;
                    break;
                }
                break;
            case 2477:
                if (country.equals("MZ")) {
                    b = 224;
                    break;
                }
                break;
            case 2483:
                if (country.equals("NA")) {
                    b = 106;
                    break;
                }
                break;
            case 2485:
                if (country.equals("NC")) {
                    b = 233;
                    break;
                }
                break;
            case 2487:
                if (country.equals("NE")) {
                    b = 230;
                    break;
                }
                break;
            case 2488:
                if (country.equals("NF")) {
                    b = 154;
                    break;
                }
                break;
            case 2489:
                if (country.equals("NG")) {
                    b = 107;
                    break;
                }
                break;
            case 2491:
                if (country.equals("NI")) {
                    b = 109;
                    break;
                }
                break;
            case 2494:
                if (country.equals("NL")) {
                    b = 110;
                    break;
                }
                break;
            case 2497:
                if (country.equals("NO")) {
                    b = 111;
                    break;
                }
                break;
            case 2498:
                if (country.equals("NP")) {
                    b = 112;
                    break;
                }
                break;
            case 2500:
                if (country.equals("NR")) {
                    b = 182;
                    break;
                }
                break;
            case 2503:
                if (country.equals("NU")) {
                    b = 147;
                    break;
                }
                break;
            case 2508:
                if (country.equals("NZ")) {
                    b = 113;
                    break;
                }
                break;
            case 2526:
                if (country.equals("OM")) {
                    b = 114;
                    break;
                }
                break;
            case 2545:
                if (country.equals("PA")) {
                    b = 116;
                    break;
                }
                break;
            case 2549:
                if (country.equals("PE")) {
                    b = 117;
                    break;
                }
                break;
            case 2550:
                if (country.equals("PF")) {
                    b = 118;
                    break;
                }
                break;
            case 2551:
                if (country.equals("PG")) {
                    b = 120;
                    break;
                }
                break;
            case 2552:
                if (country.equals("PH")) {
                    b = 121;
                    break;
                }
                break;
            case 2555:
                if (country.equals("PK")) {
                    b = 122;
                    break;
                }
                break;
            case 2556:
                if (country.equals("PL")) {
                    b = 123;
                    break;
                }
                break;
            case 2557:
                if (country.equals("PM")) {
                    b = 202;
                    break;
                }
                break;
            case 2562:
                if (country.equals("PR")) {
                    b = 124;
                    break;
                }
                break;
            case 2563:
                if (country.equals("PS")) {
                    b = 125;
                    break;
                }
                break;
            case 2564:
                if (country.equals("PT")) {
                    b = 151;
                    break;
                }
                break;
            case 2567:
                if (country.equals("PW")) {
                    b = 126;
                    break;
                }
                break;
            case 2569:
                if (country.equals("PY")) {
                    b = 129;
                    break;
                }
                break;
            case 2576:
                if (country.equals("QA")) {
                    b = 130;
                    break;
                }
                break;
            case 2611:
                if (country.equals("RE")) {
                    b = 131;
                    break;
                }
                break;
            case 2621:
                if (country.equals("RO")) {
                    b = 132;
                    break;
                }
                break;
            case 2625:
                if (country.equals("RS")) {
                    b = 133;
                    break;
                }
                break;
            case 2627:
                if (country.equals("RU")) {
                    b = 134;
                    break;
                }
                break;
            case 2629:
                if (country.equals("RW")) {
                    b = 135;
                    break;
                }
                break;
            case 2638:
                if (country.equals("SA")) {
                    b = 136;
                    break;
                }
                break;
            case 2639:
                if (country.equals("SB")) {
                    b = 237;
                    break;
                }
                break;
            case 2640:
                if (country.equals("SC")) {
                    b = 148;
                    break;
                }
                break;
            case 2641:
                if (country.equals("SD")) {
                    b = 172;
                    break;
                }
                break;
            case 2642:
                if (country.equals("SE")) {
                    b = 143;
                    break;
                }
                break;
            case 2644:
                if (country.equals("SG")) {
                    b = 144;
                    break;
                }
                break;
            case 2645:
                if (country.equals("SH")) {
                    b = 149;
                    break;
                }
                break;
            case 2646:
                if (country.equals("SI")) {
                    b = 152;
                    break;
                }
                break;
            case 2647:
                if (country.equals("SJ")) {
                    b = 155;
                    break;
                }
                break;
            case 2648:
                if (country.equals("SK")) {
                    b = 156;
                    break;
                }
                break;
            case 2649:
                if (country.equals("SL")) {
                    b = 160;
                    break;
                }
                break;
            case 2650:
                if (country.equals("SM")) {
                    b = 203;
                    break;
                }
                break;
            case 2651:
                if (country.equals("SN")) {
                    b = 161;
                    break;
                }
                break;
            case 2652:
                if (country.equals("SO")) {
                    b = 162;
                    break;
                }
                break;
            case 2655:
                if (country.equals("SR")) {
                    b = 163;
                    break;
                }
                break;
            case 2656:
                if (country.equals("SS")) {
                    b = 165;
                    break;
                }
                break;
            case 2657:
                if (country.equals("ST")) {
                    b = 166;
                    break;
                }
                break;
            case 2659:
                if (country.equals("SV")) {
                    b = 167;
                    break;
                }
                break;
            case 2661:
                if (country.equals("SX")) {
                    b = 213;
                    break;
                }
                break;
            case 2662:
                if (country.equals("SY")) {
                    b = 173;
                    break;
                }
                break;
            case 2663:
                if (country.equals("SZ")) {
                    b = 169;
                    break;
                }
                break;
            case 2671:
                if (country.equals("TC")) {
                    b = 170;
                    break;
                }
                break;
            case 2672:
                if (country.equals("TD")) {
                    b = 174;
                    break;
                }
                break;
            case 2675:
                if (country.equals("TG")) {
                    b = 175;
                    break;
                }
                break;
            case 2676:
                if (country.equals("TH")) {
                    b = 177;
                    break;
                }
                break;
            case 2678:
                if (country.equals("TJ")) {
                    b = 179;
                    break;
                }
                break;
            case 2680:
                if (country.equals("TL")) {
                    b = 183;
                    break;
                }
                break;
            case 2681:
                if (country.equals("TM")) {
                    b = 221;
                    break;
                }
                break;
            case 2682:
                if (country.equals("TN")) {
                    b = 184;
                    break;
                }
                break;
            case 2683:
                if (country.equals("TO")) {
                    b = 185;
                    break;
                }
                break;
            case 2686:
                if (country.equals("TR")) {
                    b = 188;
                    break;
                }
                break;
            case 2688:
                if (country.equals("TT")) {
                    b = 189;
                    break;
                }
                break;
            case 2690:
                if (country.equals("TV")) {
                    b = 222;
                    break;
                }
                break;
            case 2691:
                if (country.equals("TW")) {
                    b = 190;
                    break;
                }
                break;
            case 2694:
                if (country.equals("TZ")) {
                    b = 191;
                    break;
                }
                break;
            case 2700:
                if (country.equals("UA")) {
                    b = 193;
                    break;
                }
                break;
            case 2706:
                if (country.equals("UG")) {
                    b = 194;
                    break;
                }
                break;
            case 2718:
                if (country.equals("US")) {
                    b = 195;
                    break;
                }
                break;
            case 2724:
                if (country.equals("UY")) {
                    b = 196;
                    break;
                }
                break;
            case 2725:
                if (country.equals("UZ")) {
                    b = 197;
                    break;
                }
                break;
            case 2731:
                if (country.equals("VA")) {
                    b = 204;
                    break;
                }
                break;
            case 2733:
                if (country.equals("VC")) {
                    b = 214;
                    break;
                }
                break;
            case 2735:
                if (country.equals("VE")) {
                    b = 231;
                    break;
                }
                break;
            case 2737:
                if (country.equals("VG")) {
                    b = 215;
                    break;
                }
                break;
            case 2739:
                if (country.equals("VI")) {
                    b = 216;
                    break;
                }
                break;
            case 2744:
                if (country.equals("VN")) {
                    b = 217;
                    break;
                }
                break;
            case 2751:
                if (country.equals("VU")) {
                    b = 219;
                    break;
                }
                break;
            case 2767:
                if (country.equals("WF")) {
                    b = 223;
                    break;
                }
                break;
            case 2780:
                if (country.equals("WS")) {
                    b = 225;
                    break;
                }
                break;
            case 2803:
                if (country.equals("XK")) {
                    b = 226;
                    break;
                }
                break;
            case 2828:
                if (country.equals("YE")) {
                    b = 232;
                    break;
                }
                break;
            case 2843:
                if (country.equals("YT")) {
                    b = 234;
                    break;
                }
                break;
            case 2855:
                if (country.equals("ZA")) {
                    b = 235;
                    break;
                }
                break;
            case 2867:
                if (country.equals("ZM")) {
                    b = 236;
                    break;
                }
                break;
            case 2877:
                if (country.equals("ZW")) {
                    b = 238;
                    break;
                }
                break;
        }
        switch (b) {
            case 0:
                return new int[]{1, 4, 2, 3, 4, 1};
            case 1:
                return new int[]{1, 1, 1, 2, 2, 2};
            case 2:
                return new int[]{3, 4, 4, 3, 2, 2};
            case 3:
                return new int[]{2, 2, 2, 2, 1, 2};
            case 4:
                return new int[]{2, 2, 3, 3, 2, 2};
            case 5:
                return new int[]{0, 3, 1, 1, 3, 0};
            case 6:
                return new int[]{2, 2, 3, 4, 2, 2};
            case 7:
                return new int[]{2, 1, 3, 2, 4, 2};
            case 8:
                return new int[]{0, 0, 1, 0, 1, 2};
            case 9:
                return new int[]{1, 3, 1, 3, 4, 2};
            case 10:
                return new int[]{4, 4, 2, 3, 2, 2};
            case 11:
                return new int[]{0, 2, 0, 0, 2, 2};
            case 12:
                return new int[]{3, 2, 0, 0, 2, 2};
            case 13:
                return new int[]{1, 2, 4, 4, 2, 2};
            case 14:
                return new int[]{1, 1, 1, 1, 2, 4};
            case 15:
                return new int[]{3, 2, 1, 1, 2, 2};
            case 16:
                return new int[]{3, 1, 2, 2, 3, 2};
            case 17:
                return new int[]{3, 2, 1, 0, 2, 2};
            case 18:
                return new int[]{1, 2, 3, 3, 2, 2};
            case 19:
                return new int[]{4, 2, 4, 2, 2, 2};
            case 20:
                return new int[]{0, 1, 0, 0, 0, 2};
            case 21:
            case 22:
                return new int[]{2, 4, 3, 4, 2, 2};
            case 23:
            case 24:
                return new int[]{2, 2, 2, 1, 2, 2};
            case 25:
                return new int[]{2, 0, 1, 1, 3, 1};
            case 26:
                return new int[]{2, 3, 3, 2, 2, 2};
            case 27:
                return new int[]{2, 3, 0, 1, 2, 2};
            case 28:
                return new int[]{1, 0, 1, 0, 0, 2};
            case 29:
                return new int[]{0, 0, 2, 0, 1, 2};
            case 30:
                return new int[]{0, 1, 4, 2, 2, 1};
            case 31:
                return new int[]{0, 0, 2, 0, 0, 2};
            case 32:
                return new int[]{1, 3, 2, 1, 2, 2};
            case 33:
                return new int[]{0, 0, 0, 0, 1, 0};
            case 34:
                return new int[]{4, 3, 4, 4, 4, 2};
            case 35:
                return new int[]{0, 0, 0, 1, 0, 2};
            case 36:
                return new int[]{3, 2, 2, 3, 2, 2};
            case 37:
                return new int[]{4, 2, 4, 0, 2, 2};
            case 38:
                return new int[]{0, 2, 2, 0, 2, 2};
            case 39:
                return new int[]{1, 1, 1, 1, 0, 2};
            case 40:
                return new int[]{3, 4, 0, 0, 2, 2};
            case 41:
                return new int[]{1, 1, 3, 2, 2, 2};
            case 42:
                return new int[]{2, 2, 0, 0, 2, 2};
            case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                return new int[]{1, 1, 0, 2, 2, 2};
            case 44:
                return new int[]{3, 2, 3, 3, 2, 2};
            case 45:
                return new int[]{0, 2, 1, 1, 2, 2};
            case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                return new int[]{3, 3, 3, 2, 2, 2};
            case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                return new int[]{3, 4, 4, 2, 2, 2};
            case 48:
                return new int[]{2, 1, 1, 3, 2, 2};
            case 49:
                return new int[]{1, 0, 0, 0, 1, 2};
            case 50:
                return new int[]{2, 1, 2, 1, 2, 2};
            case 51:
                return new int[]{2, 2, 4, 3, 3, 2};
            case 52:
                return new int[]{4, 4, 1, 2, 2, 2};
            case FirestoreIndexValueWriter.INDEX_TYPE_VECTOR /* 53 */:
                return new int[]{3, 1, 1, 3, 2, 2};
            case 54:
                return new int[]{0, 1, 0, 1, 1, 0};
            case FirestoreIndexValueWriter.INDEX_TYPE_MAP /* 55 */:
                return new int[]{3, 1, 3, 3, 2, 4};
            case 56:
                return new int[]{1, 1, 1, 1, 1, 2};
            case 57:
                return new int[]{1, 2, 2, 3, 4, 2};
            case 58:
                return new int[]{1, 1, 3, 2, 2, 3};
            case 59:
                return new int[]{3, 2, 2, 0, 2, 2};
            case 60:
                return new int[]{3, 2, 3, 2, 2, 2};
            case 61:
                return new int[]{4, 2, 3, 3, 4, 3};
            case RectListKt.BitOffsetForGesturable /* 62 */:
                return new int[]{0, 1, 1, 2, 1, 2};
            case 63:
            case 64:
            case 65:
                return new int[]{0, 2, 0, 1, 2, 2};
            case 66:
                return new int[]{2, 4, 3, 1, 2, 2};
            case MdtaMetadataEntry.TYPE_INDICATOR_INT32 /* 67 */:
                return new int[]{0, 3, 2, 3, 4, 2};
            case 68:
                return new int[]{3, 2, 1, 1, 1, 2};
            case 69:
                return new int[]{2, 1, 1, 2, 2, 2};
            case 70:
                return new int[]{1, 0, 4, 2, 2, 2};
            case TsExtractor.TS_SYNC_BYTE /* 71 */:
                return new int[]{0, 2, 2, 4, 4, 4};
            case 72:
            case 73:
                return new int[]{1, 0, 0, 0, 0, 2};
            case 74:
                return new int[]{2, 1, 2, 2, 3, 2};
            case 75:
                return new int[]{1, 2, 1, 3, 2, 2};
            case 76:
                return new int[]{3, 1, 1, 2, 2, 2};
            case 77:
                return new int[]{2, 2, 1, 1, 2, 2};
            case MdtaMetadataEntry.TYPE_INDICATOR_UNSIGNED_INT64 /* 78 */:
            case 79:
                return new int[]{3, 4, 4, 4, 2, 2};
            case GrpcUtil.DEFAULT_PORT_PLAINTEXT /* 80 */:
                return new int[]{0, 1, 0, 1, 0, 2};
            case 81:
                return new int[]{4, 0, 3, 2, 1, 3};
            case 82:
                return new int[]{3, 3, 1, 1, 2, 2};
            case 83:
            case 84:
                return new int[]{1, 2, 2, 0, 2, 2};
            case 85:
                return new int[]{1, 0, 0, 0, 2, 2};
            case 86:
                return new int[]{2, 0, 0, 1, 3, 2};
            case 87:
                return new int[]{1, 2, 2, 3, 2, 2};
            case 88:
            case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
            case 90:
                return new int[]{3, 4, 3, 3, 2, 2};
            case 91:
                return new int[]{1, 0, 0, 1, 3, 2};
            case 92:
            case 93:
                return new int[]{3, 3, 2, 2, 2, 2};
            case 94:
            case 95:
                return new int[]{3, 2, 3, 3, 4, 2};
            case 96:
                return new int[]{2, 0, 2, 2, 2, 2};
            case 97:
                return new int[]{0, 2, 4, 4, 3, 1};
            case 98:
                return new int[]{2, 1, 2, 3, 2, 2};
            case 99:
            case 100:
                return new int[]{4, 3, 3, 4, 2, 2};
            case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                return new int[]{3, 1, 0, 2, 2, 2};
            case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
                return new int[]{3, 2, 1, 3, 4, 2};
            case 103:
                return new int[]{3, 2, 2, 1, 2, 2};
            case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
                return new int[]{2, 4, 4, 4, 3, 2};
            case 105:
                return new int[]{1, 0, 4, 1, 1, 0};
            case 106:
                return new int[]{3, 4, 3, 2, 2, 2};
            case 107:
                return new int[]{3, 4, 2, 1, 2, 2};
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR /* 108 */:
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                return new int[]{2, 4, 4, 4, 2, 2};
            case 110:
                return new int[]{2, 1, 4, 3, 0, 4};
            case 111:
                return new int[]{0, 0, 3, 0, 0, 2};
            case 112:
                return new int[]{2, 2, 4, 3, 2, 2};
            case 113:
                return new int[]{0, 0, 1, 2, 4, 2};
            case 114:
                return new int[]{2, 3, 1, 2, 4, 2};
            case 115:
            case AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID /* 116 */:
                return new int[]{2, 3, 2, 3, 2, 2};
            case 117:
                return new int[]{1, 2, 4, 4, 3, 2};
            case 118:
                return new int[]{2, 2, 3, 1, 2, 2};
            case 119:
            case 120:
                return new int[]{4, 3, 3, 3, 2, 2};
            case 121:
                return new int[]{2, 1, 2, 3, 2, 1};
            case 122:
                return new int[]{3, 3, 3, 3, 2, 2};
            case 123:
                return new int[]{1, 0, 2, 2, 4, 4};
            case 124:
                return new int[]{2, 0, 2, 1, 2, 0};
            case ComposerImplKt.nodeKey /* 125 */:
                return new int[]{3, 4, 1, 3, 2, 2};
            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                return new int[]{2, 2, 4, 1, 2, 2};
            case 127:
            case 128:
            case TsExtractor.TS_STREAM_TYPE_AC3 /* 129 */:
                return new int[]{1, 2, 2, 2, 2, 2};
            case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                return new int[]{1, 4, 4, 4, 4, 2};
            case 131:
                return new int[]{0, 3, 2, 3, 1, 2};
            case 132:
                return new int[]{0, 0, 1, 1, 3, 2};
            case 133:
                return new int[]{1, 0, 0, 1, 2, 2};
            case TsExtractor.TS_STREAM_TYPE_SPLICE_INFO /* 134 */:
                return new int[]{1, 0, 0, 1, 3, 3};
            case TsExtractor.TS_STREAM_TYPE_E_AC3 /* 135 */:
                return new int[]{3, 3, 2, 0, 2, 2};
            case TsExtractor.TS_STREAM_TYPE_DTS_HD /* 136 */:
                return new int[]{3, 1, 1, 2, 2, 0};
            case 137:
            case TsExtractor.TS_STREAM_TYPE_DTS /* 138 */:
            case TsExtractor.TS_STREAM_TYPE_DTS_UHD /* 139 */:
            case 140:
            case 141:
            case 142:
            case 143:
                return new int[]{0, 0, 0, 0, 0, 2};
            case 144:
                return new int[]{2, 3, 3, 3, 1, 1};
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
                return new int[]{4, 2, 2, 2, 2, 2};
            case 150:
            case 151:
            case 152:
                return new int[]{0, 0, 0, 0, 1, 2};
            case 153:
            case 154:
            case 155:
                return new int[]{3, 2, 2, 2, 2, 2};
            case 156:
                return new int[]{0, 1, 1, 1, 2, 2};
            case 157:
            case 158:
            case 159:
            case 160:
                return new int[]{4, 2, 3, 3, 2, 2};
            case 161:
                return new int[]{4, 4, 3, 2, 2, 2};
            case 162:
                return new int[]{2, 2, 3, 4, 4, 2};
            case 163:
                return new int[]{2, 4, 4, 1, 2, 2};
            case 164:
            case 165:
                return new int[]{4, 3, 2, 4, 2, 2};
            case 166:
                return new int[]{2, 2, 1, 2, 2, 2};
            case 167:
                return new int[]{2, 3, 2, 1, 2, 2};
            case 168:
            case 169:
                return new int[]{4, 4, 3, 4, 2, 2};
            case 170:
                return new int[]{3, 2, 1, 2, 2, 2};
            case 171:
            case TsExtractor.TS_STREAM_TYPE_AC4 /* 172 */:
            case 173:
            case 174:
                return new int[]{4, 3, 4, 4, 2, 2};
            case 175:
                return new int[]{3, 4, 1, 0, 2, 2};
            case 176:
            case 177:
                return new int[]{0, 1, 2, 2, 2, 2};
            case 178:
            case 179:
                return new int[]{3, 3, 4, 4, 2, 2};
            case 180:
            case 181:
            case 182:
            case 183:
                return new int[]{4, 2, 4, 4, 2, 2};
            case 184:
                return new int[]{3, 1, 1, 1, 2, 2};
            case 185:
                return new int[]{3, 2, 4, 3, 2, 2};
            case 186:
            case 187:
            case TsExtractor.TS_PACKET_SIZE /* 188 */:
                return new int[]{1, 1, 1, 1, 2, 2};
            case PsExtractor.PRIVATE_STREAM_1 /* 189 */:
                return new int[]{2, 4, 1, 0, 2, 2};
            case 190:
                return new int[]{0, 0, 0, 0, 0, 0};
            case 191:
                return new int[]{3, 4, 2, 1, 3, 2};
            case PsExtractor.AUDIO_STREAM /* 192 */:
            case 193:
                return new int[]{0, 2, 1, 2, 3, 3};
            case 194:
                return new int[]{3, 3, 2, 3, 4, 2};
            case 195:
                return new int[]{2, 2, 4, 1, 3, 1};
            case 196:
                return new int[]{2, 1, 1, 2, 1, 2};
            case 197:
                return new int[]{1, 2, 3, 4, 3, 2};
            case 198:
            case 199:
            case 200:
            case 201:
            case 202:
            case 203:
            case ComposerKt.providerMapsKey /* 204 */:
                return new int[]{0, 2, 2, 2, 2, 2};
            case 205:
            case ComposerKt.referenceKey /* 206 */:
            case ComposerKt.reuseKey /* 207 */:
            case 208:
            case 209:
            case 210:
            case 211:
            case 212:
            case 213:
            case 214:
                return new int[]{1, 2, 0, 0, 2, 2};
            case 215:
                return new int[]{2, 2, 1, 1, 2, 4};
            case 216:
                return new int[]{0, 2, 1, 2, 2, 2};
            case 217:
                return new int[]{0, 0, 1, 2, 2, 2};
            case 218:
            case 219:
                return new int[]{4, 3, 3, 2, 2, 2};
            case 220:
            case 221:
            case 222:
            case 223:
                return new int[]{4, 2, 2, 4, 2, 2};
            case 224:
            case 225:
                return new int[]{3, 1, 2, 2, 2, 2};
            case 226:
                return new int[]{1, 2, 1, 1, 2, 2};
            case 227:
            case 228:
            case 229:
            case 230:
            case 231:
            case 232:
                return new int[]{4, 4, 4, 4, 2, 2};
            case 233:
            case 234:
                return new int[]{2, 3, 3, 4, 2, 2};
            case 235:
                return new int[]{2, 4, 2, 1, 1, 2};
            case 236:
                return new int[]{4, 4, 4, 3, 2, 2};
            case 237:
            case 238:
                return new int[]{4, 2, 4, 3, 2, 2};
            default:
                return new int[]{2, 2, 2, 2, 2, 2};
        }
    }
}
