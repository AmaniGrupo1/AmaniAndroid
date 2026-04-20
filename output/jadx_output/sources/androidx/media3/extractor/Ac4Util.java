package androidx.media3.extractor;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.OpusUtil;
import androidx.window.core.layout.WindowSizeClass;
import com.google.common.primitives.SignedBytes;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes21.dex */
public final class Ac4Util {
    public static final int AC40_SYNCWORD = 44096;
    public static final int AC41_SYNCWORD = 44097;
    private static final int CHANNEL_COUNT_2 = 2;
    private static final int CHANNEL_MODE_22_2 = 15;
    private static final int CHANNEL_MODE_3_0 = 2;
    private static final int CHANNEL_MODE_5_0 = 3;
    private static final int CHANNEL_MODE_5_1 = 4;
    private static final int CHANNEL_MODE_7_0_322 = 9;
    private static final int CHANNEL_MODE_7_0_34 = 5;
    private static final int CHANNEL_MODE_7_0_4 = 11;
    private static final int CHANNEL_MODE_7_0_52 = 7;
    private static final int CHANNEL_MODE_7_1_322 = 10;
    private static final int CHANNEL_MODE_7_1_34 = 6;
    private static final int CHANNEL_MODE_7_1_4 = 12;
    private static final int CHANNEL_MODE_7_1_52 = 8;
    private static final int CHANNEL_MODE_9_0_4 = 13;
    private static final int CHANNEL_MODE_9_1_4 = 14;
    private static final int CHANNEL_MODE_MONO = 0;
    private static final int CHANNEL_MODE_STEREO = 1;
    private static final int CHANNEL_MODE_UNKNOWN = -1;
    public static final int HEADER_SIZE_FOR_PARSER = 16;
    public static final int MAX_RATE_BYTES_PER_SECOND = 336000;
    private static final int[] SAMPLE_COUNT = {PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, 2000, 1920, 1601, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND, 1001, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, LogSeverity.WARNING_VALUE, LogSeverity.WARNING_VALUE, 2048};
    public static final int SAMPLE_HEADER_SIZE = 7;
    private static final String TAG = "Ac4Util";

    public static final class SyncFrameInfo {
        public final int bitstreamVersion;
        public final int channelCount;
        public final int frameSize;
        public final int sampleCount;
        public final int sampleRate;

