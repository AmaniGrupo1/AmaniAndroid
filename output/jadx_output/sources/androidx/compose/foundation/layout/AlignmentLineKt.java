package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: AlignmentLine.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\t2\b\b\u0002\u0010\u0006\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\f\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\f\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u001a;\u0010\u0013\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001b\"\u0018\u0010\u001c\u001a\u00020\u001d*\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"paddingFrom", "Landroidx/compose/ui/Modifier;", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", TtmlNode.ANNOTATION_POSITION_BEFORE, "Landroidx/compose/ui/unit/Dp;", TtmlNode.ANNOTATION_POSITION_AFTER, "paddingFrom-4j6BHR0", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FF)Landroidx/compose/ui/Modifier;", "Landroidx/compose/ui/unit/TextUnit;", "paddingFrom-Y_r0B1c", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;JJ)Landroidx/compose/ui/Modifier;", "paddingFromBaseline", "top", "bottom", "paddingFromBaseline-VpY3zN4", "(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;", "paddingFromBaseline-wCyjxdI", "(Landroidx/compose/ui/Modifier;JJ)Landroidx/compose/ui/Modifier;", "alignmentLineOffsetMeasure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "alignmentLineOffsetMeasure-tjqqzMA", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "horizontal", "", "getHorizontal", "(Landroidx/compose/ui/layout/AlignmentLine;)Z", "foundation-layout"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AlignmentLineKt {
    /* JADX INFO: renamed from: paddingFrom-4j6BHR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m659paddingFrom4j6BHR0$default(Modifier modifier, AlignmentLine alignmentLine, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM();
        }
        if ((i & 4) != 0) {
            f2 = Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM();
        }
        return m658paddingFrom4j6BHR0(modifier, alignmentLine, f, f2);
    }

    /* JADX INFO: renamed from: paddingFrom-4j6BHR0, reason: not valid java name */
    public static final Modifier m658paddingFrom4j6BHR0(Modifier $this$paddingFrom_u2d4j6BHR0, final AlignmentLine alignmentLine, final float f, final float f2) {
        return $this$paddingFrom_u2d4j6BHR0.then(new AlignmentLineOffsetDpElement(alignmentLine, f, f2, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$paddingFrom-4j6BHR0$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo inspectorInfo) {
                inspectorInfo.setName("paddingFrom");
                inspectorInfo.getProperties().set("alignmentLine", alignmentLine);
                inspectorInfo.getProperties().set(TtmlNode.ANNOTATION_POSITION_BEFORE, Dp.m7503boximpl(f));
                inspectorInfo.getProperties().set(TtmlNode.ANNOTATION_POSITION_AFTER, Dp.m7503boximpl(f2));
            }
        } : InspectableValueKt.getNoInspectorInfo(), null));
    }

    /* JADX INFO: renamed from: paddingFrom-Y_r0B1c$default, reason: not valid java name */
    public static /* synthetic */ Modifier m661paddingFromY_r0B1c$default(Modifier modifier, AlignmentLine alignmentLine, long j, long j2, int i, Object obj) {
        long jM7710getUnspecifiedXSAIIZE;
        long jM7710getUnspecifiedXSAIIZE2;
        if ((i & 2) == 0) {
            jM7710getUnspecifiedXSAIIZE = j;
        } else {
            jM7710getUnspecifiedXSAIIZE = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
        }
        if ((i & 4) == 0) {
            jM7710getUnspecifiedXSAIIZE2 = j2;
        } else {
            jM7710getUnspecifiedXSAIIZE2 = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
        }
        return m660paddingFromY_r0B1c(modifier, alignmentLine, jM7710getUnspecifiedXSAIIZE, jM7710getUnspecifiedXSAIIZE2);
    }

    /* JADX INFO: renamed from: paddingFrom-Y_r0B1c, reason: not valid java name */
    public static final Modifier m660paddingFromY_r0B1c(Modifier $this$paddingFrom_u2dY_r0B1c, AlignmentLine alignmentLine, final long j, long j2) {
        final AlignmentLine alignmentLine2;
        long j3;
        final long j4;
        Function1<InspectorInfo, Unit> noInspectorInfo;
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            alignmentLine2 = alignmentLine;
            j4 = j2;
            j3 = j;
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(InspectorInfo inspectorInfo) {
                    inspectorInfo.setName("paddingFrom");
                    inspectorInfo.getProperties().set("alignmentLine", alignmentLine2);
                    inspectorInfo.getProperties().set(TtmlNode.ANNOTATION_POSITION_BEFORE, TextUnit.m7689boximpl(j));
                    inspectorInfo.getProperties().set(TtmlNode.ANNOTATION_POSITION_AFTER, TextUnit.m7689boximpl(j4));
                }
            };
        } else {
            alignmentLine2 = alignmentLine;
            j3 = j;
            j4 = j2;
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return $this$paddingFrom_u2dY_r0B1c.then(new AlignmentLineOffsetTextUnitElement(alignmentLine2, j3, j4, noInspectorInfo, null));
    }

    /* JADX INFO: renamed from: paddingFromBaseline-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m663paddingFromBaselineVpY3zN4$default(Modifier modifier, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM();
        }
        if ((i & 2) != 0) {
            f2 = Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM();
        }
        return m662paddingFromBaselineVpY3zN4(modifier, f, f2);
    }

    /* JADX INFO: renamed from: paddingFromBaseline-VpY3zN4, reason: not valid java name */
    public static final Modifier m662paddingFromBaselineVpY3zN4(Modifier $this$paddingFromBaseline_u2dVpY3zN4, float f, float f2) {
        return $this$paddingFromBaseline_u2dVpY3zN4.then(!Float.isNaN(f) ? m659paddingFrom4j6BHR0$default(Modifier.INSTANCE, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline(), f, 0.0f, 4, null) : Modifier.INSTANCE).then(!Float.isNaN(f2) ? m659paddingFrom4j6BHR0$default(Modifier.INSTANCE, androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline(), 0.0f, f2, 2, null) : Modifier.INSTANCE);
    }

    /* JADX INFO: renamed from: paddingFromBaseline-wCyjxdI$default, reason: not valid java name */
    public static /* synthetic */ Modifier m665paddingFromBaselinewCyjxdI$default(Modifier modifier, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
        }
        if ((i & 2) != 0) {
            j2 = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
        }
        return m664paddingFromBaselinewCyjxdI(modifier, j, j2);
    }

    /* JADX INFO: renamed from: paddingFromBaseline-wCyjxdI, reason: not valid java name */
    public static final Modifier m664paddingFromBaselinewCyjxdI(Modifier $this$paddingFromBaseline_u2dwCyjxdI, long j, long j2) {
        return $this$paddingFromBaseline_u2dwCyjxdI.then(!((TextUnit.m7697getRawTypeimpl(j) > 0L ? 1 : (TextUnit.m7697getRawTypeimpl(j) == 0L ? 0 : -1)) == 0) ? m661paddingFromY_r0B1c$default(Modifier.INSTANCE, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline(), j, 0L, 4, null) : Modifier.INSTANCE).then(!(TextUnit.m7697getRawTypeimpl(j2) == 0) ? m661paddingFromY_r0B1c$default(Modifier.INSTANCE, androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline(), 0L, j2, 2, null) : Modifier.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: alignmentLineOffsetMeasure-tjqqzMA, reason: not valid java name */
    public static final MeasureResult m657alignmentLineOffsetMeasuretjqqzMA(MeasureScope $this$alignmentLineOffsetMeasure_u2dtjqqzMA, final AlignmentLine alignmentLine, float f, float f2, Measurable measurable, long j) {
        final float f3;
        int i;
        final int width;
        final int height;
        final Placeable placeable = measurable.mo6141measureBRTryo0(getHorizontal(alignmentLine) ? Constraints.m7447copyZbe2FdA(j, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(j) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(j) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(j) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(j) : 0) : Constraints.m7447copyZbe2FdA(j, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(j) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(j) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(j) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(j) : 0));
        int it = placeable.get(alignmentLine);
        if (it == Integer.MIN_VALUE) {
            it = 0;
        }
        int linePosition = it;
        int axis = getHorizontal(alignmentLine) ? placeable.getHeight() : placeable.getWidth();
        int axisMax = getHorizontal(alignmentLine) ? Constraints.m7457getMaxHeightimpl(j) : Constraints.m7458getMaxWidthimpl(j);
        if (Float.isNaN(f)) {
            f3 = f;
            i = 0;
        } else {
            f3 = f;
            i = $this$alignmentLineOffsetMeasure_u2dtjqqzMA.mo399roundToPx0680j_4(f3);
        }
        final int paddingBefore = RangesKt.coerceIn(i - linePosition, 0, axisMax - axis);
        final int paddingAfter = RangesKt.coerceIn(((!Float.isNaN(f2) ? $this$alignmentLineOffsetMeasure_u2dtjqqzMA.mo399roundToPx0680j_4(f2) : 0) - axis) + linePosition, 0, (axisMax - axis) - paddingBefore);
        if (getHorizontal(alignmentLine)) {
            width = placeable.getWidth();
        } else {
            width = Math.max(placeable.getWidth() + paddingBefore + paddingAfter, Constraints.m7460getMinWidthimpl(j));
        }
        if (getHorizontal(alignmentLine)) {
            height = Math.max(placeable.getHeight() + paddingBefore + paddingAfter, Constraints.m7459getMinHeightimpl(j));
        } else {
            height = placeable.getHeight();
        }
        return MeasureScope.layout$default($this$alignmentLineOffsetMeasure_u2dtjqqzMA, width, height, null, new Function1() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AlignmentLineKt.alignmentLineOffsetMeasure_tjqqzMA$lambda$1(alignmentLine, f3, paddingBefore, width, paddingAfter, placeable, height, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    static final Unit alignmentLineOffsetMeasure_tjqqzMA$lambda$1(AlignmentLine $alignmentLine, float f, int $paddingBefore, int $width, int $paddingAfter, Placeable $placeable, int $height, Placeable.PlacementScope $this$layout) {
        int width;
        int y;
        if (getHorizontal($alignmentLine)) {
            width = 0;
        } else {
            width = !Dp.m7510equalsimpl0(f, Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM()) ? $paddingBefore : ($width - $paddingAfter) - $placeable.getWidth();
        }
        int x = width;
        if (getHorizontal($alignmentLine)) {
            y = !Dp.m7510equalsimpl0(f, Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM()) ? $paddingBefore : ($height - $paddingAfter) - $placeable.getHeight();
        } else {
            y = 0;
        }
        Placeable.PlacementScope.placeRelative$default($this$layout, $placeable, x, y, 0.0f, 4, null);
        return Unit.INSTANCE;
    }

    private static final boolean getHorizontal(AlignmentLine $this$horizontal) {
        return $this$horizontal instanceof HorizontalAlignmentLine;
    }
}
