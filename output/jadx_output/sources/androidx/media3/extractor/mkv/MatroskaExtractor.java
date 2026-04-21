package androidx.media3.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.DolbyVisionConfig;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.ChunkIndexProvider;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackAwareSeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.metadata.ThumbnailMetadata;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public class MatroskaExtractor implements Extractor {
    private static final int BLOCK_ADDITIONAL_ID_VP9_ITU_T_35 = 4;
    private static final int BLOCK_ADD_ID_TYPE_DVCC = 1685480259;
    private static final int BLOCK_ADD_ID_TYPE_DVVC = 1685485123;
    private static final int BLOCK_STATE_DATA = 2;
    private static final int BLOCK_STATE_HEADER = 1;
    private static final int BLOCK_STATE_START = 0;
    private static final String CODEC_ID_AAC = "A_AAC";
    private static final String CODEC_ID_AC3 = "A_AC3";
    private static final String CODEC_ID_ACM = "A_MS/ACM";
    private static final String CODEC_ID_ASS = "S_TEXT/ASS";
    private static final String CODEC_ID_AV1 = "V_AV1";
    private static final String CODEC_ID_DTS = "A_DTS";
    private static final String CODEC_ID_DTS_EXPRESS = "A_DTS/EXPRESS";
    private static final String CODEC_ID_DTS_LOSSLESS = "A_DTS/LOSSLESS";
    private static final String CODEC_ID_DVBSUB = "S_DVBSUB";
    private static final String CODEC_ID_E_AC3 = "A_EAC3";
    private static final String CODEC_ID_FLAC = "A_FLAC";
    private static final String CODEC_ID_FOURCC = "V_MS/VFW/FOURCC";
    private static final String CODEC_ID_H264 = "V_MPEG4/ISO/AVC";
    private static final String CODEC_ID_H265 = "V_MPEGH/ISO/HEVC";
    private static final String CODEC_ID_MP2 = "A_MPEG/L2";
    private static final String CODEC_ID_MP3 = "A_MPEG/L3";
    private static final String CODEC_ID_MPEG2 = "V_MPEG2";
    private static final String CODEC_ID_MPEG4_AP = "V_MPEG4/ISO/AP";
    private static final String CODEC_ID_MPEG4_ASP = "V_MPEG4/ISO/ASP";
    private static final String CODEC_ID_MPEG4_SP = "V_MPEG4/ISO/SP";
    private static final String CODEC_ID_OPUS = "A_OPUS";
    private static final String CODEC_ID_PCM_FLOAT = "A_PCM/FLOAT/IEEE";
    private static final String CODEC_ID_PCM_INT_BIG = "A_PCM/INT/BIG";
    private static final String CODEC_ID_PCM_INT_LIT = "A_PCM/INT/LIT";
    private static final String CODEC_ID_PGS = "S_HDMV/PGS";
    private static final String CODEC_ID_SSA = "S_TEXT/SSA";
    private static final String CODEC_ID_SUBRIP = "S_TEXT/UTF8";
    private static final String CODEC_ID_THEORA = "V_THEORA";
    private static final String CODEC_ID_TRUEHD = "A_TRUEHD";
    private static final String CODEC_ID_VOBSUB = "S_VOBSUB";
    private static final String CODEC_ID_VORBIS = "A_VORBIS";
    private static final String CODEC_ID_VP8 = "V_VP8";
    private static final String CODEC_ID_VP9 = "V_VP9";
    private static final String CODEC_ID_VTT = "S_TEXT/WEBVTT";
    private static final String DOC_TYPE_MATROSKA = "matroska";
    private static final String DOC_TYPE_WEBM = "webm";
    private static final int ENCRYPTION_IV_SIZE = 8;
    public static final int FLAG_DISABLE_SEEK_FOR_CUES = 1;
    public static final int FLAG_EMIT_RAW_SUBTITLE_DATA = 2;
    private static final int FOURCC_COMPRESSION_DIVX = 1482049860;
    private static final int FOURCC_COMPRESSION_H263 = 859189832;
    private static final int FOURCC_COMPRESSION_VC1 = 826496599;
    private static final int ID_AUDIO = 225;
    private static final int ID_AUDIO_BIT_DEPTH = 25188;
    private static final int ID_BLOCK = 161;
    private static final int ID_BLOCK_ADDITIONAL = 165;
    private static final int ID_BLOCK_ADDITIONS = 30113;
    private static final int ID_BLOCK_ADDITION_MAPPING = 16868;
    private static final int ID_BLOCK_ADD_ID = 238;
    private static final int ID_BLOCK_ADD_ID_EXTRA_DATA = 16877;
    private static final int ID_BLOCK_ADD_ID_TYPE = 16871;
    private static final int ID_BLOCK_DURATION = 155;
    private static final int ID_BLOCK_GROUP = 160;
    private static final int ID_BLOCK_MORE = 166;
    private static final int ID_CHANNELS = 159;
    private static final int ID_CLUSTER = 524531317;
    private static final int ID_CODEC_DELAY = 22186;
    private static final int ID_CODEC_ID = 134;
    private static final int ID_CODEC_PRIVATE = 25506;
    private static final int ID_COLOUR = 21936;
    private static final int ID_COLOUR_BITS_PER_CHANNEL = 21938;
    private static final int ID_COLOUR_PRIMARIES = 21947;
    private static final int ID_COLOUR_RANGE = 21945;
    private static final int ID_COLOUR_TRANSFER = 21946;
    private static final int ID_CONTENT_COMPRESSION = 20532;
    private static final int ID_CONTENT_COMPRESSION_ALGORITHM = 16980;
    private static final int ID_CONTENT_COMPRESSION_SETTINGS = 16981;
    private static final int ID_CONTENT_ENCODING = 25152;
    private static final int ID_CONTENT_ENCODINGS = 28032;
    private static final int ID_CONTENT_ENCODING_ORDER = 20529;
    private static final int ID_CONTENT_ENCODING_SCOPE = 20530;
    private static final int ID_CONTENT_ENCRYPTION = 20533;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS = 18407;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE = 18408;
    private static final int ID_CONTENT_ENCRYPTION_ALGORITHM = 18401;
    private static final int ID_CONTENT_ENCRYPTION_KEY_ID = 18402;
    private static final int ID_CUES = 475249515;
    private static final int ID_CUE_CLUSTER_POSITION = 241;
    private static final int ID_CUE_POINT = 187;
    private static final int ID_CUE_RELATIVE_POSITION = 240;
    private static final int ID_CUE_TIME = 179;
    private static final int ID_CUE_TRACK = 247;
    private static final int ID_CUE_TRACK_POSITIONS = 183;
    private static final int ID_DEFAULT_DURATION = 2352003;
    private static final int ID_DISCARD_PADDING = 30114;
    private static final int ID_DISPLAY_HEIGHT = 21690;
    private static final int ID_DISPLAY_UNIT = 21682;
    private static final int ID_DISPLAY_WIDTH = 21680;
    private static final int ID_DOC_TYPE = 17026;
    private static final int ID_DOC_TYPE_READ_VERSION = 17029;
    private static final int ID_DURATION = 17545;
    private static final int ID_EBML = 440786851;
    private static final int ID_EBML_READ_VERSION = 17143;
    private static final int ID_FLAG_DEFAULT = 136;
    private static final int ID_FLAG_FORCED = 21930;
    private static final int ID_INFO = 357149030;
    private static final int ID_LANGUAGE = 2274716;
    private static final int ID_LUMNINANCE_MAX = 21977;
    private static final int ID_LUMNINANCE_MIN = 21978;
    private static final int ID_MASTERING_METADATA = 21968;
    private static final int ID_MAX_BLOCK_ADDITION_ID = 21998;
    private static final int ID_MAX_CLL = 21948;
    private static final int ID_MAX_FALL = 21949;
    private static final int ID_NAME = 21358;
    private static final int ID_PIXEL_HEIGHT = 186;
    private static final int ID_PIXEL_WIDTH = 176;
    private static final int ID_PRIMARY_B_CHROMATICITY_X = 21973;
    private static final int ID_PRIMARY_B_CHROMATICITY_Y = 21974;
    private static final int ID_PRIMARY_G_CHROMATICITY_X = 21971;
    private static final int ID_PRIMARY_G_CHROMATICITY_Y = 21972;
    private static final int ID_PRIMARY_R_CHROMATICITY_X = 21969;
    private static final int ID_PRIMARY_R_CHROMATICITY_Y = 21970;
    private static final int ID_PROJECTION = 30320;
    private static final int ID_PROJECTION_POSE_PITCH = 30324;
    private static final int ID_PROJECTION_POSE_ROLL = 30325;
    private static final int ID_PROJECTION_POSE_YAW = 30323;
    private static final int ID_PROJECTION_PRIVATE = 30322;
    private static final int ID_PROJECTION_TYPE = 30321;
    private static final int ID_REFERENCE_BLOCK = 251;
    private static final int ID_SAMPLING_FREQUENCY = 181;
    private static final int ID_SEEK = 19899;
    private static final int ID_SEEK_HEAD = 290298740;
    private static final int ID_SEEK_ID = 21419;
    private static final int ID_SEEK_POSITION = 21420;
    private static final int ID_SEEK_PRE_ROLL = 22203;
    private static final int ID_SEGMENT = 408125543;
    private static final int ID_SEGMENT_INFO = 357149030;
    private static final int ID_SIMPLE_BLOCK = 163;
    private static final int ID_STEREO_MODE = 21432;
    private static final int ID_TIMECODE_SCALE = 2807729;
    private static final int ID_TIME_CODE = 231;
    private static final int ID_TRACKS = 374648427;
    private static final int ID_TRACK_ENTRY = 174;
    private static final int ID_TRACK_NUMBER = 215;
    private static final int ID_TRACK_TYPE = 131;
    private static final int ID_VIDEO = 224;
    private static final int ID_WHITE_POINT_CHROMATICITY_X = 21975;
    private static final int ID_WHITE_POINT_CHROMATICITY_Y = 21976;
    private static final int LACING_EBML = 3;
    private static final int LACING_FIXED_SIZE = 2;
    private static final int LACING_NONE = 0;
    private static final int LACING_XIPH = 1;
    private static final int MAX_CHUNKS_TO_SCAN_FOR_THUMBNAIL = 20;
    private static final long MAX_DURATION_US_TO_SCAN_FOR_THUMBNAIL = 10000000;
    private static final int OPUS_MAX_INPUT_SIZE = 5760;
    private static final int SSA_PREFIX_END_TIMECODE_OFFSET = 21;
    private static final String SSA_TIMECODE_FORMAT = "%01d:%02d:%02d:%02d";
    private static final long SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR = 10000;
    private static final int SUBRIP_PREFIX_END_TIMECODE_OFFSET = 19;
    private static final String SUBRIP_TIMECODE_FORMAT = "%02d:%02d:%02d,%03d";
    private static final long SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    private static final String TAG = "MatroskaExtractor";
    private static final Map<String, Integer> TRACK_NAME_TO_ROTATION_DEGREES;
    private static final int UNSET_ENTRY_ID = -1;
    private static final int VORBIS_MAX_INPUT_SIZE = 8192;
    private static final int VTT_PREFIX_END_TIMECODE_OFFSET = 25;
    private static final String VTT_TIMECODE_FORMAT = "%02d:%02d:%02d.%03d";
    private static final long VTT_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    private static final int WAVE_FORMAT_EXTENSIBLE = 65534;
    private static final int WAVE_FORMAT_PCM = 1;
    private static final int WAVE_FORMAT_SIZE = 18;
    private int blockAdditionalId;
    private long blockDurationUs;
    private int blockFlags;
    private long blockGroupDiscardPaddingNs;
    private boolean blockHasReferenceBlock;
    private int blockSampleCount;
    private int blockSampleIndex;
    private int[] blockSampleSizes;
    private int blockState;
    private long blockTimeUs;
    private int blockTrackNumber;
    private int blockTrackNumberLength;
    private long clusterTimecodeUs;
    private long cuesContentPosition;
    private long currentCueClusterPosition;
    private long currentCueRelativePosition;
    private long currentCueTimeUs;
    private int currentCueTrackNumber;
    private Track currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final ParsableByteArray encryptionInitializationVector;
    private final ParsableByteArray encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private ExtractorOutput extractorOutput;
    private boolean haveOutputSample;
    private boolean inCuesElement;
    private boolean isWebm;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private final boolean parseSubtitlesDuringExtraction;
    private boolean pendingEndTracks;
    private final SparseArray<List<MatroskaSeekMap.CuePointData>> perTrackCues;
    private int primarySeekTrackNumber;
    private final EbmlReader reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final ParsableByteArray sampleStrippedBytes;
    private final ParsableByteArray scratch;
    private int seekEntryId;
    private final ParsableByteArray seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private final boolean seekForCuesEnabled;
    private long seekPositionAfterBuildingCues;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentSeekMap;
    private final SubtitleParser.Factory subtitleParserFactory;
    private final ParsableByteArray subtitleSample;
    private final ParsableByteArray supplementalData;
    private long timecodeScale;
    private final SparseArray<Track> tracks;
    private final VarintReader varintReader;
    private final ParsableByteArray vorbisNumPageSamples;

    @Deprecated
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mkv.MatroskaExtractor$$ExternalSyntheticLambda1
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return MatroskaExtractor.lambda$static$1();
        }
    };
    private static final byte[] SUBRIP_PREFIX = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] SSA_DIALOGUE_FORMAT = Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final byte[] VTT_PREFIX = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
    private static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    static /* synthetic */ Extractor[] lambda$newFactory$0(SubtitleParser.Factory subtitleParserFactory) {
        return new Extractor[]{new MatroskaExtractor(subtitleParserFactory)};
    }

    public static ExtractorsFactory newFactory(final SubtitleParser.Factory subtitleParserFactory) {
        return new ExtractorsFactory() { // from class: androidx.media3.extractor.mkv.MatroskaExtractor$$ExternalSyntheticLambda0
            @Override // androidx.media3.extractor.ExtractorsFactory
            public final Extractor[] createExtractors() {
                return MatroskaExtractor.lambda$newFactory$0(subtitleParserFactory);
            }
        };
    }

    static {
        Map<String, Integer> trackNameToRotationDegrees = new HashMap<>();
        trackNameToRotationDegrees.put("htc_video_rotA-000", 0);
        trackNameToRotationDegrees.put("htc_video_rotA-090", 90);
        trackNameToRotationDegrees.put("htc_video_rotA-180", 180);
        trackNameToRotationDegrees.put("htc_video_rotA-270", 270);
        TRACK_NAME_TO_ROTATION_DEGREES = Collections.unmodifiableMap(trackNameToRotationDegrees);
    }

    static /* synthetic */ Extractor[] lambda$static$1() {
        return new Extractor[]{new MatroskaExtractor(SubtitleParser.Factory.UNSUPPORTED, 2)};
    }

    @Deprecated
    public MatroskaExtractor() {
        this(new DefaultEbmlReader(), 2, SubtitleParser.Factory.UNSUPPORTED);
    }

    @Deprecated
    public MatroskaExtractor(int flags) {
        this(new DefaultEbmlReader(), flags | 2, SubtitleParser.Factory.UNSUPPORTED);
    }

    public MatroskaExtractor(SubtitleParser.Factory subtitleParserFactory) {
        this(new DefaultEbmlReader(), 0, subtitleParserFactory);
    }

    public MatroskaExtractor(SubtitleParser.Factory subtitleParserFactory, int flags) {
        this(new DefaultEbmlReader(), flags, subtitleParserFactory);
    }

    MatroskaExtractor(EbmlReader reader, int flags, SubtitleParser.Factory subtitleParserFactory) {
        this.segmentContentPosition = -1L;
        this.timecodeScale = C.TIME_UNSET;
        this.durationTimecode = C.TIME_UNSET;
        this.durationUs = C.TIME_UNSET;
        this.currentCueTimeUs = C.TIME_UNSET;
        this.currentCueTrackNumber = -1;
        this.currentCueClusterPosition = -1L;
        this.currentCueRelativePosition = -1L;
        this.primarySeekTrackNumber = -1;
        this.cuesContentPosition = -1L;
        this.seekPositionAfterBuildingCues = -1L;
        this.clusterTimecodeUs = C.TIME_UNSET;
        this.reader = reader;
        this.reader.init(new InnerEbmlProcessor());
        this.subtitleParserFactory = subtitleParserFactory;
        this.perTrackCues = new SparseArray<>();
        this.seekForCuesEnabled = (flags & 1) == 0;
        this.parseSubtitlesDuringExtraction = (flags & 2) == 0;
        this.varintReader = new VarintReader();
        this.tracks = new SparseArray<>();
        this.scratch = new ParsableByteArray(4);
        this.vorbisNumPageSamples = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new ParsableByteArray(4);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleStrippedBytes = new ParsableByteArray();
        this.subtitleSample = new ParsableByteArray();
        this.encryptionInitializationVector = new ParsableByteArray(8);
        this.encryptionSubsampleData = new ParsableByteArray();
        this.supplementalData = new ParsableByteArray();
        this.blockSampleSizes = new int[1];
        this.pendingEndTracks = true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean sniff(ExtractorInput input) throws IOException {
        return new Sniffer().sniff(input);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void init(ExtractorOutput output) {
        ExtractorOutput subtitleTranscodingExtractorOutput;
        if (this.parseSubtitlesDuringExtraction) {
            subtitleTranscodingExtractorOutput = new SubtitleTranscodingExtractorOutput(output, this.subtitleParserFactory);
        } else {
            subtitleTranscodingExtractorOutput = output;
        }
        this.extractorOutput = subtitleTranscodingExtractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long position, long timeUs) {
        this.clusterTimecodeUs = C.TIME_UNSET;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.reset();
        resetWriteSampleData();
        this.inCuesElement = false;
        this.currentCueTimeUs = C.TIME_UNSET;
        this.currentCueTrackNumber = -1;
        this.currentCueClusterPosition = -1L;
        this.currentCueRelativePosition = -1L;
        if (!this.sentSeekMap) {
            this.perTrackCues.clear();
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            this.tracks.valueAt(i).reset();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    @Override // androidx.media3.extractor.Extractor
    public final int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        this.haveOutputSample = false;
        boolean continueReading = true;
        while (continueReading && !this.haveOutputSample) {
            continueReading = this.reader.read(input);
            if (continueReading && maybeSeekForCues(seekPosition, input.getPosition())) {
                return 1;
            }
        }
        if (continueReading) {
            return 0;
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            Track track = this.tracks.valueAt(i);
            track.assertOutputInitialized();
            track.outputPendingSampleMetadata();
        }
        return -1;
    }

    protected int getElementType(int id) {
        switch (id) {
            case ID_TRACK_TYPE /* 131 */:
            case 136:
            case ID_BLOCK_DURATION /* 155 */:
            case ID_CHANNELS /* 159 */:
            case ID_PIXEL_WIDTH /* 176 */:
            case ID_CUE_TIME /* 179 */:
            case ID_PIXEL_HEIGHT /* 186 */:
            case ID_TRACK_NUMBER /* 215 */:
            case ID_TIME_CODE /* 231 */:
            case ID_BLOCK_ADD_ID /* 238 */:
            case 240:
            case ID_CUE_CLUSTER_POSITION /* 241 */:
            case ID_CUE_TRACK /* 247 */:
            case ID_REFERENCE_BLOCK /* 251 */:
            case ID_BLOCK_ADD_ID_TYPE /* 16871 */:
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
            case ID_EBML_READ_VERSION /* 17143 */:
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
            case ID_CONTENT_ENCODING_ORDER /* 20529 */:
            case ID_CONTENT_ENCODING_SCOPE /* 20530 */:
            case ID_SEEK_POSITION /* 21420 */:
            case ID_STEREO_MODE /* 21432 */:
            case ID_DISPLAY_WIDTH /* 21680 */:
            case ID_DISPLAY_UNIT /* 21682 */:
            case ID_DISPLAY_HEIGHT /* 21690 */:
            case ID_FLAG_FORCED /* 21930 */:
            case ID_COLOUR_BITS_PER_CHANNEL /* 21938 */:
            case ID_COLOUR_RANGE /* 21945 */:
            case ID_COLOUR_TRANSFER /* 21946 */:
            case ID_COLOUR_PRIMARIES /* 21947 */:
            case ID_MAX_CLL /* 21948 */:
            case ID_MAX_FALL /* 21949 */:
            case ID_MAX_BLOCK_ADDITION_ID /* 21998 */:
            case ID_CODEC_DELAY /* 22186 */:
            case ID_SEEK_PRE_ROLL /* 22203 */:
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
            case ID_DISCARD_PADDING /* 30114 */:
            case ID_PROJECTION_TYPE /* 30321 */:
            case ID_DEFAULT_DURATION /* 2352003 */:
            case ID_TIMECODE_SCALE /* 2807729 */:
                return 2;
            case 134:
            case 17026:
            case ID_NAME /* 21358 */:
            case ID_LANGUAGE /* 2274716 */:
                return 3;
            case ID_BLOCK_GROUP /* 160 */:
            case ID_BLOCK_MORE /* 166 */:
            case ID_TRACK_ENTRY /* 174 */:
            case ID_CUE_TRACK_POSITIONS /* 183 */:
            case ID_CUE_POINT /* 187 */:
            case 224:
            case ID_AUDIO /* 225 */:
            case ID_BLOCK_ADDITION_MAPPING /* 16868 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS /* 18407 */:
            case ID_SEEK /* 19899 */:
            case ID_CONTENT_COMPRESSION /* 20532 */:
            case ID_CONTENT_ENCRYPTION /* 20533 */:
            case ID_COLOUR /* 21936 */:
            case ID_MASTERING_METADATA /* 21968 */:
            case ID_CONTENT_ENCODING /* 25152 */:
            case ID_CONTENT_ENCODINGS /* 28032 */:
            case ID_BLOCK_ADDITIONS /* 30113 */:
            case ID_PROJECTION /* 30320 */:
            case ID_SEEK_HEAD /* 290298740 */:
            case 357149030:
            case ID_TRACKS /* 374648427 */:
            case ID_SEGMENT /* 408125543 */:
            case ID_EBML /* 440786851 */:
            case ID_CUES /* 475249515 */:
            case ID_CLUSTER /* 524531317 */:
                return 1;
            case ID_BLOCK /* 161 */:
            case ID_SIMPLE_BLOCK /* 163 */:
            case ID_BLOCK_ADDITIONAL /* 165 */:
            case ID_BLOCK_ADD_ID_EXTRA_DATA /* 16877 */:
            case ID_CONTENT_COMPRESSION_SETTINGS /* 16981 */:
            case ID_CONTENT_ENCRYPTION_KEY_ID /* 18402 */:
            case ID_SEEK_ID /* 21419 */:
            case ID_CODEC_PRIVATE /* 25506 */:
            case ID_PROJECTION_PRIVATE /* 30322 */:
                return 4;
            case ID_SAMPLING_FREQUENCY /* 181 */:
            case ID_DURATION /* 17545 */:
            case ID_PRIMARY_R_CHROMATICITY_X /* 21969 */:
            case ID_PRIMARY_R_CHROMATICITY_Y /* 21970 */:
            case ID_PRIMARY_G_CHROMATICITY_X /* 21971 */:
            case ID_PRIMARY_G_CHROMATICITY_Y /* 21972 */:
            case ID_PRIMARY_B_CHROMATICITY_X /* 21973 */:
            case ID_PRIMARY_B_CHROMATICITY_Y /* 21974 */:
            case ID_WHITE_POINT_CHROMATICITY_X /* 21975 */:
            case ID_WHITE_POINT_CHROMATICITY_Y /* 21976 */:
            case ID_LUMNINANCE_MAX /* 21977 */:
            case ID_LUMNINANCE_MIN /* 21978 */:
            case ID_PROJECTION_POSE_YAW /* 30323 */:
            case ID_PROJECTION_POSE_PITCH /* 30324 */:
            case ID_PROJECTION_POSE_ROLL /* 30325 */:
                return 5;
            default:
                return 0;
        }
    }

    protected boolean isLevel1Element(int id) {
        return id == 357149030 || id == ID_CLUSTER || id == ID_CUES || id == ID_TRACKS;
    }

    protected void startMasterElement(int id, long contentPosition, long contentSize) throws ParserException {
        assertInitialized();
        switch (id) {
            case ID_BLOCK_GROUP /* 160 */:
                this.blockHasReferenceBlock = false;
                this.blockGroupDiscardPaddingNs = 0L;
                return;
            case ID_TRACK_ENTRY /* 174 */:
                this.currentTrack = new Track();
                this.currentTrack.isWebm = this.isWebm;
                return;
            case ID_CUE_TRACK_POSITIONS /* 183 */:
                if (!this.sentSeekMap) {
                    assertInCues(id);
                    this.currentCueTrackNumber = -1;
                    this.currentCueClusterPosition = -1L;
                    this.currentCueRelativePosition = -1L;
                    return;
                }
                return;
            case ID_CUE_POINT /* 187 */:
                if (!this.sentSeekMap) {
                    assertInCues(id);
                    this.currentCueTimeUs = C.TIME_UNSET;
                    return;
                }
                return;
            case ID_SEEK /* 19899 */:
                this.seekEntryId = -1;
                this.seekEntryPosition = -1L;
                return;
            case ID_CONTENT_ENCRYPTION /* 20533 */:
                getCurrentTrack(id).hasContentEncryption = true;
                return;
            case ID_MASTERING_METADATA /* 21968 */:
                getCurrentTrack(id).hasColorInfo = true;
                return;
            case ID_CONTENT_ENCODING /* 25152 */:
            default:
                return;
            case ID_SEGMENT /* 408125543 */:
                if (this.segmentContentPosition != -1 && this.segmentContentPosition != contentPosition) {
                    throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
                }
                this.segmentContentPosition = contentPosition;
                this.segmentContentSize = contentSize;
                return;
            case ID_CUES /* 475249515 */:
                if (!this.sentSeekMap) {
                    this.inCuesElement = true;
                    return;
                }
                return;
            case ID_CLUSTER /* 524531317 */:
                if (!this.sentSeekMap) {
                    if (this.seekForCuesEnabled && this.cuesContentPosition != -1) {
                        this.seekForCues = true;
                        return;
                    } else {
                        this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                        this.sentSeekMap = true;
                        return;
                    }
                }
                return;
        }
    }

    protected void endMasterElement(int id) throws ParserException {
        assertInitialized();
        switch (id) {
            case ID_BLOCK_GROUP /* 160 */:
                if (this.blockState == 2) {
                    Track track = this.tracks.get(this.blockTrackNumber);
                    track.assertOutputInitialized();
                    if (this.blockGroupDiscardPaddingNs > 0 && CODEC_ID_OPUS.equals(track.codecId)) {
                        this.supplementalData.reset(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.blockGroupDiscardPaddingNs).array());
                    }
                    int sampleOffset = 0;
                    for (int i = 0; i < this.blockSampleCount; i++) {
                        sampleOffset += this.blockSampleSizes[i];
                    }
                    int i2 = 0;
                    while (i2 < this.blockSampleCount) {
                        long sampleTimeUs = this.blockTimeUs + ((long) ((track.defaultSampleDurationNs * i2) / 1000));
                        int sampleFlags = this.blockFlags;
                        if (i2 == 0 && !this.blockHasReferenceBlock) {
                            sampleFlags |= 1;
                        }
                        int sampleSize = this.blockSampleSizes[i2];
                        int sampleOffset2 = sampleOffset - sampleSize;
                        commitSampleToOutput(track, sampleTimeUs, sampleFlags, sampleSize, sampleOffset2);
                        i2++;
                        sampleOffset = sampleOffset2;
                    }
                    this.blockState = 0;
                    return;
                }
                return;
            case ID_TRACK_ENTRY /* 174 */:
                Track currentTrack = (Track) Preconditions.checkNotNull(this.currentTrack);
                if (currentTrack.codecId == null) {
                    throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
                }
                if (isCodecSupported(currentTrack.codecId)) {
                    currentTrack.initializeFormat(currentTrack.number);
                    currentTrack.output = this.extractorOutput.track(currentTrack.number, currentTrack.type);
                    this.tracks.put(currentTrack.number, currentTrack);
                }
                this.currentTrack = null;
                return;
            case ID_CUE_TRACK_POSITIONS /* 183 */:
                if (!this.sentSeekMap) {
                    assertInCues(id);
                    if (this.currentCueTimeUs != C.TIME_UNSET && this.currentCueTrackNumber != -1 && this.currentCueClusterPosition != -1) {
                        List<MatroskaSeekMap.CuePointData> trackCues = this.perTrackCues.get(this.currentCueTrackNumber);
                        if (trackCues == null) {
                            trackCues = new ArrayList();
                            this.perTrackCues.put(this.currentCueTrackNumber, trackCues);
                        }
                        trackCues.add(new MatroskaSeekMap.CuePointData(this.currentCueTimeUs, this.segmentContentPosition + this.currentCueClusterPosition, this.currentCueRelativePosition));
                        return;
                    }
                    return;
                }
                return;
            case ID_SEEK /* 19899 */:
                if (this.seekEntryId == -1 || this.seekEntryPosition == -1) {
                    throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
                }
                if (this.seekEntryId == ID_CUES) {
                    this.cuesContentPosition = this.seekEntryPosition;
                    return;
                }
                return;
            case ID_CONTENT_ENCODING /* 25152 */:
                assertInTrackEntry(id);
                if (this.currentTrack.hasContentEncryption) {
                    if (this.currentTrack.cryptoData == null) {
                        throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                    }
                    this.currentTrack.drmInitData = new DrmInitData(new DrmInitData.SchemeData(C.UUID_NIL, MimeTypes.VIDEO_WEBM, this.currentTrack.cryptoData.encryptionKey));
                    return;
                }
                return;
            case ID_CONTENT_ENCODINGS /* 28032 */:
                assertInTrackEntry(id);
                if (this.currentTrack.hasContentEncryption && this.currentTrack.sampleStrippedBytes != null) {
                    throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
                }
                return;
            case 357149030:
                if (this.timecodeScale == C.TIME_UNSET) {
                    this.timecodeScale = 1000000L;
                }
                if (this.durationTimecode != C.TIME_UNSET) {
                    this.durationUs = scaleTimecodeToUs(this.durationTimecode);
                    return;
                }
                return;
            case ID_TRACKS /* 374648427 */:
                if (this.tracks.size() == 0) {
                    throw ParserException.createForMalformedContainer("No valid tracks were found", null);
                }
                int defaultVideoTrackNumber = -1;
                int firstVideoTrackNumber = -1;
                int defaultAudioTrackNumber = -1;
                int firstAudioTrackNumber = -1;
                boolean mayBeSendFormatsEarly = !this.seekForCuesEnabled || this.cuesContentPosition == -1;
                for (int i3 = 0; i3 < this.tracks.size(); i3++) {
                    Track trackItem = this.tracks.valueAt(i3);
                    int trackType = trackItem.type;
                    if (trackType == 2) {
                        if (trackItem.flagDefault) {
                            defaultVideoTrackNumber = trackItem.number;
                        }
                        if (firstVideoTrackNumber == -1) {
                            firstVideoTrackNumber = trackItem.number;
                        }
                    } else if (trackType == 1) {
                        if (trackItem.flagDefault) {
                            defaultAudioTrackNumber = trackItem.number;
                        }
                        if (firstAudioTrackNumber == -1) {
                            firstAudioTrackNumber = trackItem.number;
                        }
                    }
                    if (mayBeSendFormatsEarly) {
                        trackItem.assertOutputInitialized();
                        if (!trackItem.waitingForDtsAnalysis) {
                            trackItem.output.format((Format) Preconditions.checkNotNull(trackItem.format));
                        }
                    }
                }
                if (defaultVideoTrackNumber != -1) {
                    this.primarySeekTrackNumber = defaultVideoTrackNumber;
                } else if (firstVideoTrackNumber != -1) {
                    this.primarySeekTrackNumber = firstVideoTrackNumber;
                } else if (defaultAudioTrackNumber != -1) {
                    this.primarySeekTrackNumber = defaultAudioTrackNumber;
                } else if (firstAudioTrackNumber == -1) {
                    this.primarySeekTrackNumber = this.tracks.size() > 0 ? this.tracks.valueAt(0).number : -1;
                } else {
                    this.primarySeekTrackNumber = firstAudioTrackNumber;
                }
                if (mayBeSendFormatsEarly) {
                    maybeEndTracks();
                    return;
                }
                return;
            case ID_CUES /* 475249515 */:
                if (!this.sentSeekMap) {
                    boolean hasAnyCues = false;
                    int i4 = 0;
                    while (true) {
                        if (i4 < this.perTrackCues.size()) {
                            if (this.perTrackCues.valueAt(i4).isEmpty()) {
                                i4++;
                            } else {
                                hasAnyCues = true;
                            }
                        }
                    }
                    if (!hasAnyCues || this.durationUs == C.TIME_UNSET) {
                        this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                    } else {
                        for (int i5 = 0; i5 < this.perTrackCues.size(); i5++) {
                            Collections.sort(this.perTrackCues.valueAt(i5));
                        }
                        MatroskaSeekMap seekMap = new MatroskaSeekMap(this.perTrackCues, this.durationUs, this.primarySeekTrackNumber, this.segmentContentPosition, this.segmentContentSize);
                        this.extractorOutput.seekMap(seekMap);
                    }
                    this.sentSeekMap = true;
                    this.inCuesElement = false;
                    for (int i6 = 0; i6 < this.tracks.size(); i6++) {
                        Track track2 = this.tracks.valueAt(i6);
                        track2.maybeAddThumbnailMetadata(this.perTrackCues, this.durationUs, this.segmentContentPosition, this.segmentContentSize);
                        if (!track2.waitingForDtsAnalysis) {
                            track2.assertOutputInitialized();
                            track2.output.format((Format) Preconditions.checkNotNull(track2.format));
                        }
                    }
                    maybeEndTracks();
                    return;
                }
                return;
            default:
                return;
        }
    }

    protected void integerElement(int id, long value) throws ParserException {
        switch (id) {
            case ID_TRACK_TYPE /* 131 */:
                int matroskaTrackType = (int) value;
                switch (matroskaTrackType) {
                    case 1:
                        getCurrentTrack(id).type = 2;
                        return;
                    case 2:
                        getCurrentTrack(id).type = 1;
                        return;
                    case 17:
                        getCurrentTrack(id).type = 3;
                        return;
                    case 33:
                        getCurrentTrack(id).type = 5;
                        return;
                    default:
                        getCurrentTrack(id).type = -1;
                        return;
                }
            case 136:
                getCurrentTrack(id).flagDefault = value == 1;
                return;
            case ID_BLOCK_DURATION /* 155 */:
                this.blockDurationUs = scaleTimecodeToUs(value);
                return;
            case ID_CHANNELS /* 159 */:
                getCurrentTrack(id).channelCount = (int) value;
                return;
            case ID_PIXEL_WIDTH /* 176 */:
                getCurrentTrack(id).width = (int) value;
                return;
            case ID_CUE_TIME /* 179 */:
                if (!this.sentSeekMap) {
                    assertInCues(id);
                    this.currentCueTimeUs = scaleTimecodeToUs(value);
                    return;
                }
                return;
            case ID_PIXEL_HEIGHT /* 186 */:
                getCurrentTrack(id).height = (int) value;
                return;
            case ID_TRACK_NUMBER /* 215 */:
                getCurrentTrack(id).number = (int) value;
                return;
            case ID_TIME_CODE /* 231 */:
                this.clusterTimecodeUs = scaleTimecodeToUs(value);
                return;
            case ID_BLOCK_ADD_ID /* 238 */:
                this.blockAdditionalId = (int) value;
                return;
            case 240:
                if (!this.sentSeekMap) {
                    assertInCues(id);
                    if (this.currentCueRelativePosition == -1) {
                        this.currentCueRelativePosition = value;
                        return;
                    }
                    return;
                }
                return;
            case ID_CUE_CLUSTER_POSITION /* 241 */:
                if (!this.sentSeekMap) {
                    assertInCues(id);
                    if (this.currentCueClusterPosition == -1) {
                        this.currentCueClusterPosition = value;
                        return;
                    }
                    return;
                }
                return;
            case ID_CUE_TRACK /* 247 */:
                if (!this.sentSeekMap) {
                    assertInCues(id);
                    this.currentCueTrackNumber = (int) value;
                    return;
                }
                return;
            case ID_REFERENCE_BLOCK /* 251 */:
                this.blockHasReferenceBlock = true;
                return;
            case ID_BLOCK_ADD_ID_TYPE /* 16871 */:
                getCurrentTrack(id).blockAddIdType = (int) value;
                return;
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
                if (value != 3) {
                    throw ParserException.createForMalformedContainer("ContentCompAlgo " + value + " not supported", null);
                }
                return;
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
                if (value < 1 || value > 2) {
                    throw ParserException.createForMalformedContainer("DocTypeReadVersion " + value + " not supported", null);
                }
                return;
            case ID_EBML_READ_VERSION /* 17143 */:
                if (value != 1) {
                    throw ParserException.createForMalformedContainer("EBMLReadVersion " + value + " not supported", null);
                }
                return;
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
                if (value != 5) {
                    throw ParserException.createForMalformedContainer("ContentEncAlgo " + value + " not supported", null);
                }
                return;
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
                if (value != 1) {
                    throw ParserException.createForMalformedContainer("AESSettingsCipherMode " + value + " not supported", null);
                }
                return;
            case ID_CONTENT_ENCODING_ORDER /* 20529 */:
                if (value != 0) {
                    throw ParserException.createForMalformedContainer("ContentEncodingOrder " + value + " not supported", null);
                }
                return;
            case ID_CONTENT_ENCODING_SCOPE /* 20530 */:
                if (value != 1) {
                    throw ParserException.createForMalformedContainer("ContentEncodingScope " + value + " not supported", null);
                }
                return;
            case ID_SEEK_POSITION /* 21420 */:
                this.seekEntryPosition = this.segmentContentPosition + value;
                return;
            case ID_STEREO_MODE /* 21432 */:
                int layout = (int) value;
                assertInTrackEntry(id);
                switch (layout) {
                    case 0:
                        this.currentTrack.stereoMode = 0;
                        return;
                    case 1:
                        this.currentTrack.stereoMode = 2;
                        return;
                    case 3:
                        this.currentTrack.stereoMode = 1;
                        return;
                    case 15:
                        this.currentTrack.stereoMode = 3;
                        return;
                    default:
                        return;
                }
            case ID_DISPLAY_WIDTH /* 21680 */:
                getCurrentTrack(id).displayWidth = (int) value;
                return;
            case ID_DISPLAY_UNIT /* 21682 */:
                getCurrentTrack(id).displayUnit = (int) value;
                return;
            case ID_DISPLAY_HEIGHT /* 21690 */:
                getCurrentTrack(id).displayHeight = (int) value;
                return;
            case ID_FLAG_FORCED /* 21930 */:
                getCurrentTrack(id).flagForced = value == 1;
                return;
            case ID_COLOUR_BITS_PER_CHANNEL /* 21938 */:
                assertInTrackEntry(id);
                this.currentTrack.hasColorInfo = true;
                this.currentTrack.bitsPerChannel = (int) value;
                return;
            case ID_COLOUR_RANGE /* 21945 */:
                assertInTrackEntry(id);
                switch ((int) value) {
                    case 1:
                        this.currentTrack.colorRange = 2;
                        return;
                    case 2:
                        this.currentTrack.colorRange = 1;
                        return;
                    default:
                        return;
                }
            case ID_COLOUR_TRANSFER /* 21946 */:
                assertInTrackEntry(id);
                int colorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer((int) value);
                if (colorTransfer != -1) {
                    this.currentTrack.colorTransfer = colorTransfer;
                    return;
                }
                return;
            case ID_COLOUR_PRIMARIES /* 21947 */:
                assertInTrackEntry(id);
                this.currentTrack.hasColorInfo = true;
                int colorSpace = ColorInfo.isoColorPrimariesToColorSpace((int) value);
                if (colorSpace != -1) {
                    this.currentTrack.colorSpace = colorSpace;
                    return;
                }
                return;
            case ID_MAX_CLL /* 21948 */:
                getCurrentTrack(id).maxContentLuminance = (int) value;
                return;
            case ID_MAX_FALL /* 21949 */:
                getCurrentTrack(id).maxFrameAverageLuminance = (int) value;
                return;
            case ID_MAX_BLOCK_ADDITION_ID /* 21998 */:
                getCurrentTrack(id).maxBlockAdditionId = (int) value;
                return;
            case ID_CODEC_DELAY /* 22186 */:
                getCurrentTrack(id).codecDelayNs = value;
                return;
            case ID_SEEK_PRE_ROLL /* 22203 */:
                getCurrentTrack(id).seekPreRollNs = value;
                return;
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
                getCurrentTrack(id).audioBitDepth = (int) value;
                return;
            case ID_DISCARD_PADDING /* 30114 */:
                this.blockGroupDiscardPaddingNs = value;
                return;
            case ID_PROJECTION_TYPE /* 30321 */:
                assertInTrackEntry(id);
                switch ((int) value) {
                    case 0:
                        this.currentTrack.projectionType = 0;
                        return;
                    case 1:
                        this.currentTrack.projectionType = 1;
                        return;
                    case 2:
                        this.currentTrack.projectionType = 2;
                        return;
                    case 3:
                        this.currentTrack.projectionType = 3;
                        return;
                    default:
                        return;
                }
            case ID_DEFAULT_DURATION /* 2352003 */:
                getCurrentTrack(id).defaultSampleDurationNs = (int) value;
                return;
            case ID_TIMECODE_SCALE /* 2807729 */:
                this.timecodeScale = value;
                return;
            default:
                return;
        }
    }

    protected void floatElement(int id, double value) throws ParserException {
        switch (id) {
            case ID_SAMPLING_FREQUENCY /* 181 */:
                getCurrentTrack(id).sampleRate = (int) value;
                break;
            case ID_DURATION /* 17545 */:
                this.durationTimecode = (long) value;
                break;
            case ID_PRIMARY_R_CHROMATICITY_X /* 21969 */:
                getCurrentTrack(id).primaryRChromaticityX = (float) value;
                break;
            case ID_PRIMARY_R_CHROMATICITY_Y /* 21970 */:
                getCurrentTrack(id).primaryRChromaticityY = (float) value;
                break;
            case ID_PRIMARY_G_CHROMATICITY_X /* 21971 */:
                getCurrentTrack(id).primaryGChromaticityX = (float) value;
                break;
            case ID_PRIMARY_G_CHROMATICITY_Y /* 21972 */:
                getCurrentTrack(id).primaryGChromaticityY = (float) value;
                break;
            case ID_PRIMARY_B_CHROMATICITY_X /* 21973 */:
                getCurrentTrack(id).primaryBChromaticityX = (float) value;
                break;
            case ID_PRIMARY_B_CHROMATICITY_Y /* 21974 */:
                getCurrentTrack(id).primaryBChromaticityY = (float) value;
                break;
            case ID_WHITE_POINT_CHROMATICITY_X /* 21975 */:
                getCurrentTrack(id).whitePointChromaticityX = (float) value;
                break;
            case ID_WHITE_POINT_CHROMATICITY_Y /* 21976 */:
                getCurrentTrack(id).whitePointChromaticityY = (float) value;
                break;
            case ID_LUMNINANCE_MAX /* 21977 */:
                getCurrentTrack(id).maxMasteringLuminance = (float) value;
                break;
            case ID_LUMNINANCE_MIN /* 21978 */:
                getCurrentTrack(id).minMasteringLuminance = (float) value;
                break;
            case ID_PROJECTION_POSE_YAW /* 30323 */:
                getCurrentTrack(id).projectionPoseYaw = (float) value;
                break;
            case ID_PROJECTION_POSE_PITCH /* 30324 */:
                getCurrentTrack(id).projectionPosePitch = (float) value;
                break;
            case ID_PROJECTION_POSE_ROLL /* 30325 */:
                getCurrentTrack(id).projectionPoseRoll = (float) value;
                break;
        }
    }

    protected void stringElement(int id, String value) throws ParserException {
        switch (id) {
            case 134:
                getCurrentTrack(id).codecId = value;
                return;
            case 17026:
                if (!DOC_TYPE_WEBM.equals(value) && !DOC_TYPE_MATROSKA.equals(value)) {
                    throw ParserException.createForMalformedContainer("DocType " + value + " not supported", null);
                }
                this.isWebm = Objects.equals(value, DOC_TYPE_WEBM);
                return;
            case ID_NAME /* 21358 */:
                getCurrentTrack(id).name = value;
                return;
            case ID_LANGUAGE /* 2274716 */:
                getCurrentTrack(id).language = value;
                return;
            default:
                return;
        }
    }

    protected void binaryElement(int id, int contentSize, ExtractorInput input) throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int lacing;
        int sampleIndex;
        long readValue;
        int byteValue;
        int i6 = 2;
        int i7 = 0;
        int i8 = 1;
        switch (id) {
            case ID_BLOCK /* 161 */:
            case ID_SIMPLE_BLOCK /* 163 */:
                int i9 = 8;
                if (this.blockState == 0) {
                    this.blockTrackNumber = (int) this.varintReader.readUnsignedVarint(input, false, true, 8);
                    this.blockTrackNumberLength = this.varintReader.getLastLength();
                    this.blockDurationUs = C.TIME_UNSET;
                    this.blockState = 1;
                    this.scratch.reset(0);
                }
                Track track = this.tracks.get(this.blockTrackNumber);
                if (track == null) {
                    input.skipFully(contentSize - this.blockTrackNumberLength);
                    this.blockState = 0;
                    return;
                }
                track.assertOutputInitialized();
                if (this.blockState == 1) {
                    readScratch(input, 3);
                    int lacing2 = (this.scratch.getData()[2] & 6) >> 1;
                    int i10 = 255;
                    if (lacing2 == 0) {
                        this.blockSampleCount = 1;
                        this.blockSampleSizes = ensureArrayCapacity(this.blockSampleSizes, 1);
                        this.blockSampleSizes[0] = (contentSize - this.blockTrackNumberLength) - 3;
                        i2 = 2;
                        i = 0;
                        i3 = 1;
                    } else {
                        readScratch(input, 4);
                        this.blockSampleCount = (this.scratch.getData()[3] & 255) + 1;
                        this.blockSampleSizes = ensureArrayCapacity(this.blockSampleSizes, this.blockSampleCount);
                        if (lacing2 == 2) {
                            int blockLacingSampleSize = ((contentSize - this.blockTrackNumberLength) - 4) / this.blockSampleCount;
                            Arrays.fill(this.blockSampleSizes, 0, this.blockSampleCount, blockLacingSampleSize);
                            i2 = 2;
                            i = 0;
                            i3 = 1;
                        } else {
                            if (lacing2 != 1) {
                                i = 0;
                                if (lacing2 != 3) {
                                    throw ParserException.createForMalformedContainer("Unexpected lacing value: " + lacing2, null);
                                }
                                int totalSamplesSize = 0;
                                int headerSize = 4;
                                int sampleIndex2 = 0;
                                while (true) {
                                    int i11 = this.blockSampleCount - i8;
                                    i2 = i6;
                                    int[] iArr = this.blockSampleSizes;
                                    if (sampleIndex2 < i11) {
                                        iArr[sampleIndex2] = 0;
                                        headerSize++;
                                        readScratch(input, headerSize);
                                        if (this.scratch.getData()[headerSize - 1] == 0) {
                                            throw ParserException.createForMalformedContainer("No valid varint length mask found", null);
                                        }
                                        int i12 = 0;
                                        while (true) {
                                            if (i12 < i9) {
                                                int lengthMask = i8 << (7 - i12);
                                                i4 = i9;
                                                if ((this.scratch.getData()[headerSize - 1] & lengthMask) != 0) {
                                                    int readPosition = headerSize - 1;
                                                    headerSize += i12;
                                                    readScratch(input, headerSize);
                                                    i5 = i8;
                                                    lacing = lacing2;
                                                    long j = this.scratch.getData()[readPosition] & i10 & (~lengthMask);
                                                    int readPosition2 = readPosition + 1;
                                                    long readValue2 = j;
                                                    while (readPosition2 < headerSize) {
                                                        long readValue3 = (readValue2 << i4) | ((long) (this.scratch.getData()[readPosition2] & i10));
                                                        readPosition2++;
                                                        sampleIndex2 = sampleIndex2;
                                                        i10 = 255;
                                                        readValue2 = readValue3;
                                                    }
                                                    sampleIndex = sampleIndex2;
                                                    readValue = sampleIndex > 0 ? readValue2 - ((1 << ((i12 * 7) + 6)) - 1) : readValue2;
                                                } else {
                                                    i12++;
                                                    i9 = i4;
                                                    i10 = 255;
                                                }
                                            } else {
                                                i4 = i9;
                                                i5 = i8;
                                                lacing = lacing2;
                                                sampleIndex = sampleIndex2;
                                                readValue = 0;
                                            }
                                        }
                                        if (readValue >= SieveCacheKt.NodeMetaAndPreviousMask && readValue <= SieveCacheKt.NodeLinkMask) {
                                            int intReadValue = (int) readValue;
                                            this.blockSampleSizes[sampleIndex] = sampleIndex == 0 ? intReadValue : this.blockSampleSizes[sampleIndex - 1] + intReadValue;
                                            totalSamplesSize += this.blockSampleSizes[sampleIndex];
                                            sampleIndex2 = sampleIndex + 1;
                                            lacing2 = lacing;
                                            i6 = i2;
                                            i9 = i4;
                                            i8 = i5;
                                            i10 = 255;
                                        }
                                    } else {
                                        i3 = i8;
                                        iArr[this.blockSampleCount - 1] = ((contentSize - this.blockTrackNumberLength) - headerSize) - totalSamplesSize;
                                    }
                                }
                                throw ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
                            }
                            int totalSamplesSize2 = 0;
                            int headerSize2 = 4;
                            int sampleIndex3 = 0;
                            while (true) {
                                int i13 = this.blockSampleCount - 1;
                                i = i7;
                                int[] iArr2 = this.blockSampleSizes;
                                if (sampleIndex3 < i13) {
                                    iArr2[sampleIndex3] = i;
                                    do {
                                        headerSize2++;
                                        readScratch(input, headerSize2);
                                        byteValue = this.scratch.getData()[headerSize2 - 1] & 255;
                                        int[] iArr3 = this.blockSampleSizes;
                                        iArr3[sampleIndex3] = iArr3[sampleIndex3] + byteValue;
                                    } while (byteValue == 255);
                                    totalSamplesSize2 += this.blockSampleSizes[sampleIndex3];
                                    sampleIndex3++;
                                    i7 = i;
                                } else {
                                    int sampleIndex4 = this.blockSampleCount;
                                    iArr2[sampleIndex4 - 1] = ((contentSize - this.blockTrackNumberLength) - headerSize2) - totalSamplesSize2;
                                    i2 = 2;
                                    i3 = 1;
                                }
                            }
                        }
                    }
                    int timecode = (this.scratch.getData()[i] << 8) | (this.scratch.getData()[i3] & 255);
                    this.blockTimeUs = this.clusterTimecodeUs + scaleTimecodeToUs(timecode);
                    this.blockFlags = ((track.type == i3 || (id == ID_SIMPLE_BLOCK && (this.scratch.getData()[i2] & 128) == 128)) ? 1 : i) != 0 ? 1 : i;
                    this.blockState = i2;
                    this.blockSampleIndex = i;
                }
                if (id != ID_SIMPLE_BLOCK) {
                    while (this.blockSampleIndex < this.blockSampleCount) {
                        this.blockSampleSizes[this.blockSampleIndex] = writeSampleData(input, track, this.blockSampleSizes[this.blockSampleIndex], true);
                        this.blockSampleIndex++;
                    }
                    return;
                }
                while (this.blockSampleIndex < this.blockSampleCount) {
                    int sampleSize = writeSampleData(input, track, this.blockSampleSizes[this.blockSampleIndex], false);
                    long sampleTimeUs = this.blockTimeUs + ((long) ((this.blockSampleIndex * track.defaultSampleDurationNs) / 1000));
                    Track track2 = track;
                    commitSampleToOutput(track2, sampleTimeUs, this.blockFlags, sampleSize, 0);
                    this.blockSampleIndex++;
                    track = track2;
                }
                this.blockState = 0;
                return;
            case ID_BLOCK_ADDITIONAL /* 165 */:
                if (this.blockState != 2) {
                    return;
                }
                handleBlockAdditionalData(this.tracks.get(this.blockTrackNumber), this.blockAdditionalId, input, contentSize);
                return;
            case ID_BLOCK_ADD_ID_EXTRA_DATA /* 16877 */:
                handleBlockAddIDExtraData(getCurrentTrack(id), input, contentSize);
                return;
            case ID_CONTENT_COMPRESSION_SETTINGS /* 16981 */:
                assertInTrackEntry(id);
                this.currentTrack.sampleStrippedBytes = new byte[contentSize];
                input.readFully(this.currentTrack.sampleStrippedBytes, 0, contentSize);
                return;
            case ID_CONTENT_ENCRYPTION_KEY_ID /* 18402 */:
                byte[] encryptionKey = new byte[contentSize];
                input.readFully(encryptionKey, 0, contentSize);
                getCurrentTrack(id).cryptoData = new TrackOutput.CryptoData(1, encryptionKey, 0, 0);
                return;
            case ID_SEEK_ID /* 21419 */:
                Arrays.fill(this.seekEntryIdBytes.getData(), (byte) 0);
                input.readFully(this.seekEntryIdBytes.getData(), 4 - contentSize, contentSize);
                this.seekEntryIdBytes.setPosition(0);
                this.seekEntryId = (int) this.seekEntryIdBytes.readUnsignedInt();
                return;
            case ID_CODEC_PRIVATE /* 25506 */:
                assertInTrackEntry(id);
                this.currentTrack.codecPrivate = new byte[contentSize];
                input.readFully(this.currentTrack.codecPrivate, 0, contentSize);
                return;
            case ID_PROJECTION_PRIVATE /* 30322 */:
                assertInTrackEntry(id);
                this.currentTrack.projectionData = new byte[contentSize];
                input.readFully(this.currentTrack.projectionData, 0, contentSize);
                return;
            default:
                throw ParserException.createForMalformedContainer("Unexpected id: " + id, null);
        }
    }

    protected void handleBlockAddIDExtraData(Track track, ExtractorInput input, int contentSize) throws IOException {
        if (track.blockAddIdType == 1685485123 || track.blockAddIdType == 1685480259) {
            track.dolbyVisionConfigBytes = new byte[contentSize];
            input.readFully(track.dolbyVisionConfigBytes, 0, contentSize);
        } else {
            input.skipFully(contentSize);
        }
    }

    protected void handleBlockAdditionalData(Track track, int blockAdditionalId, ExtractorInput input, int contentSize) throws IOException {
        if (blockAdditionalId == 4 && CODEC_ID_VP9.equals(track.codecId)) {
            this.supplementalData.reset(contentSize);
            input.readFully(this.supplementalData.getData(), 0, contentSize);
        } else {
            input.skipFully(contentSize);
        }
    }

    @EnsuresNonNull({"currentTrack"})
    private void assertInTrackEntry(int id) throws ParserException {
        if (this.currentTrack == null) {
            throw ParserException.createForMalformedContainer("Element " + id + " must be in a TrackEntry", null);
        }
    }

    private void assertInCues(int id) throws ParserException {
        if (!this.inCuesElement) {
            throw ParserException.createForMalformedContainer("Element " + id + " must be in a Cues", null);
        }
    }

    protected Track getCurrentTrack(int currentElementId) throws ParserException {
        assertInTrackEntry(currentElementId);
        return this.currentTrack;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c9  */
    @RequiresNonNull({"#1.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void commitSampleToOutput(Track track, long timeUs, int flags, int size, int offset) {
        int size2;
        int size3;
        if (track.trueHdSampleRechunker != null) {
            track.trueHdSampleRechunker.sampleMetadata(track.output, timeUs, flags, size, offset, track.cryptoData);
        } else if (CODEC_ID_SUBRIP.equals(track.codecId) || CODEC_ID_ASS.equals(track.codecId) || CODEC_ID_SSA.equals(track.codecId) || CODEC_ID_VTT.equals(track.codecId)) {
            if (this.blockSampleCount > 1) {
                Log.w(TAG, "Skipping subtitle sample in laced block.");
            } else if (this.blockDurationUs != C.TIME_UNSET) {
                setSubtitleEndTime(track.codecId, this.blockDurationUs, this.subtitleSample.getData());
                int i = this.subtitleSample.getPosition();
                while (true) {
                    if (i >= this.subtitleSample.limit()) {
                        break;
                    }
                    if (this.subtitleSample.getData()[i] != 0) {
                        i++;
                    } else {
                        this.subtitleSample.setLimit(i);
                        break;
                    }
                }
                track.output.sampleData(this.subtitleSample, this.subtitleSample.limit());
                size2 = size + this.subtitleSample.limit();
                if ((flags & 268435456) != 0) {
                    int i2 = this.blockSampleCount;
                    ParsableByteArray parsableByteArray = this.supplementalData;
                    if (i2 > 1) {
                        parsableByteArray.reset(0);
                        size3 = size2;
                        track.output.sampleMetadata(timeUs, flags, size3, offset, track.cryptoData);
                    } else {
                        int supplementalDataSize = parsableByteArray.limit();
                        track.output.sampleData(this.supplementalData, supplementalDataSize, 2);
                        size3 = size2 + supplementalDataSize;
                        track.output.sampleMetadata(timeUs, flags, size3, offset, track.cryptoData);
                    }
                } else {
                    size3 = size2;
                    track.output.sampleMetadata(timeUs, flags, size3, offset, track.cryptoData);
                }
            } else {
                Log.w(TAG, "Skipping subtitle sample with no duration.");
            }
            size2 = size;
            if ((flags & 268435456) != 0) {
            }
        } else {
            size2 = size;
            if ((flags & 268435456) != 0) {
            }
        }
        this.haveOutputSample = true;
    }

    private void readScratch(ExtractorInput input, int requiredLength) throws IOException {
        if (this.scratch.limit() >= requiredLength) {
            return;
        }
        if (this.scratch.capacity() < requiredLength) {
            this.scratch.ensureCapacity(Math.max(this.scratch.capacity() * 2, requiredLength));
        }
        input.readFully(this.scratch.getData(), this.scratch.limit(), requiredLength - this.scratch.limit());
        this.scratch.setLimit(requiredLength);
    }

    @RequiresNonNull({"#2.output"})
    private int writeSampleData(ExtractorInput input, Track track, int size, boolean isBlockGroup) throws IOException {
        int i;
        if (CODEC_ID_SUBRIP.equals(track.codecId)) {
            writeSubtitleSampleData(input, SUBRIP_PREFIX, size);
            return finishWriteSampleData();
        }
        if (CODEC_ID_ASS.equals(track.codecId) || CODEC_ID_SSA.equals(track.codecId)) {
            writeSubtitleSampleData(input, SSA_PREFIX, size);
            return finishWriteSampleData();
        }
        if (CODEC_ID_VTT.equals(track.codecId)) {
            writeSubtitleSampleData(input, VTT_PREFIX, size);
            return finishWriteSampleData();
        }
        if (track.waitingForDtsAnalysis) {
            Preconditions.checkNotNull(track.format);
            if (DtsUtil.isSampleDtsHd(input, size)) {
                track.format = track.format.buildUpon().setSampleMimeType(MimeTypes.AUDIO_DTS_HD).build();
            }
            track.output.format(track.format);
            track.waitingForDtsAnalysis = false;
            maybeEndTracks();
        }
        TrackOutput output = track.output;
        int i2 = 2;
        if (!this.sampleEncodingHandled) {
            if (track.hasContentEncryption) {
                this.blockFlags &= -1073741825;
                if (!this.sampleSignalByteRead) {
                    input.readFully(this.scratch.getData(), 0, 1);
                    this.sampleBytesRead++;
                    if ((this.scratch.getData()[0] & 128) != 128) {
                        this.sampleSignalByte = this.scratch.getData()[0];
                        this.sampleSignalByteRead = true;
                    } else {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                }
                boolean isEncrypted = (this.sampleSignalByte & 1) == 1;
                if (!isEncrypted) {
                    i = 2;
                } else {
                    boolean hasSubsampleEncryption = (this.sampleSignalByte & 2) == 2;
                    this.blockFlags |= 1073741824;
                    if (!this.sampleInitializationVectorRead) {
                        input.readFully(this.encryptionInitializationVector.getData(), 0, 8);
                        this.sampleBytesRead += 8;
                        this.sampleInitializationVectorRead = true;
                        this.scratch.getData()[0] = (byte) ((hasSubsampleEncryption ? 128 : 0) | 8);
                        this.scratch.setPosition(0);
                        output.sampleData(this.scratch, 1, 1);
                        this.sampleBytesWritten++;
                        this.encryptionInitializationVector.setPosition(0);
                        output.sampleData(this.encryptionInitializationVector, 8, 1);
                        this.sampleBytesWritten += 8;
                    }
                    if (!hasSubsampleEncryption) {
                        i = 2;
                    } else {
                        if (!this.samplePartitionCountRead) {
                            input.readFully(this.scratch.getData(), 0, 1);
                            this.sampleBytesRead++;
                            this.scratch.setPosition(0);
                            this.samplePartitionCount = this.scratch.readUnsignedByte();
                            this.samplePartitionCountRead = true;
                        }
                        int samplePartitionDataSize = this.samplePartitionCount * 4;
                        this.scratch.reset(samplePartitionDataSize);
                        input.readFully(this.scratch.getData(), 0, samplePartitionDataSize);
                        this.sampleBytesRead += samplePartitionDataSize;
                        short subsampleCount = (short) ((this.samplePartitionCount / 2) + 1);
                        int subsampleDataSize = (subsampleCount * 6) + 2;
                        if (this.encryptionSubsampleDataBuffer == null || this.encryptionSubsampleDataBuffer.capacity() < subsampleDataSize) {
                            this.encryptionSubsampleDataBuffer = ByteBuffer.allocate(subsampleDataSize);
                        }
                        this.encryptionSubsampleDataBuffer.position(0);
                        this.encryptionSubsampleDataBuffer.putShort(subsampleCount);
                        int partitionOffset = 0;
                        int i3 = 0;
                        while (true) {
                            i = i2;
                            if (i3 >= this.samplePartitionCount) {
                                break;
                            }
                            int previousPartitionOffset = partitionOffset;
                            partitionOffset = this.scratch.readUnsignedIntToInt();
                            int i4 = i3 % 2;
                            ByteBuffer byteBuffer = this.encryptionSubsampleDataBuffer;
                            if (i4 == 0) {
                                byteBuffer.putShort((short) (partitionOffset - previousPartitionOffset));
                            } else {
                                byteBuffer.putInt(partitionOffset - previousPartitionOffset);
                            }
                            i3++;
                            i2 = i;
                        }
                        int finalPartitionSize = (size - this.sampleBytesRead) - partitionOffset;
                        int i5 = this.samplePartitionCount % 2;
                        ByteBuffer byteBuffer2 = this.encryptionSubsampleDataBuffer;
                        if (i5 == 1) {
                            byteBuffer2.putInt(finalPartitionSize);
                        } else {
                            byteBuffer2.putShort((short) finalPartitionSize);
                            this.encryptionSubsampleDataBuffer.putInt(0);
                        }
                        this.encryptionSubsampleData.reset(this.encryptionSubsampleDataBuffer.array(), subsampleDataSize);
                        output.sampleData(this.encryptionSubsampleData, subsampleDataSize, 1);
                        this.sampleBytesWritten += subsampleDataSize;
                    }
                }
            } else {
                i = 2;
                if (track.sampleStrippedBytes != null) {
                    this.sampleStrippedBytes.reset(track.sampleStrippedBytes, track.sampleStrippedBytes.length);
                }
            }
            if (track.samplesHaveSupplementalData(isBlockGroup)) {
                this.blockFlags |= 268435456;
                this.supplementalData.reset(0);
                int sampleSize = (this.sampleStrippedBytes.limit() + size) - this.sampleBytesRead;
                this.scratch.reset(4);
                this.scratch.getData()[0] = (byte) ((sampleSize >> 24) & 255);
                this.scratch.getData()[1] = (byte) ((sampleSize >> 16) & 255);
                this.scratch.getData()[i] = (byte) ((sampleSize >> 8) & 255);
                this.scratch.getData()[3] = (byte) (sampleSize & 255);
                output.sampleData(this.scratch, 4, i);
                this.sampleBytesWritten += 4;
            }
            this.sampleEncodingHandled = true;
        }
        int size2 = size + this.sampleStrippedBytes.limit();
        if (CODEC_ID_H264.equals(track.codecId) || CODEC_ID_H265.equals(track.codecId)) {
            byte[] nalLengthData = this.nalLength.getData();
            nalLengthData[0] = 0;
            nalLengthData[1] = 0;
            nalLengthData[2] = 0;
            int nalUnitLengthFieldLength = track.nalUnitLengthFieldLength;
            int nalUnitLengthFieldLengthDiff = 4 - track.nalUnitLengthFieldLength;
            while (this.sampleBytesRead < size2) {
                if (this.sampleCurrentNalBytesRemaining != 0) {
                    int bytesWritten = writeToOutput(input, output, this.sampleCurrentNalBytesRemaining);
                    this.sampleBytesRead += bytesWritten;
                    this.sampleBytesWritten += bytesWritten;
                    this.sampleCurrentNalBytesRemaining -= bytesWritten;
                } else {
                    writeToTarget(input, nalLengthData, nalUnitLengthFieldLengthDiff, nalUnitLengthFieldLength);
                    this.sampleBytesRead += nalUnitLengthFieldLength;
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    output.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                }
            }
        } else {
            if (track.trueHdSampleRechunker != null) {
                Preconditions.checkState(this.sampleStrippedBytes.limit() == 0);
                track.trueHdSampleRechunker.startSample(input);
            }
            while (this.sampleBytesRead < size2) {
                int bytesWritten2 = writeToOutput(input, output, size2 - this.sampleBytesRead);
                this.sampleBytesRead += bytesWritten2;
                this.sampleBytesWritten += bytesWritten2;
            }
        }
        if (CODEC_ID_VORBIS.equals(track.codecId)) {
            this.vorbisNumPageSamples.setPosition(0);
            output.sampleData(this.vorbisNumPageSamples, 4);
            this.sampleBytesWritten += 4;
        }
        return finishWriteSampleData();
    }

    private int finishWriteSampleData() {
        int sampleSize = this.sampleBytesWritten;
        resetWriteSampleData();
        return sampleSize;
    }

    private void resetWriteSampleData() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = (byte) 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.reset(0);
    }

    private void writeSubtitleSampleData(ExtractorInput input, byte[] samplePrefix, int size) throws IOException {
        int sizeWithPrefix = samplePrefix.length + size;
        int iCapacity = this.subtitleSample.capacity();
        ParsableByteArray parsableByteArray = this.subtitleSample;
        if (iCapacity >= sizeWithPrefix) {
            System.arraycopy(samplePrefix, 0, parsableByteArray.getData(), 0, samplePrefix.length);
        } else {
            parsableByteArray.reset(Arrays.copyOf(samplePrefix, sizeWithPrefix + size));
        }
        input.readFully(this.subtitleSample.getData(), samplePrefix.length, size);
        this.subtitleSample.setPosition(0);
        this.subtitleSample.setLimit(sizeWithPrefix);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void setSubtitleEndTime(String codecId, long durationUs, byte[] subtitleData) {
        byte[] endTimecode;
        int endTimecodeOffset;
        switch (codecId) {
            case "S_TEXT/UTF8":
                endTimecode = formatSubtitleTimecode(durationUs, SUBRIP_TIMECODE_FORMAT, 1000L);
                endTimecodeOffset = 19;
                break;
            case "S_TEXT/ASS":
            case "S_TEXT/SSA":
                endTimecode = formatSubtitleTimecode(durationUs, SSA_TIMECODE_FORMAT, 10000L);
                endTimecodeOffset = 21;
                break;
            case "S_TEXT/WEBVTT":
                endTimecode = formatSubtitleTimecode(durationUs, VTT_TIMECODE_FORMAT, 1000L);
                endTimecodeOffset = 25;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(endTimecode, 0, subtitleData, endTimecodeOffset, endTimecode.length);
    }

    private static byte[] formatSubtitleTimecode(long timeUs, String timecodeFormat, long lastTimecodeValueScalingFactor) {
        Preconditions.checkArgument(timeUs != C.TIME_UNSET);
        int hours = (int) (timeUs / 3600000000L);
        long timeUs2 = timeUs - ((((long) hours) * 3600) * 1000000);
        int minutes = (int) (timeUs2 / 60000000);
        long timeUs3 = timeUs2 - ((((long) minutes) * 60) * 1000000);
        int seconds = (int) (timeUs3 / 1000000);
        int lastValue = (int) ((timeUs3 - (((long) seconds) * 1000000)) / lastTimecodeValueScalingFactor);
        byte[] timeCodeData = Util.getUtf8Bytes(String.format(Locale.US, timecodeFormat, Integer.valueOf(hours), Integer.valueOf(minutes), Integer.valueOf(seconds), Integer.valueOf(lastValue)));
        return timeCodeData;
    }

    private void writeToTarget(ExtractorInput input, byte[] target, int offset, int length) throws IOException {
        int pendingStrippedBytes = Math.min(length, this.sampleStrippedBytes.bytesLeft());
        input.readFully(target, offset + pendingStrippedBytes, length - pendingStrippedBytes);
        if (pendingStrippedBytes > 0) {
            this.sampleStrippedBytes.readBytes(target, offset, pendingStrippedBytes);
        }
    }

    private int writeToOutput(ExtractorInput input, TrackOutput output, int length) throws IOException {
        int strippedBytesLeft = this.sampleStrippedBytes.bytesLeft();
        if (strippedBytesLeft > 0) {
            int bytesWritten = Math.min(length, strippedBytesLeft);
            output.sampleData(this.sampleStrippedBytes, bytesWritten);
            return bytesWritten;
        }
        return output.sampleData((DataReader) input, length, false);
    }

    private boolean maybeSeekForCues(PositionHolder seekPosition, long currentPosition) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = currentPosition;
            seekPosition.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (!this.sentSeekMap || this.seekPositionAfterBuildingCues == -1) {
            return false;
        }
        seekPosition.position = this.seekPositionAfterBuildingCues;
        this.seekPositionAfterBuildingCues = -1L;
        return true;
    }

    private long scaleTimecodeToUs(long unscaledTimecode) throws ParserException {
        if (this.timecodeScale != C.TIME_UNSET) {
            return Util.scaleLargeTimestamp(unscaledTimecode, this.timecodeScale, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0192  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean isCodecSupported(String codecId) {
        byte b;
        switch (codecId.hashCode()) {
            case -2095576542:
                b = !codecId.equals(CODEC_ID_MPEG4_AP) ? (byte) -1 : (byte) 6;
                break;
            case -2095575984:
                if (codecId.equals(CODEC_ID_MPEG4_SP)) {
                    b = 4;
                    break;
                }
                break;
            case -1985379776:
                if (codecId.equals(CODEC_ID_ACM)) {
                    b = Ascii.ETB;
                    break;
                }
                break;
            case -1784763192:
                if (codecId.equals(CODEC_ID_TRUEHD)) {
                    b = Ascii.DC2;
                    break;
                }
                break;
            case -1730367663:
                if (codecId.equals(CODEC_ID_VORBIS)) {
                    b = Ascii.FF;
                    break;
                }
                break;
            case -1482641358:
                if (codecId.equals(CODEC_ID_MP2)) {
                    b = Ascii.SO;
                    break;
                }
                break;
            case -1482641357:
                if (codecId.equals(CODEC_ID_MP3)) {
                    b = Ascii.SI;
                    break;
                }
                break;
            case -1373388978:
                if (codecId.equals(CODEC_ID_FOURCC)) {
                    b = 9;
                    break;
                }
                break;
            case -933872740:
                if (codecId.equals(CODEC_ID_DVBSUB)) {
                    b = 33;
                    break;
                }
                break;
            case -538363189:
                if (codecId.equals(CODEC_ID_MPEG4_ASP)) {
                    b = 5;
                    break;
                }
                break;
            case -538363109:
                if (codecId.equals(CODEC_ID_H264)) {
                    b = 7;
                    break;
                }
                break;
            case -425012669:
                if (codecId.equals(CODEC_ID_VOBSUB)) {
                    b = Ascii.US;
                    break;
                }
                break;
            case -356037306:
                if (codecId.equals(CODEC_ID_DTS_LOSSLESS)) {
                    b = Ascii.NAK;
                    break;
                }
                break;
            case 62923557:
                if (codecId.equals(CODEC_ID_AAC)) {
                    b = Ascii.CR;
                    break;
                }
                break;
            case 62923603:
                if (codecId.equals(CODEC_ID_AC3)) {
                    b = Ascii.DLE;
                    break;
                }
                break;
            case 62927045:
                if (codecId.equals(CODEC_ID_DTS)) {
                    b = 19;
                    break;
                }
                break;
            case 82318131:
                if (codecId.equals(CODEC_ID_AV1)) {
                    b = 2;
                    break;
                }
                break;
            case 82338133:
                if (codecId.equals(CODEC_ID_VP8)) {
                    b = 0;
                    break;
                }
                break;
            case 82338134:
                if (codecId.equals(CODEC_ID_VP9)) {
                    b = 1;
                    break;
                }
                break;
            case 99146302:
                if (codecId.equals(CODEC_ID_PGS)) {
                    b = 32;
                    break;
                }
                break;
            case 444813526:
                if (codecId.equals(CODEC_ID_THEORA)) {
                    b = 10;
                    break;
                }
                break;
            case 542569478:
                if (codecId.equals(CODEC_ID_DTS_EXPRESS)) {
                    b = Ascii.DC4;
                    break;
                }
                break;
            case 635596514:
                if (codecId.equals(CODEC_ID_PCM_FLOAT)) {
                    b = Ascii.SUB;
                    break;
                }
                break;
            case 725948237:
                if (codecId.equals(CODEC_ID_PCM_INT_BIG)) {
                    b = Ascii.EM;
                    break;
                }
                break;
            case 725957860:
                if (codecId.equals(CODEC_ID_PCM_INT_LIT)) {
                    b = Ascii.CAN;
                    break;
                }
                break;
            case 738597099:
                if (codecId.equals(CODEC_ID_ASS)) {
                    b = Ascii.FS;
                    break;
                }
                break;
            case 738614379:
                if (codecId.equals(CODEC_ID_SSA)) {
                    b = Ascii.GS;
                    break;
                }
                break;
            case 855502857:
                if (codecId.equals(CODEC_ID_H265)) {
                    b = 8;
                    break;
                }
                break;
            case 1045209816:
                if (codecId.equals(CODEC_ID_VTT)) {
                    b = Ascii.RS;
                    break;
                }
                break;
            case 1422270023:
                if (codecId.equals(CODEC_ID_SUBRIP)) {
                    b = Ascii.ESC;
                    break;
                }
                break;
            case 1809237540:
                if (codecId.equals(CODEC_ID_MPEG2)) {
                    b = 3;
                    break;
                }
                break;
            case 1950749482:
                if (codecId.equals(CODEC_ID_E_AC3)) {
                    b = 17;
                    break;
                }
                break;
            case 1950789798:
                if (codecId.equals(CODEC_ID_FLAC)) {
                    b = Ascii.SYN;
                    break;
                }
                break;
            case 1951062397:
                if (codecId.equals(CODEC_ID_OPUS)) {
                    b = Ascii.VT;
                    break;
                }
                break;
        }
        switch (b) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
                return true;
            default:
                return false;
        }
    }

    private static int[] ensureArrayCapacity(int[] array, int length) {
        if (array == null) {
            return new int[length];
        }
        if (array.length >= length) {
            return array;
        }
        return new int[Math.max(array.length * 2, length)];
    }

    @EnsuresNonNull({"extractorOutput"})
    private void assertInitialized() {
        Preconditions.checkNotNull(this.extractorOutput);
    }

    private void maybeEndTracks() {
        if (!this.pendingEndTracks) {
            return;
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            if (this.tracks.valueAt(i).waitingForDtsAnalysis) {
                return;
            }
        }
        ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).endTracks();
        this.pendingEndTracks = false;
    }

    private final class InnerEbmlProcessor implements EbmlProcessor {
        private InnerEbmlProcessor() {
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public int getElementType(int id) {
            return MatroskaExtractor.this.getElementType(id);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public boolean isLevel1Element(int id) {
            return MatroskaExtractor.this.isLevel1Element(id);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void startMasterElement(int id, long contentPosition, long contentSize) throws ParserException {
            MatroskaExtractor.this.startMasterElement(id, contentPosition, contentSize);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void endMasterElement(int id) throws ParserException {
            MatroskaExtractor.this.endMasterElement(id);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void integerElement(int id, long value) throws ParserException {
            MatroskaExtractor.this.integerElement(id, value);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void floatElement(int id, double value) throws ParserException {
            MatroskaExtractor.this.floatElement(id, value);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void stringElement(int id, String value) throws ParserException {
            MatroskaExtractor.this.stringElement(id, value);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void binaryElement(int id, int contentsSize, ExtractorInput input) throws IOException {
            MatroskaExtractor.this.binaryElement(id, contentsSize, input);
        }
    }

    protected static final class Track {
        private static final int DEFAULT_MAX_CLL = 1000;
        private static final int DEFAULT_MAX_FALL = 200;
        private static final int DISPLAY_UNIT_PIXELS = 0;
        private static final int MAX_CHROMATICITY = 50000;
        private int blockAddIdType;
        public String codecId;
        public byte[] codecPrivate;
        public TrackOutput.CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public byte[] dolbyVisionConfigBytes;
        public DrmInitData drmInitData;
        public boolean flagForced;
        public Format format;
        public boolean hasContentEncryption;
        public boolean isWebm;
        public int maxBlockAdditionId;
        public int nalUnitLengthFieldLength;
        public String name;
        public int number;
        public TrackOutput output;
        public byte[] sampleStrippedBytes;
        public TrueHdSampleRechunker trueHdSampleRechunker;
        public int type;
        public int width = -1;
        public int height = -1;
        public int bitsPerChannel = -1;
        public int displayWidth = -1;
        public int displayHeight = -1;
        public int displayUnit = 0;
        public int projectionType = -1;
        public float projectionPoseYaw = 0.0f;
        public float projectionPosePitch = 0.0f;
        public float projectionPoseRoll = 0.0f;
        public byte[] projectionData = null;
        public int stereoMode = -1;
        public boolean hasColorInfo = false;
        public int colorSpace = -1;
        public int colorTransfer = -1;
        public int colorRange = -1;
        public int maxContentLuminance = 1000;
        public int maxFrameAverageLuminance = 200;
        public float primaryRChromaticityX = -1.0f;
        public float primaryRChromaticityY = -1.0f;
        public float primaryGChromaticityX = -1.0f;
        public float primaryGChromaticityY = -1.0f;
        public float primaryBChromaticityX = -1.0f;
        public float primaryBChromaticityY = -1.0f;
        public float whitePointChromaticityX = -1.0f;
        public float whitePointChromaticityY = -1.0f;
        public float maxMasteringLuminance = -1.0f;
        public float minMasteringLuminance = -1.0f;
        public int channelCount = 1;
        public int audioBitDepth = -1;
        public int sampleRate = 8000;
        public long codecDelayNs = 0;
        public long seekPreRollNs = 0;
        public boolean waitingForDtsAnalysis = false;
        public boolean flagDefault = true;
        private String language = "eng";

        protected Track() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:107:0x019f  */
        @RequiresNonNull({"codecId"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void initializeFormat(int i) throws ParserException {
            byte b;
            String str;
            DolbyVisionConfig dolbyVisionConfig;
            int i2 = -1;
            int pcmEncoding = -1;
            List<byte[]> listOf = null;
            String str2 = null;
            String str3 = this.codecId;
            switch (str3.hashCode()) {
                case -2095576542:
                    b = !str3.equals(MatroskaExtractor.CODEC_ID_MPEG4_AP) ? (byte) -1 : (byte) 6;
                    break;
                case -2095575984:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_MPEG4_SP)) {
                        b = 4;
                        break;
                    }
                    break;
                case -1985379776:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_ACM)) {
                        b = Ascii.ETB;
                        break;
                    }
                    break;
                case -1784763192:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_TRUEHD)) {
                        b = Ascii.DC2;
                        break;
                    }
                    break;
                case -1730367663:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_VORBIS)) {
                        b = Ascii.VT;
                        break;
                    }
                    break;
                case -1482641358:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_MP2)) {
                        b = Ascii.SO;
                        break;
                    }
                    break;
                case -1482641357:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_MP3)) {
                        b = Ascii.SI;
                        break;
                    }
                    break;
                case -1373388978:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_FOURCC)) {
                        b = 9;
                        break;
                    }
                    break;
                case -933872740:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_DVBSUB)) {
                        b = 33;
                        break;
                    }
                    break;
                case -538363189:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_MPEG4_ASP)) {
                        b = 5;
                        break;
                    }
                    break;
                case -538363109:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_H264)) {
                        b = 7;
                        break;
                    }
                    break;
                case -425012669:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_VOBSUB)) {
                        b = Ascii.US;
                        break;
                    }
                    break;
                case -356037306:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_DTS_LOSSLESS)) {
                        b = Ascii.NAK;
                        break;
                    }
                    break;
                case 62923557:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_AAC)) {
                        b = Ascii.CR;
                        break;
                    }
                    break;
                case 62923603:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_AC3)) {
                        b = 16;
                        break;
                    }
                    break;
                case 62927045:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_DTS)) {
                        b = 19;
                        break;
                    }
                    break;
                case 82318131:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_AV1)) {
                        b = 2;
                        break;
                    }
                    break;
                case 82338133:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_VP8)) {
                        b = 0;
                        break;
                    }
                    break;
                case 82338134:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_VP9)) {
                        b = 1;
                        break;
                    }
                    break;
                case 99146302:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_PGS)) {
                        b = 32;
                        break;
                    }
                    break;
                case 444813526:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_THEORA)) {
                        b = 10;
                        break;
                    }
                    break;
                case 542569478:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_DTS_EXPRESS)) {
                        b = Ascii.DC4;
                        break;
                    }
                    break;
                case 635596514:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_PCM_FLOAT)) {
                        b = Ascii.SUB;
                        break;
                    }
                    break;
                case 725948237:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_PCM_INT_BIG)) {
                        b = Ascii.EM;
                        break;
                    }
                    break;
                case 725957860:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_PCM_INT_LIT)) {
                        b = 24;
                        break;
                    }
                    break;
                case 738597099:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_ASS)) {
                        b = Ascii.FS;
                        break;
                    }
                    break;
                case 738614379:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_SSA)) {
                        b = Ascii.GS;
                        break;
                    }
                    break;
                case 855502857:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_H265)) {
                        b = 8;
                        break;
                    }
                    break;
                case 1045209816:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_VTT)) {
                        b = Ascii.RS;
                        break;
                    }
                    break;
                case 1422270023:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_SUBRIP)) {
                        b = Ascii.ESC;
                        break;
                    }
                    break;
                case 1809237540:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_MPEG2)) {
                        b = 3;
                        break;
                    }
                    break;
                case 1950749482:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_E_AC3)) {
                        b = 17;
                        break;
                    }
                    break;
                case 1950789798:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_FLAC)) {
                        b = Ascii.SYN;
                        break;
                    }
                    break;
                case 1951062397:
                    if (str3.equals(MatroskaExtractor.CODEC_ID_OPUS)) {
                        b = Ascii.FF;
                        break;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    str = MimeTypes.VIDEO_VP8;
                    break;
                case 1:
                    str = MimeTypes.VIDEO_VP9;
                    listOf = this.codecPrivate == null ? null : ImmutableList.of(this.codecPrivate);
                    break;
                case 2:
                    str = MimeTypes.VIDEO_AV1;
                    listOf = this.codecPrivate == null ? null : ImmutableList.of(this.codecPrivate);
                    break;
                case 3:
                    str = MimeTypes.VIDEO_MPEG2;
                    break;
                case 4:
                case 5:
                case 6:
                    str = MimeTypes.VIDEO_MP4V;
                    listOf = this.codecPrivate == null ? null : Collections.singletonList(this.codecPrivate);
                    break;
                case 7:
                    str = MimeTypes.VIDEO_H264;
                    AvcConfig avcConfig = AvcConfig.parse(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    listOf = avcConfig.initializationData;
                    this.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                    str2 = avcConfig.codecs;
                    break;
                case 8:
                    str = MimeTypes.VIDEO_H265;
                    HevcConfig hevcConfig = HevcConfig.parse(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    listOf = hevcConfig.initializationData;
                    this.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                    str2 = hevcConfig.codecs;
                    break;
                case 9:
                    Pair<String, List<byte[]>> fourCcPrivate = parseFourCcPrivate(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    String str4 = (String) fourCcPrivate.first;
                    listOf = (List) fourCcPrivate.second;
                    str = str4;
                    break;
                case 10:
                    str = MimeTypes.VIDEO_UNKNOWN;
                    break;
                case 11:
                    str = MimeTypes.AUDIO_VORBIS;
                    i2 = 8192;
                    listOf = parseVorbisCodecPrivate(getCodecPrivate(this.codecId));
                    break;
                case 12:
                    str = MimeTypes.AUDIO_OPUS;
                    i2 = MatroskaExtractor.OPUS_MAX_INPUT_SIZE;
                    listOf = new ArrayList(3);
                    listOf.add(getCodecPrivate(this.codecId));
                    listOf.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.codecDelayNs).array());
                    listOf.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.seekPreRollNs).array());
                    break;
                case 13:
                    str = MimeTypes.AUDIO_AAC;
                    listOf = Collections.singletonList(getCodecPrivate(this.codecId));
                    AacUtil.Config audioSpecificConfig = AacUtil.parseAudioSpecificConfig(this.codecPrivate);
                    this.sampleRate = audioSpecificConfig.sampleRateHz;
                    this.channelCount = audioSpecificConfig.channelCount;
                    str2 = audioSpecificConfig.codecs;
                    break;
                case 14:
                    str = MimeTypes.AUDIO_MPEG_L2;
                    i2 = 4096;
                    break;
                case 15:
                    str = MimeTypes.AUDIO_MPEG;
                    i2 = 4096;
                    break;
                case 16:
                    str = MimeTypes.AUDIO_AC3;
                    break;
                case 17:
                    str = MimeTypes.AUDIO_E_AC3;
                    break;
                case 18:
                    str = MimeTypes.AUDIO_TRUEHD;
                    this.trueHdSampleRechunker = new TrueHdSampleRechunker();
                    break;
                case 19:
                case 20:
                    str = MimeTypes.AUDIO_DTS;
                    this.waitingForDtsAnalysis = true;
                    break;
                case 21:
                    str = MimeTypes.AUDIO_DTS_HD;
                    break;
                case 22:
                    str = MimeTypes.AUDIO_FLAC;
                    listOf = Collections.singletonList(getCodecPrivate(this.codecId));
                    break;
                case 23:
                    str = MimeTypes.AUDIO_RAW;
                    if (parseMsAcmCodecPrivate(new ParsableByteArray(getCodecPrivate(this.codecId)))) {
                        pcmEncoding = Util.getPcmEncoding(this.audioBitDepth);
                        if (pcmEncoding == 0) {
                            pcmEncoding = -1;
                            str = MimeTypes.AUDIO_UNKNOWN;
                            Log.w(MatroskaExtractor.TAG, "Unsupported PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        }
                    } else {
                        str = MimeTypes.AUDIO_UNKNOWN;
                        Log.w(MatroskaExtractor.TAG, "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    break;
                case 24:
                    str = MimeTypes.AUDIO_RAW;
                    pcmEncoding = Util.getPcmEncoding(this.audioBitDepth);
                    if (pcmEncoding == 0) {
                        pcmEncoding = -1;
                        str = MimeTypes.AUDIO_UNKNOWN;
                        Log.w(MatroskaExtractor.TAG, "Unsupported little endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    break;
                case 25:
                    str = MimeTypes.AUDIO_RAW;
                    if (this.audioBitDepth == 8) {
                        pcmEncoding = 3;
                    } else if (this.audioBitDepth == 16) {
                        pcmEncoding = 268435456;
                    } else if (this.audioBitDepth == 24) {
                        pcmEncoding = C.ENCODING_PCM_24BIT_BIG_ENDIAN;
                    } else if (this.audioBitDepth == 32) {
                        pcmEncoding = C.ENCODING_PCM_32BIT_BIG_ENDIAN;
                    } else {
                        pcmEncoding = -1;
                        str = MimeTypes.AUDIO_UNKNOWN;
                        Log.w(MatroskaExtractor.TAG, "Unsupported big endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    break;
                case 26:
                    str = MimeTypes.AUDIO_RAW;
                    if (this.audioBitDepth == 32) {
                        pcmEncoding = 4;
                    } else {
                        pcmEncoding = -1;
                        str = MimeTypes.AUDIO_UNKNOWN;
                        Log.w(MatroskaExtractor.TAG, "Unsupported floating point PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    break;
                case 27:
                    str = MimeTypes.APPLICATION_SUBRIP;
                    break;
                case 28:
                case 29:
                    str = MimeTypes.TEXT_SSA;
                    listOf = ImmutableList.of(MatroskaExtractor.SSA_DIALOGUE_FORMAT, getCodecPrivate(this.codecId));
                    break;
                case 30:
                    str = MimeTypes.TEXT_VTT;
                    break;
                case 31:
                    str = MimeTypes.APPLICATION_VOBSUB;
                    listOf = ImmutableList.of(getCodecPrivate(this.codecId));
                    break;
                case 32:
                    str = MimeTypes.APPLICATION_PGS;
                    break;
                case 33:
                    str = MimeTypes.APPLICATION_DVBSUBS;
                    byte[] bArr = new byte[4];
                    System.arraycopy(getCodecPrivate(this.codecId), 0, bArr, 0, 4);
                    listOf = ImmutableList.of(bArr);
                    break;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
            if (this.dolbyVisionConfigBytes != null && (dolbyVisionConfig = DolbyVisionConfig.parse(new ParsableByteArray(this.dolbyVisionConfigBytes))) != null) {
                str2 = dolbyVisionConfig.codecs;
                str = MimeTypes.VIDEO_DOLBY_VISION;
            }
            int i3 = 0 | (this.flagDefault ? 1 : 0) | (this.flagForced ? 2 : 0);
            Format.Builder builder = new Format.Builder();
            if (MimeTypes.isAudio(str)) {
                builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(pcmEncoding);
            } else if (MimeTypes.isVideo(str)) {
                if (this.displayUnit == 0) {
                    this.displayWidth = this.displayWidth == -1 ? this.width : this.displayWidth;
                    this.displayHeight = this.displayHeight == -1 ? this.height : this.displayHeight;
                }
                float f = -1.0f;
                if (this.displayWidth != -1 && this.displayHeight != -1) {
                    f = (this.height * this.displayWidth) / (this.width * this.displayHeight);
                }
                ColorInfo colorInfoBuild = null;
                if (this.hasColorInfo) {
                    colorInfoBuild = new ColorInfo.Builder().setColorSpace(this.colorSpace).setColorRange(this.colorRange).setColorTransfer(this.colorTransfer).setHdrStaticInfo(getHdrStaticInfo()).setLumaBitdepth(this.bitsPerChannel).setChromaBitdepth(this.bitsPerChannel).build();
                }
                int iIntValue = -1;
                if (this.name != null && MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                    iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                }
                if (this.projectionType == 0 && Float.compare(this.projectionPoseYaw, 0.0f) == 0 && Float.compare(this.projectionPosePitch, 0.0f) == 0) {
                    if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                        iIntValue = 0;
                    } else if (Float.compare(this.projectionPoseRoll, 90.0f) == 0) {
                        iIntValue = 90;
                    } else if (Float.compare(this.projectionPoseRoll, -180.0f) == 0 || Float.compare(this.projectionPoseRoll, 180.0f) == 0) {
                        iIntValue = 180;
                    } else if (Float.compare(this.projectionPoseRoll, -90.0f) == 0) {
                        iIntValue = 270;
                    }
                }
                builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(iIntValue).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
            } else if (!MimeTypes.APPLICATION_SUBRIP.equals(str) && !MimeTypes.TEXT_SSA.equals(str) && !MimeTypes.TEXT_VTT.equals(str) && !MimeTypes.APPLICATION_VOBSUB.equals(str) && !MimeTypes.APPLICATION_PGS.equals(str) && !MimeTypes.APPLICATION_DVBSUBS.equals(str)) {
                throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
            }
            if (this.name != null && !MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                builder.setLabel(this.name);
            }
            this.format = builder.setId(i).setContainerMimeType(this.isWebm ? MimeTypes.VIDEO_WEBM : MimeTypes.VIDEO_MATROSKA).setSampleMimeType(str).setMaxInputSize(i2).setLanguage(this.language).setSelectionFlags(i3).setInitializationData(listOf).setCodecs(str2).setDrmInitData(this.drmInitData).build();
        }

        @RequiresNonNull({"output"})
        public void outputPendingSampleMetadata() {
            if (this.trueHdSampleRechunker != null) {
                this.trueHdSampleRechunker.outputPendingSampleMetadata(this.output, this.cryptoData);
            }
        }

        public void reset() {
            if (this.trueHdSampleRechunker != null) {
                this.trueHdSampleRechunker.reset();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean samplesHaveSupplementalData(boolean isBlockGroup) {
            if (MatroskaExtractor.CODEC_ID_OPUS.equals(this.codecId)) {
                return isBlockGroup;
            }
            return this.maxBlockAdditionId > 0;
        }

        private byte[] getHdrStaticInfo() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] hdrStaticInfoData = new byte[25];
            ByteBuffer hdrStaticInfo = ByteBuffer.wrap(hdrStaticInfoData).order(ByteOrder.LITTLE_ENDIAN);
            hdrStaticInfo.put((byte) 0);
            hdrStaticInfo.putShort((short) ((this.primaryRChromaticityX * 50000.0f) + 0.5f));
            hdrStaticInfo.putShort((short) ((this.primaryRChromaticityY * 50000.0f) + 0.5f));
            hdrStaticInfo.putShort((short) ((this.primaryGChromaticityX * 50000.0f) + 0.5f));
            hdrStaticInfo.putShort((short) ((this.primaryGChromaticityY * 50000.0f) + 0.5f));
            hdrStaticInfo.putShort((short) ((this.primaryBChromaticityX * 50000.0f) + 0.5f));
            hdrStaticInfo.putShort((short) ((this.primaryBChromaticityY * 50000.0f) + 0.5f));
            hdrStaticInfo.putShort((short) ((this.whitePointChromaticityX * 50000.0f) + 0.5f));
            hdrStaticInfo.putShort((short) ((this.whitePointChromaticityY * 50000.0f) + 0.5f));
            hdrStaticInfo.putShort((short) (this.maxMasteringLuminance + 0.5f));
            hdrStaticInfo.putShort((short) (this.minMasteringLuminance + 0.5f));
            hdrStaticInfo.putShort((short) this.maxContentLuminance);
            hdrStaticInfo.putShort((short) this.maxFrameAverageLuminance);
            return hdrStaticInfoData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void maybeAddThumbnailMetadata(SparseArray<List<MatroskaSeekMap.CuePointData>> perTrackCues, long durationUs, long segmentContentPosition, long segmentContentSize) {
            List<MatroskaSeekMap.CuePointData> cuePoints;
            Metadata newMetadata;
            if (this.type == 2 && (cuePoints = perTrackCues.get(this.number)) != null && !cuePoints.isEmpty()) {
                long thumbnailTimestampUs = findBestThumbnailPresentationTimeUs(cuePoints, durationUs, segmentContentPosition, segmentContentSize);
                if (thumbnailTimestampUs != C.TIME_UNSET) {
                    Metadata existingMetadata = ((Format) Preconditions.checkNotNull(this.format)).metadata;
                    ThumbnailMetadata thumbnailMetadata = new ThumbnailMetadata(thumbnailTimestampUs);
                    if (existingMetadata == null) {
                        newMetadata = new Metadata(thumbnailMetadata);
                    } else {
                        newMetadata = existingMetadata.copyWithAppendedEntries(thumbnailMetadata);
                    }
                    this.format = this.format.buildUpon().setMetadata(newMetadata).build();
                }
            }
        }

        private static long findBestThumbnailPresentationTimeUs(List<MatroskaSeekMap.CuePointData> cuePoints, long durationUs, long segmentContentPosition, long segmentContentSize) {
            long bytesBetweenCues;
            long durationBetweenCuesUs;
            if (cuePoints.isEmpty()) {
                return C.TIME_UNSET;
            }
            double maxBitrate = 0.0d;
            int bestCueIndex = -1;
            int scanLimit = Math.min(cuePoints.size(), 20);
            for (int i = 0; i < scanLimit; i++) {
                MatroskaSeekMap.CuePointData cue = cuePoints.get(i);
                if (cue.timeUs > MatroskaExtractor.MAX_DURATION_US_TO_SCAN_FOR_THUMBNAIL) {
                    break;
                }
                if (i < cuePoints.size() - 1) {
                    MatroskaSeekMap.CuePointData nextCue = cuePoints.get(i + 1);
                    bytesBetweenCues = (nextCue.clusterPosition + nextCue.relativePosition) - (cue.clusterPosition + cue.relativePosition);
                    durationBetweenCuesUs = nextCue.timeUs - cue.timeUs;
                } else {
                    bytesBetweenCues = (segmentContentPosition + segmentContentSize) - (cue.clusterPosition + cue.relativePosition);
                    durationBetweenCuesUs = durationUs - cue.timeUs;
                }
                if (durationBetweenCuesUs > 0) {
                    double bitrate = bytesBetweenCues / durationBetweenCuesUs;
                    if (bitrate > maxBitrate) {
                        bestCueIndex = i;
                        maxBitrate = bitrate;
                    }
                }
            }
            return bestCueIndex == -1 ? C.TIME_UNSET : cuePoints.get(bestCueIndex).timeUs;
        }

        private static Pair<String, List<byte[]>> parseFourCcPrivate(ParsableByteArray buffer) throws ParserException {
            try {
                buffer.skipBytes(16);
                long compression = buffer.readLittleEndianUnsignedInt();
                if (compression == 1482049860) {
                    return new Pair<>(MimeTypes.VIDEO_DIVX, null);
                }
                if (compression == 859189832) {
                    return new Pair<>(MimeTypes.VIDEO_H263, null);
                }
                if (compression == 826496599) {
                    int startOffset = buffer.getPosition() + 20;
                    byte[] bufferData = buffer.getData();
                    for (int offset = startOffset; offset < bufferData.length - 4; offset++) {
                        if (bufferData[offset] == 0 && bufferData[offset + 1] == 0 && bufferData[offset + 2] == 1 && bufferData[offset + 3] == 15) {
                            byte[] initializationData = Arrays.copyOfRange(bufferData, offset, bufferData.length);
                            return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(initializationData));
                        }
                    }
                    throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
                }
                Log.w(MatroskaExtractor.TAG, "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
            } catch (ArrayIndexOutOfBoundsException e) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static List<byte[]> parseVorbisCodecPrivate(byte[] codecPrivate) throws ParserException {
            try {
                if (codecPrivate[0] != 2) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int offset = 1;
                int vorbisInfoLength = 0;
                while ((codecPrivate[offset] & 255) == 255) {
                    vorbisInfoLength += 255;
                    offset++;
                }
                int offset2 = offset + 1;
                int vorbisInfoLength2 = vorbisInfoLength + (codecPrivate[offset] & 255);
                int vorbisSkipLength = 0;
                while ((codecPrivate[offset2] & 255) == 255) {
                    vorbisSkipLength += 255;
                    offset2++;
                }
                int offset3 = offset2 + 1;
                int vorbisSkipLength2 = vorbisSkipLength + (codecPrivate[offset2] & 255);
                if (codecPrivate[offset3] != 1) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] vorbisInfo = new byte[vorbisInfoLength2];
                System.arraycopy(codecPrivate, offset3, vorbisInfo, 0, vorbisInfoLength2);
                int offset4 = offset3 + vorbisInfoLength2;
                if (codecPrivate[offset4] != 3) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int offset5 = offset4 + vorbisSkipLength2;
                if (codecPrivate[offset5] != 5) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] vorbisBooks = new byte[codecPrivate.length - offset5];
                System.arraycopy(codecPrivate, offset5, vorbisBooks, 0, codecPrivate.length - offset5);
                List<byte[]> initializationData = new ArrayList<>(2);
                initializationData.add(vorbisInfo);
                initializationData.add(vorbisBooks);
                return initializationData;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        private static boolean parseMsAcmCodecPrivate(ParsableByteArray buffer) throws ParserException {
            try {
                int formatTag = buffer.readLittleEndianUnsignedShort();
                if (formatTag == 1) {
                    return true;
                }
                if (formatTag != 65534) {
                    return false;
                }
                buffer.setPosition(24);
                if (buffer.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits()) {
                    if (buffer.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @EnsuresNonNull({"output"})
        public void assertOutputInitialized() {
            Preconditions.checkNotNull(this.output);
        }

        @EnsuresNonNull({"codecPrivate"})
        private byte[] getCodecPrivate(String codecId) throws ParserException {
            if (this.codecPrivate == null) {
                throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + codecId, null);
            }
            return this.codecPrivate;
        }
    }

    private static final class MatroskaSeekMap implements TrackAwareSeekMap, ChunkIndexProvider {
        private final ChunkIndex chunkIndex;
        private final long durationUs;
        private final SparseArray<List<CuePointData>> perTrackCues;
        private final int primarySeekTrackNumber;

        public MatroskaSeekMap(SparseArray<List<CuePointData>> perTrackCues, long durationUs, int primarySeekTrackNumber, long segmentContentPosition, long segmentContentSize) {
            this.perTrackCues = perTrackCues;
            this.durationUs = durationUs;
            this.primarySeekTrackNumber = primarySeekTrackNumber;
            this.chunkIndex = buildChunkIndex(perTrackCues, durationUs, primarySeekTrackNumber, segmentContentPosition, segmentContentSize);
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return isSeekable(this.primarySeekTrackNumber);
        }

        @Override // androidx.media3.extractor.TrackAwareSeekMap
        public boolean isSeekable(int trackId) {
            List<CuePointData> cuePoints = this.perTrackCues.get(trackId);
            return (cuePoints == null || cuePoints.isEmpty()) ? false : true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long timeUs) {
            if (this.chunkIndex != null) {
                return this.chunkIndex.getSeekPoints(timeUs);
            }
            return new SeekMap.SeekPoints(SeekPoint.START);
        }

        @Override // androidx.media3.extractor.TrackAwareSeekMap
        public SeekMap.SeekPoints getSeekPoints(long timeUs, int trackId) {
            List<CuePointData> cuePoints = this.perTrackCues.get(trackId);
            if ((cuePoints == null || cuePoints.isEmpty()) && trackId != this.primarySeekTrackNumber) {
                cuePoints = this.perTrackCues.get(this.primarySeekTrackNumber);
            }
            if (cuePoints == null || cuePoints.isEmpty()) {
                return new SeekMap.SeekPoints(SeekPoint.START);
            }
            int bestIndex = Util.binarySearchFloor((List<? extends Comparable<? super CuePointData>>) cuePoints, new CuePointData(timeUs, -1L, -1L), true, false);
            if (bestIndex != -1) {
                CuePointData bestCue = cuePoints.get(bestIndex);
                SeekPoint firstPoint = new SeekPoint(bestCue.timeUs, bestCue.clusterPosition);
                if (bestCue.timeUs < timeUs && bestIndex + 1 < cuePoints.size()) {
                    CuePointData nextCue = cuePoints.get(bestIndex + 1);
                    SeekPoint secondPoint = new SeekPoint(nextCue.timeUs, nextCue.clusterPosition);
                    return new SeekMap.SeekPoints(firstPoint, secondPoint);
                }
                return new SeekMap.SeekPoints(firstPoint);
            }
            CuePointData firstCue = cuePoints.get(0);
            return new SeekMap.SeekPoints(new SeekPoint(firstCue.timeUs, firstCue.clusterPosition));
        }

        @Override // androidx.media3.extractor.ChunkIndexProvider
        public ChunkIndex getChunkIndex() {
            return this.chunkIndex;
        }

        private static ChunkIndex buildChunkIndex(SparseArray<List<CuePointData>> perTrackCues, long durationUs, int primarySeekTrackNumber, long segmentContentPosition, long segmentContentSize) {
            List<CuePointData> primaryTrackCuePoints = perTrackCues.get(primarySeekTrackNumber);
            if (primaryTrackCuePoints == null || primaryTrackCuePoints.isEmpty()) {
                return null;
            }
            int cuePointsSize = primaryTrackCuePoints.size();
            int[] sizes = new int[cuePointsSize];
            long[] offsets = new long[cuePointsSize];
            long[] durationsUs = new long[cuePointsSize];
            long[] timesUs = new long[cuePointsSize];
            for (int i = 0; i < cuePointsSize; i++) {
                CuePointData cue = primaryTrackCuePoints.get(i);
                timesUs[i] = cue.timeUs;
                offsets[i] = cue.clusterPosition;
            }
            for (int i2 = 0; i2 < cuePointsSize - 1; i2++) {
                sizes[i2] = (int) (offsets[i2 + 1] - offsets[i2]);
                durationsUs[i2] = timesUs[i2 + 1] - timesUs[i2];
            }
            int lastValidIndex = cuePointsSize - 1;
            while (lastValidIndex > 0 && timesUs[lastValidIndex] >= durationUs) {
                lastValidIndex--;
            }
            sizes[lastValidIndex] = (int) ((segmentContentPosition + segmentContentSize) - offsets[lastValidIndex]);
            durationsUs[lastValidIndex] = durationUs - timesUs[lastValidIndex];
            if (lastValidIndex < cuePointsSize - 1) {
                Log.w(MatroskaExtractor.TAG, "Discarding trailing cue points with timestamps greater than total duration.");
                sizes = Arrays.copyOf(sizes, lastValidIndex + 1);
                offsets = Arrays.copyOf(offsets, lastValidIndex + 1);
                durationsUs = Arrays.copyOf(durationsUs, lastValidIndex + 1);
                timesUs = Arrays.copyOf(timesUs, lastValidIndex + 1);
            }
            return new ChunkIndex(sizes, offsets, durationsUs, timesUs);
        }

        private static final class CuePointData implements Comparable<CuePointData> {
            private final long clusterPosition;
            private final long relativePosition;
            private final long timeUs;

            private CuePointData(long timeUs, long clusterPosition, long relativePosition) {
                this.timeUs = timeUs;
                this.clusterPosition = clusterPosition;
                this.relativePosition = relativePosition;
            }

            @Override // java.lang.Comparable
            public int compareTo(CuePointData other) {
                return Long.compare(this.timeUs, other.timeUs);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof CuePointData)) {
                    return false;
                }
                CuePointData other = (CuePointData) obj;
                return this.timeUs == other.timeUs && this.clusterPosition == other.clusterPosition && this.relativePosition == other.relativePosition;
            }

            public int hashCode() {
                return Objects.hash(Long.valueOf(this.timeUs), Long.valueOf(this.clusterPosition), Long.valueOf(this.relativePosition));
            }
        }
    }
}