        private SyncFrameInfo(int bitstreamVersion, int channelCount, int sampleRate, int frameSize, int sampleCount) {
            this.bitstreamVersion = bitstreamVersion;
            this.channelCount = channelCount;
            this.sampleRate = sampleRate;
            this.frameSize = frameSize;
            this.sampleCount = sampleCount;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:164:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0328  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Format parseAc4AnnexEFormat(ParsableByteArray data, String trackId, String language, DrmInitData drmInitData) throws ParserException {
        int channelCount;
        int presentationBytes;
        int presentationConfig;
        int presentationVersion;
        int presentationBytes2;
        boolean addEmdfSubstreams;
        ParsableBitArray dataBitArray = new ParsableBitArray();
        dataBitArray.reset(data);
        int dsiSize = dataBitArray.bitsLeft();
        int ac4DsiVersion = dataBitArray.readBits(3);
        if (ac4DsiVersion > 1) {
            throw ParserException.createForUnsupportedContainerFeature("Unsupported AC-4 DSI version: " + ac4DsiVersion);
        }
        int bitstreamVersion = dataBitArray.readBits(7);
        int sampleRate = dataBitArray.readBit() ? OpusUtil.SAMPLE_RATE : 44100;
        dataBitArray.skipBits(4);
        int numberOfPresentations = dataBitArray.readBits(9);
        if (bitstreamVersion > 1) {
            if (ac4DsiVersion == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Invalid AC-4 DSI version: " + ac4DsiVersion);
            }
            if (dataBitArray.readBit()) {
                dataBitArray.skipBits(16);
                if (dataBitArray.readBit()) {
                    dataBitArray.skipBits(128);
                }
            }
        }
        if (ac4DsiVersion == 1) {
            if (!skipDsiBitrate(dataBitArray)) {
                throw ParserException.createForUnsupportedContainerFeature("Invalid AC-4 DSI bitrate.");
            }
            dataBitArray.byteAlign();
        }
        Ac4Presentation ac4Presentation = new Ac4Presentation();
        for (int presentationIdx = 0; presentationIdx < numberOfPresentations; presentationIdx++) {
            boolean isSingleSubstream = false;
            boolean isSingleSubstreamGroup = false;
            int start = 0;
            if (ac4DsiVersion == 0) {
                isSingleSubstream = dataBitArray.readBit();
                int presentationConfig2 = dataBitArray.readBits(5);
                presentationBytes = 0;
                presentationConfig = presentationConfig2;
                presentationVersion = dataBitArray.readBits(5);
                presentationBytes2 = 8;
            } else {
                presentationVersion = dataBitArray.readBits(8);
                presentationBytes = dataBitArray.readBits(8);
                presentationBytes2 = 8;
                if (presentationBytes == 255) {
                    presentationBytes += dataBitArray.readBits(16);
                }
                if (presentationVersion > 2) {
                    dataBitArray.skipBits(presentationBytes * 8);
                } else {
                    start = (dsiSize - dataBitArray.bitsLeft()) / 8;
                    presentationConfig = dataBitArray.readBits(5);
                    isSingleSubstreamGroup = presentationConfig == 31;
                }
            }
            ac4Presentation.version = presentationVersion;
            if (!isSingleSubstream && !isSingleSubstreamGroup && presentationConfig == 6) {
                addEmdfSubstreams = true;
            } else {
                ac4Presentation.level = dataBitArray.readBits(3);
                if (dataBitArray.readBit()) {
                    dataBitArray.skipBits(5);
                }
                dataBitArray.skipBits(2);
                if (ac4DsiVersion == 1 && (presentationVersion == 1 || presentationVersion == 2)) {
                    dataBitArray.skipBits(2);
                }
                dataBitArray.skipBits(5);
                dataBitArray.skipBits(10);
                if (ac4DsiVersion == 1) {
                    if (presentationVersion > 0) {
                        ac4Presentation.isChannelCoded = dataBitArray.readBit();
                    }
                    if (ac4Presentation.isChannelCoded) {
                        if (presentationVersion == 1 || presentationVersion == 2) {
                            int channelMode = dataBitArray.readBits(5);
                            if (channelMode >= 0 && channelMode <= 15) {
                                ac4Presentation.channelMode = channelMode;
                            }
                            if (channelMode >= 11 && channelMode <= 14) {
                                ac4Presentation.hasBackChannels = dataBitArray.readBit();
                                ac4Presentation.topChannelPairs = dataBitArray.readBits(2);
                            }
                        }
                        dataBitArray.skipBits(24);
                    }
                    if (presentationVersion == 1 || presentationVersion == 2) {
                        if (dataBitArray.readBit() && dataBitArray.readBit()) {
                            dataBitArray.skipBits(2);
                        }
                        if (dataBitArray.readBit()) {
                            dataBitArray.skipBit();
                            int i = presentationBytes2;
                            int filterBytes = dataBitArray.readBits(i);
                            int i2 = 0;
                            while (i2 < filterBytes) {
                                dataBitArray.skipBits(i);
                                i2++;
                                i = 8;
                            }
                        }
                    }
                }
                if (isSingleSubstream || isSingleSubstreamGroup) {
                    if (presentationVersion == 0) {
                        parseDsiSubstream(dataBitArray, ac4Presentation);
                    } else {
                        parseDsiSubstreamGroup(dataBitArray, ac4Presentation);
                    }
                } else {
                    dataBitArray.skipBit();
                    switch (presentationConfig) {
                        case 0:
                        case 1:
                        case 2:
                            if (presentationVersion == 0) {
                                for (int substreamId = 0; substreamId < 2; substreamId++) {
                                    parseDsiSubstream(dataBitArray, ac4Presentation);
                                }
                            } else {
                                for (int substreamGroupId = 0; substreamGroupId < 2; substreamGroupId++) {
                                    parseDsiSubstreamGroup(dataBitArray, ac4Presentation);
                                }
                            }
                            break;
                        case 3:
                        case 4:
                            if (presentationVersion == 0) {
                                for (int substreamId2 = 0; substreamId2 < 3; substreamId2++) {
                                    parseDsiSubstream(dataBitArray, ac4Presentation);
                                }
                            } else {
                                for (int substreamGroupId2 = 0; substreamGroupId2 < 3; substreamGroupId2++) {
                                    parseDsiSubstreamGroup(dataBitArray, ac4Presentation);
                                }
                            }
                            break;
                        case 5:
                            if (presentationVersion == 0) {
                                parseDsiSubstream(dataBitArray, ac4Presentation);
                            } else {
                                int nSubstreamGroupsMinus2 = dataBitArray.readBits(3);
                                for (int substreamGroupId3 = 0; substreamGroupId3 < nSubstreamGroupsMinus2 + 2; substreamGroupId3++) {
                                    parseDsiSubstreamGroup(dataBitArray, ac4Presentation);
                                }
                            }
                            break;
                        default:
                            int nSkipBytes = dataBitArray.readBits(7);
                            for (int j = 0; j < nSkipBytes; j++) {
                                dataBitArray.skipBits(8);
                            }
                            break;
                    }
                }
                dataBitArray.skipBit();
                addEmdfSubstreams = dataBitArray.readBit();
            }
            if (addEmdfSubstreams) {
                int j2 = 0;
                for (int nAddEmdfSubstreams = dataBitArray.readBits(7); j2 < nAddEmdfSubstreams; nAddEmdfSubstreams = nAddEmdfSubstreams) {
                    dataBitArray.skipBits(15);
                    j2++;
                }
            }
            if (presentationVersion > 0) {
                if (dataBitArray.readBit() && !skipDsiBitrate(dataBitArray)) {
                    throw ParserException.createForUnsupportedContainerFeature("Can't parse bitrate DSI.");
                }
                if (dataBitArray.readBit()) {
                    dataBitArray.byteAlign();
                    int nameLen = dataBitArray.readBits(16);
                    dataBitArray.skipBytes(nameLen);
                    int nTargets = dataBitArray.readBits(5);
                    int nameLen2 = 0;
                    while (nameLen2 < nTargets) {
                        int i3 = nameLen2;
                        dataBitArray.skipBits(3);
                        dataBitArray.skipBits(8);
                        nameLen2 = i3 + 1;
                    }
                }
            }
            dataBitArray.byteAlign();
            if (ac4DsiVersion == 1) {
                int end = (dsiSize - dataBitArray.bitsLeft()) / 8;
                int presentationBytesRead = end - start;
                if (presentationBytes < presentationBytesRead) {
                    throw ParserException.createForUnsupportedContainerFeature("pres_bytes is smaller than presentation bytes read.");
                }
                int end2 = presentationBytes - presentationBytesRead;
                dataBitArray.skipBytes(end2);
            }
            if (ac4Presentation.isChannelCoded && ac4Presentation.channelMode == -1) {
                throw ParserException.createForUnsupportedContainerFeature("Can't determine channel mode of presentation " + presentationIdx);
            }
            if (!ac4Presentation.isChannelCoded) {
                channelCount = getAdjustedChannelCount(ac4Presentation.channelMode, ac4Presentation.hasBackChannels, ac4Presentation.topChannelPairs);
            } else {
                int channelCount2 = ac4Presentation.numOfUmxObjects;
                if (channelCount2 > 0) {
                    int channelCount3 = ac4Presentation.numOfUmxObjects + 1;
                    if (ac4Presentation.level != 4) {
                        channelCount = channelCount3;
                    } else {
                        channelCount = channelCount3 == 17 ? 21 : channelCount3;
                    }
                } else {
                    int channelCount4 = ac4Presentation.level;
                    switch (channelCount4) {
                        case 0:
                            channelCount = 2;
                            break;
                        case 1:
                            channelCount = 6;
                            break;
                        case 2:
                            channelCount = 8;
                            break;
                        case 3:
                            channelCount = 10;
                            break;
                        case 4:
                            channelCount = 12;
                            break;
                        default:
                            Log.w(TAG, "AC-4 level " + ac4Presentation.level + " has not been defined.");
                            channelCount = 2;
                            break;
                    }
                }
            }
            if (channelCount > 0) {
                throw ParserException.createForUnsupportedContainerFeature("Cannot determine channel count of presentation.");
            }
            String codecString = createCodecsString(bitstreamVersion, ac4Presentation.version, ac4Presentation.level);
            return new Format.Builder().setId(trackId).setSampleMimeType(MimeTypes.AUDIO_AC4).setChannelCount(channelCount).setSampleRate(sampleRate).setDrmInitData(drmInitData).setLanguage(language).setCodecs(codecString).build();
        }
        if (!ac4Presentation.isChannelCoded) {
        }
        if (channelCount > 0) {
        }
    }

    private static void parseDsiSubstream(ParsableBitArray data, Ac4Presentation ac4Presentation) throws ParserException {
        int channelMode = data.readBits(5);
        data.skipBits(2);
        if (data.readBit()) {
            data.skipBits(5);
        }
        if (channelMode >= 7 && channelMode <= 10) {
            data.skipBit();
        }
        if (data.readBit()) {
            int contentClassifier = data.readBits(3);
            if (ac4Presentation.channelMode == -1 && channelMode >= 0 && channelMode <= 15 && (contentClassifier == 0 || contentClassifier == 1)) {
                ac4Presentation.channelMode = channelMode;
            }
            if (data.readBit()) {
                skipDsiLanguage(data);
            }
        }
    }

    private static void parseDsiSubstreamGroup(ParsableBitArray data, Ac4Presentation ac4Presentation) throws ParserException {
        data.skipBits(2);
        boolean channelCoded = data.readBit();
        int numberOfSubstreams = data.readBits(8);
        for (int i = 0; i < numberOfSubstreams; i++) {
            data.skipBits(2);
            if (data.readBit()) {
                data.skipBits(5);
            }
            if (channelCoded) {
                data.skipBits(24);
            } else {
                if (data.readBit()) {
                    if (!data.readBit()) {
                        data.skipBits(4);
                    }
                    ac4Presentation.numOfUmxObjects = data.readBits(6) + 1;
                }
                data.skipBits(4);
            }
        }
        if (data.readBit()) {
            data.skipBits(3);
            if (data.readBit()) {
                skipDsiLanguage(data);
            }
        }
    }

    private static void skipDsiLanguage(ParsableBitArray data) throws ParserException {
        int languageTagBytesNumber = data.readBits(6);
        if (languageTagBytesNumber < 2 || languageTagBytesNumber > 42) {
            throw ParserException.createForUnsupportedContainerFeature(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(languageTagBytesNumber)));
        }
        data.skipBits(languageTagBytesNumber * 8);
    }

