package androidx.media3.extractor.mp4;

import android.util.Pair;
import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.DolbyVisionConfig;
import androidx.media3.container.Mp4AlternateGroupData;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.container.Mp4TimestampData;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.OpusUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.VorbisUtil;
import androidx.media3.extractor.VvcConfig;
import androidx.media3.extractor.mp4.FixedSampleSizeRechunker;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.work.WorkInfo;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class BoxParser {
    private static final int EDIT_LIST_DURATION_TOLERANCE_TIMESCALE_UNITS = 2;
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 4;
    private static final int SAMPLE_RATE_AMR_NB = 8000;
    private static final int SAMPLE_RATE_AMR_WB = 16000;
    private static final String TAG = "BoxParsers";
    private static final int TYPE_clcp = 1668047728;
    private static final int TYPE_mdta = 1835299937;
    private static final int TYPE_meta = 1835365473;
    private static final int TYPE_nclc = 1852009571;
    private static final int TYPE_nclx = 1852009592;
    private static final int TYPE_sbtl = 1935832172;
    private static final int TYPE_soun = 1936684398;
    private static final int TYPE_subp = 1937072752;
    private static final int TYPE_subt = 1937072756;
    private static final int TYPE_text = 1952807028;
    private static final int TYPE_vide = 1986618469;
    private static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    private interface SampleSizeBox {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    public static int parseFullBoxVersion(int fullBoxInt) {
        return (fullBoxInt >> 24) & 255;
    }

    public static int parseFullBoxFlags(int fullBoxInt) {
        return 16777215 & fullBoxInt;
    }

    public static List<TrackSampleTable> parseTraks(Mp4Box.ContainerBox moov, GaplessInfoHolder gaplessInfoHolder, long duration, DrmInitData drmInitData, boolean ignoreEditLists, boolean isQuickTime, Function<Track, Track> modifyTrackFunction, boolean omitTrackSampleTable) throws ParserException {
        Track track;
        List<TrackSampleTable> trackSampleTables = new ArrayList<>();
        for (int i = 0; i < moov.containerChildren.size(); i++) {
            Mp4Box.ContainerBox atom = moov.containerChildren.get(i);
            if (atom.type == 1953653099 && (track = modifyTrackFunction.apply(parseTrak(atom, (Mp4Box.LeafBox) Preconditions.checkNotNull(moov.getLeafBoxOfType(Mp4Box.TYPE_mvhd)), duration, drmInitData, ignoreEditLists, isQuickTime))) != null) {
                Mp4Box.ContainerBox stblAtom = (Mp4Box.ContainerBox) Preconditions.checkNotNull(((Mp4Box.ContainerBox) Preconditions.checkNotNull(((Mp4Box.ContainerBox) Preconditions.checkNotNull(atom.getContainerBoxOfType(Mp4Box.TYPE_mdia))).getContainerBoxOfType(Mp4Box.TYPE_minf))).getContainerBoxOfType(Mp4Box.TYPE_stbl));
                TrackSampleTable trackSampleTable = parseStbl(track, stblAtom, gaplessInfoHolder, omitTrackSampleTable);
                trackSampleTables.add(trackSampleTable);
            }
        }
        return trackSampleTables;
    }

    public static Metadata parseUdta(Mp4Box.LeafBox udtaBox) {
        ParsableByteArray udtaData = udtaBox.data;
        udtaData.setPosition(8);
        Metadata metadata = new Metadata(new Metadata.Entry[0]);
        while (udtaData.bytesLeft() >= 8) {
            int atomPosition = udtaData.getPosition();
            int atomSize = udtaData.readInt();
            int atomType = udtaData.readInt();
            if (atomType == 1835365473) {
                udtaData.setPosition(atomPosition);
                metadata = metadata.copyWithAppendedEntriesFrom(parseUdtaMeta(udtaData, atomPosition + atomSize));
            } else if (atomType == 1936553057) {
                udtaData.setPosition(atomPosition);
                metadata = metadata.copyWithAppendedEntriesFrom(SmtaAtomUtil.parseSmta(udtaData, atomPosition + atomSize));
            } else if (atomType == -1451722374) {
                metadata = metadata.copyWithAppendedEntriesFrom(parseXyz(udtaData));
            }
            udtaData.setPosition(atomPosition + atomSize);
        }
        return metadata;
    }

    public static Mp4TimestampData parseMvhd(ParsableByteArray mvhd) {
        long creationTimestampSeconds;
        long modificationTimestampSeconds;
        mvhd.setPosition(8);
        int fullAtom = mvhd.readInt();
        int version = parseFullBoxVersion(fullAtom);
        if (version == 0) {
            long creationTimestampSeconds2 = mvhd.readUnsignedInt();
            creationTimestampSeconds = creationTimestampSeconds2;
            modificationTimestampSeconds = mvhd.readUnsignedInt();
        } else {
            long creationTimestampSeconds3 = mvhd.readLong();
            creationTimestampSeconds = creationTimestampSeconds3;
            modificationTimestampSeconds = mvhd.readLong();
        }
        long timescale = mvhd.readUnsignedInt();
        return new Mp4TimestampData(creationTimestampSeconds, modificationTimestampSeconds, timescale);
    }

    public static Metadata parseMdtaFromMeta(Mp4Box.ContainerBox meta) {
        Mp4Box.LeafBox hdlrAtom = meta.getLeafBoxOfType(Mp4Box.TYPE_hdlr);
        Mp4Box.LeafBox keysAtom = meta.getLeafBoxOfType(Mp4Box.TYPE_keys);
        Mp4Box.LeafBox ilstAtom = meta.getLeafBoxOfType(Mp4Box.TYPE_ilst);
        if (hdlrAtom == null || keysAtom == null || ilstAtom == null || parseHdlr(hdlrAtom.data) != TYPE_mdta) {
            return null;
        }
        ParsableByteArray keys = keysAtom.data;
        keys.setPosition(12);
        int entryCount = keys.readInt();
        String[] keyNames = new String[entryCount];
        for (int i = 0; i < entryCount; i++) {
            int entrySize = keys.readInt();
            keys.skipBytes(4);
            int keySize = entrySize - 8;
            keyNames[i] = keys.readString(keySize);
        }
        ParsableByteArray ilst = ilstAtom.data;
        ilst.setPosition(8);
        ArrayList<Metadata.Entry> entries = new ArrayList<>();
        while (ilst.bytesLeft() > 8) {
            int atomPosition = ilst.getPosition();
            int atomSize = ilst.readInt();
            int keyIndex = ilst.readInt() - 1;
            if (keyIndex >= 0 && keyIndex < keyNames.length) {
                String key = keyNames[keyIndex];
                Metadata.Entry entry = MetadataUtil.parseMdtaMetadataEntryFromIlst(ilst, atomPosition + atomSize, key);
                if (entry != null) {
                    entries.add(entry);
                }
            } else {
                Log.w(TAG, "Skipped metadata with unknown key index: " + keyIndex);
            }
            ilst.setPosition(atomPosition + atomSize);
        }
        if (entries.isEmpty()) {
            return null;
        }
        return new Metadata(entries);
    }

    public static void maybeSkipRemainingMetaBoxHeaderBytes(ParsableByteArray meta) {
        int endPosition = meta.getPosition();
        meta.skipBytes(4);
        if (meta.readInt() != 1751411826) {
            endPosition += 4;
        }
        meta.setPosition(endPosition);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00f8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Track parseTrak(Mp4Box.ContainerBox trak, Mp4Box.LeafBox mvhd, long duration, DrmInitData drmInitData, boolean ignoreEditLists, boolean isQuickTime) throws ParserException {
        long duration2;
        long duration3;
        Track track;
        long[] editListDurations;
        long[] editListMediaTimes;
        Format format;
        Metadata metadata;
        Pair<long[], long[]> edtsData;
        Mp4Box.ContainerBox mdia = (Mp4Box.ContainerBox) Preconditions.checkNotNull(trak.getContainerBoxOfType(Mp4Box.TYPE_mdia));
        int trackType = getTrackTypeForHdlr(parseHdlr(((Mp4Box.LeafBox) Preconditions.checkNotNull(mdia.getLeafBoxOfType(Mp4Box.TYPE_hdlr))).data));
        if (trackType == -1) {
            return null;
        }
        TkhdData tkhdData = parseTkhd(((Mp4Box.LeafBox) Preconditions.checkNotNull(trak.getLeafBoxOfType(Mp4Box.TYPE_tkhd))).data);
        if (duration != C.TIME_UNSET) {
            duration2 = duration;
        } else {
            duration2 = tkhdData.duration;
        }
        long movieTimescale = parseMvhd(mvhd.data).timescale;
        if (duration2 == C.TIME_UNSET) {
            duration3 = -9223372036854775807L;
        } else {
            duration3 = Util.scaleLargeTimestamp(duration2, 1000000L, movieTimescale);
        }
        Mp4Box.ContainerBox stbl = (Mp4Box.ContainerBox) Preconditions.checkNotNull(((Mp4Box.ContainerBox) Preconditions.checkNotNull(mdia.getContainerBoxOfType(Mp4Box.TYPE_minf))).getContainerBoxOfType(Mp4Box.TYPE_stbl));
        MdhdData mdhdData = parseMdhd(((Mp4Box.LeafBox) Preconditions.checkNotNull(mdia.getLeafBoxOfType(Mp4Box.TYPE_mdhd))).data);
        Mp4Box.LeafBox stsd = stbl.getLeafBoxOfType(Mp4Box.TYPE_stsd);
        if (stsd == null) {
            Log.w(TAG, "Ignoring track where sample table (stbl) box is missing a sample description (stsd).");
            return null;
        }
        StsdData stsdData = parseStsd(stsd.data, tkhdData, mdhdData.language, drmInitData, isQuickTime);
        if (ignoreEditLists) {
            track = null;
        } else {
            track = null;
            Mp4Box.ContainerBox edtsAtom = trak.getContainerBoxOfType(Mp4Box.TYPE_edts);
            if (edtsAtom != null && (edtsData = parseEdts(edtsAtom)) != null) {
                long[] editListDurations2 = (long[]) edtsData.first;
                long[] editListMediaTimes2 = (long[]) edtsData.second;
                editListDurations = editListDurations2;
                editListMediaTimes = editListMediaTimes2;
                if (stsdData.format != null) {
                    return track;
                }
                if (tkhdData.alternateGroup != 0) {
                    Mp4AlternateGroupData alternateGroupEntry = new Mp4AlternateGroupData(tkhdData.alternateGroup);
                    Format.Builder builderBuildUpon = stsdData.format.buildUpon();
                    if (stsdData.format.metadata != null) {
                        metadata = stsdData.format.metadata.copyWithAppendedEntries(alternateGroupEntry);
                    } else {
                        metadata = new Metadata(alternateGroupEntry);
                    }
                    format = builderBuildUpon.setMetadata(metadata).build();
                } else {
                    format = stsdData.format;
                }
                return new Track(tkhdData.id, trackType, mdhdData.timescale, movieTimescale, duration3, mdhdData.mediaDurationUs, format, stsdData.requiredSampleTransformation, stsdData.trackEncryptionBoxes, stsdData.nalUnitLengthFieldLength, editListDurations, editListMediaTimes);
            }
        }
        editListDurations = null;
        editListMediaTimes = null;
        if (stsdData.format != null) {
        }
    }

    public static TrackSampleTable parseStbl(Track track, Mp4Box.ContainerBox stblBox, GaplessInfoHolder gaplessInfoHolder, boolean omitTrackSampleTable) throws ParserException {
        SampleSizeBox sampleSizeBox;
        int i;
        long[] offsets;
        int remainingSamplesAtTimestampOffset;
        int remainingTimestampDeltaChanges;
        int remainingSamplesAtTimestampDelta;
        int sampleCount;
        int remainingSamplesInChunk;
        long[] offsets2;
        int[] sizes;
        int remainingSamplesAtTimestampOffset2;
        long[] timestamps;
        long duration;
        long[] offsets3;
        int[] flags;
        int sampleCount2;
        int maximumSize;
        int[] sizes2;
        int remainingSamplesAtTimestampOffset3;
        int remainingSynchronizationSamples;
        int remainingSynchronizationSamples2;
        long duration2;
        int remainingSamplesAtTimestampDelta2;
        int timestampOffset;
        List<Integer> syncSampleIndicesList;
        int remainingTimestampDeltaChanges2;
        long duration3;
        Track track2;
        int sampleCount3;
        boolean omitZeroDurationClippedSample;
        int i2;
        int timestampOffset2;
        int remainingSynchronizationSamples3;
        boolean z;
        int j;
        long editedDurationUs;
        int i3;
        long[] offsets4;
        long[] offsets5;
        int[] sizes3;
        int[] sizes4;
        long[] timestamps2;
        long[] timestamps3;
        int[] flags2;
        Track track3 = track;
        Mp4Box.LeafBox stszAtom = stblBox.getLeafBoxOfType(Mp4Box.TYPE_stsz);
        if (stszAtom != null) {
            sampleSizeBox = new StszSampleSizeBox(stszAtom, track3.format);
        } else {
            Mp4Box.LeafBox stz2Atom = stblBox.getLeafBoxOfType(Mp4Box.TYPE_stz2);
            if (stz2Atom == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            sampleSizeBox = new Stz2SampleSizeBox(stz2Atom);
        }
        int sampleCount4 = sampleSizeBox.getSampleCount();
        if (sampleCount4 == 0) {
            return new TrackSampleTable(track3, new long[0], new int[0], 0, new long[0], new int[0], new int[0], false, 0L, 0);
        }
        if (track3.type == 2 && track3.mediaDurationUs > 0) {
            float frameRate = sampleCount4 / (track3.mediaDurationUs / 1000000.0f);
            Format format = track3.format.buildUpon().setFrameRate(frameRate).build();
            track3 = track3.copyWithFormat(format);
        }
        boolean chunkOffsetsAreLongs = false;
        Mp4Box.LeafBox chunkOffsetsAtom = stblBox.getLeafBoxOfType(Mp4Box.TYPE_stco);
        if (chunkOffsetsAtom == null) {
            chunkOffsetsAreLongs = true;
            chunkOffsetsAtom = (Mp4Box.LeafBox) Preconditions.checkNotNull(stblBox.getLeafBoxOfType(Mp4Box.TYPE_co64));
        }
        ParsableByteArray chunkOffsets = chunkOffsetsAtom.data;
        ParsableByteArray stsc = ((Mp4Box.LeafBox) Preconditions.checkNotNull(stblBox.getLeafBoxOfType(Mp4Box.TYPE_stsc))).data;
        ParsableByteArray stts = ((Mp4Box.LeafBox) Preconditions.checkNotNull(stblBox.getLeafBoxOfType(Mp4Box.TYPE_stts))).data;
        Mp4Box.LeafBox stssAtom = stblBox.getLeafBoxOfType(Mp4Box.TYPE_stss);
        ParsableByteArray stss = stssAtom != null ? stssAtom.data : null;
        Mp4Box.LeafBox cttsAtom = stblBox.getLeafBoxOfType(Mp4Box.TYPE_ctts);
        ParsableByteArray ctts = cttsAtom != null ? cttsAtom.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(stsc, chunkOffsets, chunkOffsetsAreLongs);
        stts.setPosition(12);
        int remainingTimestampDeltaChanges3 = stts.readUnsignedIntToInt() - 1;
        int remainingSamplesAtTimestampDelta3 = stts.readUnsignedIntToInt();
        int timestampDeltaInTimeUnits = stts.readUnsignedIntToInt();
        int remainingTimestampOffsetChanges = 0;
        if (ctts != null) {
            ctts.setPosition(12);
            remainingTimestampOffsetChanges = ctts.readUnsignedIntToInt();
        }
        int nextSynchronizationSampleIndex = -1;
        int remainingSynchronizationSamples4 = 0;
        if (stss != null) {
            stss.setPosition(12);
            remainingSynchronizationSamples4 = stss.readUnsignedIntToInt();
            if (remainingSynchronizationSamples4 > 0) {
                nextSynchronizationSampleIndex = stss.readUnsignedIntToInt() - 1;
            } else {
                stss = null;
                nextSynchronizationSampleIndex = -1;
            }
        }
        ParsableByteArray stss2 = stss;
        int fixedSampleSize = sampleSizeBox.getFixedSampleSize();
        int nextSynchronizationSampleIndex2 = nextSynchronizationSampleIndex;
        String sampleMimeType = track3.format.sampleMimeType;
        boolean rechunkFixedSizeSamples = fixedSampleSize != -1 && (MimeTypes.AUDIO_RAW.equals(sampleMimeType) || MimeTypes.AUDIO_MLAW.equals(sampleMimeType) || MimeTypes.AUDIO_ALAW.equals(sampleMimeType)) && remainingTimestampDeltaChanges3 == 0 && remainingTimestampOffsetChanges == 0 && remainingSynchronizationSamples4 == 0;
        List<Integer> syncSampleIndicesList2 = new ArrayList<>();
        boolean hasOnlySyncSamples = stss2 == null;
        long timestampTimeUnits = 0;
        long totalSize = 0;
        if (rechunkFixedSizeSamples) {
            long[] chunkOffsetsBytes = new long[chunkIterator.length];
            int[] chunkSampleCounts = new int[chunkIterator.length];
            while (chunkIterator.moveNext()) {
                chunkOffsetsBytes[chunkIterator.index] = chunkIterator.offset;
                chunkSampleCounts[chunkIterator.index] = chunkIterator.numSamples;
                ctts = ctts;
                chunkOffsetsAtom = chunkOffsetsAtom;
            }
            FixedSampleSizeRechunker.Results rechunkedResults = FixedSampleSizeRechunker.rechunk(fixedSampleSize, chunkOffsetsBytes, chunkSampleCounts, timestampDeltaInTimeUnits);
            if (omitTrackSampleTable) {
                i3 = 0;
                offsets4 = new long[0];
            } else {
                i3 = 0;
                offsets4 = rechunkedResults.offsets;
            }
            if (omitTrackSampleTable) {
                offsets5 = offsets4;
                sizes3 = new int[i3];
            } else {
                offsets5 = offsets4;
                sizes3 = rechunkedResults.sizes;
            }
            if (omitTrackSampleTable) {
                sizes4 = sizes3;
                timestamps2 = new long[i3];
            } else {
                sizes4 = sizes3;
                timestamps2 = rechunkedResults.timestamps;
            }
            if (omitTrackSampleTable) {
                timestamps3 = timestamps2;
                flags2 = new int[i3];
            } else {
                timestamps3 = timestamps2;
                flags2 = rechunkedResults.flags;
            }
            int maximumSize2 = rechunkedResults.maximumSize;
            long duration4 = rechunkedResults.duration;
            duration = rechunkedResults.totalSize;
            int[] flags3 = flags2;
            int sampleCount5 = rechunkedResults.offsets.length;
            remainingSamplesAtTimestampDelta2 = remainingSamplesAtTimestampDelta3;
            timestampOffset = 0;
            remainingSynchronizationSamples = remainingSynchronizationSamples4;
            offsets3 = offsets5;
            sizes2 = sizes4;
            timestamps = timestamps3;
            remainingSynchronizationSamples2 = timestampDeltaInTimeUnits;
            flags = flags3;
            maximumSize = maximumSize2;
            duration2 = duration4;
            remainingSamplesAtTimestampOffset3 = sampleCount5;
            sampleCount2 = nextSynchronizationSampleIndex2;
        } else {
            if (omitTrackSampleTable) {
                i = 0;
                offsets = new long[0];
            } else {
                i = 0;
                offsets = new long[sampleCount4];
            }
            int[] sizes5 = omitTrackSampleTable ? new int[i] : new int[sampleCount4];
            long[] timestamps4 = omitTrackSampleTable ? new long[i] : new long[sampleCount4];
            int[] flags4 = omitTrackSampleTable ? new int[i] : new int[sampleCount4];
            int remainingSamplesInChunk2 = 0;
            SampleSizeBox sampleSizeBox2 = sampleSizeBox;
            int maximumSize3 = 0;
            int remainingSynchronizationSamples5 = remainingSynchronizationSamples4;
            int i4 = 0;
            int remainingSamplesAtTimestampOffset4 = 0;
            int remainingTimestampDeltaChanges4 = remainingTimestampDeltaChanges3;
            int remainingTimestampOffsetChanges2 = remainingTimestampOffsetChanges;
            long offset = 0;
            int nextSynchronizationSampleIndex3 = nextSynchronizationSampleIndex2;
            int timestampDeltaInTimeUnits2 = timestampDeltaInTimeUnits;
            int timestampOffset3 = 0;
            int remainingSamplesAtTimestampDelta4 = remainingSamplesAtTimestampDelta3;
            while (true) {
                remainingSamplesAtTimestampOffset = remainingSamplesAtTimestampOffset4;
                if (i4 >= sampleCount4) {
                    remainingTimestampDeltaChanges = remainingTimestampDeltaChanges4;
                    remainingSamplesAtTimestampDelta = remainingSamplesAtTimestampDelta4;
                    sampleCount = sampleCount4;
                    remainingSamplesInChunk = remainingSamplesInChunk2;
                    break;
                }
                boolean chunkDataComplete = true;
                while (remainingSamplesInChunk2 == 0) {
                    boolean zMoveNext = chunkIterator.moveNext();
                    chunkDataComplete = zMoveNext;
                    if (!zMoveNext) {
                        break;
                    }
                    int remainingTimestampDeltaChanges5 = remainingTimestampDeltaChanges4;
                    long offset2 = chunkIterator.offset;
                    offset = offset2;
                    remainingSamplesInChunk2 = chunkIterator.numSamples;
                    remainingTimestampDeltaChanges4 = remainingTimestampDeltaChanges5;
                    remainingSamplesAtTimestampDelta4 = remainingSamplesAtTimestampDelta4;
                }
                remainingTimestampDeltaChanges = remainingTimestampDeltaChanges4;
                remainingSamplesAtTimestampDelta = remainingSamplesAtTimestampDelta4;
                if (!chunkDataComplete) {
                    Log.w(TAG, "Unexpected end of chunk data");
                    sampleCount = i4;
                    if (omitTrackSampleTable) {
                        remainingSamplesInChunk = remainingSamplesInChunk2;
                    } else {
                        offsets = Arrays.copyOf(offsets, sampleCount);
                        sizes5 = Arrays.copyOf(sizes5, sampleCount);
                        timestamps4 = Arrays.copyOf(timestamps4, sampleCount);
                        flags4 = Arrays.copyOf(flags4, sampleCount);
                        remainingSamplesInChunk = remainingSamplesInChunk2;
                    }
                } else {
                    remainingSamplesAtTimestampOffset4 = remainingSamplesAtTimestampOffset;
                    if (ctts != null) {
                        while (remainingSamplesAtTimestampOffset4 == 0 && remainingTimestampOffsetChanges2 > 0) {
                            remainingSamplesAtTimestampOffset4 = ctts.readUnsignedIntToInt();
                            timestampOffset3 = ctts.readInt();
                            remainingTimestampOffsetChanges2--;
                        }
                        remainingSamplesAtTimestampOffset4--;
                    }
                    int currentSampleSize = sampleSizeBox2.readNextSampleSize();
                    int[] sizes6 = sizes5;
                    long[] timestamps5 = timestamps4;
                    totalSize += (long) currentSampleSize;
                    if (currentSampleSize > maximumSize3) {
                        maximumSize3 = currentSampleSize;
                    }
                    if (omitTrackSampleTable) {
                        syncSampleIndicesList = syncSampleIndicesList2;
                    } else {
                        offsets[i4] = offset;
                        sizes6[i4] = currentSampleSize;
                        timestamps5[i4] = timestampTimeUnits + ((long) timestampOffset3);
                        flags4[i4] = stss2 == null ? 1 : 0;
                        if (i4 != nextSynchronizationSampleIndex3) {
                            syncSampleIndicesList = syncSampleIndicesList2;
                        } else {
                            flags4[i4] = 1;
                            syncSampleIndicesList = syncSampleIndicesList2;
                            syncSampleIndicesList.add(Integer.valueOf(i4));
                        }
                    }
                    if (stss2 != null && i4 == nextSynchronizationSampleIndex3 && remainingSynchronizationSamples5 - 1 > 0) {
                        nextSynchronizationSampleIndex3 = ((ParsableByteArray) Preconditions.checkNotNull(stss2)).readUnsignedIntToInt() - 1;
                    }
                    syncSampleIndicesList2 = syncSampleIndicesList;
                    timestampTimeUnits += (long) timestampDeltaInTimeUnits2;
                    int remainingSamplesAtTimestampDelta5 = remainingSamplesAtTimestampDelta - 1;
                    if (remainingSamplesAtTimestampDelta5 == 0 && remainingTimestampDeltaChanges > 0) {
                        remainingSamplesAtTimestampDelta5 = stts.readUnsignedIntToInt();
                        timestampDeltaInTimeUnits2 = stts.readInt();
                        remainingTimestampDeltaChanges2 = remainingTimestampDeltaChanges - 1;
                    } else {
                        remainingTimestampDeltaChanges2 = remainingTimestampDeltaChanges;
                    }
                    int remainingTimestampDeltaChanges6 = remainingSamplesAtTimestampDelta5;
                    offset += (long) currentSampleSize;
                    remainingSamplesInChunk2--;
                    i4++;
                    sizes5 = sizes6;
                    remainingTimestampDeltaChanges4 = remainingTimestampDeltaChanges2;
                    remainingSamplesAtTimestampDelta4 = remainingTimestampDeltaChanges6;
                    timestamps4 = timestamps5;
                }
            }
            long duration5 = timestampTimeUnits + ((long) timestampOffset3);
            boolean isCttsValid = true;
            if (ctts != null) {
                while (true) {
                    if (remainingTimestampOffsetChanges2 <= 0) {
                        break;
                    }
                    if (ctts.readUnsignedIntToInt() != 0) {
                        isCttsValid = false;
                        break;
                    }
                    ctts.readInt();
                    remainingTimestampOffsetChanges2--;
                }
            }
            if (remainingSynchronizationSamples5 == 0 && remainingSamplesAtTimestampDelta == 0 && remainingSamplesInChunk == 0 && remainingTimestampDeltaChanges == 0 && remainingSamplesAtTimestampOffset == 0 && isCttsValid) {
                offsets2 = offsets;
                sizes = sizes5;
                remainingSamplesAtTimestampOffset2 = remainingSamplesAtTimestampOffset;
            } else {
                offsets2 = offsets;
                sizes = sizes5;
                remainingSamplesAtTimestampOffset2 = remainingSamplesAtTimestampOffset;
                Log.w(TAG, "Inconsistent stbl box for track " + track3.id + ": remainingSynchronizationSamples " + remainingSynchronizationSamples5 + ", remainingSamplesAtTimestampDelta " + remainingSamplesAtTimestampDelta + ", remainingSamplesInChunk " + remainingSamplesInChunk + ", remainingTimestampDeltaChanges " + remainingTimestampDeltaChanges + ", remainingSamplesAtTimestampOffset " + remainingSamplesAtTimestampOffset + (!isCttsValid ? ", ctts invalid" : ""));
            }
            int[] iArr = flags4;
            timestamps = timestamps4;
            duration = totalSize;
            offsets3 = offsets2;
            flags = iArr;
            sampleCount2 = nextSynchronizationSampleIndex3;
            maximumSize = maximumSize3;
            sizes2 = sizes;
            remainingSamplesAtTimestampOffset3 = sampleCount;
            remainingSynchronizationSamples = remainingSynchronizationSamples5;
            remainingSynchronizationSamples2 = timestampDeltaInTimeUnits2;
            duration2 = duration5;
            remainingSamplesAtTimestampDelta2 = remainingSamplesAtTimestampDelta;
            timestampOffset = timestampOffset3;
        }
        if (track3.mediaDurationUs > 0) {
            long averageBitrate = Util.scaleLargeValue(duration * 8, 1000000L, track3.mediaDurationUs, RoundingMode.HALF_DOWN);
            if (averageBitrate > 0 && averageBitrate < SieveCacheKt.NodeLinkMask) {
                Format format2 = track3.format.buildUpon().setAverageBitrate((int) averageBitrate).build();
                track3 = track3.copyWithFormat(format2);
            }
        }
        long durationUs = Util.scaleLargeTimestamp(duration2, 1000000L, track3.timescale);
        int[] syncSampleIndices = Ints.toArray(syncSampleIndicesList2);
        if (track3.editListDurations == null) {
            if (!omitTrackSampleTable) {
                long totalSize2 = track3.timescale;
                Util.scaleLargeTimestampsInPlace(timestamps, 1000000L, totalSize2);
            }
            return new TrackSampleTable(track3, offsets3, sizes2, maximumSize, timestamps, flags, syncSampleIndices, hasOnlySyncSamples, durationUs, remainingSamplesAtTimestampOffset3);
        }
        long[] timestamps6 = timestamps;
        if (omitTrackSampleTable) {
            long[] editListMediaTimes = (long[]) Preconditions.checkNotNull(track3.editListMediaTimes);
            if (track3.editListDurations.length == 1 && track3.editListDurations[0] == 0) {
                editedDurationUs = Util.scaleLargeTimestamp(duration2 - editListMediaTimes[0], 1000000L, track3.timescale);
            } else {
                long pts = 0;
                for (int i5 = 0; i5 < track3.editListDurations.length; i5++) {
                    if (editListMediaTimes[i5] != -1) {
                        pts += track3.editListDurations[i5];
                    }
                }
                editedDurationUs = Util.scaleLargeTimestamp(pts, 1000000L, track3.movieTimescale);
            }
            return new TrackSampleTable(track3, offsets3, sizes2, maximumSize, timestamps6, flags, syncSampleIndices, hasOnlySyncSamples, editedDurationUs, remainingSamplesAtTimestampOffset3);
        }
        if (track3.editListDurations.length == 1 && track3.type == 1 && timestamps6.length >= 2) {
            long editStartTime = ((long[]) Preconditions.checkNotNull(track3.editListMediaTimes))[0];
            long j2 = track3.editListDurations[0];
            long j3 = track3.timescale;
            long durationUs2 = track3.movieTimescale;
            long editEndTime = editStartTime + Util.scaleLargeTimestamp(j2, j3, durationUs2);
            if (canApplyEditWithGaplessInfo(timestamps6, duration2, editStartTime, editEndTime)) {
                duration3 = duration2;
                long paddingTimeUnits = Math.max(0L, duration2 - editEndTime);
                long encoderDelay = Util.scaleLargeTimestamp(editStartTime - timestamps6[0], track3.format.sampleRate, track3.timescale);
                long encoderPadding = Util.scaleLargeTimestamp(paddingTimeUnits, track3.format.sampleRate, track3.timescale);
                if ((encoderDelay != 0 || encoderPadding != 0) && encoderDelay <= SieveCacheKt.NodeLinkMask && encoderPadding <= SieveCacheKt.NodeLinkMask) {
                    int nextSynchronizationSampleIndex4 = (int) encoderDelay;
                    gaplessInfoHolder.encoderDelay = nextSynchronizationSampleIndex4;
                    gaplessInfoHolder.encoderPadding = (int) encoderPadding;
                    Util.scaleLargeTimestampsInPlace(timestamps6, 1000000L, track3.timescale);
                    long editedDurationUs2 = Util.scaleLargeTimestamp(track3.editListDurations[0], 1000000L, track3.movieTimescale);
                    return new TrackSampleTable(track3, offsets3, sizes2, maximumSize, timestamps6, flags, syncSampleIndices, hasOnlySyncSamples, editedDurationUs2, remainingSamplesAtTimestampOffset3);
                }
            } else {
                duration3 = duration2;
            }
        } else {
            duration3 = duration2;
        }
        if (track3.editListDurations.length == 1 && track3.editListDurations[0] == 0) {
            long editStartTime2 = ((long[]) Preconditions.checkNotNull(track3.editListMediaTimes))[0];
            for (int i6 = 0; i6 < timestamps6.length; i6++) {
                timestamps6[i6] = Util.scaleLargeTimestamp(timestamps6[i6] - editStartTime2, 1000000L, track3.timescale);
            }
            long durationUs3 = Util.scaleLargeTimestamp(duration3 - editStartTime2, 1000000L, track3.timescale);
            return new TrackSampleTable(track3, offsets3, sizes2, maximumSize, timestamps6, flags, syncSampleIndices, hasOnlySyncSamples, durationUs3, remainingSamplesAtTimestampOffset3);
        }
        long[] offsets6 = offsets3;
        int[] sizes7 = sizes2;
        int maximumSize4 = maximumSize;
        int[] flags5 = flags;
        int[] syncSampleIndices2 = syncSampleIndices;
        int sampleCount6 = remainingSamplesAtTimestampOffset3;
        boolean omitZeroDurationClippedSample2 = track3.type == 1;
        boolean copyMetadata = false;
        int[] startIndices = new int[track3.editListDurations.length];
        int[] endIndices = new int[track3.editListDurations.length];
        long[] editListMediaTimes2 = (long[]) Preconditions.checkNotNull(track3.editListMediaTimes);
        int nextSampleIndex = 0;
        int editedSampleCount = 0;
        int i7 = 0;
        while (true) {
            int[] syncSampleIndices3 = syncSampleIndices2;
            if (i7 >= track3.editListDurations.length) {
                break;
            }
            int timestampDeltaInTimeUnits3 = remainingSynchronizationSamples2;
            int remainingSamplesAtTimestampDelta6 = remainingSamplesAtTimestampDelta2;
            long editMediaTime = editListMediaTimes2[i7];
            if (editMediaTime == -1) {
                omitZeroDurationClippedSample = omitZeroDurationClippedSample2;
                i2 = i7;
                timestampOffset2 = timestampOffset;
                remainingSynchronizationSamples3 = remainingSynchronizationSamples;
            } else {
                i2 = i7;
                int timestampOffset4 = timestampOffset;
                remainingSynchronizationSamples3 = remainingSynchronizationSamples;
                long editDuration = editMediaTime + Util.scaleLargeTimestamp(track3.editListDurations[i2], track3.timescale, track3.movieTimescale);
                timestampOffset2 = timestampOffset4;
                startIndices[i2] = Util.binarySearchFloor(timestamps6, editMediaTime, true, true);
                int firstSampleAfterEdit = Util.binarySearchCeil(timestamps6, editDuration, omitZeroDurationClippedSample2, false);
                int samplesSeenAfterEnd = 0;
                int maxValidIndexInWindow = firstSampleAfterEdit - 1;
                omitZeroDurationClippedSample = omitZeroDurationClippedSample2;
                int j4 = firstSampleAfterEdit;
                while (true) {
                    int samplesSeenAfterEnd2 = samplesSeenAfterEnd;
                    int samplesSeenAfterEnd3 = timestamps6.length;
                    if (j4 >= samplesSeenAfterEnd3) {
                        samplesSeenAfterEnd = samplesSeenAfterEnd2;
                        break;
                    }
                    if (timestamps6[j4] < editDuration) {
                        j = j4;
                        maxValidIndexInWindow = j4;
                        samplesSeenAfterEnd = samplesSeenAfterEnd2;
                    } else {
                        samplesSeenAfterEnd = samplesSeenAfterEnd2 + 1;
                        j = j4;
                        if (samplesSeenAfterEnd > track3.format.maxNumReorderSamples) {
                            break;
                        }
                    }
                    j4 = j + 1;
                }
                endIndices[i2] = maxValidIndexInWindow + 1;
                int initialStartIndex = startIndices[i2];
                while (startIndices[i2] > 0 && (flags5[startIndices[i2]] & 1) == 0) {
                    startIndices[i2] = startIndices[i2] - 1;
                }
                if (startIndices[i2] == 0) {
                    z = false;
                    if ((flags5[0] & 1) == 0) {
                        startIndices[i2] = initialStartIndex;
                        while (true) {
                            int initialStartIndex2 = initialStartIndex;
                            int initialStartIndex3 = startIndices[i2];
                            int samplesSeenAfterEnd4 = samplesSeenAfterEnd;
                            int samplesSeenAfterEnd5 = endIndices[i2];
                            if (initialStartIndex3 >= samplesSeenAfterEnd5 || (flags5[startIndices[i2]] & 1) != 0) {
                                break;
                            }
                            startIndices[i2] = startIndices[i2] + 1;
                            initialStartIndex = initialStartIndex2;
                            samplesSeenAfterEnd = samplesSeenAfterEnd4;
                        }
                    }
                } else {
                    z = false;
                }
                editedSampleCount += endIndices[i2] - startIndices[i2];
                boolean z2 = nextSampleIndex != startIndices[i2] ? true : z;
                nextSampleIndex = endIndices[i2];
                copyMetadata |= z2;
            }
            i7 = i2 + 1;
            remainingSynchronizationSamples2 = timestampDeltaInTimeUnits3;
            syncSampleIndices2 = syncSampleIndices3;
            remainingSamplesAtTimestampDelta2 = remainingSamplesAtTimestampDelta6;
            remainingSynchronizationSamples = remainingSynchronizationSamples3;
            timestampOffset = timestampOffset2;
            omitZeroDurationClippedSample2 = omitZeroDurationClippedSample;
        }
        int timestampDeltaInTimeUnits4 = remainingSynchronizationSamples2;
        boolean copyMetadata2 = copyMetadata | (editedSampleCount != sampleCount6);
        long[] editedOffsets = copyMetadata2 ? new long[editedSampleCount] : offsets6;
        int[] editedSizes = copyMetadata2 ? new int[editedSampleCount] : sizes7;
        int editedMaximumSize = copyMetadata2 ? 0 : maximumSize4;
        int[] editedFlags = copyMetadata2 ? new int[editedSampleCount] : flags5;
        List<Integer> editedSyncSampleIndicesList = copyMetadata2 ? new ArrayList<>() : syncSampleIndicesList2;
        long[] editedTimestamps = new long[editedSampleCount];
        long pts2 = 0;
        boolean hasPrerollSamples = false;
        int nextSampleIndex2 = 0;
        int sampleIndex = editedMaximumSize;
        int sampleIndex2 = 0;
        while (true) {
            int timestampDeltaInTimeUnits5 = timestampDeltaInTimeUnits4;
            if (nextSampleIndex2 >= track3.editListDurations.length) {
                break;
            }
            long editMediaTime2 = track3.editListMediaTimes[nextSampleIndex2];
            int startIndex = startIndices[nextSampleIndex2];
            int i8 = nextSampleIndex2;
            int endIndex = endIndices[i8];
            if (!copyMetadata2) {
                sampleCount3 = sampleCount6;
            } else {
                sampleCount3 = sampleCount6;
                int sampleCount7 = endIndex - startIndex;
                System.arraycopy(offsets6, startIndex, editedOffsets, sampleIndex2, sampleCount7);
                System.arraycopy(sizes7, startIndex, editedSizes, sampleIndex2, sampleCount7);
                System.arraycopy(flags5, startIndex, editedFlags, sampleIndex2, sampleCount7);
            }
            int j5 = startIndex;
            long[] offsets7 = offsets6;
            int editedMaximumSize2 = sampleIndex;
            while (j5 < endIndex) {
                int sampleIndex3 = sampleIndex2;
                int endIndex2 = endIndex;
                long ptsUs = Util.scaleLargeTimestamp(pts2, 1000000L, track3.movieTimescale);
                long j6 = timestamps6[j5] - editMediaTime2;
                long ptsUs2 = track3.timescale;
                long timeInSegmentUs = Util.scaleLargeTimestamp(j6, 1000000L, ptsUs2);
                if (timeInSegmentUs < 0) {
                    hasPrerollSamples = true;
                }
                editedTimestamps[sampleIndex3] = ptsUs + timeInSegmentUs;
                if (copyMetadata2 && editedSizes[sampleIndex3] > editedMaximumSize2) {
                    editedMaximumSize2 = sizes7[j5];
                }
                if (copyMetadata2 && !hasOnlySyncSamples && (editedFlags[sampleIndex3] & 1) != 0) {
                    editedSyncSampleIndicesList.add(Integer.valueOf(sampleIndex3));
                }
                sampleIndex2 = sampleIndex3 + 1;
                j5++;
                endIndex = endIndex2;
            }
            pts2 += track3.editListDurations[i8];
            nextSampleIndex2 = i8 + 1;
            sampleIndex2 = sampleIndex2;
            timestampDeltaInTimeUnits4 = timestampDeltaInTimeUnits5;
            sampleCount6 = sampleCount3;
            sampleIndex = editedMaximumSize2;
            offsets6 = offsets7;
        }
        long editedDurationUs3 = Util.scaleLargeTimestamp(pts2, 1000000L, track3.movieTimescale);
        if (!hasPrerollSamples) {
            track2 = track3;
        } else {
            Format format3 = track3.format.buildUpon().setHasPrerollSamples(true).build();
            track2 = track3.copyWithFormat(format3);
        }
        return new TrackSampleTable(track2, editedOffsets, editedSizes, sampleIndex, editedTimestamps, editedFlags, Ints.toArray(editedSyncSampleIndicesList), hasOnlySyncSamples, editedDurationUs3, editedOffsets.length);
    }

    private static Metadata parseUdtaMeta(ParsableByteArray meta, int limit) {
        meta.skipBytes(8);
        maybeSkipRemainingMetaBoxHeaderBytes(meta);
        while (meta.getPosition() < limit) {
            int atomPosition = meta.getPosition();
            int atomSize = meta.readInt();
            int atomType = meta.readInt();
            if (atomType == 1768715124) {
                meta.setPosition(atomPosition);
                return parseIlst(meta, atomPosition + atomSize);
            }
            meta.setPosition(atomPosition + atomSize);
        }
        return null;
    }

    private static Metadata parseIlst(ParsableByteArray ilst, int limit) {
        ilst.skipBytes(8);
        ArrayList<Metadata.Entry> entries = new ArrayList<>();
        while (ilst.getPosition() < limit) {
            Metadata.Entry entry = MetadataUtil.parseIlstElement(ilst);
            if (entry != null) {
                entries.add(entry);
            }
        }
        if (entries.isEmpty()) {
            return null;
        }
        return new Metadata(entries);
    }

    private static Metadata parseXyz(ParsableByteArray xyzBox) {
        int length = xyzBox.readShort();
        xyzBox.skipBytes(2);
        String location = xyzBox.readString(length);
        int plusSignIndex = location.lastIndexOf(43);
        int minusSignIndex = location.lastIndexOf(45);
        int latitudeEndIndex = Math.max(plusSignIndex, minusSignIndex);
        try {
            float latitude = Float.parseFloat(location.substring(0, latitudeEndIndex));
            float longitude = Float.parseFloat(location.substring(latitudeEndIndex, location.length() - 1));
            return new Metadata(new Mp4LocationData(latitude, longitude));
        } catch (IndexOutOfBoundsException | NumberFormatException e) {
            return null;
        }
    }

    private static TkhdData parseTkhd(ParsableByteArray tkhd) {
        boolean durationUnknown;
        long duration;
        int rotationDegrees;
        tkhd.setPosition(8);
        int fullAtom = tkhd.readInt();
        int version = parseFullBoxVersion(fullAtom);
        tkhd.skipBytes(version == 0 ? 8 : 16);
        int trackId = tkhd.readInt();
        tkhd.skipBytes(4);
        int durationPosition = tkhd.getPosition();
        int durationByteCount = version == 0 ? 4 : 8;
        int i = 0;
        while (true) {
            if (i >= durationByteCount) {
                durationUnknown = true;
                break;
            }
            if (tkhd.getData()[durationPosition + i] == -1) {
                i++;
            } else {
                durationUnknown = false;
                break;
            }
        }
        if (durationUnknown) {
            tkhd.skipBytes(durationByteCount);
            duration = C.TIME_UNSET;
        } else {
            duration = version == 0 ? tkhd.readUnsignedInt() : tkhd.readUnsignedLongToLong();
            if (duration == 0) {
                duration = C.TIME_UNSET;
            }
        }
        tkhd.skipBytes(10);
        int alternateGroup = tkhd.readUnsignedShort();
        tkhd.skipBytes(4);
        int a00 = tkhd.readInt();
        int a01 = tkhd.readInt();
        tkhd.skipBytes(4);
        int a10 = tkhd.readInt();
        int a11 = tkhd.readInt();
        if (a00 == 0 && a01 == 65536 && ((a10 == (-65536) || a10 == 65536) && a11 == 0)) {
            rotationDegrees = 90;
        } else if (a00 == 0 && a01 == (-65536) && ((a10 == 65536 || a10 == (-65536)) && a11 == 0)) {
            rotationDegrees = 270;
        } else {
            int rotationDegrees2 = -65536;
            if ((a00 == rotationDegrees2 || a00 == 65536) && a01 == 0 && a10 == 0 && a11 == (-65536)) {
                rotationDegrees = 180;
            } else {
                rotationDegrees = 0;
            }
        }
        tkhd.skipBytes(16);
        int width = tkhd.readShort();
        tkhd.skipBytes(2);
        int height = tkhd.readShort();
        return new TkhdData(trackId, duration, alternateGroup, rotationDegrees, width, height);
    }

    private static int parseHdlr(ParsableByteArray hdlr) {
        hdlr.setPosition(16);
        return hdlr.readInt();
    }

    private static int getTrackTypeForHdlr(int hdlr) {
        if (hdlr == TYPE_soun) {
            return 1;
        }
        if (hdlr == TYPE_vide) {
            return 2;
        }
        if (hdlr == TYPE_text || hdlr == TYPE_sbtl || hdlr == TYPE_subt || hdlr == TYPE_clcp || hdlr == TYPE_subp) {
            return 3;
        }
        if (hdlr == 1835365473) {
            return 5;
        }
        return -1;
    }

    private static MdhdData parseMdhd(ParsableByteArray mdhd) {
        long timescale;
        long mediaDurationUs;
        mdhd.setPosition(8);
        int fullAtom = mdhd.readInt();
        int version = parseFullBoxVersion(fullAtom);
        mdhd.skipBytes(version == 0 ? 8 : 16);
        long timescale2 = mdhd.readUnsignedInt();
        boolean mediaDurationUnknown = true;
        int mediaDurationPosition = mdhd.getPosition();
        int mediaDurationByteCount = version == 0 ? 4 : 8;
        int i = 0;
        while (true) {
            if (i >= mediaDurationByteCount) {
                break;
            }
            if (mdhd.getData()[mediaDurationPosition + i] == -1) {
                i++;
            } else {
                mediaDurationUnknown = false;
                break;
            }
        }
        if (mediaDurationUnknown) {
            mdhd.skipBytes(mediaDurationByteCount);
            timescale = timescale2;
            mediaDurationUs = -9223372036854775807L;
        } else {
            long mediaDuration = version == 0 ? mdhd.readUnsignedInt() : mdhd.readUnsignedLongToLong();
            if (mediaDuration == 0) {
                timescale = timescale2;
                mediaDurationUs = -9223372036854775807L;
            } else {
                timescale = timescale2;
                mediaDurationUs = Util.scaleLargeTimestamp(mediaDuration, 1000000L, timescale);
            }
        }
        String language = getLanguageFromCode(mdhd.readUnsignedShort());
        return new MdhdData(timescale, mediaDurationUs, language);
    }

    private static String getLanguageFromCode(int languageCode) {
        char[] chars = {(char) (((languageCode >> 10) & 31) + 96), (char) (((languageCode >> 5) & 31) + 96), (char) ((languageCode & 31) + 96)};
        for (char c : chars) {
            if (c < 'a' || c > 'z') {
                return null;
            }
        }
        return new String(chars);
    }

    private static StsdData parseStsd(ParsableByteArray stsd, TkhdData tkhdData, String language, DrmInitData drmInitData, boolean isQuickTime) throws ParserException {
        stsd.setPosition(12);
        int numberOfEntries = stsd.readInt();
        StsdData out = new StsdData(numberOfEntries);
        for (int i = 0; i < numberOfEntries; i++) {
            int childStartPosition = stsd.getPosition();
            int childAtomSize = stsd.readInt();
            ExtractorUtil.checkContainerInput(childAtomSize > 0, "childAtomSize must be positive");
            int childAtomType = stsd.readInt();
            if (childAtomType == 1635148593 || childAtomType == 1635148595 || childAtomType == 1701733238 || childAtomType == 1831958048 || childAtomType == 1836070006 || childAtomType == 1752589105 || childAtomType == 1751479857 || childAtomType == 1987470129 || childAtomType == 1987471665 || childAtomType == 1932670515 || childAtomType == 1211250227 || childAtomType == 1748121139 || childAtomType == 1987063864 || childAtomType == 1987063865 || childAtomType == 1635135537 || childAtomType == 1685479798 || childAtomType == 1685479729 || childAtomType == 1685481573 || childAtomType == 1685481521 || childAtomType == 1634760241 || childAtomType == 1684108849) {
                parseVideoSampleEntry(stsd, childAtomType, childStartPosition, childAtomSize, tkhdData.id, language, tkhdData.rotationDegrees, drmInitData, out, i);
            } else if (childAtomType == 1836069985 || childAtomType == 1701733217 || childAtomType == 1633889587 || childAtomType == 1700998451 || childAtomType == 1633889588 || childAtomType == 1835823201 || childAtomType == 1685353315 || childAtomType == 1685353317 || childAtomType == 1685353320 || childAtomType == 1685353324 || childAtomType == 1685353336 || childAtomType == 1935764850 || childAtomType == 1935767394 || childAtomType == 1819304813 || childAtomType == 1936684916 || childAtomType == 1953984371 || childAtomType == 778924082 || childAtomType == 778924083 || childAtomType == 1835557169 || childAtomType == 1835560241 || childAtomType == 1634492771 || childAtomType == 1634492791 || childAtomType == 1970037111 || childAtomType == 1332770163 || childAtomType == 1716281667 || childAtomType == 1767992678 || childAtomType == 1768973165 || childAtomType == 1718641517) {
                parseAudioSampleEntry(stsd, childAtomType, childStartPosition, childAtomSize, tkhdData.id, language, isQuickTime, drmInitData, out, i);
            } else if (childAtomType == 1414810956 || childAtomType == 1954034535 || childAtomType == 2004251764 || childAtomType == 1937010800 || childAtomType == 1664495672 || childAtomType == 1836070003) {
                parseTextSampleEntry(stsd, childAtomType, childStartPosition, childAtomSize, tkhdData, language, out);
            } else if (childAtomType != 1835365492) {
                if (childAtomType == 1667329389) {
                    out.format = new Format.Builder().setId(tkhdData.id).setSampleMimeType(MimeTypes.APPLICATION_CAMERA_MOTION).build();
                }
            } else {
                parseMetaDataSampleEntry(stsd, childAtomType, childStartPosition, tkhdData.id, out);
            }
            stsd.setPosition(childStartPosition + childAtomSize);
        }
        return out;
    }

    private static void parseTextSampleEntry(ParsableByteArray parent, int atomType, int position, int atomSize, TkhdData tkhdData, String language, StsdData out) {
        parent.setPosition(position + 8 + 8);
        ImmutableList<byte[]> initializationData = null;
        long subsampleOffsetUs = Long.MAX_VALUE;
        String mimeType = null;
        if (atomType == 1414810956) {
            mimeType = MimeTypes.APPLICATION_TTML;
        } else if (atomType == 1954034535) {
            mimeType = MimeTypes.APPLICATION_TX3G;
            int sampleDescriptionLength = (atomSize - 8) - 8;
            byte[] sampleDescriptionData = new byte[sampleDescriptionLength];
            parent.readBytes(sampleDescriptionData, 0, sampleDescriptionLength);
            initializationData = ImmutableList.of(sampleDescriptionData);
        } else if (atomType == 2004251764) {
            mimeType = MimeTypes.APPLICATION_MP4VTT;
        } else if (atomType == 1937010800) {
            mimeType = MimeTypes.APPLICATION_TTML;
            subsampleOffsetUs = 0;
        } else if (atomType == 1664495672) {
            mimeType = MimeTypes.APPLICATION_MP4CEA608;
            out.requiredSampleTransformation = 1;
        } else {
            if (atomType != 1836070003) {
                throw new IllegalStateException();
            }
            int pos = parent.getPosition();
            parent.skipBytes(4);
            int childAtomType = parent.readInt();
            if (childAtomType == 1702061171) {
                EsdsData esds = parseEsdsFromParent(parent, pos);
                if (esds.initializationData == null || esds.initializationData.length != 64) {
                    return;
                }
                mimeType = MimeTypes.APPLICATION_VOBSUB;
                String idx = formatVobsubIdx(esds.initializationData, tkhdData.width, tkhdData.height);
                initializationData = ImmutableList.of(Util.getUtf8Bytes(idx));
            }
        }
        if (mimeType != null) {
            out.format = new Format.Builder().setId(tkhdData.id).setSampleMimeType(mimeType).setLanguage(language).setSubsampleOffsetUs(subsampleOffsetUs).setInitializationData(initializationData).build();
        }
    }

    private static String formatVobsubIdx(byte[] src, int width, int height) {
        Preconditions.checkState(src.length == 64);
        List<String> palette = new ArrayList<>(16);
        for (int i = 0; i < src.length - 3; i += 4) {
            int yuv = Ints.fromBytes(src[i], src[i + 1], src[i + 2], src[i + 3]);
            palette.add(String.format("%06x", Integer.valueOf(vobsubYuvToRgb(yuv))));
        }
        return "size: " + width + "x" + height + "\npalette: " + Joiner.on(", ").join(palette) + "\n";
    }

    private static int vobsubYuvToRgb(int yuv) {
        int y = (yuv >> 16) & 255;
        int v = (yuv >> 8) & 255;
        int u = yuv & 255;
        int r = (((v + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) * 14075) / 10000) + y;
        int g = (y - (((u + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) * 3455) / 10000)) - (((v + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) * 7169) / 10000);
        int b = (((u + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) * 17790) / 10000) + y;
        return Util.constrainValue(b, 0, 255) | (Util.constrainValue(r, 0, 255) << 16) | (Util.constrainValue(g, 0, 255) << 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:202:0x0548  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseVideoSampleEntry(ParsableByteArray parent, int atomType, int position, int size, int trackId, String language, int rotationDegrees, DrmInitData drmInitData, StsdData out, int entryIndex) throws ParserException {
        DrmInitData drmInitData2;
        int colorRange;
        int colorRange2;
        String mimeType;
        DolbyVisionConfig dolbyVisionConfig;
        int stereoMode;
        int bitdepthLuma;
        int bitdepthChroma;
        List<byte[]> initializationData;
        DolbyVisionConfig dolbyVisionConfig2;
        String codecs;
        String mimeType2;
        int atomType2;
        String mimeType3;
        boolean pixelWidthHeightRatioFromPasp;
        String codecs2;
        ByteBuffer hdrStaticInfo;
        ByteBuffer hdrStaticInfo2;
        int i;
        String mimeType4;
        int childAtomType = size;
        StsdData stsdData = out;
        parent.setPosition(position + 8 + 8);
        parent.skipBytes(16);
        int width = parent.readUnsignedShort();
        int height = parent.readUnsignedShort();
        int bitdepthLuma2 = 8;
        int bitdepthChroma2 = 8;
        parent.skipBytes(50);
        int childPosition = parent.getPosition();
        int atomType3 = atomType;
        if (atomType3 != 1701733238) {
            drmInitData2 = drmInitData;
        } else {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parent, position, childAtomType);
            if (sampleEntryEncryptionData == null) {
                drmInitData2 = drmInitData;
            } else {
                atomType3 = ((Integer) sampleEntryEncryptionData.first).intValue();
                if (drmInitData == null) {
                    drmInitData2 = null;
                } else {
                    drmInitData2 = drmInitData.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                }
                stsdData.trackEncryptionBoxes[entryIndex] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parent.setPosition(childPosition);
        }
        String mimeType5 = null;
        if (atomType3 == 1831958048) {
            mimeType5 = MimeTypes.VIDEO_MPEG;
        } else if (atomType3 == 1211250227) {
            mimeType5 = MimeTypes.VIDEO_H263;
        }
        List<byte[]> initializationData2 = null;
        EsdsData esdsData = null;
        BtrtData btrtData = null;
        int maxNumReorderSamples = -1;
        ByteBuffer hdrStaticInfo3 = null;
        int decodedHeight = -1;
        int decodedWidth = -1;
        boolean pixelWidthHeightRatioFromPasp2 = false;
        String codecs3 = null;
        int stereoMode2 = -1;
        int stereoMode3 = -1;
        int colorRange3 = -1;
        int colorTransfer = -1;
        byte[] projectionData = null;
        DrmInitData drmInitData3 = drmInitData2;
        NalUnitUtil.H265VpsData vpsData = null;
        float pixelWidthHeightRatio = 1.0f;
        int colorSpace = -1;
        DolbyVisionConfig dolbyVisionConfig3 = null;
        while (true) {
            colorRange = width;
            int width2 = childPosition - position;
            if (width2 >= childAtomType) {
                colorRange2 = colorRange3;
                mimeType = mimeType5;
                dolbyVisionConfig = dolbyVisionConfig3;
                stereoMode = stereoMode2;
                bitdepthLuma = bitdepthLuma2;
                bitdepthChroma = bitdepthChroma2;
                initializationData = initializationData2;
            } else {
                parent.setPosition(childPosition);
                int childStartPosition = parent.getPosition();
                int childPosition2 = childPosition;
                int childAtomSize = parent.readInt();
                if (childAtomSize == 0) {
                    dolbyVisionConfig = dolbyVisionConfig3;
                    if (parent.getPosition() - position == childAtomType) {
                        colorRange2 = colorRange3;
                        mimeType = mimeType5;
                        stereoMode = stereoMode2;
                        bitdepthLuma = bitdepthLuma2;
                        bitdepthChroma = bitdepthChroma2;
                        initializationData = initializationData2;
                    }
                } else {
                    dolbyVisionConfig = dolbyVisionConfig3;
                }
                ExtractorUtil.checkContainerInput(childAtomSize > 0, "childAtomSize must be positive");
                int childAtomType2 = parent.readInt();
                if (childAtomType2 == 1635148611) {
                    atomType2 = atomType3;
                    ExtractorUtil.checkContainerInput(mimeType5 == null, null);
                    parent.setPosition(childStartPosition + 8);
                    AvcConfig avcConfig = AvcConfig.parse(parent);
                    initializationData2 = avcConfig.initializationData;
                    stsdData.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                    if (!pixelWidthHeightRatioFromPasp2) {
                        pixelWidthHeightRatio = avcConfig.pixelWidthHeightRatio;
                    }
                    String codecs4 = avcConfig.codecs;
                    int maxNumReorderSamples2 = avcConfig.maxNumReorderFrames;
                    colorSpace = avcConfig.colorSpace;
                    colorRange3 = avcConfig.colorRange;
                    colorTransfer = avcConfig.colorTransfer;
                    bitdepthLuma2 = avcConfig.bitdepthLuma;
                    int bitdepthChroma3 = avcConfig.bitdepthChroma;
                    maxNumReorderSamples = maxNumReorderSamples2;
                    bitdepthChroma2 = bitdepthChroma3;
                    codecs2 = codecs4;
                    mimeType3 = MimeTypes.VIDEO_H264;
                    pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                } else {
                    atomType2 = atomType3;
                    if (childAtomType2 == 1752589123) {
                        ExtractorUtil.checkContainerInput(mimeType5 == null, null);
                        parent.setPosition(childStartPosition + 8);
                        HevcConfig hevcConfig = HevcConfig.parse(parent);
                        List<byte[]> initializationData3 = hevcConfig.initializationData;
                        stsdData.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                        if (!pixelWidthHeightRatioFromPasp2) {
                            pixelWidthHeightRatio = hevcConfig.pixelWidthHeightRatio;
                        }
                        int maxNumReorderSamples3 = hevcConfig.maxNumReorderPics;
                        int maxSubLayers = hevcConfig.maxSubLayers;
                        stereoMode3 = maxSubLayers;
                        String codecs5 = hevcConfig.codecs;
                        if (hevcConfig.stereoMode != -1) {
                            stereoMode2 = hevcConfig.stereoMode;
                        }
                        int decodedWidth2 = hevcConfig.decodedWidth;
                        int decodedHeight2 = hevcConfig.decodedHeight;
                        colorSpace = hevcConfig.colorSpace;
                        colorRange3 = hevcConfig.colorRange;
                        colorTransfer = hevcConfig.colorTransfer;
                        bitdepthLuma2 = hevcConfig.bitdepthLuma;
                        bitdepthChroma2 = hevcConfig.bitdepthChroma;
                        NalUnitUtil.H265VpsData vpsData2 = hevcConfig.vpsData;
                        decodedHeight = decodedWidth2;
                        vpsData = vpsData2;
                        decodedWidth = decodedHeight2;
                        codecs2 = codecs5;
                        mimeType3 = MimeTypes.VIDEO_H265;
                        initializationData2 = initializationData3;
                        pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                        maxNumReorderSamples = maxNumReorderSamples3;
                    } else if (childAtomType2 == 1818785347) {
                        ExtractorUtil.checkContainerInput(MimeTypes.VIDEO_H265.equals(mimeType5), "lhvC must follow hvcC atom");
                        ExtractorUtil.checkContainerInput(vpsData != null && vpsData.layerInfos.size() >= 2, "must have at least two layers");
                        parent.setPosition(childStartPosition + 8);
                        HevcConfig lhevcConfig = HevcConfig.parseLayered(parent, (NalUnitUtil.H265VpsData) Preconditions.checkNotNull(vpsData));
                        ExtractorUtil.checkContainerInput(stsdData.nalUnitLengthFieldLength == lhevcConfig.nalUnitLengthFieldLength, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms");
                        if (lhevcConfig.colorSpace != -1) {
                            ExtractorUtil.checkContainerInput(colorSpace == lhevcConfig.colorSpace, "colorSpace must be the same for both views");
                        }
                        if (lhevcConfig.colorRange != -1) {
                            ExtractorUtil.checkContainerInput(colorRange3 == lhevcConfig.colorRange, "colorRange must be the same for both views");
                        }
                        if (lhevcConfig.colorTransfer != -1) {
                            ExtractorUtil.checkContainerInput(colorTransfer == lhevcConfig.colorTransfer, "colorTransfer must be the same for both views");
                        }
                        ExtractorUtil.checkContainerInput(bitdepthLuma2 == lhevcConfig.bitdepthLuma, "bitdepthLuma must be the same for both views");
                        ExtractorUtil.checkContainerInput(bitdepthChroma2 == lhevcConfig.bitdepthChroma, "bitdepthChroma must be the same for both views");
                        if (initializationData2 != null) {
                            ImmutableList.Builder builderAddAll = ImmutableList.builder().addAll((Iterable) initializationData2);
                            mimeType4 = MimeTypes.VIDEO_MV_HEVC;
                            initializationData2 = builderAddAll.addAll((Iterable) lhevcConfig.initializationData).build();
                        } else {
                            mimeType4 = MimeTypes.VIDEO_MV_HEVC;
                            ExtractorUtil.checkContainerInput(false, "initializationData must be already set from hvcC atom");
                        }
                        String codecs6 = lhevcConfig.codecs;
                        codecs2 = codecs6;
                        mimeType3 = mimeType4;
                        pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                    } else {
                        mimeType3 = mimeType5;
                        if (childAtomType2 == 1987470147) {
                            ExtractorUtil.checkContainerInput(mimeType3 == null, null);
                            parent.setPosition(childStartPosition + 8);
                            VvcConfig vvcConfig = VvcConfig.parse(parent);
                            initializationData2 = vvcConfig.initializationData;
                            stsdData.nalUnitLengthFieldLength = vvcConfig.nalUnitLengthFieldLength;
                            String codecs7 = vvcConfig.codecs;
                            bitdepthLuma2 = vvcConfig.bitdepthLuma;
                            bitdepthChroma2 = vvcConfig.bitdepthLuma;
                            mimeType3 = MimeTypes.VIDEO_H266;
                            maxNumReorderSamples = 16;
                            codecs2 = codecs7;
                            pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                        } else if (childAtomType2 == 1986361461) {
                            VexuData vexuData = parseVideoExtendedUsageBox(parent, childStartPosition, childAtomSize);
                            if (vexuData != null && vexuData.eyesData != null) {
                                if (vpsData != null && vpsData.layerInfos.size() >= 2) {
                                    ExtractorUtil.checkContainerInput(vexuData.hasBothEyeViews(), "both eye views must be marked as available");
                                    ExtractorUtil.checkContainerInput(!vexuData.eyesData.striData.eyeViewsReversed, "for MV-HEVC, eye_views_reversed must be set to false");
                                } else if (stereoMode2 == -1) {
                                    if (vexuData.eyesData.striData.eyeViewsReversed) {
                                        i = 5;
                                    } else {
                                        i = 4;
                                    }
                                    stereoMode2 = i;
                                }
                            }
                            pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                            codecs2 = codecs3;
                        } else if (childAtomType2 == 1685480259 || childAtomType2 == 1685485123 || childAtomType2 == 1685485379) {
                            int colorRange4 = colorRange3;
                            int stereoMode4 = stereoMode2;
                            int bitdepthLuma3 = bitdepthLuma2;
                            int bitdepthChroma4 = bitdepthChroma2;
                            List<byte[]> initializationData4 = initializationData2;
                            NalUnitUtil.H265VpsData vpsData3 = vpsData;
                            pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                            codecs2 = codecs3;
                            dolbyVisionConfig = DolbyVisionConfig.parse(parent);
                            vpsData = vpsData3;
                            bitdepthChroma2 = bitdepthChroma4;
                            bitdepthLuma2 = bitdepthLuma3;
                            colorRange3 = colorRange4;
                            initializationData2 = initializationData4;
                            stereoMode2 = stereoMode4;
                        } else if (childAtomType2 == 1987076931) {
                            ExtractorUtil.checkContainerInput(mimeType3 == null, null);
                            String mimeType6 = atomType2 == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                            atomType2 = atomType2;
                            int atomType4 = childStartPosition + 12;
                            parent.setPosition(atomType4);
                            byte profile = (byte) parent.readUnsignedByte();
                            NalUnitUtil.H265VpsData vpsData4 = vpsData;
                            byte level = (byte) parent.readUnsignedByte();
                            int byte3 = parent.readUnsignedByte();
                            bitdepthLuma2 = byte3 >> 4;
                            int bitdepthChroma5 = (byte3 >> 1) & 7;
                            byte chromaSubsampling = (byte) bitdepthChroma5;
                            if (mimeType6.equals(MimeTypes.VIDEO_VP9)) {
                                initializationData2 = CodecSpecificDataUtil.buildVp9CodecPrivateInitializationData(profile, level, (byte) bitdepthLuma2, chromaSubsampling);
                            }
                            boolean fullRangeFlag = (byte3 & 1) != 0;
                            int colorPrimaries = parent.readUnsignedByte();
                            int transferCharacteristics = parent.readUnsignedByte();
                            colorSpace = ColorInfo.isoColorPrimariesToColorSpace(colorPrimaries);
                            int colorRange5 = fullRangeFlag ? 1 : 2;
                            int colorTransfer2 = ColorInfo.isoTransferCharacteristicsToColorTransfer(transferCharacteristics);
                            codecs2 = codecs3;
                            colorTransfer = colorTransfer2;
                            mimeType3 = mimeType6;
                            colorRange3 = colorRange5;
                            vpsData = vpsData4;
                            bitdepthChroma2 = bitdepthLuma2;
                            pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                        } else {
                            NalUnitUtil.H265VpsData vpsData5 = vpsData;
                            if (childAtomType2 == 1635135811) {
                                int childAtomBodySize = childAtomSize - 8;
                                byte[] initializationDataChunk = new byte[childAtomBodySize];
                                parent.readBytes(initializationDataChunk, 0, childAtomBodySize);
                                initializationData2 = ImmutableList.of(initializationDataChunk);
                                parent.setPosition(childStartPosition + 8);
                                ColorInfo colorInfo = parseAv1c(parent);
                                bitdepthLuma2 = colorInfo.lumaBitdepth;
                                bitdepthChroma2 = colorInfo.chromaBitdepth;
                                colorSpace = colorInfo.colorSpace;
                                colorRange3 = colorInfo.colorRange;
                                int childAtomBodySize2 = colorInfo.colorTransfer;
                                mimeType3 = MimeTypes.VIDEO_AV1;
                                colorTransfer = childAtomBodySize2;
                                vpsData = vpsData5;
                                pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                codecs2 = codecs3;
                            } else if (childAtomType2 == 1668050025) {
                                if (hdrStaticInfo3 != null) {
                                    hdrStaticInfo2 = hdrStaticInfo3;
                                } else {
                                    ByteBuffer hdrStaticInfo4 = allocateHdrStaticInfo();
                                    hdrStaticInfo2 = hdrStaticInfo4;
                                }
                                hdrStaticInfo2.position(21);
                                hdrStaticInfo2.putShort(parent.readShort());
                                hdrStaticInfo2.putShort(parent.readShort());
                                codecs2 = codecs3;
                                hdrStaticInfo3 = hdrStaticInfo2;
                                vpsData = vpsData5;
                                pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                            } else if (childAtomType2 == 1835295606) {
                                if (hdrStaticInfo3 != null) {
                                    hdrStaticInfo = hdrStaticInfo3;
                                } else {
                                    ByteBuffer hdrStaticInfo5 = allocateHdrStaticInfo();
                                    hdrStaticInfo = hdrStaticInfo5;
                                }
                                short displayPrimariesGX = parent.readShort();
                                short displayPrimariesGY = parent.readShort();
                                short displayPrimariesBX = parent.readShort();
                                short displayPrimariesBY = parent.readShort();
                                int bitdepthChroma6 = bitdepthChroma2;
                                short displayPrimariesRX = parent.readShort();
                                int bitdepthLuma4 = bitdepthLuma2;
                                short displayPrimariesRY = parent.readShort();
                                int colorRange6 = colorRange3;
                                short whitePointX = parent.readShort();
                                List<byte[]> initializationData5 = initializationData2;
                                short whitePointY = parent.readShort();
                                long maxDisplayMasteringLuminance = parent.readUnsignedInt();
                                long minDisplayMasteringLuminance = parent.readUnsignedInt();
                                hdrStaticInfo.position(1);
                                hdrStaticInfo.putShort(displayPrimariesRX);
                                hdrStaticInfo.putShort(displayPrimariesRY);
                                hdrStaticInfo.putShort(displayPrimariesGX);
                                hdrStaticInfo.putShort(displayPrimariesGY);
                                hdrStaticInfo.putShort(displayPrimariesBX);
                                hdrStaticInfo.putShort(displayPrimariesBY);
                                hdrStaticInfo.putShort(whitePointX);
                                hdrStaticInfo.putShort(whitePointY);
                                hdrStaticInfo.putShort((short) (maxDisplayMasteringLuminance / 10000));
                                hdrStaticInfo.putShort((short) (minDisplayMasteringLuminance / 10000));
                                codecs2 = codecs3;
                                hdrStaticInfo3 = hdrStaticInfo;
                                vpsData = vpsData5;
                                bitdepthChroma2 = bitdepthChroma6;
                                bitdepthLuma2 = bitdepthLuma4;
                                colorRange3 = colorRange6;
                                initializationData2 = initializationData5;
                                stereoMode2 = stereoMode2;
                                pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                            } else {
                                int colorRange7 = colorRange3;
                                int stereoMode5 = stereoMode2;
                                int bitdepthLuma5 = bitdepthLuma2;
                                int bitdepthChroma7 = bitdepthChroma2;
                                List<byte[]> initializationData6 = initializationData2;
                                if (childAtomType2 == 1681012275) {
                                    ExtractorUtil.checkContainerInput(mimeType3 == null, null);
                                    pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                    codecs2 = codecs3;
                                    mimeType3 = MimeTypes.VIDEO_H263;
                                    vpsData = vpsData5;
                                    bitdepthChroma2 = bitdepthChroma7;
                                    bitdepthLuma2 = bitdepthLuma5;
                                    colorRange3 = colorRange7;
                                    initializationData2 = initializationData6;
                                    stereoMode2 = stereoMode5;
                                } else if (childAtomType2 == 1702061171) {
                                    ExtractorUtil.checkContainerInput(mimeType3 == null, null);
                                    EsdsData esdsData2 = parseEsdsFromParent(parent, childStartPosition);
                                    String mimeType7 = esdsData2.mimeType;
                                    byte[] initializationDataBytes = esdsData2.initializationData;
                                    if (initializationDataBytes == null) {
                                        initializationData2 = initializationData6;
                                    } else {
                                        initializationData2 = ImmutableList.of(initializationDataBytes);
                                    }
                                    codecs2 = codecs3;
                                    esdsData = esdsData2;
                                    mimeType3 = mimeType7;
                                    vpsData = vpsData5;
                                    bitdepthChroma2 = bitdepthChroma7;
                                    bitdepthLuma2 = bitdepthLuma5;
                                    colorRange3 = colorRange7;
                                    stereoMode2 = stereoMode5;
                                    pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                } else if (childAtomType2 == 1651798644) {
                                    pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                    codecs2 = codecs3;
                                    btrtData = parseBtrtFromParent(parent, childStartPosition);
                                    vpsData = vpsData5;
                                    bitdepthChroma2 = bitdepthChroma7;
                                    bitdepthLuma2 = bitdepthLuma5;
                                    colorRange3 = colorRange7;
                                    initializationData2 = initializationData6;
                                    stereoMode2 = stereoMode5;
                                } else if (childAtomType2 == 1885434736) {
                                    float pixelWidthHeightRatio2 = parsePaspFromParent(parent, childStartPosition);
                                    pixelWidthHeightRatioFromPasp = true;
                                    codecs2 = codecs3;
                                    pixelWidthHeightRatio = pixelWidthHeightRatio2;
                                    vpsData = vpsData5;
                                    bitdepthChroma2 = bitdepthChroma7;
                                    bitdepthLuma2 = bitdepthLuma5;
                                    colorRange3 = colorRange7;
                                    initializationData2 = initializationData6;
                                    stereoMode2 = stereoMode5;
                                } else if (childAtomType2 == 1937126244) {
                                    pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                    codecs2 = codecs3;
                                    projectionData = parseProjFromParent(parent, childStartPosition, childAtomSize);
                                    vpsData = vpsData5;
                                    bitdepthChroma2 = bitdepthChroma7;
                                    bitdepthLuma2 = bitdepthLuma5;
                                    colorRange3 = colorRange7;
                                    initializationData2 = initializationData6;
                                    stereoMode2 = stereoMode5;
                                } else if (childAtomType2 == 1936995172) {
                                    int version = parent.readUnsignedByte();
                                    parent.skipBytes(3);
                                    if (version == 0) {
                                        int layout = parent.readUnsignedByte();
                                        switch (layout) {
                                            case 0:
                                                stereoMode2 = 0;
                                                break;
                                            case 1:
                                                stereoMode2 = 1;
                                                break;
                                            case 2:
                                                stereoMode2 = 2;
                                                break;
                                            case 3:
                                                stereoMode2 = 3;
                                                break;
                                            default:
                                                stereoMode2 = stereoMode5;
                                                break;
                                        }
                                        pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                        codecs2 = codecs3;
                                        vpsData = vpsData5;
                                        bitdepthChroma2 = bitdepthChroma7;
                                        bitdepthLuma2 = bitdepthLuma5;
                                        colorRange3 = colorRange7;
                                        initializationData2 = initializationData6;
                                    }
                                } else if (childAtomType2 == 1634760259) {
                                    int childAtomBodySize3 = childAtomSize - 12;
                                    byte[] initializationDataChunk2 = new byte[childAtomBodySize3];
                                    parent.setPosition(childStartPosition + 12);
                                    parent.readBytes(initializationDataChunk2, 0, childAtomBodySize3);
                                    codecs2 = CodecSpecificDataUtil.buildApvCodecString(initializationDataChunk2);
                                    List<byte[]> initializationData7 = ImmutableList.of(initializationDataChunk2);
                                    ColorInfo colorInfo2 = parseApvc(new ParsableByteArray(initializationDataChunk2));
                                    int bitdepthLuma6 = colorInfo2.lumaBitdepth;
                                    int bitdepthChroma8 = colorInfo2.chromaBitdepth;
                                    colorSpace = colorInfo2.colorSpace;
                                    int colorRange8 = colorInfo2.colorRange;
                                    int childAtomBodySize4 = colorInfo2.colorTransfer;
                                    mimeType3 = MimeTypes.VIDEO_APV;
                                    colorTransfer = childAtomBodySize4;
                                    bitdepthLuma2 = bitdepthLuma6;
                                    bitdepthChroma2 = bitdepthChroma8;
                                    colorRange3 = colorRange8;
                                    vpsData = vpsData5;
                                    pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                    initializationData2 = initializationData7;
                                    stereoMode2 = stereoMode5;
                                } else {
                                    int colorRange9 = 0;
                                    if (childAtomType2 == 1668246642 && colorSpace == -1 && colorTransfer == -1) {
                                        int colorType = parent.readInt();
                                        if (colorType == TYPE_nclx || colorType == TYPE_nclc) {
                                            int colorPrimaries2 = parent.readUnsignedShort();
                                            int transferCharacteristics2 = parent.readUnsignedShort();
                                            parent.skipBytes(2);
                                            if (childAtomSize == 19 && (parent.readUnsignedByte() & 128) != 0) {
                                                colorRange9 = 1;
                                            }
                                            colorSpace = ColorInfo.isoColorPrimariesToColorSpace(colorPrimaries2);
                                            int colorRange10 = colorRange9 != 0 ? 1 : 2;
                                            int colorPrimaries3 = ColorInfo.isoTransferCharacteristicsToColorTransfer(transferCharacteristics2);
                                            colorTransfer = colorPrimaries3;
                                            colorRange3 = colorRange10;
                                            vpsData = vpsData5;
                                            bitdepthChroma2 = bitdepthChroma7;
                                            bitdepthLuma2 = bitdepthLuma5;
                                            initializationData2 = initializationData6;
                                            stereoMode2 = stereoMode5;
                                            pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                            codecs2 = codecs3;
                                        } else {
                                            Log.w(TAG, "Unsupported color type: " + Mp4Box.getBoxTypeString(colorType));
                                            pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                            codecs2 = codecs3;
                                            vpsData = vpsData5;
                                            bitdepthChroma2 = bitdepthChroma7;
                                            bitdepthLuma2 = bitdepthLuma5;
                                            colorRange3 = colorRange7;
                                            initializationData2 = initializationData6;
                                            stereoMode2 = stereoMode5;
                                        }
                                    } else {
                                        pixelWidthHeightRatioFromPasp = pixelWidthHeightRatioFromPasp2;
                                        codecs2 = codecs3;
                                        vpsData = vpsData5;
                                        bitdepthChroma2 = bitdepthChroma7;
                                        bitdepthLuma2 = bitdepthLuma5;
                                        colorRange3 = colorRange7;
                                        initializationData2 = initializationData6;
                                        stereoMode2 = stereoMode5;
                                    }
                                }
                            }
                        }
                    }
                }
                childPosition = childPosition2 + childAtomSize;
                childAtomType = size;
                stsdData = out;
                pixelWidthHeightRatioFromPasp2 = pixelWidthHeightRatioFromPasp;
                codecs3 = codecs2;
                width = colorRange;
                dolbyVisionConfig3 = dolbyVisionConfig;
                atomType3 = atomType2;
                mimeType5 = mimeType3;
            }
        }
        if (dolbyVisionConfig == null) {
            dolbyVisionConfig2 = dolbyVisionConfig;
            codecs = codecs3;
            mimeType2 = mimeType;
        } else {
            mimeType2 = MimeTypes.VIDEO_DOLBY_VISION;
            dolbyVisionConfig2 = dolbyVisionConfig;
            codecs = dolbyVisionConfig2.codecs;
        }
        if (mimeType2 == null) {
            return;
        }
        int decodedWidth3 = decodedHeight;
        int decodedHeight3 = decodedWidth;
        int maxNumReorderSamples4 = stereoMode3;
        int bitdepthLuma7 = bitdepthChroma;
        Format.Builder formatBuilder = new Format.Builder().setId(trackId).setSampleMimeType(mimeType2).setCodecs(codecs).setWidth(colorRange).setHeight(height).setDecodedWidth(decodedWidth3).setDecodedHeight(decodedHeight3).setPixelWidthHeightRatio(pixelWidthHeightRatio).setRotationDegrees(rotationDegrees).setProjectionData(projectionData).setStereoMode(stereoMode).setInitializationData(initializationData).setMaxNumReorderSamples(maxNumReorderSamples).setMaxSubLayers(maxNumReorderSamples4).setDrmInitData(drmInitData3).setLanguage(language).setColorInfo(new ColorInfo.Builder().setColorSpace(colorSpace).setColorRange(colorRange2).setColorTransfer(colorTransfer).setHdrStaticInfo(hdrStaticInfo3 != null ? hdrStaticInfo3.array() : null).setLumaBitdepth(bitdepthLuma).setChromaBitdepth(bitdepthLuma7).build());
        if (btrtData != null) {
            Format.Builder averageBitrate = formatBuilder.setAverageBitrate(Ints.saturatedCast(btrtData.avgBitrate));
            int bitdepthChroma9 = Ints.saturatedCast(btrtData.maxBitrate);
            averageBitrate.setPeakBitrate(bitdepthChroma9);
        } else if (esdsData != null) {
            formatBuilder.setAverageBitrate(Ints.saturatedCast(esdsData.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsData.peakBitrate));
        }
        out.format = formatBuilder.build();
    }

    private static ColorInfo parseAv1c(ParsableByteArray data) {
        int seqForceScreenContentTools;
        int i;
        ColorInfo.Builder colorInfo;
        ColorInfo.Builder colorInfo2 = new ColorInfo.Builder();
        ParsableBitArray bitArray = new ParsableBitArray(data.getData());
        bitArray.setPosition(data.getPosition() * 8);
        bitArray.skipBytes(1);
        int seqProfile = bitArray.readBits(3);
        bitArray.skipBits(6);
        boolean highBitdepth = bitArray.readBit();
        boolean twelveBit = bitArray.readBit();
        int i2 = 12;
        if (seqProfile == 2 && highBitdepth) {
            colorInfo2.setLumaBitdepth(twelveBit ? 12 : 10);
            colorInfo2.setChromaBitdepth(twelveBit ? 12 : 10);
        } else if (seqProfile <= 2) {
            colorInfo2.setLumaBitdepth(highBitdepth ? 10 : 8);
            colorInfo2.setChromaBitdepth(highBitdepth ? 10 : 8);
        }
        bitArray.skipBits(13);
        bitArray.skipBit();
        int obuType = bitArray.readBits(4);
        if (obuType != 1) {
            Log.i(TAG, "Unsupported obu_type: " + obuType);
            return colorInfo2.build();
        }
        if (bitArray.readBit()) {
            Log.i(TAG, "Unsupported obu_extension_flag");
            return colorInfo2.build();
        }
        boolean obuHasSizeField = bitArray.readBit();
        bitArray.skipBit();
        if (obuHasSizeField && bitArray.readBits(8) > 127) {
            Log.i(TAG, "Excessive obu_size");
            return colorInfo2.build();
        }
        int obuSeqHeaderSeqProfile = bitArray.readBits(3);
        bitArray.skipBit();
        if (bitArray.readBit()) {
            Log.i(TAG, "Unsupported reduced_still_picture_header");
            return colorInfo2.build();
        }
        if (bitArray.readBit()) {
            Log.i(TAG, "Unsupported timing_info_present_flag");
            return colorInfo2.build();
        }
        if (bitArray.readBit()) {
            Log.i(TAG, "Unsupported initial_display_delay_present_flag");
            return colorInfo2.build();
        }
        int operatingPointsCountMinus1 = bitArray.readBits(5);
        int i3 = 0;
        while (i3 <= operatingPointsCountMinus1) {
            bitArray.skipBits(i2);
            int seqLevelIdx = bitArray.readBits(5);
            if (seqLevelIdx > 7) {
                bitArray.skipBit();
            }
            i3++;
            i2 = 12;
        }
        int frameWidthBitsMinus1 = bitArray.readBits(4);
        int frameHeightBitsMinus1 = bitArray.readBits(4);
        bitArray.skipBits(frameWidthBitsMinus1 + 1);
        bitArray.skipBits(frameHeightBitsMinus1 + 1);
        if (bitArray.readBit()) {
            bitArray.skipBits(7);
        }
        bitArray.skipBits(7);
        boolean enableOrderHint = bitArray.readBit();
        if (enableOrderHint) {
            bitArray.skipBits(2);
        }
        if (bitArray.readBit()) {
            seqForceScreenContentTools = 2;
        } else {
            seqForceScreenContentTools = bitArray.readBits(1);
        }
        if (seqForceScreenContentTools > 0 && !bitArray.readBit()) {
            bitArray.skipBits(1);
        }
        if (!enableOrderHint) {
            i = 3;
        } else {
            i = 3;
            bitArray.skipBits(3);
        }
        bitArray.skipBits(i);
        boolean colorConfigHighBitdepth = bitArray.readBit();
        if (obuSeqHeaderSeqProfile == 2 && colorConfigHighBitdepth) {
            bitArray.skipBit();
        }
        boolean monochrome = obuSeqHeaderSeqProfile != 1 && bitArray.readBit();
        if (!bitArray.readBit()) {
            colorInfo = colorInfo2;
        } else {
            int colorPrimaries = bitArray.readBits(8);
            int transferCharacteristics = bitArray.readBits(8);
            int matrixCoefficients = bitArray.readBits(8);
            int colorRange = (!monochrome && colorPrimaries == 1 && transferCharacteristics == 13 && matrixCoefficients == 0) ? 1 : bitArray.readBits(1);
            colorInfo = colorInfo2;
            colorInfo2.setColorSpace(ColorInfo.isoColorPrimariesToColorSpace(colorPrimaries)).setColorRange(colorRange != 1 ? 2 : 1).setColorTransfer(ColorInfo.isoTransferCharacteristicsToColorTransfer(transferCharacteristics));
        }
        return colorInfo.build();
    }

    private static ColorInfo parseApvc(ParsableByteArray data) {
        ColorInfo.Builder colorInfo = new ColorInfo.Builder();
        ParsableBitArray bitArray = new ParsableBitArray(data.getData());
        bitArray.setPosition(data.getPosition() * 8);
        bitArray.skipBytes(1);
        int numConfigurationEntries = bitArray.readBits(8);
        for (int i = 0; i < numConfigurationEntries; i++) {
            bitArray.skipBytes(1);
            int numberOfFrameInfo = bitArray.readBits(8);
            for (int j = 0; j < numberOfFrameInfo; j++) {
                bitArray.skipBits(6);
                boolean isColorDescriptionPresent = bitArray.readBit();
                bitArray.skipBit();
                bitArray.skipBytes(11);
                bitArray.skipBits(4);
                int bitDepth = bitArray.readBits(4) + 8;
                colorInfo.setLumaBitdepth(bitDepth);
                colorInfo.setChromaBitdepth(bitDepth);
                bitArray.skipBytes(1);
                if (isColorDescriptionPresent) {
                    int colorPrimaries = bitArray.readBits(8);
                    int transferCharacteristics = bitArray.readBits(8);
                    bitArray.skipBytes(1);
                    boolean fullRangeFlag = bitArray.readBit();
                    colorInfo.setColorSpace(ColorInfo.isoColorPrimariesToColorSpace(colorPrimaries)).setColorRange(fullRangeFlag ? 1 : 2).setColorTransfer(ColorInfo.isoTransferCharacteristicsToColorTransfer(transferCharacteristics));
                }
            }
        }
        return colorInfo.build();
    }

    private static ByteBuffer allocateHdrStaticInfo() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static void parseMetaDataSampleEntry(ParsableByteArray parent, int atomType, int position, int trackId, StsdData out) {
        parent.setPosition(position + 8 + 8);
        if (atomType == 1835365492) {
            parent.readNullTerminatedString();
            String mimeType = parent.readNullTerminatedString();
            if (mimeType != null) {
                out.format = new Format.Builder().setId(trackId).setSampleMimeType(mimeType).build();
            }
        }
    }

    private static Pair<long[], long[]> parseEdts(Mp4Box.ContainerBox edtsAtom) {
        Mp4Box.LeafBox elstAtom = edtsAtom.getLeafBoxOfType(Mp4Box.TYPE_elst);
        if (elstAtom == null) {
            return null;
        }
        ParsableByteArray elstData = elstAtom.data;
        elstData.setPosition(8);
        int fullAtom = elstData.readInt();
        int version = parseFullBoxVersion(fullAtom);
        int entryCount = elstData.readUnsignedIntToInt();
        long[] editListDurations = new long[entryCount];
        long[] editListMediaTimes = new long[entryCount];
        for (int i = 0; i < entryCount; i++) {
            editListDurations[i] = version == 1 ? elstData.readUnsignedLongToLong() : elstData.readUnsignedInt();
            editListMediaTimes[i] = version == 1 ? elstData.readLong() : elstData.readInt();
            int mediaRateInteger = elstData.readShort();
            if (mediaRateInteger != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            elstData.skipBytes(2);
        }
        return Pair.create(editListDurations, editListMediaTimes);
    }

    private static float parsePaspFromParent(ParsableByteArray parent, int position) {
        parent.setPosition(position + 8);
        int hSpacing = parent.readUnsignedIntToInt();
        int vSpacing = parent.readUnsignedIntToInt();
        return hSpacing / vSpacing;
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseAudioSampleEntry(ParsableByteArray parent, int atomType, int position, int size, int trackId, String language, boolean isQuickTime, DrmInitData drmInitData, StsdData out, int entryIndex) throws ParserException {
        char c;
        int channelCount;
        int sampleRate;
        int bitsPerSample;
        int childPosition;
        int atomType2;
        int atomType3;
        int esdsAtomPosition;
        int pcmEncoding;
        DrmInitData drmInitData2;
        int sampleRate2;
        ParsableByteArray parsableByteArray = parent;
        int atomType4 = atomType;
        int i = size;
        DrmInitData drmInitData3 = drmInitData;
        parsableByteArray.setPosition(position + 8 + 8);
        int quickTimeSoundDescriptionVersion = 0;
        if (isQuickTime) {
            quickTimeSoundDescriptionVersion = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
        }
        int pcmEncoding2 = -1;
        if (quickTimeSoundDescriptionVersion == 0 || quickTimeSoundDescriptionVersion == 1) {
            c = 2;
            channelCount = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            sampleRate = parsableByteArray.readUnsignedFixedPoint1616();
            parsableByteArray.setPosition(parsableByteArray.getPosition() - 4);
            int sampleRateMlp = parsableByteArray.readInt();
            if (quickTimeSoundDescriptionVersion == 1) {
                parsableByteArray.skipBytes(16);
            }
            bitsPerSample = sampleRateMlp;
            if (atomType4 != 1767992678) {
                channelCount = -1;
                sampleRate = -1;
            } else if (atomType4 == 1935764850) {
                channelCount = 1;
                sampleRate = 8000;
            } else if (atomType4 == 1935767394) {
                channelCount = 1;
                sampleRate = 16000;
            }
            childPosition = parsableByteArray.getPosition();
            int sampleRate3 = sampleRate;
            int channelCount2 = channelCount;
            if (atomType4 == 1701733217) {
                Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, position, i);
                if (sampleEntryEncryptionData != null) {
                    int atomType5 = ((Integer) sampleEntryEncryptionData.first).intValue();
                    if (drmInitData3 == null) {
                        drmInitData2 = null;
                    } else {
                        drmInitData2 = drmInitData3.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                    }
                    out.trackEncryptionBoxes[entryIndex] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
                    atomType4 = atomType5;
                    drmInitData3 = drmInitData2;
                }
                parsableByteArray.setPosition(childPosition);
            }
            String mimeType = null;
            if (atomType4 != 1633889587) {
                mimeType = MimeTypes.AUDIO_AC3;
            } else if (atomType4 == 1700998451) {
                mimeType = MimeTypes.AUDIO_E_AC3;
            } else if (atomType4 == 1633889588) {
                mimeType = MimeTypes.AUDIO_AC4;
            } else if (atomType4 == 1685353315) {
                mimeType = MimeTypes.AUDIO_DTS;
            } else if (atomType4 == 1685353320 || atomType4 == 1685353324) {
                mimeType = MimeTypes.AUDIO_DTS_HD;
            } else if (atomType4 == 1685353317) {
                mimeType = MimeTypes.AUDIO_DTS_EXPRESS;
            } else if (atomType4 == 1685353336) {
                mimeType = MimeTypes.AUDIO_DTS_X;
            } else if (atomType4 == 1935764850) {
                mimeType = MimeTypes.AUDIO_AMR_NB;
            } else if (atomType4 == 1935767394) {
                mimeType = MimeTypes.AUDIO_AMR_WB;
            } else if (atomType4 == 1936684916) {
                mimeType = MimeTypes.AUDIO_RAW;
                pcmEncoding2 = 2;
            } else if (atomType4 == 1953984371) {
                mimeType = MimeTypes.AUDIO_RAW;
                pcmEncoding2 = 268435456;
            } else if (atomType4 == 1819304813) {
                mimeType = MimeTypes.AUDIO_RAW;
                if (pcmEncoding2 == -1) {
                    pcmEncoding2 = 2;
                }
            } else if (atomType4 == 778924082 || atomType4 == 778924083) {
                mimeType = MimeTypes.AUDIO_MPEG;
            } else if (atomType4 == 1835557169) {
                mimeType = MimeTypes.AUDIO_MPEGH_MHA1;
            } else if (atomType4 == 1835560241) {
                mimeType = MimeTypes.AUDIO_MPEGH_MHM1;
            } else if (atomType4 == 1634492771) {
                mimeType = MimeTypes.AUDIO_ALAC;
            } else if (atomType4 == 1634492791) {
                mimeType = MimeTypes.AUDIO_ALAW;
            } else if (atomType4 == 1970037111) {
                mimeType = MimeTypes.AUDIO_MLAW;
            } else if (atomType4 == 1332770163) {
                mimeType = MimeTypes.AUDIO_OPUS;
            } else if (atomType4 == 1716281667) {
                mimeType = MimeTypes.AUDIO_FLAC;
            } else if (atomType4 == 1835823201) {
                mimeType = MimeTypes.AUDIO_TRUEHD;
            } else if (atomType4 == 1767992678) {
                mimeType = MimeTypes.AUDIO_IAMF;
            }
            EsdsData esdsData = null;
            BtrtData btrtData = null;
            int pcmEncoding3 = pcmEncoding2;
            String codecs = null;
            int pcmEncoding4 = channelCount2;
            List<byte[]> initializationData = null;
            int sampleRate4 = sampleRate3;
            while (childPosition - position < i) {
                parsableByteArray.setPosition(childPosition);
                int childAtomSize = parsableByteArray.readInt();
                int pcmEncoding5 = pcmEncoding3;
                ExtractorUtil.checkContainerInput(childAtomSize > 0, "childAtomSize must be positive");
                int childAtomType = parsableByteArray.readInt();
                if (childAtomType == 1835557187) {
                    parsableByteArray.setPosition(childPosition + 8);
                    parsableByteArray.skipBytes(1);
                    int mpeghProfileLevelIndication = parsableByteArray.readUnsignedByte();
                    parsableByteArray.skipBytes(1);
                    String codecs2 = Objects.equals(mimeType, MimeTypes.AUDIO_MPEGH_MHM1) ? String.format("mhm1.%02X", Integer.valueOf(mpeghProfileLevelIndication)) : String.format("mha1.%02X", Integer.valueOf(mpeghProfileLevelIndication));
                    int mpegh3daConfigLength = parsableByteArray.readUnsignedShort();
                    String codecs3 = codecs2;
                    byte[] initializationDataBytes = new byte[mpegh3daConfigLength];
                    parsableByteArray.readBytes(initializationDataBytes, 0, mpegh3daConfigLength);
                    if (initializationData == null) {
                        initializationData = ImmutableList.of(initializationDataBytes);
                    } else {
                        initializationData = ImmutableList.of(initializationDataBytes, initializationData.get(0));
                    }
                    atomType2 = atomType4;
                    pcmEncoding3 = pcmEncoding5;
                    codecs = codecs3;
                    atomType3 = childAtomSize;
                } else {
                    String codecs4 = codecs;
                    if (childAtomType == 1835557200) {
                        parsableByteArray.setPosition(childPosition + 8);
                        int numCompatibleSets = parsableByteArray.readUnsignedByte();
                        if (numCompatibleSets > 0) {
                            byte[] mpeghCompatibleProfileLevelSet = new byte[numCompatibleSets];
                            parsableByteArray.readBytes(mpeghCompatibleProfileLevelSet, 0, numCompatibleSets);
                            if (initializationData == null) {
                                initializationData = ImmutableList.of(mpeghCompatibleProfileLevelSet);
                            } else {
                                initializationData = ImmutableList.of(initializationData.get(0), mpeghCompatibleProfileLevelSet);
                            }
                        }
                        atomType2 = atomType4;
                        pcmEncoding3 = pcmEncoding5;
                        codecs = codecs4;
                        atomType3 = childAtomSize;
                    } else {
                        if (childAtomType == 1702061171) {
                            atomType2 = atomType4;
                        } else if (isQuickTime && childAtomType == 2002876005) {
                            atomType2 = atomType4;
                        } else if (childAtomType == 1651798644) {
                            atomType2 = atomType4;
                            btrtData = parseBtrtFromParent(parsableByteArray, childPosition);
                            pcmEncoding3 = pcmEncoding5;
                            codecs = codecs4;
                            atomType3 = childAtomSize;
                        } else {
                            if (childAtomType == 1684103987) {
                                parsableByteArray.setPosition(childPosition + 8);
                                out.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(trackId), language, drmInitData3);
                                atomType2 = atomType4;
                            } else if (childAtomType == 1684366131) {
                                parsableByteArray.setPosition(childPosition + 8);
                                out.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(trackId), language, drmInitData3);
                                atomType2 = atomType4;
                            } else if (childAtomType == 1684103988) {
                                parsableByteArray.setPosition(childPosition + 8);
                                out.format = Ac4Util.parseAc4AnnexEFormat(parsableByteArray, Integer.toString(trackId), language, drmInitData3);
                                atomType2 = atomType4;
                            } else if (childAtomType == 1684892784) {
                                if (bitsPerSample <= 0) {
                                    throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + bitsPerSample, null);
                                }
                                int sampleRate5 = bitsPerSample;
                                atomType2 = atomType4;
                                pcmEncoding4 = 2;
                                pcmEncoding3 = pcmEncoding5;
                                codecs = codecs4;
                                atomType3 = childAtomSize;
                                sampleRate4 = sampleRate5;
                            } else if (childAtomType == 1684305011 || childAtomType == 1969517683) {
                                atomType2 = atomType4;
                                out.format = new Format.Builder().setId(trackId).setSampleMimeType(mimeType).setChannelCount(pcmEncoding4).setSampleRate(sampleRate4).setDrmInitData(drmInitData3).setLanguage(language).build();
                            } else if (childAtomType == 1682927731) {
                                int childAtomBodySize = childAtomSize - 8;
                                byte[] headerBytes = Arrays.copyOf(opusMagic, opusMagic.length + childAtomBodySize);
                                parsableByteArray.setPosition(childPosition + 8);
                                parsableByteArray.readBytes(headerBytes, opusMagic.length, childAtomBodySize);
                                List<byte[]> initializationData2 = OpusUtil.buildInitializationData(headerBytes);
                                atomType2 = atomType4;
                                initializationData = initializationData2;
                                pcmEncoding3 = pcmEncoding5;
                                codecs = codecs4;
                                atomType3 = childAtomSize;
                            } else if (childAtomType == 1684425825) {
                                int childAtomBodySize2 = childAtomSize - 12;
                                byte[] initializationDataBytes2 = new byte[childAtomBodySize2 + 4];
                                initializationDataBytes2[0] = 102;
                                initializationDataBytes2[1] = 76;
                                initializationDataBytes2[c] = 97;
                                initializationDataBytes2[3] = 67;
                                parsableByteArray.setPosition(childPosition + 12);
                                parsableByteArray.readBytes(initializationDataBytes2, 4, childAtomBodySize2);
                                List<byte[]> initializationData3 = ImmutableList.of(initializationDataBytes2);
                                atomType2 = atomType4;
                                initializationData = initializationData3;
                                pcmEncoding3 = pcmEncoding5;
                                codecs = codecs4;
                                atomType3 = childAtomSize;
                            } else if (childAtomType == 1634492771) {
                                int childAtomBodySize3 = childAtomSize - 12;
                                byte[] initializationDataBytes3 = new byte[childAtomBodySize3];
                                parsableByteArray.setPosition(childPosition + 12);
                                parsableByteArray.readBytes(initializationDataBytes3, 0, childAtomBodySize3);
                                int[] parsedAlacConfig = CodecSpecificDataUtil.parseAlacAudioSpecificConfig(initializationDataBytes3);
                                sampleRate4 = parsedAlacConfig[0];
                                pcmEncoding4 = parsedAlacConfig[1];
                                int bitDepth = parsedAlacConfig[c];
                                int pcmEncoding6 = Util.getPcmEncoding(bitDepth);
                                List<byte[]> initializationData4 = ImmutableList.of(initializationDataBytes3);
                                atomType2 = atomType4;
                                initializationData = initializationData4;
                                pcmEncoding3 = pcmEncoding6;
                                codecs = codecs4;
                                atomType3 = childAtomSize;
                            } else if (childAtomType == 1767990114) {
                                parsableByteArray.setPosition(childPosition + 8 + 1);
                                int configObusSize = parsableByteArray.readUnsignedLeb128ToInt();
                                byte[] initializationDataBytes4 = new byte[configObusSize];
                                parsableByteArray.readBytes(initializationDataBytes4, 0, configObusSize);
                                String codecs5 = CodecSpecificDataUtil.buildIamfCodecString(initializationDataBytes4);
                                List<byte[]> initializationData5 = ImmutableList.of(initializationDataBytes4);
                                atomType2 = atomType4;
                                initializationData = initializationData5;
                                codecs = codecs5;
                                pcmEncoding3 = pcmEncoding5;
                                atomType3 = childAtomSize;
                            } else if (childAtomType != 1885564227) {
                                atomType2 = atomType4;
                            } else {
                                parsableByteArray.setPosition(childPosition + 12);
                                int formatFlags = parsableByteArray.readUnsignedByte();
                                ByteOrder byteOrder = (formatFlags & 1) != 0 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
                                int sampleSize = parsableByteArray.readUnsignedByte();
                                if (atomType4 == 1768973165) {
                                    pcmEncoding = Util.getPcmEncoding(sampleSize, byteOrder);
                                } else if (atomType4 == 1718641517 && sampleSize == 32 && byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                                    pcmEncoding = 4;
                                } else {
                                    pcmEncoding = pcmEncoding5;
                                }
                                atomType2 = atomType4;
                                if (pcmEncoding == -1) {
                                    pcmEncoding3 = pcmEncoding;
                                    codecs = codecs4;
                                    atomType3 = childAtomSize;
                                } else {
                                    mimeType = MimeTypes.AUDIO_RAW;
                                    pcmEncoding3 = pcmEncoding;
                                    codecs = codecs4;
                                    atomType3 = childAtomSize;
                                }
                            }
                            pcmEncoding3 = pcmEncoding5;
                            codecs = codecs4;
                            atomType3 = childAtomSize;
                        }
                        if (childAtomType == 1702061171) {
                            esdsAtomPosition = childPosition;
                            atomType3 = childAtomSize;
                        } else {
                            atomType3 = childAtomSize;
                            esdsAtomPosition = findBoxPosition(parsableByteArray, Mp4Box.TYPE_esds, childPosition, atomType3);
                        }
                        if (esdsAtomPosition == -1) {
                            codecs = codecs4;
                        } else {
                            esdsData = parseEsdsFromParent(parsableByteArray, esdsAtomPosition);
                            mimeType = esdsData.mimeType;
                            byte[] initializationDataBytes5 = esdsData.initializationData;
                            if (initializationDataBytes5 == null) {
                                codecs = codecs4;
                            } else if (MimeTypes.AUDIO_VORBIS.equals(mimeType)) {
                                initializationData = VorbisUtil.parseVorbisCsdFromEsdsInitializationData(initializationDataBytes5);
                                codecs = codecs4;
                            } else {
                                if (MimeTypes.AUDIO_AAC.equals(mimeType)) {
                                    AacUtil.Config aacConfig = AacUtil.parseAudioSpecificConfig(initializationDataBytes5);
                                    sampleRate4 = aacConfig.sampleRateHz;
                                    pcmEncoding4 = aacConfig.channelCount;
                                    codecs4 = aacConfig.codecs;
                                }
                                initializationData = ImmutableList.of(initializationDataBytes5);
                                codecs = codecs4;
                            }
                        }
                        pcmEncoding3 = pcmEncoding5;
                    }
                }
                childPosition += atomType3;
                parsableByteArray = parent;
                i = size;
                atomType4 = atomType2;
            }
            int pcmEncoding7 = pcmEncoding3;
            String codecs6 = codecs;
            if (out.format != null && mimeType != null) {
                Format.Builder formatBuilder = new Format.Builder().setId(trackId).setSampleMimeType(mimeType).setCodecs(codecs6).setChannelCount(pcmEncoding4).setSampleRate(sampleRate4).setPcmEncoding(pcmEncoding7).setInitializationData(initializationData).setDrmInitData(drmInitData3).setLanguage(language);
                if (esdsData == null) {
                    if (btrtData != null) {
                        formatBuilder.setAverageBitrate(Ints.saturatedCast(btrtData.avgBitrate)).setPeakBitrate(Ints.saturatedCast(btrtData.maxBitrate));
                    }
                } else {
                    formatBuilder.setAverageBitrate(Ints.saturatedCast(esdsData.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsData.peakBitrate));
                }
                out.format = formatBuilder.build();
                return;
            }
        }
        if (quickTimeSoundDescriptionVersion == 2) {
            c = 2;
            parsableByteArray.skipBytes(16);
            int sampleRate6 = (int) Math.round(parsableByteArray.readDouble());
            channelCount = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(4);
            int bitsPerSample2 = parsableByteArray.readUnsignedIntToInt();
            int formatSpecificFlags = parsableByteArray.readUnsignedIntToInt();
            boolean isFloat = (formatSpecificFlags & 1) != 0;
            boolean isBigEndian = (formatSpecificFlags & 2) != 0;
            if (!isFloat) {
                sampleRate2 = sampleRate6;
                if (bitsPerSample2 == 8) {
                    pcmEncoding2 = 3;
                } else if (bitsPerSample2 == 16) {
                    pcmEncoding2 = isBigEndian ? 268435456 : 2;
                } else if (bitsPerSample2 == 24) {
                    pcmEncoding2 = isBigEndian ? C.ENCODING_PCM_24BIT_BIG_ENDIAN : 21;
                } else if (bitsPerSample2 == 32) {
                    pcmEncoding2 = isBigEndian ? C.ENCODING_PCM_32BIT_BIG_ENDIAN : 22;
                }
            } else {
                sampleRate2 = sampleRate6;
                if (!isBigEndian && bitsPerSample2 == 32) {
                    pcmEncoding2 = 4;
                }
            }
            parsableByteArray.skipBytes(8);
            bitsPerSample = 0;
            sampleRate = sampleRate2;
            if (atomType4 != 1767992678) {
            }
            childPosition = parsableByteArray.getPosition();
            int sampleRate32 = sampleRate;
            int channelCount22 = channelCount;
            if (atomType4 == 1701733217) {
            }
            String mimeType2 = null;
            if (atomType4 != 1633889587) {
            }
            EsdsData esdsData2 = null;
            BtrtData btrtData2 = null;
            int pcmEncoding32 = pcmEncoding2;
            String codecs7 = null;
            int pcmEncoding42 = channelCount22;
            List<byte[]> initializationData6 = null;
            int sampleRate42 = sampleRate32;
            while (childPosition - position < i) {
            }
            int pcmEncoding72 = pcmEncoding32;
            String codecs62 = codecs7;
            if (out.format != null) {
            }
        }
    }

    private static int findBoxPosition(ParsableByteArray parent, int boxType, int parentBoxPosition, int parentBoxSize) throws ParserException {
        int childAtomPosition = parent.getPosition();
        ExtractorUtil.checkContainerInput(childAtomPosition >= parentBoxPosition, null);
        while (childAtomPosition - parentBoxPosition < parentBoxSize) {
            parent.setPosition(childAtomPosition);
            int childAtomSize = parent.readInt();
            ExtractorUtil.checkContainerInput(childAtomSize > 0, "childAtomSize must be positive");
            int childType = parent.readInt();
            if (childType == boxType) {
                return childAtomPosition;
            }
            childAtomPosition += childAtomSize;
        }
        return -1;
    }

    private static EsdsData parseEsdsFromParent(ParsableByteArray parent, int position) {
        parent.setPosition(position + 8 + 4);
        parent.skipBytes(1);
        parseExpandableClassSize(parent);
        parent.skipBytes(2);
        int flags = parent.readUnsignedByte();
        if ((flags & 128) != 0) {
            parent.skipBytes(2);
        }
        if ((flags & 64) != 0) {
            parent.skipBytes(parent.readUnsignedByte());
        }
        if ((flags & 32) != 0) {
            parent.skipBytes(2);
        }
        parent.skipBytes(1);
        parseExpandableClassSize(parent);
        int objectTypeIndication = parent.readUnsignedByte();
        String mimeType = MimeTypes.getMimeTypeFromMp4ObjectType(objectTypeIndication);
        if (MimeTypes.AUDIO_MPEG.equals(mimeType) || MimeTypes.AUDIO_DTS.equals(mimeType) || MimeTypes.AUDIO_DTS_HD.equals(mimeType)) {
            return new EsdsData(mimeType, null, -1L, -1L);
        }
        parent.skipBytes(4);
        long peakBitrate = parent.readUnsignedInt();
        long bitrate = parent.readUnsignedInt();
        parent.skipBytes(1);
        int initializationDataSize = parseExpandableClassSize(parent);
        byte[] initializationData = new byte[initializationDataSize];
        parent.readBytes(initializationData, 0, initializationDataSize);
        return new EsdsData(mimeType, initializationData, bitrate > 0 ? bitrate : -1L, peakBitrate > 0 ? peakBitrate : -1L);
    }

    private static BtrtData parseBtrtFromParent(ParsableByteArray parent, int position) {
        parent.setPosition(position + 8);
        parent.skipBytes(4);
        long maxBitrate = parent.readUnsignedInt();
        long avgBitrate = parent.readUnsignedInt();
        return new BtrtData(avgBitrate, maxBitrate);
    }

    static VexuData parseVideoExtendedUsageBox(ParsableByteArray parent, int position, int size) throws ParserException {
        parent.setPosition(position + 8);
        int childPosition = parent.getPosition();
        EyesData eyesData = null;
        while (childPosition - position < size) {
            parent.setPosition(childPosition);
            int childAtomSize = parent.readInt();
            ExtractorUtil.checkContainerInput(childAtomSize > 0, "childAtomSize must be positive");
            int childAtomType = parent.readInt();
            if (childAtomType == 1702454643) {
                eyesData = parseStereoViewBox(parent, childPosition, childAtomSize);
            }
            childPosition += childAtomSize;
        }
        if (eyesData == null) {
            return null;
        }
        return new VexuData(eyesData);
    }

    private static EyesData parseStereoViewBox(ParsableByteArray parent, int position, int size) throws ParserException {
        parent.setPosition(position + 8);
        int childPosition = parent.getPosition();
        while (childPosition - position < size) {
            parent.setPosition(childPosition);
            int childAtomSize = parent.readInt();
            ExtractorUtil.checkContainerInput(childAtomSize > 0, "childAtomSize must be positive");
            if (parent.readInt() == 1937011305) {
                parent.skipBytes(4);
                int striInfo = parent.readUnsignedByte() & 15;
                return new EyesData(new StriData((striInfo & 1) == 1, (striInfo & 2) == 2, (striInfo & 8) == 8));
            }
            childPosition += childAtomSize;
        }
        return null;
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parent, int position, int size) throws ParserException {
        Pair<Integer, TrackEncryptionBox> result;
        int childPosition = parent.getPosition();
        while (childPosition - position < size) {
            parent.setPosition(childPosition);
            int childAtomSize = parent.readInt();
            ExtractorUtil.checkContainerInput(childAtomSize > 0, "childAtomSize must be positive");
            int childAtomType = parent.readInt();
            if (childAtomType == 1936289382 && (result = parseCommonEncryptionSinfFromParent(parent, childPosition, childAtomSize)) != null) {
                return result;
            }
            childPosition += childAtomSize;
        }
        return null;
    }

    static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parent, int position, int size) throws ParserException {
        int childPosition = position + 8;
        int schemeInformationBoxPosition = -1;
        int schemeInformationBoxSize = 0;
        String schemeType = null;
        Integer dataFormat = null;
        while (childPosition - position < size) {
            parent.setPosition(childPosition);
            int childAtomSize = parent.readInt();
            int childAtomType = parent.readInt();
            if (childAtomType == 1718775137) {
                dataFormat = Integer.valueOf(parent.readInt());
            } else if (childAtomType == 1935894637) {
                parent.skipBytes(4);
                schemeType = parent.readString(4);
            } else if (childAtomType == 1935894633) {
                schemeInformationBoxPosition = childPosition;
                schemeInformationBoxSize = childAtomSize;
            }
            childPosition += childAtomSize;
        }
        if (C.CENC_TYPE_cenc.equals(schemeType) || C.CENC_TYPE_cbc1.equals(schemeType) || C.CENC_TYPE_cens.equals(schemeType) || C.CENC_TYPE_cbcs.equals(schemeType)) {
            ExtractorUtil.checkContainerInput(dataFormat != null, "frma atom is mandatory");
            ExtractorUtil.checkContainerInput(schemeInformationBoxPosition != -1, "schi atom is mandatory");
            TrackEncryptionBox encryptionBox = parseSchiFromParent(parent, schemeInformationBoxPosition, schemeInformationBoxSize, schemeType);
            ExtractorUtil.checkContainerInput(encryptionBox != null, "tenc atom is mandatory");
            return Pair.create(dataFormat, (TrackEncryptionBox) Util.castNonNull(encryptionBox));
        }
        return null;
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parent, int position, int size, String schemeType) {
        int defaultCryptByteBlock;
        int defaultSkipByteBlock;
        byte[] constantIv;
        int childPosition = position + 8;
        while (childPosition - position < size) {
            parent.setPosition(childPosition);
            int childAtomSize = parent.readInt();
            int childAtomType = parent.readInt();
            if (childAtomType == 1952804451) {
                int fullAtom = parent.readInt();
                int version = parseFullBoxVersion(fullAtom);
                parent.skipBytes(1);
                if (version == 0) {
                    parent.skipBytes(1);
                    defaultCryptByteBlock = 0;
                    defaultSkipByteBlock = 0;
                } else {
                    int patternByte = parent.readUnsignedByte();
                    int defaultCryptByteBlock2 = (patternByte & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                    int defaultSkipByteBlock2 = patternByte & 15;
                    defaultCryptByteBlock = defaultCryptByteBlock2;
                    defaultSkipByteBlock = defaultSkipByteBlock2;
                }
                int defaultCryptByteBlock3 = parent.readUnsignedByte();
                boolean defaultIsProtected = defaultCryptByteBlock3 == 1;
                int defaultPerSampleIvSize = parent.readUnsignedByte();
                byte[] defaultKeyId = new byte[16];
                parent.readBytes(defaultKeyId, 0, defaultKeyId.length);
                if (defaultIsProtected && defaultPerSampleIvSize == 0) {
                    int constantIvSize = parent.readUnsignedByte();
                    byte[] constantIv2 = new byte[constantIvSize];
                    parent.readBytes(constantIv2, 0, constantIvSize);
                    constantIv = constantIv2;
                } else {
                    constantIv = null;
                }
                return new TrackEncryptionBox(defaultIsProtected, schemeType, defaultPerSampleIvSize, defaultKeyId, defaultCryptByteBlock, defaultSkipByteBlock, constantIv);
            }
            childPosition += childAtomSize;
        }
        return null;
    }

    private static byte[] parseProjFromParent(ParsableByteArray parent, int position, int size) {
        int childPosition = position + 8;
        while (childPosition - position < size) {
            parent.setPosition(childPosition);
            int childAtomSize = parent.readInt();
            int childAtomType = parent.readInt();
            if (childAtomType == 1886547818) {
                return Arrays.copyOfRange(parent.getData(), childPosition, childPosition + childAtomSize);
            }
            childPosition += childAtomSize;
        }
        return null;
    }

    private static int parseExpandableClassSize(ParsableByteArray data) {
        int currentByte = data.readUnsignedByte();
        int size = currentByte & 127;
        while ((currentByte & 128) == 128) {
            currentByte = data.readUnsignedByte();
            size = (size << 7) | (currentByte & 127);
        }
        return size;
    }

    private static boolean canApplyEditWithGaplessInfo(long[] timestamps, long duration, long editStartTime, long editEndTime) {
        int lastIndex = timestamps.length - 1;
        int latestDelayIndex = Util.constrainValue(4, 0, lastIndex);
        int earliestPaddingIndex = Util.constrainValue(timestamps.length - 4, 0, lastIndex);
        return timestamps[0] <= editStartTime && editStartTime < timestamps[latestDelayIndex] && timestamps[earliestPaddingIndex] < editEndTime && editEndTime <= 2 + duration;
    }

    private BoxParser() {
    }

    private static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray stsc, ParsableByteArray chunkOffsets, boolean chunkOffsetsAreLongs) throws ParserException {
            this.stsc = stsc;
            this.chunkOffsets = chunkOffsets;
            this.chunkOffsetsAreLongs = chunkOffsetsAreLongs;
            chunkOffsets.setPosition(12);
            this.length = chunkOffsets.readUnsignedIntToInt();
            stsc.setPosition(12);
            this.remainingSamplesPerChunkChanges = stsc.readUnsignedIntToInt();
            ExtractorUtil.checkContainerInput(stsc.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            long unsignedInt;
            int unsignedIntToInt;
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            boolean z = this.chunkOffsetsAreLongs;
            ParsableByteArray parsableByteArray = this.chunkOffsets;
            if (z) {
                unsignedInt = parsableByteArray.readUnsignedLongToLong();
            } else {
                unsignedInt = parsableByteArray.readUnsignedInt();
            }
            this.offset = unsignedInt;
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                if (i2 > 0) {
                    unsignedIntToInt = this.stsc.readUnsignedIntToInt() - 1;
                } else {
                    unsignedIntToInt = -1;
                }
                this.nextSamplesPerChunkChangeIndex = unsignedIntToInt;
            }
            return true;
        }
    }

    private static final class TkhdData {
        private final int alternateGroup;
        private final long duration;
        private final int height;
        private final int id;
        private final int rotationDegrees;
        private final int width;

        public TkhdData(int id, long duration, int alternateGroup, int rotationDegrees, int width, int height) {
            this.id = id;
            this.duration = duration;
            this.alternateGroup = alternateGroup;
            this.rotationDegrees = rotationDegrees;
            this.width = width;
            this.height = height;
        }
    }

    private static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int numberOfEntries) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[numberOfEntries];
        }
    }

    private static final class EsdsData {
        private final long bitrate;
        private final byte[] initializationData;
        private final String mimeType;
        private final long peakBitrate;

        public EsdsData(String mimeType, byte[] initializationData, long bitrate, long peakBitrate) {
            this.mimeType = mimeType;
            this.initializationData = initializationData;
            this.bitrate = bitrate;
            this.peakBitrate = peakBitrate;
        }
    }

    private static final class BtrtData {
        private final long avgBitrate;
        private final long maxBitrate;

        public BtrtData(long avgBitrate, long maxBitrate) {
            this.avgBitrate = avgBitrate;
            this.maxBitrate = maxBitrate;
        }
    }

    private static final class StriData {
        private final boolean eyeViewsReversed;
        private final boolean hasLeftEyeView;
        private final boolean hasRightEyeView;

        public StriData(boolean hasLeftEyeView, boolean hasRightEyeView, boolean eyeViewsReversed) {
            this.hasLeftEyeView = hasLeftEyeView;
            this.hasRightEyeView = hasRightEyeView;
            this.eyeViewsReversed = eyeViewsReversed;
        }
    }

    private static final class EyesData {
        private final StriData striData;

        public EyesData(StriData striData) {
            this.striData = striData;
        }
    }

    private static final class MdhdData {
        private final String language;
        private final long mediaDurationUs;
        private final long timescale;

        public MdhdData(long timescale, long mediaDurationUs, String language) {
            this.timescale = timescale;
            this.mediaDurationUs = mediaDurationUs;
            this.language = language;
        }
    }

    static final class VexuData {
        private final EyesData eyesData;

        public VexuData(EyesData eyesData) {
            this.eyesData = eyesData;
        }

        public boolean hasBothEyeViews() {
            return this.eyesData != null && this.eyesData.striData.hasLeftEyeView && this.eyesData.striData.hasRightEyeView;
        }
    }

    static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Mp4Box.LeafBox stszAtom, Format trackFormat) {
            this.data = stszAtom.data;
            this.data.setPosition(12);
            int fixedSampleSize = this.data.readUnsignedIntToInt();
            if (MimeTypes.AUDIO_RAW.equals(trackFormat.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(trackFormat.pcmEncoding, trackFormat.channelCount);
                if (fixedSampleSize % pcmFrameSize != 0) {
                    Log.w(BoxParser.TAG, "Audio sample size mismatch. stsd sample size: " + pcmFrameSize + ", stsz sample size: " + fixedSampleSize);
                    fixedSampleSize = pcmFrameSize;
                }
            }
            this.fixedSampleSize = fixedSampleSize == 0 ? -1 : fixedSampleSize;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int readNextSampleSize() {
            return this.fixedSampleSize == -1 ? this.data.readUnsignedIntToInt() : this.fixedSampleSize;
        }
    }

    static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        public Stz2SampleSizeBox(Mp4Box.LeafBox stz2Atom) {
            this.data = stz2Atom.data;
            this.data.setPosition(12);
            this.fieldSize = this.data.readUnsignedIntToInt() & 255;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int getFixedSampleSize() {
            return -1;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int readNextSampleSize() {
            if (this.fieldSize == 8) {
                return this.data.readUnsignedByte();
            }
            if (this.fieldSize == 16) {
                return this.data.readUnsignedShort();
            }
            int i = this.sampleIndex;
            this.sampleIndex = i + 1;
            if (i % 2 == 0) {
                this.currentByte = this.data.readUnsignedByte();
                return (this.currentByte & PsExtractor.VIDEO_STREAM_MASK) >> 4;
            }
            return this.currentByte & 15;
        }
    }
}
