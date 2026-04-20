package androidx.media3.exoplayer.source;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.StreamKey;
import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.ForwardingTrackSelection;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final MediaPeriod[] periods;
    private final boolean[] periodsWithTimeOffsets;
    private TrackGroupArray trackGroups;
    private final ArrayList<MediaPeriod> childrenPendingPreparation = new ArrayList<>();
    private final HashMap<TrackGroup, TrackGroup> childTrackGroupByMergedTrackGroup = new HashMap<>();
    private final IdentityHashMap<SampleStream, Integer> streamPeriodIndices = new IdentityHashMap<>();
    private MediaPeriod[] enabledPeriods = new MediaPeriod[0];

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public /* bridge */ /* synthetic */ List getStreamKeys(List list) {
        return getStreamKeys((List<ExoTrackSelection>) list);
    }

    public MergingMediaPeriod(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, long[] periodTimeOffsetsUs, MediaPeriod... periods) {
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.periods = periods;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.empty();
        this.periodsWithTimeOffsets = new boolean[periods.length];
        for (int i = 0; i < periods.length; i++) {
            if (periodTimeOffsetsUs[i] != 0) {
                this.periodsWithTimeOffsets[i] = true;
                this.periods[i] = new TimeOffsetMediaPeriod(periods[i], periodTimeOffsetsUs[i]);
            }
        }
    }

    public MediaPeriod getChildPeriod(int index) {
        boolean z = this.periodsWithTimeOffsets[index];
        MediaPeriod[] mediaPeriodArr = this.periods;
        if (z) {
            return ((TimeOffsetMediaPeriod) mediaPeriodArr[index]).getWrappedMediaPeriod();
        }
        return mediaPeriodArr[index];
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long positionUs) {
        this.callback = callback;
        Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (MediaPeriod period : this.periods) {
            period.prepare(this, positionUs);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (MediaPeriod period : this.periods) {
            period.maybeThrowPrepareError();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public ImmutableList<StreamKey> getStreamKeys(List<ExoTrackSelection> trackSelections) {
        return ImmutableList.of();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return (TrackGroupArray) Preconditions.checkNotNull(this.trackGroups);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] selections, boolean[] mayRetainStreamFlags, SampleStream[] streams, boolean[] streamResetFlags, long positionUs) {
        int[] selectionChildIndices;
        int[] streamChildIndices;
        ExoTrackSelection[] exoTrackSelectionArr = selections;
        int[] streamChildIndices2 = new int[exoTrackSelectionArr.length];
        int[] selectionChildIndices2 = new int[exoTrackSelectionArr.length];
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            Integer streamChildIndex = streams[i] == null ? null : this.streamPeriodIndices.get(streams[i]);
            streamChildIndices2[i] = streamChildIndex == null ? -1 : streamChildIndex.intValue();
            if (exoTrackSelectionArr[i] != null) {
                TrackGroup mergedTrackGroup = exoTrackSelectionArr[i].getTrackGroup();
                selectionChildIndices2[i] = Integer.parseInt(mergedTrackGroup.id.substring(0, mergedTrackGroup.id.indexOf(":")));
            } else {
                selectionChildIndices2[i] = -1;
            }
        }
        this.streamPeriodIndices.clear();
        SampleStream[] newStreams = new SampleStream[exoTrackSelectionArr.length];
        SampleStream[] childStreams = new SampleStream[exoTrackSelectionArr.length];
        ExoTrackSelection[] childSelections = new ExoTrackSelection[exoTrackSelectionArr.length];
        ArrayList<MediaPeriod> enabledPeriodsList = new ArrayList<>(this.periods.length);
        int i2 = 0;
        long positionUs2 = positionUs;
        while (i2 < this.periods.length) {
            int j = 0;
            while (j < exoTrackSelectionArr.length) {
                childStreams[j] = streamChildIndices2[j] == i2 ? streams[j] : null;
                if (selectionChildIndices2[j] == i2) {
                    ExoTrackSelection mergedTrackSelection = (ExoTrackSelection) Preconditions.checkNotNull(exoTrackSelectionArr[j]);
                    TrackGroup childTrackGroup = (TrackGroup) Preconditions.checkNotNull(this.childTrackGroupByMergedTrackGroup.get(mergedTrackSelection.getTrackGroup()));
                    streamChildIndices = streamChildIndices2;
                    childSelections[j] = new MergingMediaPeriodTrackSelection(mergedTrackSelection, childTrackGroup);
                } else {
                    streamChildIndices = streamChildIndices2;
                    childSelections[j] = null;
                }
                j++;
                streamChildIndices2 = streamChildIndices;
            }
            int[] streamChildIndices3 = streamChildIndices2;
            int i3 = i2;
            long selectPositionUs = this.periods[i2].selectTracks(childSelections, mayRetainStreamFlags, childStreams, streamResetFlags, positionUs2);
            if (i3 == 0) {
                positionUs2 = selectPositionUs;
            } else if (selectPositionUs != positionUs2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean periodEnabled = false;
            int j2 = 0;
            while (j2 < exoTrackSelectionArr.length) {
                if (selectionChildIndices2[j2] == i3) {
                    SampleStream childStream = (SampleStream) Preconditions.checkNotNull(childStreams[j2]);
                    newStreams[j2] = childStreams[j2];
                    periodEnabled = true;
                    selectionChildIndices = selectionChildIndices2;
                    this.streamPeriodIndices.put(childStream, Integer.valueOf(i3));
                } else {
                    selectionChildIndices = selectionChildIndices2;
                    if (streamChildIndices3[j2] == i3) {
                        Preconditions.checkState(childStreams[j2] == null);
                    }
                }
                j2++;
                exoTrackSelectionArr = selections;
                selectionChildIndices2 = selectionChildIndices;
            }
            int[] selectionChildIndices3 = selectionChildIndices2;
            if (periodEnabled) {
                enabledPeriodsList.add(this.periods[i3]);
            }
            i2 = i3 + 1;
            exoTrackSelectionArr = selections;
            streamChildIndices2 = streamChildIndices3;
            selectionChildIndices2 = selectionChildIndices3;
        }
        System.arraycopy(newStreams, 0, streams, 0, newStreams.length);
        this.enabledPeriods = (MediaPeriod[]) enabledPeriodsList.toArray(new MediaPeriod[0]);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.create(enabledPeriodsList, Lists.transform(enabledPeriodsList, new Function() { // from class: androidx.media3.exoplayer.source.MergingMediaPeriod$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return ((MediaPeriod) obj).getTrackGroups().getTrackTypes();
            }
        }));
        return positionUs2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long positionUs, boolean toKeyframe) {
        for (MediaPeriod period : this.enabledPeriods) {
            period.discardBuffer(positionUs, toKeyframe);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long positionUs) {
        this.compositeSequenceableLoader.reevaluateBuffer(positionUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        if (!this.childrenPendingPreparation.isEmpty()) {
            int childrenPendingPreparationSize = this.childrenPendingPreparation.size();
            for (int i = 0; i < childrenPendingPreparationSize; i++) {
                this.childrenPendingPreparation.get(i).continueLoading(loadingInfo);
            }
            return false;
        }
        return this.compositeSequenceableLoader.continueLoading(loadingInfo);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0061, code lost:
    
        continue;
     */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long readDiscontinuity() {
        long discontinuityUs = C.TIME_UNSET;
        for (MediaPeriod period : this.enabledPeriods) {
            long otherDiscontinuityUs = period.readDiscontinuity();
            if (otherDiscontinuityUs == C.TIME_UNSET) {
                if (discontinuityUs != C.TIME_UNSET && period.seekToUs(discontinuityUs) != discontinuityUs) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (discontinuityUs == C.TIME_UNSET) {
                discontinuityUs = otherDiscontinuityUs;
                for (MediaPeriod previousPeriod : this.enabledPeriods) {
                    if (previousPeriod == period) {
                        break;
                    }
                    if (previousPeriod.seekToUs(discontinuityUs) != discontinuityUs) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
            } else if (otherDiscontinuityUs != discontinuityUs) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return discontinuityUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long positionUs) {
        long positionUs2 = this.enabledPeriods[0].seekToUs(positionUs);
        for (int i = 1; i < this.enabledPeriods.length; i++) {
            if (this.enabledPeriods[i].seekToUs(positionUs2) != positionUs2) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return positionUs2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long positionUs, SeekParameters seekParameters) {
        MediaPeriod queryPeriod = this.enabledPeriods.length > 0 ? this.enabledPeriods[0] : this.periods[0];
        return queryPeriod.getAdjustedSeekPositionUs(positionUs, seekParameters);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long setEndPositionUs(long endPositionUs) {
        boolean supported = true;
        for (MediaPeriod period : this.periods) {
            long actualEndPositionUs = period.setEndPositionUs(endPositionUs);
            supported &= actualEndPositionUs == endPositionUs;
        }
        if (supported) {
            return endPositionUs;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod preparedPeriod) {
        this.childrenPendingPreparation.remove(preparedPeriod);
        if (!this.childrenPendingPreparation.isEmpty()) {
            return;
        }
        int totalTrackGroupCount = 0;
        for (MediaPeriod period : this.periods) {
            totalTrackGroupCount += period.getTrackGroups().length;
        }
        TrackGroup[] trackGroupArray = new TrackGroup[totalTrackGroupCount];
        int trackGroupIndex = 0;
        for (int i = 0; i < this.periods.length; i++) {
            TrackGroupArray periodTrackGroups = this.periods[i].getTrackGroups();
            int periodTrackGroupCount = periodTrackGroups.length;
            int j = 0;
            while (j < periodTrackGroupCount) {
                TrackGroup childTrackGroup = periodTrackGroups.get(j);
                Format[] mergedFormats = new Format[childTrackGroup.length];
                int k = 0;
                while (k < childTrackGroup.length) {
                    Format originalFormat = childTrackGroup.getFormat(k);
                    Format.Builder mergedFormatBuilder = originalFormat.buildUpon();
                    int totalTrackGroupCount2 = totalTrackGroupCount;
                    mergedFormatBuilder.setId(i + ":" + (originalFormat.id == null ? "" : originalFormat.id));
                    if (originalFormat.primaryTrackGroupId != null) {
                        mergedFormatBuilder.setPrimaryTrackGroupId(i + ":" + originalFormat.primaryTrackGroupId);
                    }
                    mergedFormats[k] = mergedFormatBuilder.build();
                    k++;
                    totalTrackGroupCount = totalTrackGroupCount2;
                }
                int totalTrackGroupCount3 = totalTrackGroupCount;
                TrackGroup mergedTrackGroup = new TrackGroup(i + ":" + childTrackGroup.id, mergedFormats);
                this.childTrackGroupByMergedTrackGroup.put(mergedTrackGroup, childTrackGroup);
                trackGroupArray[trackGroupIndex] = mergedTrackGroup;
                j++;
                trackGroupIndex++;
                totalTrackGroupCount = totalTrackGroupCount3;
            }
        }
        this.trackGroups = new TrackGroupArray(trackGroupArray);
        ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onPrepared(this);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod ignored) {
        ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    private static final class MergingMediaPeriodTrackSelection extends ForwardingTrackSelection {
        private final TrackGroup trackGroup;

        public MergingMediaPeriodTrackSelection(ExoTrackSelection trackSelection, TrackGroup trackGroup) {
            super(trackSelection);
            this.trackGroup = trackGroup;
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.TrackSelection
        public TrackGroup getTrackGroup() {
            return this.trackGroup;
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.TrackSelection
        public Format getFormat(int index) {
            return this.trackGroup.getFormat(getWrappedInstance().getIndexInTrackGroup(index));
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.TrackSelection
        public int indexOf(Format format) {
            return getWrappedInstance().indexOf(this.trackGroup.indexOf(format));
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public Format getSelectedFormat() {
            return this.trackGroup.getFormat(getWrappedInstance().getSelectedIndexInTrackGroup());
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection
        public boolean equals(Object other) {
            if (!super.equals(other) || !(other instanceof MergingMediaPeriodTrackSelection)) {
                return false;
            }
            MergingMediaPeriodTrackSelection that = (MergingMediaPeriodTrackSelection) other;
            return this.trackGroup.equals(that.trackGroup);
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection
        public int hashCode() {
            return (super.hashCode() * 31) + this.trackGroup.hashCode();
        }
    }
}