    private static boolean skipDsiBitrate(ParsableBitArray data) {
        if (data.bitsLeft() < 66) {
            return false;
        }
        data.skipBits(66);
        return true;
    }

    private static int getAdjustedChannelCount(int channelMode, boolean hasBackChannels, int topChannelPairs) {
        int channelCount = getChannelCountFromChannelMode(channelMode);
        if (channelMode == 11 || channelMode == 12 || channelMode == 13 || channelMode == 14) {
            if (!hasBackChannels) {
                channelCount -= 2;
            }
            switch (topChannelPairs) {
                case 0:
                    return channelCount - 4;
                case 1:
                    return channelCount - 2;
                default:
                    return channelCount;
            }
        }
        return channelCount;
    }

    private static int getChannelCountFromChannelMode(int channelMode) {
        switch (channelMode) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
            case 7:
            case 9:
                return 7;
            case 6:
            case 8:
            case 10:
                return 8;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
                return 13;
            case 14:
                return 14;
            case 15:
                return 24;
            default:
                return -1;
        }
    }

    private static String createCodecsString(int bitstreamVersion, int presentationVersion, int mdcompat) {
        return Util.formatInvariant("ac-4.%02d.%02d.%02d", Integer.valueOf(bitstreamVersion), Integer.valueOf(presentationVersion), Integer.valueOf(mdcompat));
    }

