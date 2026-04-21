package androidx.media3.extractor.mp4;

import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.SniffFailure;
import androidx.media3.extractor.TrackAwareSeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import androidx.media3.extractor.metadata.ThumbnailMetadata;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class Mp4Extractor implements Extractor {

    @Deprecated
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda4
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Mp4Extractor.lambda$static$1();
        }
    };
    private static final int FILE_TYPE_HEIC = 2;
    private static final int FILE_TYPE_MP4 = 0;
    private static final int FILE_TYPE_QUICKTIME = 1;
    public static final int FLAG_EMIT_RAW_SUBTITLE_DATA = 16;
    public static final int FLAG_MARK_FIRST_VIDEO_TRACK_WITH_MAIN_ROLE = 8;
    public static final int FLAG_OMIT_TRACK_SAMPLE_TABLE = 256;
    public static final int FLAG_READ_AUXILIARY_TRACKS = 64;

    @Deprecated
    public static final int FLAG_READ_MOTION_PHOTO_METADATA = 2;
    public static final int FLAG_READ_SEF_DATA = 4;
    public static final int FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES = 32;
    public static final int FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES_H265 = 128;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    private static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    private static final long MAX_DURATION_US_TO_SCAN_FOR_THUMBNAIL = 10000000;
    private static final int MAX_SYNC_SAMPLES_TO_SCAN_FOR_THUMBNAIL = 20;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private static final int STATE_READING_SEF = 3;
    private long[][] accumulatedSampleSizes;
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private long axteAtomOffset;
    private final ArrayDeque<Mp4Box.ContainerBox> containerAtoms;
    private ExtractorOutput extractorOutput;
    private int fileType;
    private final int flags;
    private boolean isSampleDependedOn;
    private ImmutableList<SniffFailure> lastSniffFailures;
    private boolean moovAtomProcessed;
    private MotionPhotoMetadata motionPhotoMetadata;
    private final ParsableByteArray nalPrefix;
    private final ParsableByteArray nalStartCode;
    private final boolean omitTrackSampleTable;
    private int parserState;
    private boolean readingAuxiliaryTracks;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private long sampleOffsetForAuxiliaryTracks;
    private int sampleTrackIndex;
    private final ParsableByteArray scratch;
    private boolean seekToAxteAtom;
    private boolean seenFtypAtom;
    private final SefReader sefReader;
    private final List<Metadata.Entry> slowMotionMetadataEntries;
    private final SubtitleParser.Factory subtitleParserFactory;
    private Mp4Track[] tracks;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    static /* synthetic */ Extractor[] lambda$newFactory$0(SubtitleParser.Factory subtitleParserFactory) {
        return new Extractor[]{new Mp4Extractor(subtitleParserFactory)};
    }

    public static ExtractorsFactory newFactory(final SubtitleParser.Factory subtitleParserFactory) {
        return new ExtractorsFactory() { // from class: androidx.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda0
            @Override // androidx.media3.extractor.ExtractorsFactory
            public final Extractor[] createExtractors() {
                return Mp4Extractor.lambda$newFactory$0(subtitleParserFactory);
            }
        };
    }

    static /* synthetic */ Extractor[] lambda$static$1() {
        return new Extractor[]{new Mp4Extractor(SubtitleParser.Factory.UNSUPPORTED, 16)};
    }

    @Deprecated
    public Mp4Extractor() {
        this(SubtitleParser.Factory.UNSUPPORTED, 16);
    }

    public Mp4Extractor(SubtitleParser.Factory subtitleParserFactory) {
        this(subtitleParserFactory, 0);
    }

    @Deprecated
    public Mp4Extractor(int flags) {
        this(SubtitleParser.Factory.UNSUPPORTED, flags);
    }

    public Mp4Extractor(SubtitleParser.Factory subtitleParserFactory, int flags) {
        this.subtitleParserFactory = subtitleParserFactory;
        this.flags = flags;
        this.omitTrackSampleTable = (flags & 256) != 0;
        this.lastSniffFailures = ImmutableList.of();
        this.parserState = (flags & 4) != 0 ? 3 : 0;
        this.sefReader = new SefReader();
        this.slowMotionMetadataEntries = new ArrayList();
        this.atomHeader = new ParsableByteArray(16);
        this.containerAtoms = new ArrayDeque<>();
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalPrefix = new ParsableByteArray(6);
        this.scratch = new ParsableByteArray();
        this.sampleTrackIndex = -1;
        this.extractorOutput = ExtractorOutput.PLACEHOLDER;
        this.tracks = new Mp4Track[0];
    }

    public static int codecsToParseWithinGopSampleDependenciesAsFlags(int videoCodecFlags) {
        int flags = 0;
        if ((videoCodecFlags & 1) != 0) {
            flags = 0 | 32;
        }
        if ((videoCodecFlags & 2) != 0) {
            return flags | 128;
        }
        return flags;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws IOException {
        SniffFailure sniffFailure = Sniffer.sniffUnfragmented(input, (this.flags & 2) != 0);
        this.lastSniffFailures = sniffFailure != null ? ImmutableList.of(sniffFailure) : ImmutableList.of();
        return sniffFailure == null;
    }

    @Override // androidx.media3.extractor.Extractor
    public ImmutableList<SniffFailure> getSniffFailureDetails() {
        return this.lastSniffFailures;
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput output) {
        ExtractorOutput subtitleTranscodingExtractorOutput;
        if ((this.flags & 16) == 0) {
            subtitleTranscodingExtractorOutput = new SubtitleTranscodingExtractorOutput(output, this.subtitleParserFactory);
        } else {
            subtitleTranscodingExtractorOutput = output;
        }
        this.extractorOutput = subtitleTranscodingExtractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long position, long timeUs) {
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.isSampleDependedOn = false;
        this.moovAtomProcessed = false;
        if (position == 0) {
            if (this.parserState != 3) {
                enterReadingAtomHeaderState();
                return;
            } else {
                this.sefReader.reset();
                this.slowMotionMetadataEntries.clear();
                return;
            }
        }
        for (Mp4Track track : this.tracks) {
            updateSampleIndex(track, timeUs);
            if (track.trueHdSampleRechunker != null) {
                track.trueHdSampleRechunker.reset();
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        if (this.omitTrackSampleTable && this.moovAtomProcessed) {
            return -1;
        }
        while (true) {
            switch (this.parserState) {
                case 0:
                    if (!readAtomHeader(input)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    if (readAtomPayload(input, seekPosition)) {
                        return 1;
                    }
                    break;
                case 2:
                    return readSample(input, seekPosition);
                case 3:
                    return readSefData(input, seekPosition);
                default:
                    throw new IllegalStateException();
            }
        }
    }

    public long[] getSampleTimestampsUs(int trackId) {
        if (this.tracks.length <= trackId) {
            return new long[0];
        }
        return this.tracks[trackId].sampleTable.timestampsUs;
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private boolean readAtomHeader(ExtractorInput input) throws IOException {
        Mp4Box.ContainerBox containerAtom;
        if (this.atomHeaderBytesRead == 0) {
            if (!input.readFully(this.atomHeader.getData(), 0, 8, true)) {
                processEndOfStreamReadingAtomHeader();
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.setPosition(0);
            this.atomSize = this.atomHeader.readUnsignedInt();
            this.atomType = this.atomHeader.readInt();
        }
        if (this.atomSize == 1) {
            input.readFully(this.atomHeader.getData(), 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.readUnsignedLongToLong();
        } else if (this.atomSize == 0) {
            long endPosition = input.getLength();
            if (endPosition == -1 && (containerAtom = this.containerAtoms.peek()) != null) {
                endPosition = containerAtom.endPosition;
            }
            if (endPosition != -1) {
                this.atomSize = (endPosition - input.getPosition()) + ((long) this.atomHeaderBytesRead);
            }
        }
        if (this.atomSize < this.atomHeaderBytesRead) {
            if (this.atomType == 1718773093 && this.atomHeaderBytesRead == 8) {
                this.atomSize = this.atomHeaderBytesRead;
            } else {
                throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
            }
        }
        if (shouldParseContainerAtom(this.atomType)) {
            long endPosition2 = (input.getPosition() + this.atomSize) - ((long) this.atomHeaderBytesRead);
            if (this.atomSize != this.atomHeaderBytesRead && this.atomType == 1835365473) {
                maybeSkipRemainingMetaAtomHeaderBytes(input);
            }
            this.containerAtoms.push(new Mp4Box.ContainerBox(this.atomType, endPosition2));
            if (this.atomSize == this.atomHeaderBytesRead) {
                processAtomEnded(endPosition2);
            } else {
                enterReadingAtomHeaderState();
            }
        } else if (shouldParseLeafAtom(this.atomType)) {
            Preconditions.checkState(this.atomHeaderBytesRead == 8);
            Preconditions.checkState(this.atomSize <= SieveCacheKt.NodeLinkMask);
            ParsableByteArray atomData = new ParsableByteArray((int) this.atomSize);
            System.arraycopy(this.atomHeader.getData(), 0, atomData.getData(), 0, 8);
            this.atomData = atomData;
            this.parserState = 1;
        } else {
            processUnparsedAtom(input.getPosition() - ((long) this.atomHeaderBytesRead));
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    private boolean readAtomPayload(ExtractorInput input, PositionHolder positionHolder) throws IOException {
        long atomPayloadSize = this.atomSize - ((long) this.atomHeaderBytesRead);
        long atomEndPosition = input.getPosition() + atomPayloadSize;
        boolean seekRequired = false;
        ParsableByteArray atomData = this.atomData;
        if (atomData != null) {
            input.readFully(atomData.getData(), this.atomHeaderBytesRead, (int) atomPayloadSize);
            if (this.atomType == 1718909296) {
                this.seenFtypAtom = true;
                this.fileType = processFtypAtom(atomData);
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(new Mp4Box.LeafBox(this.atomType, atomData));
            }
        } else {
            if (!this.seenFtypAtom && this.atomType == 1835295092) {
                this.fileType = 1;
            }
            if (atomPayloadSize < RELOAD_MINIMUM_SEEK_DISTANCE) {
                input.skipFully((int) atomPayloadSize);
            } else {
                positionHolder.position = input.getPosition() + atomPayloadSize;
                seekRequired = true;
            }
        }
        processAtomEnded(atomEndPosition);
        if (this.seekToAxteAtom) {
            this.readingAuxiliaryTracks = true;
            positionHolder.position = this.axteAtomOffset;
            seekRequired = true;
            this.seekToAxteAtom = false;
        }
        return seekRequired && this.parserState != 2;
    }

    private int readSefData(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        int result = this.sefReader.read(input, seekPosition, this.slowMotionMetadataEntries);
        if (result == 1 && seekPosition.position == 0) {
            enterReadingAtomHeaderState();
        }
        return result;
    }

    private void processAtomEnded(long atomEndPosition) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == atomEndPosition) {
            Mp4Box.ContainerBox containerAtom = this.containerAtoms.pop();
            if (containerAtom.type == 1836019574) {
                processMoovAtom(containerAtom);
                this.containerAtoms.clear();
                this.moovAtomProcessed = true;
                if (!this.seekToAxteAtom && !this.omitTrackSampleTable) {
                    this.parserState = 2;
                }
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(containerAtom);
            }
        }
        if (this.parserState != 2) {
            enterReadingAtomHeaderState();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void processMoovAtom(Mp4Box.ContainerBox containerBox) throws ParserException {
        Metadata metadata;
        List<Integer> auxiliaryTrackTypesForAuxiliaryTracks;
        Metadata metadata2;
        List<TrackSampleTable> list;
        boolean z;
        boolean z2;
        int i;
        int i2;
        Mp4Box.ContainerBox containerBox2;
        int i3;
        boolean z3;
        GaplessInfoHolder gaplessInfoHolder;
        boolean z4;
        ArrayList arrayList;
        Mp4Box.ContainerBox containerBoxOfType = containerBox.getContainerBoxOfType(Mp4Box.TYPE_meta);
        ArrayList arrayList2 = new ArrayList();
        if (containerBoxOfType == null) {
            metadata = null;
            auxiliaryTrackTypesForAuxiliaryTracks = arrayList2;
        } else {
            Metadata mdtaFromMeta = BoxParser.parseMdtaFromMeta(containerBoxOfType);
            if (this.readingAuxiliaryTracks) {
                Preconditions.checkNotNull(mdtaFromMeta);
                maybeSetDefaultSampleOffsetForAuxiliaryTracks(mdtaFromMeta);
                metadata = mdtaFromMeta;
                auxiliaryTrackTypesForAuxiliaryTracks = getAuxiliaryTrackTypesForAuxiliaryTracks(mdtaFromMeta);
            } else if (!shouldSeekToAxteAtom(mdtaFromMeta)) {
                metadata = mdtaFromMeta;
                auxiliaryTrackTypesForAuxiliaryTracks = arrayList2;
            } else {
                this.seekToAxteAtom = true;
                return;
            }
        }
        int size = -1;
        ArrayList arrayList3 = new ArrayList();
        boolean z5 = this.fileType == 1;
        GaplessInfoHolder gaplessInfoHolder2 = new GaplessInfoHolder();
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(Mp4Box.TYPE_udta);
        if (leafBoxOfType == null) {
            metadata2 = null;
        } else {
            Metadata udta = BoxParser.parseUdta(leafBoxOfType);
            gaplessInfoHolder2.setFromMetadata(udta);
            metadata2 = udta;
        }
        Metadata metadata3 = new Metadata(BoxParser.parseMvhd(((Mp4Box.LeafBox) Preconditions.checkNotNull(containerBox.getLeafBoxOfType(Mp4Box.TYPE_mvhd))).data));
        boolean z6 = (this.flags & 1) != 0;
        GaplessInfoHolder gaplessInfoHolder3 = gaplessInfoHolder2;
        ArrayList arrayList4 = arrayList3;
        List<TrackSampleTable> traks = BoxParser.parseTraks(containerBox, gaplessInfoHolder3, C.TIME_UNSET, null, z6, z5, new Function() { // from class: androidx.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return Mp4Extractor.lambda$processMoovAtom$2((Track) obj);
            }
        }, this.omitTrackSampleTable);
        if (this.readingAuxiliaryTracks) {
            Preconditions.checkState(auxiliaryTrackTypesForAuxiliaryTracks.size() == traks.size(), String.format(Locale.US, "The number of auxiliary track types from metadata (%d) is not same as the number of auxiliary tracks (%d)", Integer.valueOf(auxiliaryTrackTypesForAuxiliaryTracks.size()), Integer.valueOf(traks.size())));
        }
        int i4 = 0;
        String containerMimeType = MimeTypeResolver.getContainerMimeType(traks);
        int i5 = 0;
        long j = -9223372036854775807L;
        while (true) {
            if (i5 >= traks.size()) {
                break;
            }
            TrackSampleTable trackSampleTable = traks.get(i5);
            if (trackSampleTable.sampleCount == 0) {
                gaplessInfoHolder = gaplessInfoHolder3;
                list = traks;
                i3 = i5;
                z = z6;
                z2 = z5;
                containerBox2 = containerBoxOfType;
                arrayList = arrayList4;
                z4 = true;
            } else {
                Track track = trackSampleTable.track;
                list = traks;
                z = z6;
                int i6 = i4 + 1;
                z2 = z5;
                Mp4Track mp4Track = new Mp4Track(track, trackSampleTable, this.extractorOutput.track(i4, track.type));
                long j2 = track.durationUs != C.TIME_UNSET ? track.durationUs : trackSampleTable.durationUs;
                mp4Track.trackOutput.durationUs(j2);
                long jMax = Math.max(j, j2);
                if (MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType)) {
                    i = trackSampleTable.maximumSize * 16;
                } else {
                    i = trackSampleTable.maximumSize + 30;
                }
                Format.Builder builderBuildUpon = track.format.buildUpon();
                builderBuildUpon.setMaxInputSize(i);
                if (track.type != 2) {
                    i2 = 2;
                } else {
                    int i7 = track.format.roleFlags;
                    i2 = 2;
                    if ((this.flags & 8) != 0) {
                        i7 |= size == -1 ? 1 : 2;
                    }
                    if (this.readingAuxiliaryTracks) {
                        i7 |= 32768;
                        builderBuildUpon.setAuxiliaryTrackType(auxiliaryTrackTypesForAuxiliaryTracks.get(i5).intValue());
                    }
                    builderBuildUpon.setRoleFlags(i7);
                }
                Metadata metadata4 = null;
                containerBox2 = containerBoxOfType;
                long jFindBestThumbnailPresentationTimeUs = findBestThumbnailPresentationTimeUs(trackSampleTable, j2);
                if (jFindBestThumbnailPresentationTimeUs != C.TIME_UNSET) {
                    i3 = i5;
                    z3 = false;
                    metadata4 = new Metadata(new ThumbnailMetadata(jFindBestThumbnailPresentationTimeUs));
                } else {
                    i3 = i5;
                    z3 = false;
                }
                MetadataUtil.setFormatGaplessInfo(track.type, gaplessInfoHolder3, builderBuildUpon);
                int i8 = track.type;
                Metadata metadata5 = track.format.metadata;
                boolean z7 = z3;
                Metadata[] metadataArr = new Metadata[4];
                Metadata metadata6 = metadata4;
                if (this.slowMotionMetadataEntries.isEmpty()) {
                    gaplessInfoHolder = gaplessInfoHolder3;
                } else {
                    gaplessInfoHolder = gaplessInfoHolder3;
                    metadata = new Metadata(this.slowMotionMetadataEntries);
                }
                metadataArr[z7 ? 1 : 0] = metadata;
                z4 = true;
                metadataArr[1] = metadata2;
                metadataArr[i2] = metadata3;
                metadataArr[3] = metadata6;
                MetadataUtil.setFormatMetadata(i8, metadata, builderBuildUpon, metadata5, metadataArr);
                builderBuildUpon.setContainerMimeType(containerMimeType);
                if (Objects.equals(track.format.sampleMimeType, MimeTypes.AUDIO_MPEG)) {
                    mp4Track.pendingFormat = builderBuildUpon.build();
                } else {
                    mp4Track.trackOutput.format(builderBuildUpon.build());
                }
                if (track.type == i2 && size == -1) {
                    size = arrayList4.size();
                }
                arrayList = arrayList4;
                arrayList.add(mp4Track);
                i4 = i6;
                j = jMax;
            }
            arrayList4 = arrayList;
            traks = list;
            z6 = z;
            z5 = z2;
            containerBoxOfType = containerBox2;
            i5 = i3 + 1;
            gaplessInfoHolder3 = gaplessInfoHolder;
        }
        this.tracks = (Mp4Track[]) arrayList4.toArray(new Mp4Track[0]);
        this.accumulatedSampleSizes = this.omitTrackSampleTable ? null : calculateAccumulatedSampleSizes(this.tracks);
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(new Mp4SeekMap(j, this.tracks, size));
    }

    static /* synthetic */ Track lambda$processMoovAtom$2(Track track) {
        return track;
    }

    private static long findBestThumbnailPresentationTimeUs(TrackSampleTable sampleTable, long durationUs) {
        int syncSampleCount;
        if (!MimeTypes.isVideo(sampleTable.track.format.sampleMimeType)) {
            return C.TIME_UNSET;
        }
        int bestSampleIndex = -1;
        int maxSampleSize = 0;
        if (sampleTable.hasOnlySyncSamples) {
            syncSampleCount = sampleTable.sampleCount;
        } else {
            syncSampleCount = sampleTable.syncSampleIndices.length;
        }
        int scanLimit = Math.min(syncSampleCount, 20);
        Preconditions.checkState(durationUs != C.TIME_UNSET);
        long maxDurationUsToScan = Math.min(durationUs, MAX_DURATION_US_TO_SCAN_FOR_THUMBNAIL);
        for (int i = 0; i < scanLimit; i++) {
            int sampleIndex = sampleTable.hasOnlySyncSamples ? i : sampleTable.syncSampleIndices[i];
            long timestampUs = sampleTable.timestampsUs[sampleIndex];
            if (timestampUs > maxDurationUsToScan) {
                break;
            }
            if (timestampUs >= 0 && sampleTable.sizes[sampleIndex] > maxSampleSize) {
                maxSampleSize = sampleTable.sizes[sampleIndex];
                bestSampleIndex = sampleIndex;
            }
        }
        return bestSampleIndex == -1 ? C.TIME_UNSET : sampleTable.timestampsUs[bestSampleIndex];
    }

    private boolean shouldSeekToAxteAtom(Metadata mdtaMetadata) {
        MdtaMetadataEntry axteAtomOffsetMetadata;
        if (mdtaMetadata == null || (this.flags & 64) == 0 || (axteAtomOffsetMetadata = (MdtaMetadataEntry) mdtaMetadata.getFirstMatchingEntry(MdtaMetadataEntry.class, new Predicate() { // from class: androidx.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda3
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((MdtaMetadataEntry) obj).key.equals(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_OFFSET);
            }
        })) == null) {
            return false;
        }
        long offset = new ParsableByteArray(axteAtomOffsetMetadata.value).readUnsignedLongToLong();
        if (offset <= 0) {
            return false;
        }
        this.axteAtomOffset = offset;
        return true;
    }

    private void maybeSetDefaultSampleOffsetForAuxiliaryTracks(Metadata metadata) {
        MdtaMetadataEntry samplesInterleavedMetadata = (MdtaMetadataEntry) metadata.getFirstMatchingEntry(MdtaMetadataEntry.class, new Predicate() { // from class: androidx.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((MdtaMetadataEntry) obj).key.equals(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_INTERLEAVED);
            }
        });
        if (samplesInterleavedMetadata != null && samplesInterleavedMetadata.value[0] == 0) {
            this.sampleOffsetForAuxiliaryTracks = this.axteAtomOffset + 16;
        }
    }

    private List<Integer> getAuxiliaryTrackTypesForAuxiliaryTracks(Metadata metadata) {
        int auxiliaryTrackType;
        MdtaMetadataEntry trackTypesMetadata = (MdtaMetadataEntry) Preconditions.checkNotNull((MdtaMetadataEntry) metadata.getFirstMatchingEntry(MdtaMetadataEntry.class, new Predicate() { // from class: androidx.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda5
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((MdtaMetadataEntry) obj).key.equals(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_MAP);
            }
        }));
        List<Integer> auxiliaryTrackTypesFromMap = trackTypesMetadata.getAuxiliaryTrackTypesFromMap();
        List<Integer> auxiliaryTrackTypes = new ArrayList<>(auxiliaryTrackTypesFromMap.size());
        for (int i = 0; i < auxiliaryTrackTypesFromMap.size(); i++) {
            switch (auxiliaryTrackTypesFromMap.get(i).intValue()) {
                case 0:
                    auxiliaryTrackType = 1;
                    break;
                case 1:
                    auxiliaryTrackType = 2;
                    break;
                case 2:
                    auxiliaryTrackType = 3;
                    break;
                case 3:
                    auxiliaryTrackType = 4;
                    break;
                default:
                    auxiliaryTrackType = 0;
                    break;
            }
            auxiliaryTrackTypes.add(Integer.valueOf(auxiliaryTrackType));
        }
        return auxiliaryTrackTypes;
    }

    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v40, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46 */
    private int readSample(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i;
        TrackOutput trackOutput;
        TrackOutput.CryptoData cryptoData;
        Format formatBuild;
        int i2;
        ?? r5;
        int i3;
        int i4;
        long position = extractorInput.getPosition();
        if (this.sampleTrackIndex == -1) {
            this.sampleTrackIndex = getTrackIndexOfNextReadSample(position);
            if (this.sampleTrackIndex == -1) {
                return -1;
            }
        }
        Mp4Track mp4Track = this.tracks[this.sampleTrackIndex];
        TrackOutput trackOutput2 = mp4Track.trackOutput;
        int i5 = mp4Track.sampleIndex;
        long j = mp4Track.sampleTable.offsets[i5] + this.sampleOffsetForAuxiliaryTracks;
        int i6 = mp4Track.sampleTable.sizes[i5];
        TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
        TrackOutput trackOutput3 = trackOutput2;
        long j2 = (j - position) + ((long) this.sampleBytesRead);
        int i7 = 1;
        if (j2 < 0 || j2 >= RELOAD_MINIMUM_SEEK_DISTANCE) {
            int i8 = 1;
            long j3 = j;
            positionHolder.position = j3;
            return i8;
        }
        if (mp4Track.track.sampleTransformation == 1) {
            j2 += 8;
            i6 -= 8;
        }
        extractorInput.skipFully((int) j2);
        if (!canReadWithinGopSampleDependencies(mp4Track.track.format)) {
            this.isSampleDependedOn = true;
        }
        if (mp4Track.track.nalUnitLengthFieldLength != 0) {
            byte[] data = this.nalPrefix.getData();
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            int i9 = 4 - mp4Track.track.nalUnitLengthFieldLength;
            i6 += i9;
            while (this.sampleBytesWritten < i6) {
                if (this.sampleCurrentNalBytesRemaining == 0) {
                    int i10 = mp4Track.track.nalUnitLengthFieldLength;
                    if (!this.isSampleDependedOn && NalUnitUtil.numberOfBytesInNalUnitHeader(mp4Track.track.format) + i10 <= mp4Track.sampleTable.sizes[i5] - this.sampleBytesRead) {
                        int iNumberOfBytesInNalUnitHeader = NalUnitUtil.numberOfBytesInNalUnitHeader(mp4Track.track.format);
                        i10 = mp4Track.track.nalUnitLengthFieldLength + iNumberOfBytesInNalUnitHeader;
                        i3 = iNumberOfBytesInNalUnitHeader;
                    } else {
                        i3 = 0;
                    }
                    extractorInput.readFully(data, i9, i10);
                    this.sampleBytesRead += i10;
                    this.nalPrefix.setPosition(0);
                    int i11 = this.nalPrefix.readInt();
                    if (i11 < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.sampleCurrentNalBytesRemaining = i11 - i3;
                    long j4 = position;
                    this.nalStartCode.setPosition(0);
                    TrackOutput trackOutput4 = trackOutput3;
                    trackOutput4.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    if (i3 <= 0) {
                        i4 = 1;
                    } else {
                        trackOutput4.sampleData(this.nalPrefix, i3);
                        this.sampleBytesWritten += i3;
                        if (!NalUnitUtil.isDependedOn(data, 4, i3, mp4Track.track.format)) {
                            i4 = 1;
                        } else {
                            i4 = 1;
                            this.isSampleDependedOn = true;
                        }
                    }
                    i7 = i4;
                    trackOutput3 = trackOutput4;
                    position = j4;
                } else {
                    long j5 = position;
                    int i12 = i7;
                    int iSampleData = trackOutput3.sampleData((DataReader) extractorInput, this.sampleCurrentNalBytesRemaining, false);
                    this.sampleBytesRead += iSampleData;
                    this.sampleBytesWritten += iSampleData;
                    this.sampleCurrentNalBytesRemaining -= iSampleData;
                    i7 = i12;
                    position = j5;
                }
            }
            i = i7;
            trackOutput = trackOutput3;
            i2 = 0;
            cryptoData = null;
        } else {
            i = 1;
            trackOutput = trackOutput3;
            if (MimeTypes.AUDIO_AC4.equals(mp4Track.track.format.sampleMimeType)) {
                if (this.sampleBytesWritten == 0) {
                    Ac4Util.getAc4SampleHeader(i6, this.scratch);
                    trackOutput.sampleData(this.scratch, 7);
                    this.sampleBytesWritten += 7;
                }
                i6 += 7;
                cryptoData = null;
            } else if (mp4Track.pendingFormat == null || !Objects.equals(mp4Track.track.format.sampleMimeType, MimeTypes.AUDIO_MPEG)) {
                cryptoData = null;
                if (trueHdSampleRechunker != null) {
                    trueHdSampleRechunker.startSample(extractorInput);
                }
            } else {
                Format format = mp4Track.pendingFormat;
                this.scratch.reset(4);
                extractorInput.peekFully(this.scratch.getData(), 0, 4);
                extractorInput.resetPeekPosition();
                MpegAudioUtil.Header header = new MpegAudioUtil.Header();
                TrackOutput trackOutput5 = mp4Track.trackOutput;
                if (header.setForHeaderData(this.scratch.readInt()) && !Objects.equals(format.sampleMimeType, header.mimeType)) {
                    formatBuild = format.buildUpon().setSampleMimeType((String) Preconditions.checkNotNull(header.mimeType)).build();
                } else {
                    formatBuild = format;
                }
                trackOutput5.format(formatBuild);
                cryptoData = null;
                mp4Track.pendingFormat = null;
            }
            while (this.sampleBytesWritten < i6) {
                int iSampleData2 = trackOutput.sampleData((DataReader) extractorInput, i6 - this.sampleBytesWritten, false);
                this.sampleBytesRead += iSampleData2;
                this.sampleBytesWritten += iSampleData2;
                this.sampleCurrentNalBytesRemaining -= iSampleData2;
            }
            i2 = 0;
        }
        long j6 = mp4Track.sampleTable.timestampsUs[i5];
        int i13 = mp4Track.sampleTable.flags[i5];
        if (!this.isSampleDependedOn) {
            i13 |= 67108864;
        }
        if (trueHdSampleRechunker != null) {
            int i14 = i13;
            int i15 = i2;
            int i16 = i6;
            TrackOutput trackOutput6 = trackOutput;
            trueHdSampleRechunker.sampleMetadata(trackOutput6, j6, i14, i16, 0, null);
            r5 = i15;
            if (i5 + 1 == mp4Track.sampleTable.sampleCount) {
                trueHdSampleRechunker.outputPendingSampleMetadata(trackOutput6, cryptoData);
                r5 = i15;
            }
        } else {
            int i17 = i13;
            r5 = i2;
            trackOutput.sampleMetadata(j6, i17, i6, 0, null);
        }
        mp4Track.sampleIndex++;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = r5;
        this.sampleBytesWritten = r5;
        this.sampleCurrentNalBytesRemaining = r5;
        this.isSampleDependedOn = r5;
        return r5;
    }

    private int getTrackIndexOfNextReadSample(long inputPosition) {
        long preferredSkipAmount = Long.MAX_VALUE;
        boolean preferredRequiresReload = true;
        int preferredTrackIndex = -1;
        long preferredAccumulatedBytes = Long.MAX_VALUE;
        long minAccumulatedBytes = Long.MAX_VALUE;
        boolean minAccumulatedBytesRequiresReload = true;
        int minAccumulatedBytesTrackIndex = -1;
        for (int trackIndex = 0; trackIndex < this.tracks.length; trackIndex++) {
            Mp4Track track = this.tracks[trackIndex];
            int sampleIndex = track.sampleIndex;
            if (sampleIndex != track.sampleTable.sampleCount) {
                long sampleOffset = track.sampleTable.offsets[sampleIndex];
                long sampleAccumulatedBytes = ((long[][]) Preconditions.checkNotNull(this.accumulatedSampleSizes))[trackIndex][sampleIndex];
                long skipAmount = sampleOffset - inputPosition;
                boolean requiresReload = skipAmount < 0 || skipAmount >= RELOAD_MINIMUM_SEEK_DISTANCE;
                if ((!requiresReload && preferredRequiresReload) || (requiresReload == preferredRequiresReload && skipAmount < preferredSkipAmount)) {
                    preferredRequiresReload = requiresReload;
                    preferredSkipAmount = skipAmount;
                    preferredTrackIndex = trackIndex;
                    preferredAccumulatedBytes = sampleAccumulatedBytes;
                }
                if (sampleAccumulatedBytes < minAccumulatedBytes) {
                    minAccumulatedBytes = sampleAccumulatedBytes;
                    minAccumulatedBytesRequiresReload = requiresReload;
                    minAccumulatedBytesTrackIndex = trackIndex;
                }
            }
        }
        if (minAccumulatedBytes == Long.MAX_VALUE || !minAccumulatedBytesRequiresReload || preferredAccumulatedBytes < MAXIMUM_READ_AHEAD_BYTES_STREAM + minAccumulatedBytes) {
            return preferredTrackIndex;
        }
        return minAccumulatedBytesTrackIndex;
    }

    private void updateSampleIndex(Mp4Track track, long timeUs) {
        TrackSampleTable sampleTable = track.sampleTable;
        int sampleIndex = sampleTable.getIndexOfEarlierOrEqualSynchronizationSample(timeUs);
        if (sampleIndex == -1) {
            sampleIndex = sampleTable.getIndexOfLaterOrEqualSynchronizationSample(timeUs);
        }
        track.sampleIndex = sampleIndex;
    }

    private void processEndOfStreamReadingAtomHeader() {
        if (this.fileType == 2 && (this.flags & 2) != 0) {
            TrackOutput trackOutput = this.extractorOutput.track(0, 4);
            Metadata metadata = this.motionPhotoMetadata == null ? null : new Metadata(this.motionPhotoMetadata);
            trackOutput.format(new Format.Builder().setMetadata(metadata).build());
            this.extractorOutput.endTracks();
            this.extractorOutput.seekMap(new SeekMap.Unseekable(C.TIME_UNSET));
        }
    }

    private void maybeSkipRemainingMetaAtomHeaderBytes(ExtractorInput input) throws IOException {
        this.scratch.reset(8);
        input.peekFully(this.scratch.getData(), 0, 8);
        BoxParser.maybeSkipRemainingMetaBoxHeaderBytes(this.scratch);
        input.skipFully(this.scratch.getPosition());
        input.resetPeekPosition();
    }

    private void processUnparsedAtom(long atomStartPosition) {
        if (this.atomType == 1836086884) {
            this.motionPhotoMetadata = new MotionPhotoMetadata(0L, atomStartPosition, C.TIME_UNSET, atomStartPosition + ((long) this.atomHeaderBytesRead), this.atomSize - ((long) this.atomHeaderBytesRead));
        }
    }

    private boolean canReadWithinGopSampleDependencies(Format format) {
        return Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H264) ? (this.flags & 32) != 0 : Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H265) && (this.flags & 128) != 0;
    }

    private static long[][] calculateAccumulatedSampleSizes(Mp4Track[] tracks) {
        long[][] accumulatedSampleSizes = new long[tracks.length][];
        int[] nextSampleIndex = new int[tracks.length];
        long[] nextSampleTimesUs = new long[tracks.length];
        boolean[] tracksFinished = new boolean[tracks.length];
        for (int i = 0; i < tracks.length; i++) {
            accumulatedSampleSizes[i] = new long[tracks[i].sampleTable.sampleCount];
            nextSampleTimesUs[i] = tracks[i].sampleTable.timestampsUs[0];
        }
        long accumulatedSampleSize = 0;
        int finishedTracks = 0;
        while (finishedTracks < tracks.length) {
            long minTimeUs = Long.MAX_VALUE;
            int minTimeTrackIndex = -1;
            for (int i2 = 0; i2 < tracks.length; i2++) {
                if (!tracksFinished[i2] && nextSampleTimesUs[i2] <= minTimeUs) {
                    minTimeTrackIndex = i2;
                    minTimeUs = nextSampleTimesUs[i2];
                }
            }
            int i3 = nextSampleIndex[minTimeTrackIndex];
            accumulatedSampleSizes[minTimeTrackIndex][i3] = accumulatedSampleSize;
            accumulatedSampleSize += (long) tracks[minTimeTrackIndex].sampleTable.sizes[i3];
            int trackSampleIndex = i3 + 1;
            nextSampleIndex[minTimeTrackIndex] = trackSampleIndex;
            if (trackSampleIndex < accumulatedSampleSizes[minTimeTrackIndex].length) {
                nextSampleTimesUs[minTimeTrackIndex] = tracks[minTimeTrackIndex].sampleTable.timestampsUs[trackSampleIndex];
            } else {
                tracksFinished[minTimeTrackIndex] = true;
                finishedTracks++;
            }
        }
        return accumulatedSampleSizes;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long maybeAdjustSeekOffset(TrackSampleTable sampleTable, long seekTimeUs, long offset) {
        int sampleIndex = getSynchronizationSampleIndex(sampleTable, seekTimeUs);
        if (sampleIndex == -1) {
            return offset;
        }
        long sampleOffset = sampleTable.offsets[sampleIndex];
        return Math.min(sampleOffset, offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSynchronizationSampleIndex(TrackSampleTable sampleTable, long timeUs) {
        int sampleIndex = sampleTable.getIndexOfEarlierOrEqualSynchronizationSample(timeUs);
        if (sampleIndex == -1) {
            return sampleTable.getIndexOfLaterOrEqualSynchronizationSample(timeUs);
        }
        return sampleIndex;
    }

    private static int processFtypAtom(ParsableByteArray atomData) {
        atomData.setPosition(8);
        int majorBrand = atomData.readInt();
        int fileType = brandToFileType(majorBrand);
        if (fileType != 0) {
            return fileType;
        }
        atomData.skipBytes(4);
        while (atomData.bytesLeft() > 0) {
            int fileType2 = brandToFileType(atomData.readInt());
            if (fileType2 != 0) {
                return fileType2;
            }
        }
        return 0;
    }

    private static int brandToFileType(int brand) {
        switch (brand) {
            case Sniffer.BRAND_HEIC /* 1751476579 */:
                return 2;
            case Sniffer.BRAND_QUICKTIME /* 1903435808 */:
                return 1;
            default:
                return 0;
        }
    }

    private static boolean shouldParseLeafAtom(int atom) {
        return atom == 1835296868 || atom == 1836476516 || atom == 1751411826 || atom == 1937011556 || atom == 1937011827 || atom == 1937011571 || atom == 1668576371 || atom == 1701606260 || atom == 1937011555 || atom == 1937011578 || atom == 1937013298 || atom == 1937007471 || atom == 1668232756 || atom == 1953196132 || atom == 1718909296 || atom == 1969517665 || atom == 1801812339 || atom == 1768715124;
    }

    private static boolean shouldParseContainerAtom(int atom) {
        return atom == 1836019574 || atom == 1953653099 || atom == 1835297121 || atom == 1835626086 || atom == 1937007212 || atom == 1701082227 || atom == 1835365473 || atom == 1635284069;
    }

    private static final class Mp4Track {
        public Format pendingFormat;
        public int sampleIndex;
        public final TrackSampleTable sampleTable;
        public final Track track;
        public final TrackOutput trackOutput;
        public final TrueHdSampleRechunker trueHdSampleRechunker;

        public Mp4Track(Track track, TrackSampleTable sampleTable, TrackOutput trackOutput) {
            TrueHdSampleRechunker trueHdSampleRechunker;
            this.track = track;
            this.sampleTable = sampleTable;
            this.trackOutput = trackOutput;
            if (MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType)) {
                trueHdSampleRechunker = new TrueHdSampleRechunker();
            } else {
                trueHdSampleRechunker = null;
            }
            this.trueHdSampleRechunker = trueHdSampleRechunker;
        }
    }

    private static final class Mp4SeekMap implements TrackAwareSeekMap {
        private final long durationUs;
        private final int firstVideoTrackIndex;
        private final Mp4Track[] tracks;

        public Mp4SeekMap(long durationUs, Mp4Track[] tracks, int firstVideoTrackIndex) {
            this.durationUs = durationUs;
            this.tracks = tracks;
            this.firstVideoTrackIndex = firstVideoTrackIndex;
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        @Override // androidx.media3.extractor.TrackAwareSeekMap
        public boolean isSeekable(int trackId) {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long timeUs) {
            return getSeekPoints(timeUs, -1);
        }

        @Override // androidx.media3.extractor.TrackAwareSeekMap
        public SeekMap.SeekPoints getSeekPoints(long timeUs, int trackId) {
            long firstOffset;
            long firstTimeUs;
            long j;
            long firstOffset2;
            int secondSampleIndex;
            if (this.tracks.length == 0) {
                return new SeekMap.SeekPoints(SeekPoint.START);
            }
            long secondTimeUs = C.TIME_UNSET;
            long secondOffset = -1;
            int mainTrackIndex = trackId != -1 ? trackId : this.firstVideoTrackIndex;
            if (mainTrackIndex != -1) {
                TrackSampleTable sampleTable = this.tracks[mainTrackIndex].sampleTable;
                int sampleIndex = Mp4Extractor.getSynchronizationSampleIndex(sampleTable, timeUs);
                if (sampleIndex == -1) {
                    return new SeekMap.SeekPoints(SeekPoint.START);
                }
                long sampleTimeUs = sampleTable.timestampsUs[sampleIndex];
                firstOffset = sampleTable.offsets[sampleIndex];
                if (sampleTimeUs < timeUs && sampleIndex < sampleTable.sampleCount - 1 && (secondSampleIndex = sampleTable.getIndexOfLaterOrEqualSynchronizationSample(timeUs)) != -1 && secondSampleIndex != sampleIndex) {
                    secondTimeUs = sampleTable.timestampsUs[secondSampleIndex];
                    secondOffset = sampleTable.offsets[secondSampleIndex];
                }
                firstTimeUs = sampleTimeUs;
            } else {
                firstOffset = Long.MAX_VALUE;
                firstTimeUs = timeUs;
            }
            if (trackId != -1) {
                j = C.TIME_UNSET;
                firstOffset2 = firstOffset;
            } else {
                int i = 0;
                firstOffset2 = firstOffset;
                while (true) {
                    j = C.TIME_UNSET;
                    if (i >= this.tracks.length) {
                        break;
                    }
                    if (i != this.firstVideoTrackIndex) {
                        TrackSampleTable sampleTable2 = this.tracks[i].sampleTable;
                        firstOffset2 = Mp4Extractor.maybeAdjustSeekOffset(sampleTable2, firstTimeUs, firstOffset2);
                        if (secondTimeUs != C.TIME_UNSET) {
                            secondOffset = Mp4Extractor.maybeAdjustSeekOffset(sampleTable2, secondTimeUs, secondOffset);
                        }
                    }
                    i++;
                }
            }
            SeekPoint firstSeekPoint = new SeekPoint(firstTimeUs, firstOffset2);
            if (secondTimeUs == j) {
                return new SeekMap.SeekPoints(firstSeekPoint);
            }
            SeekPoint secondSeekPoint = new SeekPoint(secondTimeUs, secondOffset);
            return new SeekMap.SeekPoints(firstSeekPoint, secondSeekPoint);
        }
    }
}
