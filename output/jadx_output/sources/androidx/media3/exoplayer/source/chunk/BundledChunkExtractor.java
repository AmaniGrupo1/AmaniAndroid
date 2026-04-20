package androidx.media3.exoplayer.source.chunk;

import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.ChunkIndexProvider;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.jpeg.JpegExtractor;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.png.PngExtractor;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.text.SubtitleExtractor;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class BundledChunkExtractor implements ExtractorOutput, ChunkExtractor {

    @Deprecated
    public static final Factory FACTORY = new Factory();
    private static final PositionHolder POSITION_HOLDER = new PositionHolder();
    private final SparseArray<BindingTrackOutput> bindingTrackOutputs;
    private long endTimeUs;
    private final Extractor extractor;
    private boolean extractorInitialized;
    private final Format primaryTrackManifestFormat;
    private final ManifestFormatMerger primaryTrackManifestFormatInfoMerger;
    private final int primaryTrackType;
    private Format[] sampleFormats;
    private SeekMap seekMap;
    private ChunkExtractor.TrackOutputProvider trackOutputProvider;

    public interface ManifestFormatMerger {
        public static final ManifestFormatMerger DEFAULT = new ManifestFormatMerger() { // from class: androidx.media3.exoplayer.source.chunk.BundledChunkExtractor$ManifestFormatMerger$$ExternalSyntheticLambda0
            @Override // androidx.media3.exoplayer.source.chunk.BundledChunkExtractor.ManifestFormatMerger
            public final Format merge(Format format, Format format2) {
                return BundledChunkExtractor.ManifestFormatMerger.lambda$static$0(format, format2);
            }
        };

        Format merge(Format format, Format format2);

        static /* synthetic */ Format lambda$static$0(Format sampleFormat, Format manifestFormat) {
            if (manifestFormat != null) {
                return sampleFormat.withManifestFormatInfo(manifestFormat);
            }
            return sampleFormat;
        }
    }

    public static final class Factory implements ChunkExtractor.Factory {
        private boolean parseSubtitlesDuringExtraction;
        private SubtitleParser.Factory subtitleParserFactory = new DefaultSubtitleParserFactory();
        private int codecsToParseWithinGopSampleDependencies = 3;

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public Factory setSubtitleParserFactory(SubtitleParser.Factory subtitleParserFactory) {
            this.subtitleParserFactory = (SubtitleParser.Factory) Preconditions.checkNotNull(subtitleParserFactory);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public Factory experimentalParseSubtitlesDuringExtraction(boolean parseSubtitlesDuringExtraction) {
            this.parseSubtitlesDuringExtraction = parseSubtitlesDuringExtraction;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int codecsToParseWithinGopSampleDependencies) {
            this.codecsToParseWithinGopSampleDependencies = codecsToParseWithinGopSampleDependencies;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public Format getOutputTextFormat(Format sourceFormat) {
            if (this.parseSubtitlesDuringExtraction && this.subtitleParserFactory.supportsFormat(sourceFormat)) {
                return sourceFormat.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(sourceFormat)).setCodecs(sourceFormat.sampleMimeType + (sourceFormat.codecs != null ? " " + sourceFormat.codecs : "")).setSubsampleOffsetUs(Long.MAX_VALUE).build();
            }
            return sourceFormat;
        }

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public ChunkExtractor createProgressiveMediaExtractor(int primaryTrackType, Format representationFormat, boolean enableEventMessageTrack, List<Format> closedCaptionFormats, TrackOutput playerEmsgTrackOutput, PlayerId playerId) {
            Extractor extractor;
            String containerMimeType = representationFormat.containerMimeType;
            if (MimeTypes.isText(containerMimeType)) {
                if (!this.parseSubtitlesDuringExtraction) {
                    return null;
                }
                extractor = new SubtitleExtractor(this.subtitleParserFactory.create(representationFormat), representationFormat);
            } else if (MimeTypes.isMatroska(containerMimeType)) {
                int flags = 1;
                if (!this.parseSubtitlesDuringExtraction) {
                    flags = 1 | 2;
                }
                extractor = new MatroskaExtractor(this.subtitleParserFactory, flags);
            } else if (Objects.equals(containerMimeType, "image/jpeg")) {
                extractor = new JpegExtractor(1);
            } else if (Objects.equals(containerMimeType, MimeTypes.IMAGE_PNG)) {
                extractor = new PngExtractor();
            } else {
                int flags2 = 0;
                if (enableEventMessageTrack) {
                    flags2 = 0 | 4;
                }
                if (!this.parseSubtitlesDuringExtraction) {
                    flags2 |= 32;
                }
                extractor = new FragmentedMp4Extractor(this.subtitleParserFactory, flags2 | FragmentedMp4Extractor.codecsToParseWithinGopSampleDependenciesAsFlags(this.codecsToParseWithinGopSampleDependencies), null, null, closedCaptionFormats, playerEmsgTrackOutput);
            }
            return new BundledChunkExtractor(extractor, primaryTrackType, representationFormat);
        }
    }

    public BundledChunkExtractor(Extractor extractor, int primaryTrackType, Format primaryTrackManifestFormat) {
        this(extractor, primaryTrackType, primaryTrackManifestFormat, ManifestFormatMerger.DEFAULT);
    }

    public BundledChunkExtractor(Extractor extractor, int primaryTrackType, Format primaryTrackManifestFormat, ManifestFormatMerger manifestFormatMerger) {
        this.extractor = extractor;
        this.primaryTrackType = primaryTrackType;
        this.primaryTrackManifestFormat = primaryTrackManifestFormat;
        this.bindingTrackOutputs = new SparseArray<>();
        this.primaryTrackManifestFormatInfoMerger = manifestFormatMerger;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public ChunkIndex getChunkIndex() {
        boolean z = this.seekMap instanceof ChunkIndex;
        SeekMap seekMap = this.seekMap;
        if (z) {
            return (ChunkIndex) seekMap;
        }
        if (seekMap instanceof ChunkIndexProvider) {
            return ((ChunkIndexProvider) this.seekMap).getChunkIndex();
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public Format[] getSampleFormats() {
        return this.sampleFormats;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public void init(ChunkExtractor.TrackOutputProvider trackOutputProvider, long startTimeUs, long endTimeUs) {
        this.trackOutputProvider = trackOutputProvider;
        this.endTimeUs = endTimeUs;
        boolean z = this.extractorInitialized;
        Extractor extractor = this.extractor;
        if (!z) {
            extractor.init(this);
            if (startTimeUs != C.TIME_UNSET) {
                this.extractor.seek(0L, startTimeUs);
            }
            this.extractorInitialized = true;
            return;
        }
        extractor.seek(0L, startTimeUs == C.TIME_UNSET ? 0L : startTimeUs);
        for (int i = 0; i < this.bindingTrackOutputs.size(); i++) {
            this.bindingTrackOutputs.valueAt(i).bind(trackOutputProvider, endTimeUs);
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public void release() {
        this.extractor.release();
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public boolean read(ExtractorInput input) throws IOException {
        int result = this.extractor.read(input, POSITION_HOLDER);
        Preconditions.checkState(result != 1);
        return result == 0;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public TrackOutput track(int id, int type) {
        BindingTrackOutput bindingTrackOutput = this.bindingTrackOutputs.get(id);
        if (bindingTrackOutput == null) {
            Preconditions.checkState(this.sampleFormats == null);
            BindingTrackOutput bindingTrackOutput2 = new BindingTrackOutput(id, type, type == this.primaryTrackType ? this.primaryTrackManifestFormat : null, this.primaryTrackManifestFormatInfoMerger);
            bindingTrackOutput2.bind(this.trackOutputProvider, this.endTimeUs);
            this.bindingTrackOutputs.put(id, bindingTrackOutput2);
            return bindingTrackOutput2;
        }
        return bindingTrackOutput;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void endTracks() {
        Format[] sampleFormats = new Format[this.bindingTrackOutputs.size()];
        for (int i = 0; i < this.bindingTrackOutputs.size(); i++) {
            sampleFormats[i] = (Format) Preconditions.checkNotNull(this.bindingTrackOutputs.valueAt(i).sampleFormat);
        }
        this.sampleFormats = sampleFormats;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    private static final class BindingTrackOutput implements TrackOutput {
        private long endTimeUs;
        private final DiscardingTrackOutput fakeTrackOutput;
        private final int id;
        private final Format manifestFormat;
        private final ManifestFormatMerger manifestFormatMerger;
        public Format sampleFormat;
        private TrackOutput trackOutput;
        private final int type;

        private BindingTrackOutput(int id, int type, Format manifestFormat, ManifestFormatMerger manifestFormatMerger) {
            this.id = id;
            this.type = type;
            this.manifestFormat = manifestFormat;
            this.fakeTrackOutput = new DiscardingTrackOutput();
            this.manifestFormatMerger = manifestFormatMerger;
        }

        public void bind(ChunkExtractor.TrackOutputProvider trackOutputProvider, long endTimeUs) {
            if (trackOutputProvider == null) {
                this.trackOutput = this.fakeTrackOutput;
                return;
            }
            this.endTimeUs = endTimeUs;
            this.trackOutput = trackOutputProvider.track(this.id, this.type);
            if (this.sampleFormat != null) {
                this.trackOutput.format(this.sampleFormat);
            }
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void format(Format format) {
            this.sampleFormat = this.manifestFormatMerger.merge(format, this.manifestFormat);
            ((TrackOutput) Util.castNonNull(this.trackOutput)).format(this.sampleFormat);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public int sampleData(DataReader input, int length, boolean allowEndOfInput, int sampleDataPart) throws IOException {
            return ((TrackOutput) Util.castNonNull(this.trackOutput)).sampleData(input, length, allowEndOfInput);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void sampleData(ParsableByteArray data, int length, int sampleDataPart) {
            ((TrackOutput) Util.castNonNull(this.trackOutput)).sampleData(data, length);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void sampleMetadata(long timeUs, int flags, int size, int offset, TrackOutput.CryptoData cryptoData) {
            if (this.endTimeUs != C.TIME_UNSET && timeUs >= this.endTimeUs) {
                this.trackOutput = this.fakeTrackOutput;
            }
            ((TrackOutput) Util.castNonNull(this.trackOutput)).sampleMetadata(timeUs, flags, size, offset, cryptoData);
        }
    }
}