    public static SyncFrameInfo parseAc4SyncframeInfo(ParsableBitArray data) {
        int frameSize;
        int bitstreamVersion;
        int syncWord = data.readBits(16);
        int frameSize2 = data.readBits(16);
        int headerSize = 0 + 2 + 2;
        if (frameSize2 == 65535) {
            frameSize2 = data.readBits(24);
            headerSize += 3;
        }
        int frameSize3 = frameSize2 + headerSize;
        if (syncWord != 44097) {
            frameSize = frameSize3;
        } else {
            frameSize = frameSize3 + 2;
        }
        int bitstreamVersion2 = data.readBits(2);
        if (bitstreamVersion2 != 3) {
            bitstreamVersion = bitstreamVersion2;
        } else {
            bitstreamVersion = bitstreamVersion2 + readVariableBits(data, 2);
        }
        int sequenceCounter = data.readBits(10);
        if (data.readBit() && data.readBits(3) > 0) {
            data.skipBits(2);
        }
        int sampleRate = data.readBit() ? 48000 : 44100;
        int frameRateIndex = data.readBits(4);
        int sampleCount = 0;
        if (sampleRate == 44100 && frameRateIndex == 13) {
            sampleCount = SAMPLE_COUNT[frameRateIndex];
        } else if (sampleRate == 48000 && frameRateIndex < SAMPLE_COUNT.length) {
            sampleCount = SAMPLE_COUNT[frameRateIndex];
            switch (sequenceCounter % 5) {
                case 1:
                case 3:
                    if (frameRateIndex == 3 || frameRateIndex == 8) {
                        sampleCount++;
                    }
                    break;
                case 2:
                    if (frameRateIndex == 8 || frameRateIndex == 11) {
                        sampleCount++;
                    }
                    break;
                case 4:
                    if (frameRateIndex == 3 || frameRateIndex == 8 || frameRateIndex == 11) {
                        sampleCount++;
                    }
                    break;
            }
        }
        return new SyncFrameInfo(bitstreamVersion, 2, sampleRate, frameSize, sampleCount);
    }

