package androidx.media3.exoplayer.trackselection;

import android.graphics.Point;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public final class TrackSelectionUtil {

    public interface AdaptiveTrackSelectionFactory {
        ExoTrackSelection createAdaptiveTrackSelection(ExoTrackSelection.Definition definition);
    }

    private TrackSelectionUtil() {
    }

    public static ExoTrackSelection[] createTrackSelectionsForDefinitions(ExoTrackSelection.Definition[] definitions, AdaptiveTrackSelectionFactory adaptiveTrackSelectionFactory) {
        ExoTrackSelection[] selections = new ExoTrackSelection[definitions.length];
        boolean createdAdaptiveTrackSelection = false;
        for (int i = 0; i < definitions.length; i++) {
            ExoTrackSelection.Definition definition = definitions[i];
            if (definition != null) {
                if (definition.tracks.length > 1 && !createdAdaptiveTrackSelection) {
                    createdAdaptiveTrackSelection = true;
                    selections[i] = adaptiveTrackSelectionFactory.createAdaptiveTrackSelection(definition);
                } else {
                    selections[i] = new FixedTrackSelection(definition.group, definition.tracks[0], definition.type);
                }
            }
        }
        return selections;
    }

    @Deprecated
    public static DefaultTrackSelector.Parameters updateParametersWithOverride(DefaultTrackSelector.Parameters parameters, int rendererIndex, TrackGroupArray trackGroupArray, boolean isDisabled, DefaultTrackSelector.SelectionOverride override) {
        DefaultTrackSelector.Parameters.Builder builder = parameters.buildUpon().clearSelectionOverrides(rendererIndex).setRendererDisabled(rendererIndex, isDisabled);
        if (override != null) {
            builder.setSelectionOverride(rendererIndex, trackGroupArray, override);
        }
        return builder.build();
    }

    public static Tracks buildTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, TrackSelection[] selections) {
        List<? extends TrackSelection>[] listSelections = new List[selections.length];
        for (int i = 0; i < selections.length; i++) {
            TrackSelection selection = selections[i];
            listSelections[i] = selection != null ? ImmutableList.of(selection) : ImmutableList.of();
        }
        return buildTracks(mappedTrackInfo, listSelections);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    /* JADX WARN: Type inference failed for: r14v3 */
    public static Tracks buildTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, List<? extends TrackSelection>[] listArr) {
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo2 = mappedTrackInfo;
        List<? extends TrackSelection>[] listArr2 = listArr;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int i = 0;
        while (true) {
            boolean z = false;
            if (i >= mappedTrackInfo2.getRendererCount()) {
                break;
            }
            TrackGroupArray trackGroups = mappedTrackInfo2.getTrackGroups(i);
            int i2 = 0;
            while (i2 < trackGroups.length) {
                TrackGroup trackGroup = trackGroups.get(i2);
                boolean z2 = mappedTrackInfo2.getAdaptiveSupport(i, i2, z) != 0 ? true : z;
                int[] iArr = new int[trackGroup.length];
                boolean[] zArr = new boolean[trackGroup.length];
                int i3 = 0;
                while (i3 < trackGroup.length) {
                    iArr[i3] = mappedTrackInfo2.getTrackSupport(i, i2, i3);
                    boolean z3 = false;
                    int length = listArr2.length;
                    for (?? r14 = z; r14 < length; r14++) {
                        List<? extends TrackSelection> list = listArr2[r14];
                        int i4 = 0;
                        while (true) {
                            if (i4 < list.size()) {
                                TrackSelection trackSelection = list.get(i4);
                                if (trackSelection.getTrackGroup().equals(trackGroup) && trackSelection.indexOf(i3) != -1) {
                                    z3 = true;
                                    break;
                                }
                                i4++;
                            }
                        }
                        listArr2 = listArr;
                    }
                    zArr[i3] = z3;
                    i3++;
                    z = false;
                    mappedTrackInfo2 = mappedTrackInfo;
                    listArr2 = listArr;
                }
                builder.add(new Tracks.Group(trackGroup, z2, iArr, zArr));
                i2++;
                z = false;
                mappedTrackInfo2 = mappedTrackInfo;
                listArr2 = listArr;
            }
            i++;
            mappedTrackInfo2 = mappedTrackInfo;
            listArr2 = listArr;
        }
        TrackGroupArray unmappedTrackGroups = mappedTrackInfo.getUnmappedTrackGroups();
        for (int i5 = 0; i5 < unmappedTrackGroups.length; i5++) {
            TrackGroup trackGroup2 = unmappedTrackGroups.get(i5);
            int[] iArr2 = new int[trackGroup2.length];
            Arrays.fill(iArr2, 0);
            builder.add(new Tracks.Group(trackGroup2, false, iArr2, new boolean[trackGroup2.length]));
        }
        return new Tracks(builder.build());
    }

    public static Point getMaxVideoSizeInViewport(boolean orientationMayChange, int viewportWidth, int viewportHeight, int videoWidth, int videoHeight) {
        if (orientationMayChange) {
            if ((videoWidth > videoHeight) != (viewportWidth > viewportHeight)) {
                viewportWidth = viewportHeight;
                viewportHeight = viewportWidth;
            }
        }
        int tempViewportWidth = videoWidth * viewportHeight;
        if (tempViewportWidth >= videoHeight * viewportWidth) {
            return new Point(viewportWidth, Util.ceilDivide(viewportWidth * videoHeight, videoWidth));
        }
        return new Point(Util.ceilDivide(viewportHeight * videoWidth, videoHeight), viewportHeight);
    }
}
