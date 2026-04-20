package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.ProgressIndicatorTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.profileinstaller.ProfileVerifier;
import androidx.window.core.layout.WindowSizeClass;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ProgressIndicator.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\\\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0010\u001aR\u0010%\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00010(2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020\u00052\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/H\u0007ø\u0001\u0000¢\u0006\u0004\b0\u00101\u001a\\\u0010%\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00010(2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020\u00052\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/2\b\b\u0002\u00102\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b3\u00104\u001a0\u0010%\u001a\u00020&2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b5\u00106\u001aD\u0010%\u001a\u00020&2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020\u00052\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/H\u0007ø\u0001\u0000¢\u0006\u0004\b7\u00108\u001a8\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00012\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b9\u0010:\u001aL\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00012\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020\u00052\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/H\u0007ø\u0001\u0000¢\u0006\u0004\b0\u0010;\u001aH\u0010<\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00010(2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/H\u0007ø\u0001\u0000¢\u0006\u0004\b=\u0010>\u001am\u0010<\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00010(2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/2\b\b\u0002\u00102\u001a\u00020\u00052\u0019\b\u0002\u0010?\u001a\u0013\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020&0@¢\u0006\u0002\bBH\u0007ø\u0001\u0000¢\u0006\u0004\bC\u0010D\u001a0\u0010<\u001a\u00020&2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+H\u0007ø\u0001\u0000¢\u0006\u0004\bE\u0010F\u001a:\u0010<\u001a\u00020&2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/H\u0007ø\u0001\u0000¢\u0006\u0004\bG\u0010H\u001aD\u0010<\u001a\u00020&2\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/2\b\b\u0002\u00102\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\bI\u0010J\u001a8\u0010<\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00012\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+H\u0007ø\u0001\u0000¢\u0006\u0004\bK\u0010L\u001aB\u0010<\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00012\b\b\u0002\u0010)\u001a\u00020\u00132\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020/H\u0007ø\u0001\u0000¢\u0006\u0004\b=\u0010M\u001a6\u0010N\u001a\u00020&*\u00020A2\u0006\u0010O\u001a\u00020\u00012\u0006\u0010P\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010Q\u001a\u00020RH\u0002ø\u0001\u0000¢\u0006\u0004\bS\u0010T\u001a&\u0010U\u001a\u00020&*\u00020A2\u0006\u0010*\u001a\u00020+2\u0006\u0010Q\u001a\u00020RH\u0002ø\u0001\u0000¢\u0006\u0004\bV\u0010W\u001a6\u0010X\u001a\u00020&*\u00020A2\u0006\u0010O\u001a\u00020\u00012\u0006\u0010P\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010Q\u001a\u00020RH\u0002ø\u0001\u0000¢\u0006\u0004\bY\u0010T\u001a>\u0010Z\u001a\u00020&*\u00020A2\u0006\u0010O\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u00052\u0006\u0010P\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010Q\u001a\u00020RH\u0002ø\u0001\u0000¢\u0006\u0004\b[\u0010\\\u001a>\u0010]\u001a\u00020&*\u00020A2\u0006\u0010^\u001a\u00020\u00012\u0006\u0010_\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00012\u0006\u0010.\u001a\u00020/H\u0002ø\u0001\u0000¢\u0006\u0004\b`\u0010a\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0016\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007\"\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0016\u001a\u00020\u0005X\u0080\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0017\u0010\u0007\"\u0016\u0010\u0018\u001a\u00020\u0005X\u0080\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0019\u0010\u0007\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010#\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b\"\u000e\u0010$\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006b"}, d2 = {"BaseRotationAngle", "", "CircularEasing", "Landroidx/compose/animation/core/CubicBezierEasing;", "CircularIndicatorDiameter", "Landroidx/compose/ui/unit/Dp;", "getCircularIndicatorDiameter", "()F", "F", "FirstLineHeadDelay", "", "FirstLineHeadDuration", "FirstLineHeadEasing", "FirstLineTailDelay", "FirstLineTailDuration", "FirstLineTailEasing", "HeadAndTailAnimationDuration", "HeadAndTailDelayDuration", "IncreaseSemanticsBounds", "Landroidx/compose/ui/Modifier;", "JumpRotationAngle", "LinearAnimationDuration", "LinearIndicatorHeight", "getLinearIndicatorHeight", "LinearIndicatorWidth", "getLinearIndicatorWidth", "RotationAngleOffset", "RotationDuration", "RotationsPerCycle", "SecondLineHeadDelay", "SecondLineHeadDuration", "SecondLineHeadEasing", "SecondLineTailDelay", "SecondLineTailDuration", "SecondLineTailEasing", "SemanticsBoundsPadding", "StartAngleOffset", "CircularProgressIndicator", "", NotificationCompat.CATEGORY_PROGRESS, "Lkotlin/Function0;", "modifier", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/Color;", "strokeWidth", "trackColor", "strokeCap", "Landroidx/compose/ui/graphics/StrokeCap;", "CircularProgressIndicator-DUhRLBM", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V", "gapSize", "CircularProgressIndicator-IyT6zlY", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/Composer;II)V", "CircularProgressIndicator-aM-cp0Q", "(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V", "CircularProgressIndicator-LxG7B9w", "(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V", "CircularProgressIndicator-MBs18nI", "(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V", "(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator", "LinearProgressIndicator-_5eSR-E", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V", "drawStopIndicator", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "Lkotlin/ExtensionFunctionType;", "LinearProgressIndicator-GJbTh5U", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJIFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-RIQooxk", "(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-2cYBFYY", "(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-rIrjwxo", "(Landroidx/compose/ui/Modifier;JJIFLandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-eaDK9VM", "(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V", "(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V", "drawCircularIndicator", "startAngle", "sweep", "stroke", "Landroidx/compose/ui/graphics/drawscope/Stroke;", "drawCircularIndicator-42QJj7c", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawCircularIndicatorTrack", "drawCircularIndicatorTrack-bw27NRU", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawDeterminateCircularIndicator", "drawDeterminateCircularIndicator-42QJj7c", "drawIndeterminateCircularIndicator", "drawIndeterminateCircularIndicator-hrjfTZI", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawLinearIndicator", "startFraction", "endFraction", "drawLinearIndicator-qYKTg0g", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ProgressIndicatorKt {
    private static final float BaseRotationAngle = 286.0f;
    private static final CubicBezierEasing CircularEasing;
    private static final float CircularIndicatorDiameter;
    private static final int FirstLineHeadDelay = 0;
    private static final int FirstLineHeadDuration = 750;
    private static final CubicBezierEasing FirstLineHeadEasing;
    private static final int FirstLineTailDelay = 333;
    private static final int FirstLineTailDuration = 850;
    private static final CubicBezierEasing FirstLineTailEasing;
    private static final int HeadAndTailAnimationDuration = 666;
    private static final int HeadAndTailDelayDuration = 666;
    private static final float JumpRotationAngle = 290.0f;
    private static final int LinearAnimationDuration = 1800;
    private static final float RotationAngleOffset = 216.0f;
    private static final int RotationDuration = 1332;
    private static final int RotationsPerCycle = 5;
    private static final int SecondLineHeadDelay = 1000;
    private static final int SecondLineHeadDuration = 567;
    private static final CubicBezierEasing SecondLineHeadEasing;
    private static final int SecondLineTailDelay = 1267;
    private static final int SecondLineTailDuration = 533;
    private static final CubicBezierEasing SecondLineTailEasing;
    private static final float StartAngleOffset = -90.0f;
    private static final float SemanticsBoundsPadding = Dp.m7505constructorimpl(10);
    private static final Modifier IncreaseSemanticsBounds = PaddingKt.m820paddingVpY3zN4$default(SemanticsModifierKt.semantics(LayoutModifierKt.layout(Modifier.INSTANCE, new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.material3.ProgressIndicatorKt$IncreaseSemanticsBounds$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
            return m2670invoke3p2s80s(measureScope, measurable, constraints.getValue());
        }

        /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
        public final MeasureResult m2670invoke3p2s80s(MeasureScope $this$layout, Measurable measurable, long constraints) {
            final int paddingPx = $this$layout.mo399roundToPx0680j_4(ProgressIndicatorKt.SemanticsBoundsPadding);
            long newConstraint = ConstraintsKt.m7477offsetNN6EwU(constraints, 0, paddingPx * 2);
            final Placeable placeable = measurable.mo6141measureBRTryo0(newConstraint);
            int height = placeable.getHeight() - (paddingPx * 2);
            int width = placeable.getWidth();
            return MeasureScope.layout$default($this$layout, width, height, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$IncreaseSemanticsBounds$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                    invoke2(placementScope);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Placeable.PlacementScope $this$layout2) {
                    Placeable.PlacementScope.place$default($this$layout2, placeable, 0, -paddingPx, 0.0f, 4, null);
                }
            }, 4, null);
        }
    }), true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$IncreaseSemanticsBounds$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            invoke2(semanticsPropertyReceiver);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
        }
    }), 0.0f, SemanticsBoundsPadding, 1, null);
    private static final float LinearIndicatorWidth = Dp.m7505constructorimpl(PsExtractor.VIDEO_STREAM_MASK);
    private static final float LinearIndicatorHeight = ProgressIndicatorTokens.INSTANCE.m3750getTrackThicknessD9Ej5fM();

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the overload that takes `gapSize` and `drawStopIndicator`, see `LegacyLinearProgressIndicatorSample` on how to restore the previous behavior", replaceWith = @ReplaceWith(expression = "LinearProgressIndicator(progress, modifier, color, trackColor, strokeCap, gapSize, drawStopIndicator)", imports = {}))
    /* JADX INFO: renamed from: LinearProgressIndicator-_5eSR-E, reason: not valid java name */
    public static final /* synthetic */ void m2657LinearProgressIndicator_5eSRE(final Function0 progress, Modifier modifier, long color, long trackColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Function0 function0;
        Modifier modifier2;
        long j;
        long trackColor2;
        int i2;
        long color2;
        long trackColor3;
        int strokeCap2;
        Modifier modifier3;
        long color3;
        Composer $composer2;
        final Modifier modifier4;
        final long color4;
        final long trackColor4;
        final int strokeCap3;
        Composer $composer3 = $composer.startRestartGroup(-1796992155);
        ComposerKt.sourceInformation($composer3, "C(LinearProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)96@4380L11,97@4443L16,100@4539L192:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            function0 = progress;
        } else if (($changed & 6) == 0) {
            function0 = progress;
            $dirty |= $composer3.changedInstance(function0) ? 4 : 2;
        } else {
            function0 = progress;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                j = color;
                int i4 = $composer3.changed(j) ? 256 : 128;
                $dirty |= i4;
            } else {
                j = color;
            }
            $dirty |= i4;
        } else {
            j = color;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                trackColor2 = trackColor;
                int i5 = $composer3.changed(trackColor2) ? 2048 : 1024;
                $dirty |= i5;
            } else {
                trackColor2 = trackColor;
            }
            $dirty |= i5;
        } else {
            trackColor2 = trackColor;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            i2 = strokeCap;
        } else if (($changed & 24576) == 0) {
            i2 = strokeCap;
            $dirty |= $composer3.changed(i2) ? 16384 : 8192;
        } else {
            i2 = strokeCap;
        }
        if (($dirty & 9363) == 9362 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier2;
            color4 = j;
            trackColor4 = trackColor2;
            $composer2 = $composer3;
            strokeCap3 = i2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getLinearColor($composer3, 6);
                    $dirty &= -897;
                } else {
                    color2 = j;
                }
                if ((i & 8) != 0) {
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor($composer3, 6);
                    $dirty &= -7169;
                }
                if (i6 != 0) {
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2645getLinearStrokeCapKaPHkGw();
                    trackColor3 = trackColor2;
                    modifier3 = modifier5;
                    color3 = color2;
                } else {
                    trackColor3 = trackColor2;
                    strokeCap2 = i2;
                    modifier3 = modifier5;
                    color3 = color2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                }
                trackColor3 = trackColor2;
                strokeCap2 = i2;
                modifier3 = modifier2;
                color3 = j;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1796992155, $dirty, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:99)");
            }
            $composer2 = $composer3;
            m2654LinearProgressIndicatorGJbTh5U(function0, modifier3, color3, trackColor3, strokeCap2, ProgressIndicatorDefaults.INSTANCE.m2644getLinearIndicatorTrackGapSizeD9Ej5fM(), null, $composer2, ($dirty & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty), 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color4 = color3;
            trackColor4 = trackColor3;
            strokeCap3 = strokeCap2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) {
                    ProgressIndicatorKt.m2657LinearProgressIndicator_5eSRE(progress, modifier4, color4, trackColor4, strokeCap3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:160:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0315  */
    /* JADX INFO: renamed from: LinearProgressIndicator-GJbTh5U, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2654LinearProgressIndicatorGJbTh5U(final Function0<Float> function0, Modifier modifier, long color, long trackColor, int strokeCap, float gapSize, Function1<? super DrawScope, Unit> function1, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final long color2;
        long trackColor2;
        final int strokeCap2;
        float gapSize2;
        Function1<? super DrawScope, Unit> function12;
        Function1<? super DrawScope, Unit> function13;
        final float gapSize3;
        final int strokeCap3;
        int $dirty;
        Object value$iv;
        Modifier modifier3;
        boolean z;
        boolean invalid$iv;
        final Function1<? super DrawScope, Unit> function14;
        final long color3;
        final long trackColor3;
        Object value$iv2;
        final int strokeCap4;
        final float gapSize4;
        final long trackColor4;
        final long color4;
        final Function1<? super DrawScope, Unit> function15;
        final Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(-339970038);
        ComposerKt.sourceInformation($composer2, "C(LinearProgressIndicator)P(4,3,0:c#ui.graphics.Color,6:c#ui.graphics.Color,5:c#ui.graphics.StrokeCap,2:c#ui.unit.Dp)140@6419L11,141@6482L16,144@6689L214,153@6935L31,157@7087L102,161@7259L806,154@6971L1094:ProgressIndicator.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changedInstance(function0) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                color2 = color;
                int i3 = $composer2.changed(color2) ? 256 : 128;
                $dirty2 |= i3;
            } else {
                color2 = color;
            }
            $dirty2 |= i3;
        } else {
            color2 = color;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                trackColor2 = trackColor;
                int i4 = $composer2.changed(trackColor2) ? 2048 : 1024;
                $dirty2 |= i4;
            } else {
                trackColor2 = trackColor;
            }
            $dirty2 |= i4;
        } else {
            trackColor2 = trackColor;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty2 |= 24576;
            strokeCap2 = strokeCap;
        } else if (($changed & 24576) == 0) {
            strokeCap2 = strokeCap;
            $dirty2 |= $composer2.changed(strokeCap2) ? 16384 : 8192;
        } else {
            strokeCap2 = strokeCap;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            gapSize2 = gapSize;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            gapSize2 = gapSize;
            $dirty2 |= $composer2.changed(gapSize2) ? 131072 : 65536;
        } else {
            gapSize2 = gapSize;
        }
        if (($changed & 1572864) == 0) {
            if ((i & 64) == 0) {
                function12 = function1;
                int i7 = $composer2.changedInstance(function12) ? 1048576 : 524288;
                $dirty2 |= i7;
            } else {
                function12 = function1;
            }
            $dirty2 |= i7;
        } else {
            function12 = function1;
        }
        if (($dirty2 & 599187) == 599186 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            long j = color2;
            gapSize4 = gapSize2;
            color4 = j;
            modifier4 = modifier2;
            trackColor4 = trackColor2;
            function15 = function12;
            strokeCap4 = strokeCap2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getLinearColor($composer2, 6);
                    $dirty2 &= -897;
                }
                if ((i & 8) != 0) {
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor($composer2, 6);
                    $dirty2 &= -7169;
                }
                if (i5 != 0) {
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2645getLinearStrokeCapKaPHkGw();
                }
                if (i6 != 0) {
                    gapSize2 = ProgressIndicatorDefaults.INSTANCE.m2644getLinearIndicatorTrackGapSizeD9Ej5fM();
                }
                if ((i & 64) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, 1144997616, "CC(remember):ProgressIndicator.kt#9igjgp");
                    boolean invalid$iv2 = (((($dirty2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer2.changed(color2)) || ($dirty2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | ((57344 & $dirty2) == 16384);
                    Object value$iv3 = $composer2.rememberedValue();
                    if (invalid$iv2) {
                        $dirty = $dirty2;
                    } else {
                        $dirty = $dirty2;
                        if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                        }
                        function13 = (Function1) value$iv3;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        $dirty2 = $dirty & (-3670017);
                        gapSize3 = gapSize2;
                        strokeCap3 = strokeCap2;
                    }
                    value$iv3 = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$2$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                            invoke2(drawScope);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(DrawScope $this$null) {
                            ProgressIndicatorDefaults.INSTANCE.m2639drawStopIndicatorEgI2THU($this$null, ProgressIndicatorDefaults.INSTANCE.m2646getLinearTrackStopIndicatorSizeD9Ej5fM(), color2, strokeCap2);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv3);
                    function13 = (Function1) value$iv3;
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $dirty2 = $dirty & (-3670017);
                    gapSize3 = gapSize2;
                    strokeCap3 = strokeCap2;
                } else {
                    function13 = function1;
                    gapSize3 = gapSize2;
                    strokeCap3 = strokeCap2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 8) != 0) {
                    $dirty2 &= -7169;
                }
                if ((i & 64) != 0) {
                    $dirty2 &= -3670017;
                }
                function13 = function1;
                gapSize3 = gapSize2;
                strokeCap3 = strokeCap2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-339970038, $dirty2, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:152)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 1145005305, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean invalid$iv3 = ($dirty2 & 14) == 4;
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv3 || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function0) new Function0<Float>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$coercedProgress$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final Float invoke() {
                        return Float.valueOf(RangesKt.coerceIn(function0.invoke().floatValue(), 0.0f, 1.0f));
                    }
                };
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final Function0 coercedProgress = (Function0) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Modifier modifierThen = modifier2.then(IncreaseSemanticsBounds);
            ComposerKt.sourceInformationMarkerStart($composer2, 1145010240, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean invalid$iv4 = $composer2.changed(coercedProgress);
            Object value$iv4 = $composer2.rememberedValue();
            if (invalid$iv4) {
                modifier3 = modifier2;
            } else {
                modifier3 = modifier2;
                if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                z = true;
                Modifier modifierM866sizeVpY3zN4 = SizeKt.m866sizeVpY3zN4(SemanticsModifierKt.semantics(modifierThen, true, (Function1) value$iv4), LinearIndicatorWidth, LinearIndicatorHeight);
                ComposerKt.sourceInformationMarkerStart($composer2, 1145016448, "CC(remember):ProgressIndicator.kt#9igjgp");
                boolean zChanged = ((57344 & $dirty2) != 16384) | ((458752 & $dirty2) != 131072) | $composer2.changed(coercedProgress) | (((($dirty2 & 7168) ^ 3072) <= 2048 && $composer2.changed(trackColor2)) || ($dirty2 & 3072) == 2048) | (((($dirty2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer2.changed(color2)) || ($dirty2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if ((((3670016 & $dirty2) ^ 1572864) <= 1048576 || !$composer2.changed(function13)) && ($dirty2 & 1572864) != 1048576) {
                    z = false;
                }
                invalid$iv = zChanged | z;
                Object it$iv2 = $composer2.rememberedValue();
                if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    function14 = function13;
                    color3 = color2;
                    trackColor3 = trackColor2;
                    value$iv2 = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$4$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                            invoke2(drawScope);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(DrawScope $this$Canvas) {
                            float fM7505constructorimpl;
                            DrawScope $this$Canvas2;
                            float strokeWidth = Size.m4518getHeightimpl($this$Canvas.mo5271getSizeNHjbRc());
                            if (StrokeCap.m5067equalsimpl0(strokeCap3, StrokeCap.INSTANCE.m5071getButtKaPHkGw()) || Size.m4518getHeightimpl($this$Canvas.mo5271getSizeNHjbRc()) > Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc())) {
                                fM7505constructorimpl = gapSize3;
                            } else {
                                float arg0$iv = gapSize3;
                                float other$iv = $this$Canvas.mo401toDpu2uoSUM(strokeWidth);
                                fM7505constructorimpl = Dp.m7505constructorimpl(arg0$iv + other$iv);
                            }
                            float adjustedGapSize = fM7505constructorimpl;
                            float other$iv2 = $this$Canvas.mo401toDpu2uoSUM(Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc()));
                            float gapSizeFraction = adjustedGapSize / other$iv2;
                            float currentCoercedProgress = coercedProgress.invoke().floatValue();
                            float trackStartFraction = currentCoercedProgress + Math.min(currentCoercedProgress, gapSizeFraction);
                            if (trackStartFraction <= 1.0f) {
                                $this$Canvas2 = $this$Canvas;
                                ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, trackStartFraction, 1.0f, trackColor3, strokeWidth, strokeCap3);
                            } else {
                                $this$Canvas2 = $this$Canvas;
                            }
                            ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, 0.0f, currentCoercedProgress, color3, strokeWidth, strokeCap3);
                            function14.invoke($this$Canvas2);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv2);
                } else {
                    function14 = function13;
                    value$iv2 = it$iv2;
                    color3 = color2;
                    trackColor3 = trackColor2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                CanvasKt.Canvas(modifierM866sizeVpY3zN4, (Function1) value$iv2, $composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                strokeCap4 = strokeCap3;
                gapSize4 = gapSize3;
                trackColor4 = trackColor3;
                color4 = color3;
                function15 = function14;
                modifier4 = modifier3;
            }
            value$iv4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$3$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                    SemanticsPropertiesKt.setProgressBarRangeInfo($this$semantics, new ProgressBarRangeInfo(coercedProgress.invoke().floatValue(), RangesKt.rangeTo(0.0f, 1.0f), 0, 4, null));
                }
            };
            $composer2.updateRememberedValue(value$iv4);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            z = true;
            Modifier modifierM866sizeVpY3zN42 = SizeKt.m866sizeVpY3zN4(SemanticsModifierKt.semantics(modifierThen, true, (Function1) value$iv4), LinearIndicatorWidth, LinearIndicatorHeight);
            ComposerKt.sourceInformationMarkerStart($composer2, 1145016448, "CC(remember):ProgressIndicator.kt#9igjgp");
            if ((($dirty2 & 7168) ^ 3072) <= 2048) {
                if ((($dirty2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                    boolean zChanged2 = ((57344 & $dirty2) != 16384) | ((458752 & $dirty2) != 131072) | $composer2.changed(coercedProgress) | (((($dirty2 & 7168) ^ 3072) <= 2048 && $composer2.changed(trackColor2)) || ($dirty2 & 3072) == 2048) | (((($dirty2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer2.changed(color2)) || ($dirty2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    if (((3670016 & $dirty2) ^ 1572864) <= 1048576) {
                        z = false;
                        invalid$iv = zChanged2 | z;
                        Object it$iv22 = $composer2.rememberedValue();
                        if (invalid$iv) {
                            function14 = function13;
                            color3 = color2;
                            trackColor3 = trackColor2;
                            value$iv2 = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$4$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                                    invoke2(drawScope);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(DrawScope $this$Canvas) {
                                    float fM7505constructorimpl;
                                    DrawScope $this$Canvas2;
                                    float strokeWidth = Size.m4518getHeightimpl($this$Canvas.mo5271getSizeNHjbRc());
                                    if (StrokeCap.m5067equalsimpl0(strokeCap3, StrokeCap.INSTANCE.m5071getButtKaPHkGw()) || Size.m4518getHeightimpl($this$Canvas.mo5271getSizeNHjbRc()) > Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc())) {
                                        fM7505constructorimpl = gapSize3;
                                    } else {
                                        float arg0$iv = gapSize3;
                                        float other$iv = $this$Canvas.mo401toDpu2uoSUM(strokeWidth);
                                        fM7505constructorimpl = Dp.m7505constructorimpl(arg0$iv + other$iv);
                                    }
                                    float adjustedGapSize = fM7505constructorimpl;
                                    float other$iv2 = $this$Canvas.mo401toDpu2uoSUM(Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc()));
                                    float gapSizeFraction = adjustedGapSize / other$iv2;
                                    float currentCoercedProgress = coercedProgress.invoke().floatValue();
                                    float trackStartFraction = currentCoercedProgress + Math.min(currentCoercedProgress, gapSizeFraction);
                                    if (trackStartFraction <= 1.0f) {
                                        $this$Canvas2 = $this$Canvas;
                                        ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, trackStartFraction, 1.0f, trackColor3, strokeWidth, strokeCap3);
                                    } else {
                                        $this$Canvas2 = $this$Canvas;
                                    }
                                    ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, 0.0f, currentCoercedProgress, color3, strokeWidth, strokeCap3);
                                    function14.invoke($this$Canvas2);
                                }
                            };
                            $composer2.updateRememberedValue(value$iv2);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            CanvasKt.Canvas(modifierM866sizeVpY3zN42, (Function1) value$iv2, $composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            strokeCap4 = strokeCap3;
                            gapSize4 = gapSize3;
                            trackColor4 = trackColor3;
                            color4 = color3;
                            function15 = function14;
                            modifier4 = modifier3;
                        }
                    } else {
                        z = false;
                        invalid$iv = zChanged2 | z;
                        Object it$iv222 = $composer2.rememberedValue();
                        if (invalid$iv) {
                        }
                    }
                } else {
                    boolean zChanged22 = ((57344 & $dirty2) != 16384) | ((458752 & $dirty2) != 131072) | $composer2.changed(coercedProgress) | (((($dirty2 & 7168) ^ 3072) <= 2048 && $composer2.changed(trackColor2)) || ($dirty2 & 3072) == 2048) | (((($dirty2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer2.changed(color2)) || ($dirty2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    if (((3670016 & $dirty2) ^ 1572864) <= 1048576) {
                    }
                }
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    ProgressIndicatorKt.m2654LinearProgressIndicatorGJbTh5U(function0, modifier4, color4, trackColor4, strokeCap4, gapSize4, function15, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the overload that takes `gapSize`, see `LegacyIndeterminateLinearProgressIndicatorSample` on how to restore the previous behavior", replaceWith = @ReplaceWith(expression = "LinearProgressIndicator(modifier, color, trackColor, strokeCap, gapSize)", imports = {}))
    /* JADX INFO: renamed from: LinearProgressIndicator-2cYBFYY, reason: not valid java name */
    public static final /* synthetic */ void m2653LinearProgressIndicator2cYBFYY(Modifier modifier, long color, long trackColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        long trackColor2;
        int i2;
        long color2;
        long trackColor3;
        int strokeCap2;
        Modifier modifier3;
        long color3;
        final long color4;
        final long trackColor4;
        final int strokeCap3;
        final Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(-476865359);
        ComposerKt.sourceInformation($composer2, "C(LinearProgressIndicator)P(1,0:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.StrokeCap)214@9497L11,215@9560L16,218@9656L175:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        int i3 = i & 1;
        if (i3 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                j = color;
                int i4 = $composer2.changed(j) ? 32 : 16;
                $dirty |= i4;
            } else {
                j = color;
            }
            $dirty |= i4;
        } else {
            j = color;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                trackColor2 = trackColor;
                int i5 = $composer2.changed(trackColor2) ? 256 : 128;
                $dirty |= i5;
            } else {
                trackColor2 = trackColor;
            }
            $dirty |= i5;
        } else {
            trackColor2 = trackColor;
        }
        int i6 = i & 8;
        if (i6 != 0) {
            $dirty |= 3072;
            i2 = strokeCap;
        } else if (($changed & 3072) == 0) {
            i2 = strokeCap;
            $dirty |= $composer2.changed(i2) ? 2048 : 1024;
        } else {
            i2 = strokeCap;
        }
        if (($dirty & 1171) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            color4 = j;
            trackColor4 = trackColor2;
            strokeCap3 = i2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getLinearColor($composer2, 6);
                    $dirty &= -113;
                } else {
                    color2 = j;
                }
                if ((i & 4) != 0) {
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor($composer2, 6);
                    $dirty &= -897;
                }
                if (i6 != 0) {
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2645getLinearStrokeCapKaPHkGw();
                    trackColor3 = trackColor2;
                    modifier3 = modifier5;
                    color3 = color2;
                } else {
                    trackColor3 = trackColor2;
                    strokeCap2 = i2;
                    modifier3 = modifier5;
                    color3 = color2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                trackColor3 = trackColor2;
                strokeCap2 = i2;
                modifier3 = modifier2;
                color3 = j;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-476865359, $dirty, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:217)");
            }
            m2659LinearProgressIndicatorrIrjwxo(modifier3, color3, trackColor3, strokeCap2, ProgressIndicatorDefaults.INSTANCE.m2644getLinearIndicatorTrackGapSizeD9Ej5fM(), $composer2, ($dirty & 14) | 24576 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            color4 = color3;
            trackColor4 = trackColor3;
            strokeCap3 = strokeCap2;
            modifier4 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) {
                    ProgressIndicatorKt.m2653LinearProgressIndicator2cYBFYY(modifier4, color4, trackColor4, strokeCap3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: LinearProgressIndicator-rIrjwxo, reason: not valid java name */
    public static final void m2659LinearProgressIndicatorrIrjwxo(Modifier modifier, long color, long trackColor, int strokeCap, float gapSize, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long color2;
        long trackColor2;
        int strokeCap2;
        final float gapSize2;
        Modifier.Companion modifier3;
        final float gapSize3;
        final int strokeCap3;
        Composer $composer2;
        final long color3;
        final long trackColor3;
        Object value$iv;
        final Modifier modifier4;
        final int strokeCap4;
        final long trackColor4;
        final long color4;
        Composer $composer3 = $composer.startRestartGroup(567589233);
        ComposerKt.sourceInformation($composer3, "C(LinearProgressIndicator)P(2,0:c#ui.graphics.Color,4:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap,1:c#ui.unit.Dp)249@11000L11,250@11063L16,254@11257L28,259@11547L396,272@11995L396,285@12444L400,298@12897L400,315@13472L1839,310@13302L2009:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                color2 = color;
                int i3 = $composer3.changed(color2) ? 32 : 16;
                $dirty |= i3;
            } else {
                color2 = color;
            }
            $dirty |= i3;
        } else {
            color2 = color;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                trackColor2 = trackColor;
                int i4 = $composer3.changed(trackColor2) ? 256 : 128;
                $dirty |= i4;
            } else {
                trackColor2 = trackColor;
            }
            $dirty |= i4;
        } else {
            trackColor2 = trackColor;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            strokeCap2 = strokeCap;
        } else if (($changed & 3072) == 0) {
            strokeCap2 = strokeCap;
            $dirty |= $composer3.changed(strokeCap2) ? 2048 : 1024;
        } else {
            strokeCap2 = strokeCap;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            gapSize2 = gapSize;
        } else if (($changed & 24576) == 0) {
            gapSize2 = gapSize;
            $dirty |= $composer3.changed(gapSize2) ? 16384 : 8192;
        } else {
            gapSize2 = gapSize;
        }
        if (($dirty & 9363) == 9362 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            color4 = color2;
            strokeCap4 = strokeCap2;
            $composer2 = $composer3;
            modifier4 = modifier2;
            trackColor4 = trackColor2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getLinearColor($composer3, 6);
                    $dirty &= -113;
                }
                if ((i & 4) != 0) {
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor($composer3, 6);
                    $dirty &= -897;
                }
                if (i5 != 0) {
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2645getLinearStrokeCapKaPHkGw();
                }
                if (i6 != 0) {
                    gapSize3 = ProgressIndicatorDefaults.INSTANCE.m2644getLinearIndicatorTrackGapSizeD9Ej5fM();
                    strokeCap3 = strokeCap2;
                } else {
                    gapSize3 = gapSize2;
                    strokeCap3 = strokeCap2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                modifier3 = modifier2;
                gapSize3 = gapSize2;
                strokeCap3 = strokeCap2;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(567589233, $dirty, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:253)");
            }
            InfiniteTransition infiniteTransition = InfiniteTransitionKt.rememberInfiniteTransition(null, $composer3, 0, 1);
            final State<Float> stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1800);
                    keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 0), ProgressIndicatorKt.FirstLineHeadEasing);
                    keyframesSpecConfig.at(Float.valueOf(1.0f), 750);
                }
            }), null, 0L, 6, null), null, $composer3, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State<Float> stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1800);
                    keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 333), ProgressIndicatorKt.FirstLineTailEasing);
                    keyframesSpecConfig.at(Float.valueOf(1.0f), 1183);
                }
            }), null, 0L, 6, null), null, $composer3, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State<Float> stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1800);
                    keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 1000), ProgressIndicatorKt.SecondLineHeadEasing);
                    keyframesSpecConfig.at(Float.valueOf(1.0f), 1567);
                }
            }), null, 0L, 6, null), null, $composer3, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State<Float> stateAnimateFloat4 = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1800);
                    keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 1267), ProgressIndicatorKt.SecondLineTailEasing);
                    keyframesSpecConfig.at(Float.valueOf(1.0f), 1800);
                }
            }), null, 0L, 6, null), null, $composer3, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            $composer2 = $composer3;
            Modifier modifierM866sizeVpY3zN4 = SizeKt.m866sizeVpY3zN4(ProgressSemanticsKt.progressSemantics(modifier3.then(IncreaseSemanticsBounds)), LinearIndicatorWidth, LinearIndicatorHeight);
            ComposerKt.sourceInformationMarkerStart($composer2, 1145216297, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean invalid$iv = ((57344 & $dirty) == 16384) | (($dirty & 7168) == 2048) | $composer2.changed(stateAnimateFloat) | (((($dirty & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer2.changed(trackColor2)) || ($dirty & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | $composer2.changed(stateAnimateFloat2) | (((($dirty & 112) ^ 48) > 32 && $composer2.changed(color2)) || ($dirty & 48) == 32) | $composer2.changed(stateAnimateFloat3) | $composer2.changed(stateAnimateFloat4);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                color3 = color2;
                trackColor3 = trackColor2;
                value$iv = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$7$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                        invoke2(drawScope);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(DrawScope $this$Canvas) {
                        float fM7505constructorimpl;
                        DrawScope $this$Canvas2;
                        float strokeWidth = Size.m4518getHeightimpl($this$Canvas.mo5271getSizeNHjbRc());
                        if (StrokeCap.m5067equalsimpl0(strokeCap3, StrokeCap.INSTANCE.m5071getButtKaPHkGw()) || Size.m4518getHeightimpl($this$Canvas.mo5271getSizeNHjbRc()) > Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc())) {
                            fM7505constructorimpl = gapSize3;
                        } else {
                            float arg0$iv = gapSize3;
                            float other$iv = $this$Canvas.mo401toDpu2uoSUM(strokeWidth);
                            fM7505constructorimpl = Dp.m7505constructorimpl(arg0$iv + other$iv);
                        }
                        float adjustedGapSize = fM7505constructorimpl;
                        float other$iv2 = $this$Canvas.mo401toDpu2uoSUM(Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc()));
                        float gapSizeFraction = adjustedGapSize / other$iv2;
                        if (stateAnimateFloat.getValue().floatValue() < 1.0f - gapSizeFraction) {
                            float start = stateAnimateFloat.getValue().floatValue() > 0.0f ? stateAnimateFloat.getValue().floatValue() + gapSizeFraction : 0.0f;
                            $this$Canvas2 = $this$Canvas;
                            ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, start, 1.0f, trackColor3, strokeWidth, strokeCap3);
                        } else {
                            $this$Canvas2 = $this$Canvas;
                        }
                        if (stateAnimateFloat.getValue().floatValue() - stateAnimateFloat2.getValue().floatValue() > 0.0f) {
                            ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, stateAnimateFloat.getValue().floatValue(), stateAnimateFloat2.getValue().floatValue(), color3, strokeWidth, strokeCap3);
                        }
                        if (stateAnimateFloat2.getValue().floatValue() > gapSizeFraction) {
                            float start2 = stateAnimateFloat3.getValue().floatValue() > 0.0f ? stateAnimateFloat3.getValue().floatValue() + gapSizeFraction : 0.0f;
                            float end = stateAnimateFloat2.getValue().floatValue() < 1.0f ? stateAnimateFloat2.getValue().floatValue() - gapSizeFraction : 1.0f;
                            ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, start2, end, trackColor3, strokeWidth, strokeCap3);
                        }
                        if (stateAnimateFloat3.getValue().floatValue() - stateAnimateFloat4.getValue().floatValue() > 0.0f) {
                            ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, stateAnimateFloat3.getValue().floatValue(), stateAnimateFloat4.getValue().floatValue(), color3, strokeWidth, strokeCap3);
                        }
                        if (stateAnimateFloat4.getValue().floatValue() > gapSizeFraction) {
                            float end2 = stateAnimateFloat4.getValue().floatValue() < 1.0f ? stateAnimateFloat4.getValue().floatValue() - gapSizeFraction : 1.0f;
                            ProgressIndicatorKt.m2669drawLinearIndicatorqYKTg0g($this$Canvas2, 0.0f, end2, trackColor3, strokeWidth, strokeCap3);
                        }
                    }
                };
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
                color3 = color2;
                trackColor3 = trackColor2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            CanvasKt.Canvas(modifierM866sizeVpY3zN4, (Function1) value$iv, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            strokeCap4 = strokeCap3;
            gapSize2 = gapSize3;
            trackColor4 = trackColor3;
            color4 = color3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) {
                    ProgressIndicatorKt.m2659LinearProgressIndicatorrIrjwxo(modifier4, color4, trackColor4, strokeCap4, gapSize2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(message = "Use the overload that takes `progress` as a lambda", replaceWith = @ReplaceWith(expression = "LinearProgressIndicator(\nprogress = { progress },\nmodifier = modifier,\ncolor = color,\ntrackColor = trackColor,\nstrokeCap = strokeCap,\n)", imports = {}))
    /* JADX INFO: renamed from: LinearProgressIndicator-_5eSR-E, reason: not valid java name */
    public static final void m2656LinearProgressIndicator_5eSRE(final float progress, Modifier modifier, long color, long trackColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long color2;
        long trackColor2;
        int i2;
        int strokeCap2;
        long trackColor3;
        long trackColor4;
        Modifier modifier3;
        Object value$iv;
        Composer $composer2;
        final Modifier modifier4;
        final long trackColor5;
        final int strokeCap3;
        final long color3;
        Composer $composer3 = $composer.startRestartGroup(905419617);
        ComposerKt.sourceInformation($composer3, "C(LinearProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)385@15871L11,386@15934L16,390@16074L12,389@16030L179:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(progress) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                color2 = color;
                int i4 = $composer3.changed(color2) ? 256 : 128;
                $dirty |= i4;
            } else {
                color2 = color;
            }
            $dirty |= i4;
        } else {
            color2 = color;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                trackColor2 = trackColor;
                int i5 = $composer3.changed(trackColor2) ? 2048 : 1024;
                $dirty |= i5;
            } else {
                trackColor2 = trackColor;
            }
            $dirty |= i5;
        } else {
            trackColor2 = trackColor;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            i2 = strokeCap;
        } else if (($changed & 24576) == 0) {
            i2 = strokeCap;
            $dirty |= $composer3.changed(i2) ? 16384 : 8192;
        } else {
            i2 = strokeCap;
        }
        if (($dirty & 9363) == 9362 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            color3 = color2;
            $composer2 = $composer3;
            modifier4 = modifier2;
            trackColor5 = trackColor2;
            strokeCap3 = i2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i3 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getLinearColor($composer3, 6);
                    $dirty &= -897;
                }
                if ((i & 8) != 0) {
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor($composer3, 6);
                    $dirty &= -7169;
                }
                if (i6 != 0) {
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2645getLinearStrokeCapKaPHkGw();
                    trackColor3 = trackColor2;
                    trackColor4 = color2;
                    modifier3 = modifier2;
                } else {
                    strokeCap2 = i2;
                    trackColor3 = trackColor2;
                    trackColor4 = color2;
                    modifier3 = modifier2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                }
                strokeCap2 = i2;
                trackColor3 = trackColor2;
                trackColor4 = color2;
                modifier3 = modifier2;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(905419617, $dirty, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:389)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 1145297734, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean invalid$iv = ($dirty & 14) == 4;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function0) new Function0<Float>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$9$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final Float invoke() {
                        return Float.valueOf(progress);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            m2654LinearProgressIndicatorGJbTh5U((Function0) value$iv, modifier3, trackColor4, trackColor3, strokeCap2, 0.0f, null, $composer2, ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty), 96);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            trackColor5 = trackColor3;
            strokeCap3 = strokeCap2;
            color3 = trackColor4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$10
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) {
                    ProgressIndicatorKt.m2656LinearProgressIndicator_5eSRE(progress, modifier4, color3, trackColor5, strokeCap3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* JADX INFO: renamed from: LinearProgressIndicator-eaDK9VM, reason: not valid java name */
    public static final /* synthetic */ void m2658LinearProgressIndicatoreaDK9VM(final float progress, Modifier modifier, long color, long trackColor, Composer $composer, final int $changed, final int i) {
        float f;
        Modifier modifier2;
        long j;
        long j2;
        long color2;
        long trackColor2;
        Modifier modifier3;
        long color3;
        final Modifier modifier4;
        final long color4;
        final long trackColor3;
        Composer $composer2 = $composer.startRestartGroup(-372717133);
        ComposerKt.sourceInformation($composer2, "C(LinearProgressIndicator)P(2,1,0:c#ui.graphics.Color,3:c#ui.graphics.Color)403@16462L11,404@16525L16,406@16551L164:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            f = progress;
        } else if (($changed & 6) == 0) {
            f = progress;
            $dirty |= $composer2.changed(f) ? 4 : 2;
        } else {
            f = progress;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                j = color;
                int i3 = $composer2.changed(j) ? 256 : 128;
                $dirty |= i3;
            } else {
                j = color;
            }
            $dirty |= i3;
        } else {
            j = color;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                j2 = trackColor;
                int i4 = $composer2.changed(j2) ? 2048 : 1024;
                $dirty |= i4;
            } else {
                j2 = trackColor;
            }
            $dirty |= i4;
        } else {
            j2 = trackColor;
        }
        if (($dirty & 1171) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            color4 = j;
            trackColor3 = j2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getLinearColor($composer2, 6);
                    $dirty &= -897;
                } else {
                    color2 = j;
                }
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                    modifier3 = modifier5;
                    color3 = color2;
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor($composer2, 6);
                } else {
                    trackColor2 = j2;
                    modifier3 = modifier5;
                    color3 = color2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                }
                trackColor2 = j2;
                modifier3 = modifier2;
                color3 = j;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-372717133, $dirty, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:406)");
            }
            m2656LinearProgressIndicator_5eSRE(f, modifier3, color3, trackColor2, ProgressIndicatorDefaults.INSTANCE.m2645getLinearStrokeCapKaPHkGw(), $composer2, ($dirty & 14) | 24576 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color4 = color3;
            trackColor3 = trackColor2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$11
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ProgressIndicatorKt.m2658LinearProgressIndicatoreaDK9VM(progress, modifier4, color4, trackColor3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* JADX INFO: renamed from: LinearProgressIndicator-RIQooxk, reason: not valid java name */
    public static final /* synthetic */ void m2655LinearProgressIndicatorRIQooxk(Modifier modifier, long color, long trackColor, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        long trackColor2;
        long color2;
        long trackColor3;
        Modifier modifier3;
        long color3;
        final long color4;
        final long trackColor4;
        final Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(585576195);
        ComposerKt.sourceInformation($composer2, "C(LinearProgressIndicator)P(1,0:c#ui.graphics.Color,2:c#ui.graphics.Color)418@16922L11,419@16985L16,421@17011L146:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                j = color;
                int i3 = $composer2.changed(j) ? 32 : 16;
                $dirty |= i3;
            } else {
                j = color;
            }
            $dirty |= i3;
        } else {
            j = color;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                trackColor2 = trackColor;
                int i4 = $composer2.changed(trackColor2) ? 256 : 128;
                $dirty |= i4;
            } else {
                trackColor2 = trackColor;
            }
            $dirty |= i4;
        } else {
            trackColor2 = trackColor;
        }
        if (($dirty & 147) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            color4 = j;
            trackColor4 = trackColor2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getLinearColor($composer2, 6);
                    $dirty &= -113;
                } else {
                    color2 = j;
                }
                if ((i & 4) != 0) {
                    $dirty &= -897;
                    trackColor3 = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor($composer2, 6);
                    modifier3 = modifier5;
                    color3 = color2;
                } else {
                    trackColor3 = trackColor2;
                    modifier3 = modifier5;
                    color3 = color2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                trackColor3 = trackColor2;
                modifier3 = modifier2;
                color3 = j;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(585576195, $dirty, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:421)");
            }
            m2659LinearProgressIndicatorrIrjwxo(modifier3, color3, trackColor3, ProgressIndicatorDefaults.INSTANCE.m2645getLinearStrokeCapKaPHkGw(), 0.0f, $composer2, ($dirty & 14) | 3072 | ($dirty & 112) | ($dirty & 896), 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            color4 = color3;
            trackColor4 = trackColor3;
            modifier4 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$12
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ProgressIndicatorKt.m2655LinearProgressIndicatorRIQooxk(modifier4, color4, trackColor4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: drawLinearIndicator-qYKTg0g, reason: not valid java name */
    public static final void m2669drawLinearIndicatorqYKTg0g(DrawScope $this$drawLinearIndicator_u2dqYKTg0g, float startFraction, float endFraction, long color, float strokeWidth, int strokeCap) {
        float width = Size.m4521getWidthimpl($this$drawLinearIndicator_u2dqYKTg0g.mo5271getSizeNHjbRc());
        float height = Size.m4518getHeightimpl($this$drawLinearIndicator_u2dqYKTg0g.mo5271getSizeNHjbRc());
        float f = 2;
        float yOffset = height / f;
        boolean isLtr = $this$drawLinearIndicator_u2dqYKTg0g.getLayoutDirection() == LayoutDirection.Ltr;
        float barStart = (isLtr ? startFraction : 1.0f - endFraction) * width;
        float barEnd = (isLtr ? endFraction : 1.0f - startFraction) * width;
        if (StrokeCap.m5067equalsimpl0(strokeCap, StrokeCap.INSTANCE.m5071getButtKaPHkGw()) || height > width) {
            DrawScope.m5257drawLineNGM6Ib0$default($this$drawLinearIndicator_u2dqYKTg0g, color, OffsetKt.Offset(barStart, yOffset), OffsetKt.Offset(barEnd, yOffset), strokeWidth, 0, null, 0.0f, null, 0, 496, null);
            return;
        }
        float strokeCapOffset = strokeWidth / f;
        ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo = RangesKt.rangeTo(strokeCapOffset, width - strokeCapOffset);
        float adjustedBarStart = ((Number) RangesKt.coerceIn(Float.valueOf(barStart), closedFloatingPointRangeRangeTo)).floatValue();
        float adjustedBarEnd = ((Number) RangesKt.coerceIn(Float.valueOf(barEnd), closedFloatingPointRangeRangeTo)).floatValue();
        if (Math.abs(endFraction - startFraction) > 0.0f) {
            DrawScope.m5257drawLineNGM6Ib0$default($this$drawLinearIndicator_u2dqYKTg0g, color, OffsetKt.Offset(adjustedBarStart, yOffset), OffsetKt.Offset(adjustedBarEnd, yOffset), strokeWidth, strokeCap, null, 0.0f, null, 0, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
        }
    }

    static {
        float arg0$iv = ProgressIndicatorTokens.INSTANCE.m3747getSizeD9Ej5fM();
        float arg0$iv2 = ProgressIndicatorTokens.INSTANCE.m3750getTrackThicknessD9Ej5fM();
        CircularIndicatorDiameter = Dp.m7505constructorimpl(arg0$iv - Dp.m7505constructorimpl(2 * arg0$iv2));
        FirstLineHeadEasing = new CubicBezierEasing(0.2f, 0.0f, 0.8f, 1.0f);
        FirstLineTailEasing = new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);
        SecondLineHeadEasing = new CubicBezierEasing(0.0f, 0.0f, 0.65f, 1.0f);
        SecondLineTailEasing = new CubicBezierEasing(0.1f, 0.0f, 0.45f, 1.0f);
        CircularEasing = new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the overload that takes `gapSize`, see `LegacyCircularProgressIndicatorSample` on how to restore the previous behavior", replaceWith = @ReplaceWith(expression = "CircularProgressIndicator(progress, modifier, color, strokeWidth, trackColor, strokeCap, gapSize)", imports = {}))
    /* JADX INFO: renamed from: CircularProgressIndicator-DUhRLBM, reason: not valid java name */
    public static final /* synthetic */ void m2648CircularProgressIndicatorDUhRLBM(final Function0 progress, Modifier modifier, long color, float strokeWidth, long trackColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Function0 function0;
        Modifier modifier2;
        long color2;
        float strokeWidth2;
        long trackColor2;
        int i2;
        long trackColor3;
        int strokeCap2;
        Modifier modifier3;
        long color3;
        float strokeWidth3;
        int i3;
        Composer $composer2;
        final Modifier modifier4;
        final long color4;
        final float strokeWidth4;
        final long trackColor4;
        final int strokeCap3;
        Composer $composer3 = $composer.startRestartGroup(-761680467);
        ComposerKt.sourceInformation($composer3, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.unit.Dp,5:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)529@21735L13,531@21869L29,534@21991L217:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            function0 = progress;
        } else if (($changed & 6) == 0) {
            function0 = progress;
            $dirty |= $composer3.changedInstance(function0) ? 4 : 2;
        } else {
            function0 = progress;
        }
        int i4 = i & 2;
        if (i4 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                color2 = color;
                int i5 = $composer3.changed(color2) ? 256 : 128;
                $dirty |= i5;
            } else {
                color2 = color;
            }
            $dirty |= i5;
        } else {
            color2 = color;
        }
        int i6 = i & 8;
        if (i6 != 0) {
            $dirty |= 3072;
            strokeWidth2 = strokeWidth;
        } else if (($changed & 3072) == 0) {
            strokeWidth2 = strokeWidth;
            $dirty |= $composer3.changed(strokeWidth2) ? 2048 : 1024;
        } else {
            strokeWidth2 = strokeWidth;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                trackColor2 = trackColor;
                int i7 = $composer3.changed(trackColor2) ? 16384 : 8192;
                $dirty |= i7;
            } else {
                trackColor2 = trackColor;
            }
            $dirty |= i7;
        } else {
            trackColor2 = trackColor;
        }
        int i8 = i & 32;
        if (i8 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i2 = strokeCap;
        } else if ((196608 & $changed) == 0) {
            i2 = strokeCap;
            $dirty |= $composer3.changed(i2) ? 131072 : 65536;
        } else {
            i2 = strokeCap;
        }
        if ((74899 & $dirty) == 74898 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier2;
            color4 = color2;
            trackColor4 = trackColor2;
            $composer2 = $composer3;
            strokeWidth4 = strokeWidth2;
            strokeCap3 = i2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i4 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getCircularColor($composer3, 6);
                    $dirty &= -897;
                }
                if (i6 != 0) {
                    strokeWidth2 = ProgressIndicatorDefaults.INSTANCE.m2643getCircularStrokeWidthD9Ej5fM();
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor($composer3, 6);
                }
                if (i8 != 0) {
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2640getCircularDeterminateStrokeCapKaPHkGw();
                    strokeWidth3 = strokeWidth2;
                    trackColor3 = trackColor2;
                    modifier3 = modifier5;
                    color3 = color2;
                    i3 = -761680467;
                } else {
                    trackColor3 = trackColor2;
                    strokeCap2 = i2;
                    modifier3 = modifier5;
                    color3 = color2;
                    strokeWidth3 = strokeWidth2;
                    i3 = -761680467;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                    trackColor3 = trackColor2;
                    strokeCap2 = i2;
                    i3 = -761680467;
                    modifier3 = modifier2;
                    color3 = color2;
                    strokeWidth3 = strokeWidth2;
                } else {
                    trackColor3 = trackColor2;
                    strokeCap2 = i2;
                    i3 = -761680467;
                    modifier3 = modifier2;
                    color3 = color2;
                    strokeWidth3 = strokeWidth2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:533)");
            }
            $composer2 = $composer3;
            m2649CircularProgressIndicatorIyT6zlY(function0, modifier3, color3, strokeWidth3, trackColor3, strokeCap2, ProgressIndicatorDefaults.INSTANCE.m2642getCircularIndicatorTrackGapSizeD9Ej5fM(), $composer2, ($dirty & 14) | 1572864 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color4 = color3;
            strokeWidth4 = strokeWidth3;
            trackColor4 = trackColor3;
            strokeCap3 = strokeCap2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i9) {
                    ProgressIndicatorKt.m2648CircularProgressIndicatorDUhRLBM(progress, modifier4, color4, strokeWidth4, trackColor4, strokeCap3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x02e7  */
    /* JADX INFO: renamed from: CircularProgressIndicator-IyT6zlY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2649CircularProgressIndicatorIyT6zlY(final Function0<Float> function0, Modifier modifier, long color, float strokeWidth, long trackColor, int strokeCap, float gapSize, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        float strokeWidth2;
        long trackColor2;
        int strokeCap2;
        float f;
        long color2;
        int $dirty;
        final float gapSize2;
        final int strokeCap3;
        long color3;
        Object value$iv;
        Object value$iv2;
        final Function0 coercedProgress;
        final long color4;
        final long trackColor3;
        final float strokeWidth3;
        Object value$iv3;
        final Modifier modifier3;
        final int strokeCap4;
        final float gapSize3;
        final float strokeWidth4;
        final long trackColor4;
        final long color5;
        Composer $composer2 = $composer.startRestartGroup(-1798883595);
        ComposerKt.sourceInformation($composer2, "C(CircularProgressIndicator)P(3,2,0:c#ui.graphics.Color,5:c#ui.unit.Dp,6:c#ui.graphics.Color,4:c#ui.graphics.StrokeCap,1:c#ui.unit.Dp)575@23884L13,577@24018L29,581@24237L31,*582@24304L7,585@24446L102,589@24600L709,583@24373L936:ProgressIndicator.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changedInstance(function0) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= ((i & 4) == 0 && $composer2.changed(color)) ? 256 : 128;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty2 |= 3072;
            strokeWidth2 = strokeWidth;
        } else if (($changed & 3072) == 0) {
            strokeWidth2 = strokeWidth;
            $dirty2 |= $composer2.changed(strokeWidth2) ? 2048 : 1024;
        } else {
            strokeWidth2 = strokeWidth;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                trackColor2 = trackColor;
                int i4 = $composer2.changed(trackColor2) ? 16384 : 8192;
                $dirty2 |= i4;
            } else {
                trackColor2 = trackColor;
            }
            $dirty2 |= i4;
        } else {
            trackColor2 = trackColor;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            strokeCap2 = strokeCap;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            strokeCap2 = strokeCap;
            $dirty2 |= $composer2.changed(strokeCap2) ? 131072 : 65536;
        } else {
            strokeCap2 = strokeCap;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty2 |= 1572864;
            f = gapSize;
        } else if (($changed & 1572864) == 0) {
            f = gapSize;
            $dirty2 |= $composer2.changed(f) ? 1048576 : 524288;
        } else {
            f = gapSize;
        }
        if (($dirty2 & 599187) == 599186 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            strokeWidth4 = strokeWidth2;
            color5 = color;
            trackColor4 = trackColor2;
            gapSize3 = f;
            strokeCap4 = strokeCap2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getCircularColor($composer2, 6);
                    $dirty2 &= -897;
                } else {
                    color2 = color;
                }
                if (i3 != 0) {
                    strokeWidth2 = ProgressIndicatorDefaults.INSTANCE.m2643getCircularStrokeWidthD9Ej5fM();
                }
                if ((i & 16) != 0) {
                    $dirty2 &= -57345;
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor($composer2, 6);
                }
                if (i5 != 0) {
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2640getCircularDeterminateStrokeCapKaPHkGw();
                }
                if (i6 != 0) {
                    $dirty = $dirty2;
                    gapSize2 = ProgressIndicatorDefaults.INSTANCE.m2642getCircularIndicatorTrackGapSizeD9Ej5fM();
                    strokeCap3 = strokeCap2;
                    color3 = color2;
                } else {
                    $dirty = $dirty2;
                    gapSize2 = f;
                    strokeCap3 = strokeCap2;
                    color3 = color2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 16) != 0) {
                    $dirty2 &= -57345;
                }
                $dirty = $dirty2;
                gapSize2 = f;
                strokeCap3 = strokeCap2;
                color3 = color;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1798883595, $dirty, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:580)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, -291619137, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean invalid$iv = ($dirty & 14) == 4;
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function0) new Function0<Float>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$coercedProgress$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final Float invoke() {
                        return Float.valueOf(RangesKt.coerceIn(function0.invoke().floatValue(), 0.0f, 1.0f));
                    }
                };
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final Function0 coercedProgress2 = (Function0) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Density $this$CircularProgressIndicator_IyT6zlY_u24lambda_u247 = (Density) objConsume;
            final Stroke stroke = new Stroke($this$CircularProgressIndicator_IyT6zlY_u24lambda_u247.mo405toPx0680j_4(strokeWidth2), 0.0f, strokeCap3, 0, null, 26, null);
            ComposerKt.sourceInformationMarkerStart($composer2, -291612378, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean invalid$iv2 = $composer2.changed(coercedProgress2);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                        SemanticsPropertiesKt.setProgressBarRangeInfo($this$semantics, new ProgressBarRangeInfo(coercedProgress2.invoke().floatValue(), RangesKt.rangeTo(0.0f, 1.0f), 0, 4, null));
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            boolean z = true;
            Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(SemanticsModifierKt.semantics(modifier2, true, (Function1) value$iv2), CircularIndicatorDiameter);
            ComposerKt.sourceInformationMarkerStart($composer2, -291606843, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean zChanged = $composer2.changed(coercedProgress2) | ((458752 & $dirty) == 131072) | ((3670016 & $dirty) == 1048576) | (($dirty & 7168) == 2048) | ((((57344 & $dirty) ^ 24576) > 16384 && $composer2.changed(trackColor2)) || ($dirty & 24576) == 16384) | $composer2.changedInstance(stroke);
            if (((($dirty & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !$composer2.changed(color3)) && ($dirty & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                z = false;
            }
            boolean invalid$iv3 = zChanged | z;
            Object it$iv3 = $composer2.rememberedValue();
            if (invalid$iv3) {
                coercedProgress = coercedProgress2;
            } else {
                coercedProgress = coercedProgress2;
                if (it$iv3 != Composer.INSTANCE.getEmpty()) {
                    color4 = color3;
                    trackColor3 = trackColor2;
                    strokeWidth3 = strokeWidth2;
                    value$iv3 = it$iv3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                CanvasKt.Canvas(modifierM864size3ABfNKs, (Function1) value$iv3, $composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier2;
                strokeCap4 = strokeCap3;
                gapSize3 = gapSize2;
                strokeWidth4 = strokeWidth3;
                trackColor4 = trackColor3;
                color5 = color4;
            }
            color4 = color3;
            trackColor3 = trackColor2;
            strokeWidth3 = strokeWidth2;
            value$iv3 = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$3$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                    invoke2(drawScope);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DrawScope $this$Canvas) {
                    float adjustedGapSize;
                    float sweep = coercedProgress.invoke().floatValue() * 360.0f;
                    if (StrokeCap.m5067equalsimpl0(strokeCap3, StrokeCap.INSTANCE.m5071getButtKaPHkGw()) || Size.m4518getHeightimpl($this$Canvas.mo5271getSizeNHjbRc()) > Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc())) {
                        adjustedGapSize = gapSize2;
                    } else {
                        float arg0$iv = gapSize2;
                        float other$iv = strokeWidth3;
                        adjustedGapSize = Dp.m7505constructorimpl(arg0$iv + other$iv);
                    }
                    float gapSizeSweep = (adjustedGapSize / ((float) (((double) $this$Canvas.mo401toDpu2uoSUM(Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc()))) * 3.141592653589793d))) * 360.0f;
                    ProgressIndicatorKt.m2665drawCircularIndicator42QJj7c($this$Canvas, 270.0f + sweep + Math.min(sweep, gapSizeSweep), (360.0f - sweep) - (Math.min(sweep, gapSizeSweep) * 2), trackColor3, stroke);
                    ProgressIndicatorKt.m2667drawDeterminateCircularIndicator42QJj7c($this$Canvas, 270.0f, sweep, color4, stroke);
                }
            };
            $composer2.updateRememberedValue(value$iv3);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            CanvasKt.Canvas(modifierM864size3ABfNKs, (Function1) value$iv3, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
            }
            modifier3 = modifier2;
            strokeCap4 = strokeCap3;
            gapSize3 = gapSize2;
            strokeWidth4 = strokeWidth3;
            trackColor4 = trackColor3;
            color5 = color4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) {
                    ProgressIndicatorKt.m2649CircularProgressIndicatorIyT6zlY(function0, modifier3, color5, strokeWidth4, trackColor4, strokeCap4, gapSize3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0350  */
    /* JADX INFO: renamed from: CircularProgressIndicator-LxG7B9w, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2650CircularProgressIndicatorLxG7B9w(Modifier modifier, long color, float strokeWidth, long trackColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long color2;
        float strokeWidth2;
        long trackColor2;
        int i2;
        Modifier.Companion modifier3;
        int $dirty;
        int strokeCap2;
        long color3;
        float strokeWidth3;
        long trackColor3;
        final Stroke stroke;
        final long color4;
        final long trackColor4;
        Object value$iv;
        final long trackColor5;
        final float strokeWidth4;
        final long color5;
        final int $dirty2;
        final Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(-115871647);
        ComposerKt.sourceInformation($composer2, "C(CircularProgressIndicator)P(1,0:c#ui.graphics.Color,3:c#ui.unit.Dp,4:c#ui.graphics.Color,2:c#ui.graphics.StrokeCap)633@26429L13,635@26563L31,*638@26720L7,640@26807L28,643@26972L350,657@27444L208,666@27777L422,679@28240L431,691@28745L628,691@28676L697:ProgressIndicator.kt#uh7d8r");
        int $dirty3 = $changed;
        int i3 = i & 1;
        if (i3 != 0) {
            $dirty3 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                color2 = color;
                int i4 = $composer2.changed(color2) ? 32 : 16;
                $dirty3 |= i4;
            } else {
                color2 = color;
            }
            $dirty3 |= i4;
        } else {
            color2 = color;
        }
        int i5 = i & 4;
        if (i5 != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            strokeWidth2 = strokeWidth;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            strokeWidth2 = strokeWidth;
            $dirty3 |= $composer2.changed(strokeWidth2) ? 256 : 128;
        } else {
            strokeWidth2 = strokeWidth;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                trackColor2 = trackColor;
                int i6 = $composer2.changed(trackColor2) ? 2048 : 1024;
                $dirty3 |= i6;
            } else {
                trackColor2 = trackColor;
            }
            $dirty3 |= i6;
        } else {
            trackColor2 = trackColor;
        }
        int i7 = i & 16;
        if (i7 != 0) {
            $dirty3 |= 24576;
            i2 = strokeCap;
        } else if (($changed & 24576) == 0) {
            i2 = strokeCap;
            $dirty3 |= $composer2.changed(i2) ? 16384 : 8192;
        } else {
            i2 = strokeCap;
        }
        if (($dirty3 & 9363) == 9362 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            $dirty2 = i2;
            color5 = color2;
            trackColor5 = trackColor2;
            modifier4 = modifier2;
            strokeWidth4 = strokeWidth2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier3 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getCircularColor($composer2, 6);
                    $dirty3 &= -113;
                }
                if (i5 != 0) {
                    strokeWidth2 = ProgressIndicatorDefaults.INSTANCE.m2643getCircularStrokeWidthD9Ej5fM();
                }
                if ((i & 8) != 0) {
                    $dirty3 &= -7169;
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor($composer2, 6);
                }
                if (i7 != 0) {
                    $dirty = $dirty3;
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2641getCircularIndeterminateStrokeCapKaPHkGw();
                    color3 = color2;
                    strokeWidth3 = strokeWidth2;
                    trackColor3 = trackColor2;
                } else {
                    $dirty = $dirty3;
                    strokeCap2 = i2;
                    color3 = color2;
                    strokeWidth3 = strokeWidth2;
                    trackColor3 = trackColor2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty3 &= -113;
                }
                if ((i & 8) != 0) {
                    $dirty3 &= -7169;
                }
                $dirty = $dirty3;
                modifier3 = modifier2;
                strokeCap2 = i2;
                color3 = color2;
                strokeWidth3 = strokeWidth2;
                trackColor3 = trackColor2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-115871647, $dirty, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:637)");
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Density $this$CircularProgressIndicator_LxG7B9w_u24lambda_u2410 = (Density) objConsume;
            Stroke stroke2 = new Stroke($this$CircularProgressIndicator_LxG7B9w_u24lambda_u2410.mo405toPx0680j_4(strokeWidth3), 0.0f, strokeCap2, 0, null, 26, null);
            int strokeCap3 = strokeCap2;
            InfiniteTransition transition = InfiniteTransitionKt.rememberInfiniteTransition(null, $composer2, 0, 1);
            final float strokeWidth5 = strokeWidth3;
            Modifier modifier5 = modifier3;
            boolean z = true;
            final State currentRotation = InfiniteTransitionKt.animateValue(transition, 0, 5, VectorConvertersKt.getVectorConverter(IntCompanionObject.INSTANCE), AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.tween$default(6660, 0, EasingKt.getLinearEasing(), 2, null), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 12), 16);
            final State<Float> stateAnimateFloat = InfiniteTransitionKt.animateFloat(transition, 0.0f, BaseRotationAngle, AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.tween$default(RotationDuration, 0, EasingKt.getLinearEasing(), 2, null), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State<Float> stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(transition, 0.0f, JumpRotationAngle, AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$endAngle$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1332);
                    keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 0), ProgressIndicatorKt.CircularEasing);
                    keyframesSpecConfig.at(Float.valueOf(290.0f), 666);
                }
            }), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State<Float> stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(transition, 0.0f, JumpRotationAngle, AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$startAngle$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1332);
                    keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 666), ProgressIndicatorKt.CircularEasing);
                    keyframesSpecConfig.at(Float.valueOf(290.0f), keyframesSpecConfig.getDurationMillis());
                }
            }), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(ProgressSemanticsKt.progressSemantics(modifier5), CircularIndicatorDiameter);
            ComposerKt.sourceInformationMarkerStart($composer2, -291474284, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean zChangedInstance = (((($dirty & 7168) ^ 3072) > 2048 && $composer2.changed(trackColor3)) || ($dirty & 3072) == 2048) | $composer2.changedInstance(stroke2) | $composer2.changed(currentRotation) | $composer2.changed(stateAnimateFloat2) | $composer2.changed(stateAnimateFloat3) | $composer2.changed(stateAnimateFloat) | (($dirty & 896) == 256);
            if (((($dirty & 112) ^ 48) <= 32 || !$composer2.changed(color3)) && ($dirty & 48) != 32) {
                z = false;
            }
            boolean invalid$iv = zChangedInstance | z;
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv) {
                stroke = stroke2;
            } else {
                stroke = stroke2;
                if (it$iv != Composer.INSTANCE.getEmpty()) {
                    value$iv = it$iv;
                    color4 = color3;
                    trackColor4 = trackColor3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                CanvasKt.Canvas(modifierM864size3ABfNKs, (Function1) value$iv, $composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                trackColor5 = trackColor4;
                strokeWidth4 = strokeWidth5;
                color5 = color4;
                $dirty2 = strokeCap3;
                modifier4 = modifier5;
            }
            color4 = color3;
            trackColor4 = trackColor3;
            value$iv = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$5$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                    invoke2(drawScope);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DrawScope $this$Canvas) {
                    ProgressIndicatorKt.m2666drawCircularIndicatorTrackbw27NRU($this$Canvas, trackColor4, stroke);
                    float currentRotationAngleOffset = (currentRotation.getValue().floatValue() * 216.0f) % 360.0f;
                    float sweep = Math.abs(stateAnimateFloat2.getValue().floatValue() - stateAnimateFloat3.getValue().floatValue());
                    float offset = (-90.0f) + currentRotationAngleOffset + stateAnimateFloat.getValue().floatValue();
                    ProgressIndicatorKt.m2668drawIndeterminateCircularIndicatorhrjfTZI($this$Canvas, stateAnimateFloat3.getValue().floatValue() + offset, strokeWidth5, sweep, color4, stroke);
                }
            };
            $composer2.updateRememberedValue(value$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            CanvasKt.Canvas(modifierM864size3ABfNKs, (Function1) value$iv, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
            }
            trackColor5 = trackColor4;
            strokeWidth4 = strokeWidth5;
            color5 = color4;
            $dirty2 = strokeCap3;
            modifier4 = modifier5;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(modifier4, color5, strokeWidth4, trackColor5, $dirty2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(message = "Use the overload that takes `progress` as a lambda", replaceWith = @ReplaceWith(expression = "CircularProgressIndicator(\nprogress = { progress },\nmodifier = modifier,\ncolor = color,\nstrokeWidth = strokeWidth,\ntrackColor = trackColor,\nstrokeCap = strokeCap,\n)", imports = {}))
    /* JADX INFO: renamed from: CircularProgressIndicator-DUhRLBM, reason: not valid java name */
    public static final void m2647CircularProgressIndicatorDUhRLBM(final float progress, Modifier modifier, long color, float strokeWidth, long trackColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long color2;
        float strokeWidth2;
        long trackColor2;
        int i2;
        float strokeWidth3;
        int strokeCap2;
        int i3;
        Modifier modifier3;
        long trackColor3;
        long trackColor4;
        Object value$iv;
        Composer $composer2;
        final Modifier modifier4;
        final float strokeWidth4;
        final long trackColor5;
        final int strokeCap3;
        final long color3;
        Composer $composer3 = $composer.startRestartGroup(-1472321743);
        ComposerKt.sourceInformation($composer3, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.unit.Dp,5:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)730@30011L13,732@30145L18,736@30302L12,735@30256L216:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(progress) ? 4 : 2;
        }
        int i4 = i & 2;
        if (i4 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                color2 = color;
                int i5 = $composer3.changed(color2) ? 256 : 128;
                $dirty |= i5;
            } else {
                color2 = color;
            }
            $dirty |= i5;
        } else {
            color2 = color;
        }
        int i6 = i & 8;
        if (i6 != 0) {
            $dirty |= 3072;
            strokeWidth2 = strokeWidth;
        } else if (($changed & 3072) == 0) {
            strokeWidth2 = strokeWidth;
            $dirty |= $composer3.changed(strokeWidth2) ? 2048 : 1024;
        } else {
            strokeWidth2 = strokeWidth;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                trackColor2 = trackColor;
                int i7 = $composer3.changed(trackColor2) ? 16384 : 8192;
                $dirty |= i7;
            } else {
                trackColor2 = trackColor;
            }
            $dirty |= i7;
        } else {
            trackColor2 = trackColor;
        }
        int i8 = i & 32;
        if (i8 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i2 = strokeCap;
        } else if ((196608 & $changed) == 0) {
            i2 = strokeCap;
            $dirty |= $composer3.changed(i2) ? 131072 : 65536;
        } else {
            i2 = strokeCap;
        }
        if (($dirty & 74899) == 74898 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            strokeWidth4 = strokeWidth2;
            color3 = color2;
            trackColor5 = trackColor2;
            strokeCap3 = i2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i4 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getCircularColor($composer3, 6);
                    $dirty &= -897;
                }
                if (i6 != 0) {
                    strokeWidth2 = ProgressIndicatorDefaults.INSTANCE.m2643getCircularStrokeWidthD9Ej5fM();
                }
                if ((i & 16) != 0) {
                    trackColor2 = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor($composer3, 6);
                    $dirty &= -57345;
                }
                if (i8 != 0) {
                    strokeCap2 = ProgressIndicatorDefaults.INSTANCE.m2640getCircularDeterminateStrokeCapKaPHkGw();
                    strokeWidth3 = strokeWidth2;
                    trackColor3 = trackColor2;
                    i3 = -1472321743;
                    modifier3 = modifier2;
                    trackColor4 = color2;
                } else {
                    strokeWidth3 = strokeWidth2;
                    strokeCap2 = i2;
                    i3 = -1472321743;
                    modifier3 = modifier2;
                    trackColor3 = trackColor2;
                    trackColor4 = color2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                    strokeWidth3 = strokeWidth2;
                    strokeCap2 = i2;
                    i3 = -1472321743;
                    modifier3 = modifier2;
                    trackColor3 = trackColor2;
                    trackColor4 = color2;
                } else {
                    strokeWidth3 = strokeWidth2;
                    strokeCap2 = i2;
                    i3 = -1472321743;
                    modifier3 = modifier2;
                    trackColor3 = trackColor2;
                    trackColor4 = color2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:735)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -291425076, "CC(remember):ProgressIndicator.kt#9igjgp");
            boolean invalid$iv = ($dirty & 14) == 4;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function0) new Function0<Float>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$7$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final Float invoke() {
                        return Float.valueOf(progress);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            m2649CircularProgressIndicatorIyT6zlY((Function0) value$iv, modifier3, trackColor4, strokeWidth3, trackColor3, strokeCap2, 0.0f, $composer2, ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty), 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            strokeWidth4 = strokeWidth3;
            trackColor5 = trackColor3;
            strokeCap3 = strokeCap2;
            color3 = trackColor4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i9) {
                    ProgressIndicatorKt.m2647CircularProgressIndicatorDUhRLBM(progress, modifier4, color3, strokeWidth4, trackColor5, strokeCap3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* JADX INFO: renamed from: CircularProgressIndicator-MBs18nI, reason: not valid java name */
    public static final /* synthetic */ void m2651CircularProgressIndicatorMBs18nI(final float progress, Modifier modifier, long color, float strokeWidth, Composer $composer, final int $changed, final int i) {
        float f;
        Modifier modifier2;
        long j;
        float f2;
        long color2;
        Modifier modifier3;
        float strokeWidth2;
        long color3;
        final Modifier modifier4;
        final long color4;
        final float strokeWidth3;
        Composer $composer2 = $composer.startRestartGroup(402841196);
        ComposerKt.sourceInformation($composer2, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,3:c#ui.unit.Dp)750@30727L13,758@30964L18,753@30818L247:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            f = progress;
        } else if (($changed & 6) == 0) {
            f = progress;
            $dirty |= $composer2.changed(f) ? 4 : 2;
        } else {
            f = progress;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                j = color;
                int i3 = $composer2.changed(j) ? 256 : 128;
                $dirty |= i3;
            } else {
                j = color;
            }
            $dirty |= i3;
        } else {
            j = color;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 3072;
            f2 = strokeWidth;
        } else if (($changed & 3072) == 0) {
            f2 = strokeWidth;
            $dirty |= $composer2.changed(f2) ? 2048 : 1024;
        } else {
            f2 = strokeWidth;
        }
        if (($dirty & 1171) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            color4 = j;
            strokeWidth3 = f2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getCircularColor($composer2, 6);
                    $dirty &= -897;
                } else {
                    color2 = j;
                }
                if (i4 != 0) {
                    strokeWidth2 = ProgressIndicatorDefaults.INSTANCE.m2643getCircularStrokeWidthD9Ej5fM();
                    modifier3 = modifier5;
                    color3 = color2;
                } else {
                    modifier3 = modifier5;
                    strokeWidth2 = f2;
                    color3 = color2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                strokeWidth2 = f2;
                color3 = j;
                modifier3 = modifier2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(402841196, $dirty, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:753)");
            }
            float strokeWidth4 = strokeWidth2;
            m2647CircularProgressIndicatorDUhRLBM(f, modifier3, color3, strokeWidth4, ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor($composer2, 6), ProgressIndicatorDefaults.INSTANCE.m2640getCircularDeterminateStrokeCapKaPHkGw(), $composer2, ($dirty & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color4 = color3;
            strokeWidth3 = strokeWidth4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$9
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ProgressIndicatorKt.m2651CircularProgressIndicatorMBs18nI(progress, modifier4, color4, strokeWidth3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* JADX INFO: renamed from: CircularProgressIndicator-aM-cp0Q, reason: not valid java name */
    public static final /* synthetic */ void m2652CircularProgressIndicatoraMcp0Q(Modifier modifier, long color, float strokeWidth, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long color2;
        float f;
        float strokeWidth2;
        long color3;
        Modifier modifier3;
        final long color4;
        final float strokeWidth3;
        final Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(947193756);
        ComposerKt.sourceInformation($composer2, "C(CircularProgressIndicator)P(1,0:c#ui.graphics.Color,2:c#ui.unit.Dp)767@31299L13,774@31518L18,770@31390L231:ProgressIndicator.kt#uh7d8r");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                color2 = color;
                int i3 = $composer2.changed(color2) ? 32 : 16;
                $dirty |= i3;
            } else {
                color2 = color;
            }
            $dirty |= i3;
        } else {
            color2 = color;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            f = strokeWidth;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            f = strokeWidth;
            $dirty |= $composer2.changed(f) ? 256 : 128;
        } else {
            f = strokeWidth;
        }
        if (($dirty & 147) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            color4 = color2;
            strokeWidth3 = f;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = ProgressIndicatorDefaults.INSTANCE.getCircularColor($composer2, 6);
                    $dirty &= -113;
                }
                if (i4 != 0) {
                    strokeWidth2 = ProgressIndicatorDefaults.INSTANCE.m2643getCircularStrokeWidthD9Ej5fM();
                    color3 = color2;
                    modifier3 = modifier5;
                } else {
                    strokeWidth2 = f;
                    color3 = color2;
                    modifier3 = modifier5;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
                strokeWidth2 = f;
                color3 = color2;
                modifier3 = modifier2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(947193756, $dirty, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:770)");
            }
            m2650CircularProgressIndicatorLxG7B9w(modifier3, color3, strokeWidth2, ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor($composer2, 6), ProgressIndicatorDefaults.INSTANCE.m2641getCircularIndeterminateStrokeCapKaPHkGw(), $composer2, ($dirty & 14) | 24576 | ($dirty & 112) | ($dirty & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            color4 = color3;
            strokeWidth3 = strokeWidth2;
            modifier4 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$CircularProgressIndicator$10
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ProgressIndicatorKt.m2652CircularProgressIndicatoraMcp0Q(modifier4, color4, strokeWidth3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: drawCircularIndicator-42QJj7c, reason: not valid java name */
    public static final void m2665drawCircularIndicator42QJj7c(DrawScope $this$drawCircularIndicator_u2d42QJj7c, float startAngle, float sweep, long color, Stroke stroke) {
        float f = 2;
        float diameterOffset = stroke.getWidth() / f;
        float arcDimen = Size.m4521getWidthimpl($this$drawCircularIndicator_u2d42QJj7c.mo5271getSizeNHjbRc()) - (f * diameterOffset);
        DrawScope.m5250drawArcyD3GUKo$default($this$drawCircularIndicator_u2d42QJj7c, color, startAngle, sweep, false, OffsetKt.Offset(diameterOffset, diameterOffset), androidx.compose.ui.geometry.SizeKt.Size(arcDimen, arcDimen), 0.0f, stroke, null, 0, 832, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: drawCircularIndicatorTrack-bw27NRU, reason: not valid java name */
    public static final void m2666drawCircularIndicatorTrackbw27NRU(DrawScope $this$drawCircularIndicatorTrack_u2dbw27NRU, long color, Stroke stroke) {
        m2665drawCircularIndicator42QJj7c($this$drawCircularIndicatorTrack_u2dbw27NRU, 0.0f, 360.0f, color, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: drawDeterminateCircularIndicator-42QJj7c, reason: not valid java name */
    public static final void m2667drawDeterminateCircularIndicator42QJj7c(DrawScope $this$drawDeterminateCircularIndicator_u2d42QJj7c, float startAngle, float sweep, long color, Stroke stroke) {
        m2665drawCircularIndicator42QJj7c($this$drawDeterminateCircularIndicator_u2d42QJj7c, startAngle, sweep, color, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: drawIndeterminateCircularIndicator-hrjfTZI, reason: not valid java name */
    public static final void m2668drawIndeterminateCircularIndicatorhrjfTZI(DrawScope $this$drawIndeterminateCircularIndicator_u2dhrjfTZI, float startAngle, float strokeWidth, float sweep, long color, Stroke stroke) {
        float strokeCapOffset;
        if (StrokeCap.m5067equalsimpl0(stroke.getCap(), StrokeCap.INSTANCE.m5071getButtKaPHkGw())) {
            strokeCapOffset = 0.0f;
        } else {
            float arg0$iv = CircularIndicatorDiameter;
            float other$iv = strokeWidth / Dp.m7505constructorimpl(arg0$iv / 2);
            strokeCapOffset = (other$iv * 57.29578f) / 2.0f;
        }
        float adjustedStartAngle = startAngle + strokeCapOffset;
        float adjustedSweep = Math.max(sweep, 0.1f);
        m2665drawCircularIndicator42QJj7c($this$drawIndeterminateCircularIndicator_u2dhrjfTZI, adjustedStartAngle, adjustedSweep, color, stroke);
    }

    public static final float getLinearIndicatorWidth() {
        return LinearIndicatorWidth;
    }

    public static final float getLinearIndicatorHeight() {
        return LinearIndicatorHeight;
    }

    public static final float getCircularIndicatorDiameter() {
        return CircularIndicatorDiameter;
    }
}