    public static int parseAc4SyncframeSize(byte[] data, int syncword) {
        if (data.length < 7) {
            return -1;
        }
        int frameSize = ((data[2] & 255) << 8) | (data[3] & 255);
        int headerSize = 2 + 2;
        if (frameSize == 65535) {
            frameSize = ((data[4] & 255) << 16) | ((data[5] & 255) << 8) | (data[6] & 255);
            headerSize += 3;
        }
        if (syncword == 44097) {
            headerSize += 2;
        }
        return frameSize + headerSize;
    }

    public static int parseAc4SyncframeAudioSampleCount(ByteBuffer buffer) {
        byte[] bufferBytes = new byte[16];
        int position = buffer.position();
        buffer.get(bufferBytes);
        buffer.position(position);
        return parseAc4SyncframeInfo(new ParsableBitArray(bufferBytes)).sampleCount;
    }

    public static void getAc4SampleHeader(int size, ParsableByteArray buffer) {
        buffer.reset(7);
        byte[] data = buffer.getData();
        data[0] = -84;
        data[1] = SignedBytes.MAX_POWER_OF_TWO;
        data[2] = -1;
        data[3] = -1;
        data[4] = (byte) ((size >> 16) & 255);
        data[5] = (byte) ((size >> 8) & 255);
        data[6] = (byte) (size & 255);
    }

    private static int readVariableBits(ParsableBitArray data, int bitsPerRead) {
        int value = 0;
        while (true) {
            int value2 = value + data.readBits(bitsPerRead);
            if (data.readBit()) {
                value = (value2 + 1) << bitsPerRead;
            } else {
                return value2;
            }
        }
    }

    private static final class Ac4Presentation {
        public int channelMode;
        public boolean hasBackChannels;
        public boolean isChannelCoded;
        public int level;
        public int numOfUmxObjects;
        public int topChannelPairs;
        public int version;

        private Ac4Presentation() {
            this.isChannelCoded = true;
            this.channelMode = -1;
            this.numOfUmxObjects = -1;
            this.hasBackChannels = true;
            this.topChannelPairs = 2;
            this.version = 1;
            this.level = 0;
        }
    }

    private Ac4Util() {
    }
}
