package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: RowColumnMeasurePolicy.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0003\u001a\u0085\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0004H\u0000¢\u0006\u0002\u0010\u0016¨\u0006\u0017"}, d2 = {"measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;", "mainAxisMin", "", "crossAxisMin", "mainAxisMax", "crossAxisMax", "arrangementSpacingInt", "measureScope", "Landroidx/compose/ui/layout/MeasureScope;", "measurables", "", "Landroidx/compose/ui/layout/Measurable;", "placeables", "", "Landroidx/compose/ui/layout/Placeable;", "startIndex", "endIndex", "crossAxisOffset", "", "currentLineIndex", "(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;", "foundation-layout"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class RowColumnMeasurePolicyKt {
    public static /* synthetic */ MeasureResult measure$default(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i, int i2, int i3, int i4, int i5, MeasureScope measureScope, List list, Placeable[] placeableArr, int i6, int i7, int[] iArr, int i8, int i9, Object obj) {
        int[] iArr2;
        int i10;
        if ((i9 & 1024) == 0) {
            iArr2 = iArr;
        } else {
            iArr2 = null;
        }
        if ((i9 & 2048) == 0) {
            i10 = i8;
        } else {
            i10 = 0;
        }
        return measure(rowColumnMeasurePolicy, i, i2, i3, i4, i5, measureScope, list, placeableArr, i6, i7, iArr2, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0202  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final MeasureResult measure(RowColumnMeasurePolicy $this$measure, int mainAxisMin, int crossAxisMin, int mainAxisMax, int crossAxisMax, int arrangementSpacingInt, MeasureScope measureScope, List<? extends Measurable> list, Placeable[] placeables, int startIndex, int endIndex, int[] crossAxisOffset, int currentLineIndex) {
        int spaceAfterLastNoWeight;
        int minimumValue$iv;
        int i;
        int i2;
        int crossAxisSpace;
        int fixedSpace;
        int fixedSpace2;
        int i3;
        long remainingToTarget;
        int i4;
        Integer numValueOf;
        FlowLayoutData it;
        int i5;
        int remainderUnit;
        int remainderUnit2;
        int beforeCrossAxisAlignmentLine;
        int i6;
        int i7;
        Integer numValueOf2;
        FlowLayoutData it2;
        int i8;
        int[] childrenMainAxisSize;
        long arrangementSpacingPx;
        RowColumnMeasurePolicy rowColumnMeasurePolicy;
        int crossAxisSpace2;
        long arrangementSpacingPx2 = arrangementSpacingInt;
        int crossAxisSpace3 = 0;
        int subSize = endIndex - startIndex;
        int[] childrenMainAxisSize2 = new int[subSize];
        int i9 = 0;
        float totalWeight = 0.0f;
        int fixedSpace3 = 0;
        int weightChildrenCount = 0;
        boolean anyAlignBy = false;
        int spaceAfterLastNoWeight2 = 0;
        int i10 = startIndex;
        while (true) {
            spaceAfterLastNoWeight = 0;
            minimumValue$iv = Integer.MAX_VALUE;
            boolean z = true;
            if (i10 >= endIndex) {
                break;
            }
            Measurable child = list.get(i10);
            RowColumnParentData parentData = RowColumnImplKt.getRowColumnParentData(child);
            float weight = RowColumnImplKt.getWeight(parentData);
            if (!anyAlignBy && !RowColumnImplKt.isRelative(parentData)) {
                z = false;
            }
            anyAlignBy = z;
            if (weight > 0.0f) {
                totalWeight += weight;
                weightChildrenCount++;
                i8 = i10;
                childrenMainAxisSize = childrenMainAxisSize2;
                arrangementSpacingPx = arrangementSpacingPx2;
            } else {
                if (crossAxisMax == Integer.MAX_VALUE || parentData == null || (it2 = parentData.getFlowLayoutData()) == null) {
                    numValueOf2 = null;
                } else {
                    float $this$fastRoundToInt$iv = it2.getFillCrossAxisFraction() * crossAxisMax;
                    int $i$f$fastRoundToInt = Math.round($this$fastRoundToInt$iv);
                    numValueOf2 = Integer.valueOf($i$f$fastRoundToInt);
                }
                Integer crossAxisDesiredSize = numValueOf2;
                int remaining = mainAxisMax - fixedSpace3;
                Placeable placeable = placeables[i10];
                if (placeable != null) {
                    i8 = i10;
                    childrenMainAxisSize = childrenMainAxisSize2;
                    arrangementSpacingPx = arrangementSpacingPx2;
                    rowColumnMeasurePolicy = $this$measure;
                    crossAxisSpace2 = crossAxisSpace3;
                } else {
                    int iIntValue = crossAxisDesiredSize != null ? crossAxisDesiredSize.intValue() : 0;
                    if (mainAxisMax != Integer.MAX_VALUE) {
                        minimumValue$iv = 0;
                        if (remaining >= 0) {
                            minimumValue$iv = remaining;
                        }
                    }
                    int crossAxisSpace4 = crossAxisSpace3;
                    int crossAxisSpace5 = iIntValue;
                    childrenMainAxisSize = childrenMainAxisSize2;
                    arrangementSpacingPx = arrangementSpacingPx2;
                    crossAxisSpace2 = crossAxisSpace4;
                    i8 = i10;
                    rowColumnMeasurePolicy = $this$measure;
                    placeable = child.mo6141measureBRTryo0(RowColumnMeasurePolicy.m843createConstraintsxF2OJ5Q$default(rowColumnMeasurePolicy, 0, crossAxisSpace5, minimumValue$iv, crossAxisDesiredSize != null ? crossAxisDesiredSize.intValue() : crossAxisMax, false, 16, null));
                }
                int placeableMainAxisSize = rowColumnMeasurePolicy.mainAxisSize(placeable);
                int placeableCrossAxisSize = rowColumnMeasurePolicy.crossAxisSize(placeable);
                childrenMainAxisSize[i8 - startIndex] = placeableMainAxisSize;
                int $this$fastCoerceAtLeast$iv = remaining - placeableMainAxisSize;
                if ($this$fastCoerceAtLeast$iv < 0) {
                    $this$fastCoerceAtLeast$iv = 0;
                }
                int spaceAfterLastNoWeight3 = Math.min(arrangementSpacingInt, $this$fastCoerceAtLeast$iv);
                fixedSpace3 += placeableMainAxisSize + spaceAfterLastNoWeight3;
                int crossAxisSpace6 = Math.max(crossAxisSpace2, placeableCrossAxisSize);
                placeables[i8] = placeable;
                spaceAfterLastNoWeight2 = spaceAfterLastNoWeight3;
                crossAxisSpace3 = crossAxisSpace6;
            }
            i10 = i8 + 1;
            childrenMainAxisSize2 = childrenMainAxisSize;
            arrangementSpacingPx2 = arrangementSpacingPx;
        }
        int[] childrenMainAxisSize3 = childrenMainAxisSize2;
        long arrangementSpacingPx3 = arrangementSpacingPx2;
        int crossAxisSpace7 = crossAxisSpace3;
        if (weightChildrenCount == 0) {
            crossAxisSpace = crossAxisSpace7;
            i2 = 0;
            fixedSpace = fixedSpace3 - spaceAfterLastNoWeight2;
            fixedSpace2 = 0;
        } else {
            if (mainAxisMax != Integer.MAX_VALUE) {
                i = mainAxisMax;
            } else {
                i = mainAxisMin;
            }
            int targetSpace = i;
            long arrangementSpacingTotal = arrangementSpacingPx3 * ((long) (weightChildrenCount - 1));
            long $this$fastCoerceAtLeast$iv2 = ((long) (targetSpace - fixedSpace3)) - arrangementSpacingTotal;
            if ($this$fastCoerceAtLeast$iv2 < 0) {
                $this$fastCoerceAtLeast$iv2 = 0;
            }
            float weightUnitSpace = $this$fastCoerceAtLeast$iv2 / totalWeight;
            long remainder = $this$fastCoerceAtLeast$iv2;
            int i11 = startIndex;
            while (i11 < endIndex) {
                Measurable measurable = list.get(i11);
                float itemWeight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(measurable));
                float weightedSize = weightUnitSpace * itemWeight;
                int $i$f$fastRoundToInt2 = crossAxisSpace7;
                remainder -= (long) Math.round(weightedSize);
                i11++;
                crossAxisSpace7 = $i$f$fastRoundToInt2;
                spaceAfterLastNoWeight = spaceAfterLastNoWeight;
            }
            int i12 = spaceAfterLastNoWeight;
            int crossAxisSpace8 = crossAxisSpace7;
            int weightedSpace = 0;
            int i13 = startIndex;
            int crossAxisSpace9 = crossAxisSpace8;
            while (i13 < endIndex) {
                if (placeables[i13] != null) {
                    i3 = minimumValue$iv;
                    remainingToTarget = $this$fastCoerceAtLeast$iv2;
                    i4 = i13;
                } else {
                    Measurable child2 = list.get(i13);
                    RowColumnParentData parentData2 = RowColumnImplKt.getRowColumnParentData(child2);
                    float weight2 = RowColumnImplKt.getWeight(parentData2);
                    if (crossAxisMax == minimumValue$iv || parentData2 == null || (it = parentData2.getFlowLayoutData()) == null) {
                        numValueOf = null;
                    } else {
                        float $this$fastRoundToInt$iv2 = it.getFillCrossAxisFraction() * crossAxisMax;
                        int $i$f$fastRoundToInt3 = Math.round($this$fastRoundToInt$iv2);
                        numValueOf = Integer.valueOf($i$f$fastRoundToInt3);
                    }
                    Integer crossAxisDesiredSize2 = numValueOf;
                    boolean value$iv = weight2 > i12;
                    if (!value$iv) {
                        InlineClassHelperKt.throwIllegalStateException("All weights <= 0 should have placeables");
                    }
                    int remainderUnit3 = MathKt.getSign(remainder);
                    remainingToTarget = $this$fastCoerceAtLeast$iv2;
                    remainder -= (long) remainderUnit3;
                    float weightedSize2 = weightUnitSpace * weight2;
                    int childMainAxisSize = Math.max(0, Math.round(weightedSize2) + remainderUnit3);
                    if (!RowColumnImplKt.getFill(parentData2)) {
                        i5 = Integer.MAX_VALUE;
                    } else {
                        i5 = Integer.MAX_VALUE;
                        if (childMainAxisSize != Integer.MAX_VALUE) {
                            remainderUnit = remainderUnit3;
                            remainderUnit2 = childMainAxisSize;
                        }
                        i3 = i5;
                        i4 = i13;
                        long childConstraints = $this$measure.mo720createConstraintsxF2OJ5Q(remainderUnit2, crossAxisDesiredSize2 == null ? crossAxisDesiredSize2.intValue() : 0, childMainAxisSize, crossAxisDesiredSize2 == null ? crossAxisDesiredSize2.intValue() : crossAxisMax, true);
                        Placeable placeable2 = child2.mo6141measureBRTryo0(childConstraints);
                        int placeableMainAxisSize2 = $this$measure.mainAxisSize(placeable2);
                        int placeableCrossAxisSize2 = $this$measure.crossAxisSize(placeable2);
                        childrenMainAxisSize3[i4 - startIndex] = placeableMainAxisSize2;
                        weightedSpace += placeableMainAxisSize2;
                        int crossAxisSpace10 = Math.max(crossAxisSpace9, placeableCrossAxisSize2);
                        placeables[i4] = placeable2;
                        crossAxisSpace9 = crossAxisSpace10;
                    }
                    remainderUnit = remainderUnit3;
                    remainderUnit2 = 0;
                    if (crossAxisDesiredSize2 == null) {
                    }
                    i3 = i5;
                    i4 = i13;
                    long childConstraints2 = $this$measure.mo720createConstraintsxF2OJ5Q(remainderUnit2, crossAxisDesiredSize2 == null ? crossAxisDesiredSize2.intValue() : 0, childMainAxisSize, crossAxisDesiredSize2 == null ? crossAxisDesiredSize2.intValue() : crossAxisMax, true);
                    Placeable placeable22 = child2.mo6141measureBRTryo0(childConstraints2);
                    int placeableMainAxisSize22 = $this$measure.mainAxisSize(placeable22);
                    int placeableCrossAxisSize22 = $this$measure.crossAxisSize(placeable22);
                    childrenMainAxisSize3[i4 - startIndex] = placeableMainAxisSize22;
                    weightedSpace += placeableMainAxisSize22;
                    int crossAxisSpace102 = Math.max(crossAxisSpace9, placeableCrossAxisSize22);
                    placeables[i4] = placeable22;
                    crossAxisSpace9 = crossAxisSpace102;
                }
                i13 = i4 + 1;
                $this$fastCoerceAtLeast$iv2 = remainingToTarget;
                minimumValue$iv = i3;
            }
            i2 = 0;
            int $this$fastCoerceIn$iv = (int) (((long) weightedSpace) + arrangementSpacingTotal);
            int maximumValue$iv = mainAxisMax - fixedSpace3;
            int minimumValue$iv$iv = 0;
            if ($this$fastCoerceIn$iv >= 0) {
                minimumValue$iv$iv = $this$fastCoerceIn$iv;
            }
            int maximumValue$iv$iv = maximumValue$iv;
            if (minimumValue$iv$iv <= maximumValue$iv$iv) {
                maximumValue$iv$iv = minimumValue$iv$iv;
            }
            crossAxisSpace = crossAxisSpace9;
            fixedSpace = fixedSpace3;
            fixedSpace2 = maximumValue$iv$iv;
        }
        if (!anyAlignBy) {
            beforeCrossAxisAlignmentLine = 0;
        } else {
            int i14 = startIndex;
            beforeCrossAxisAlignmentLine = 0;
            int afterCrossAxisAlignmentLine = 0;
            while (i14 < endIndex) {
                Placeable placeable3 = placeables[i14];
                Intrinsics.checkNotNull(placeable3);
                CrossAxisAlignment crossAxisAlignment = RowColumnImplKt.getCrossAxisAlignment(RowColumnImplKt.getRowColumnParentData(placeable3));
                Integer alignmentLinePosition = crossAxisAlignment != null ? crossAxisAlignment.calculateAlignmentLinePosition$foundation_layout(placeable3) : null;
                if (alignmentLinePosition == null) {
                    i6 = i14;
                } else {
                    int it3 = alignmentLinePosition.intValue();
                    int placeableCrossAxisSize3 = $this$measure.crossAxisSize(placeable3);
                    i6 = i14;
                    beforeCrossAxisAlignmentLine = Math.max(beforeCrossAxisAlignmentLine, it3 != Integer.MIN_VALUE ? alignmentLinePosition.intValue() : i2);
                    if (it3 != Integer.MIN_VALUE) {
                        i7 = it3;
                    } else {
                        i7 = placeableCrossAxisSize3;
                    }
                    afterCrossAxisAlignmentLine = Math.max(afterCrossAxisAlignmentLine, placeableCrossAxisSize3 - i7);
                }
                i14 = i6 + 1;
            }
            i9 = afterCrossAxisAlignmentLine;
        }
        int $this$fastCoerceAtLeast$iv3 = fixedSpace + fixedSpace2;
        if ($this$fastCoerceAtLeast$iv3 < 0) {
            $this$fastCoerceAtLeast$iv3 = 0;
        }
        int mainAxisLayoutSize = Math.max($this$fastCoerceAtLeast$iv3, mainAxisMin);
        int crossAxisLayoutSize = Math.max(crossAxisSpace, Math.max(crossAxisMin, beforeCrossAxisAlignmentLine + i9));
        int[] mainAxisPositions = new int[subSize];
        $this$measure.populateMainAxisPositions(mainAxisLayoutSize, childrenMainAxisSize3, mainAxisPositions, measureScope);
        return $this$measure.placeHelper(placeables, measureScope, beforeCrossAxisAlignmentLine, mainAxisPositions, mainAxisLayoutSize, crossAxisLayoutSize, crossAxisOffset, currentLineIndex, startIndex, endIndex);
    }
}
