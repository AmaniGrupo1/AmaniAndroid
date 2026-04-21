package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.tokens.SliderTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.RotateKt;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PointMode;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.profileinstaller.ProfileVerifier;
import androidx.window.core.layout.WindowSizeClass;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Slider.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JB\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ3\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\u0010!J\u0096\u0001\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0017\u001a\u00020\r2!\b\u0002\u0010\"\u001a\u001b\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u0012\u0018\u00010#¢\u0006\u0002\b&2%\b\u0002\u0010'\u001a\u001f\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00120(¢\u0006\u0002\b&2\b\b\u0002\u0010*\u001a\u00020\u00042\b\b\u0002\u0010+\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b,\u0010-J3\u0010\u001e\u001a\u00020\u00122\u0006\u0010.\u001a\u00020/2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\u00100J3\u0010\u001e\u001a\u00020\u00122\u0006\u00101\u001a\u0002022\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\u00103J\u0096\u0001\u0010\u001e\u001a\u00020\u00122\u0006\u00101\u001a\u0002022\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0017\u001a\u00020\r2!\b\u0002\u0010\"\u001a\u001b\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u0012\u0018\u00010#¢\u0006\u0002\b&2%\b\u0002\u0010'\u001a\u001f\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00120(¢\u0006\u0002\b&2\b\b\u0002\u0010*\u001a\u00020\u00042\b\b\u0002\u0010+\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b,\u00104J\r\u0010\u0017\u001a\u00020\rH\u0007¢\u0006\u0002\u00105Jv\u0010\u0017\u001a\u00020\r2\b\b\u0002\u00106\u001a\u00020)2\b\b\u0002\u00107\u001a\u00020)2\b\b\u0002\u00108\u001a\u00020)2\b\b\u0002\u00109\u001a\u00020)2\b\b\u0002\u0010:\u001a\u00020)2\b\b\u0002\u0010;\u001a\u00020)2\b\b\u0002\u0010<\u001a\u00020)2\b\b\u0002\u0010=\u001a\u00020)2\b\b\u0002\u0010>\u001a\u00020)2\b\b\u0002\u0010?\u001a\u00020)H\u0007ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ2\u0010\"\u001a\u00020\u00122\u0006\u0010B\u001a\u00020$2\u0006\u0010C\u001a\u00020%2\u0006\u0010D\u001a\u00020\u00042\u0006\u0010E\u001a\u00020)H\u0002ø\u0001\u0000¢\u0006\u0004\bF\u0010GJÄ\u0001\u0010H\u001a\u00020\u0012*\u00020$2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020L2\u0006\u00109\u001a\u00020)2\u0006\u00107\u001a\u00020)2\u0006\u0010:\u001a\u00020)2\u0006\u00108\u001a\u00020)2\u0006\u0010N\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u00042\u0006\u0010P\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u001f\u0010\"\u001a\u001b\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u0012\u0018\u00010#¢\u0006\u0002\b&2#\u0010'\u001a\u001f\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00120(¢\u0006\u0002\b&2\u0006\u0010Q\u001a\u00020\u0019H\u0002ø\u0001\u0000¢\u0006\u0004\bR\u0010SJ>\u0010T\u001a\u00020\u0012*\u00020$2\u0006\u0010C\u001a\u00020%2\u0006\u0010D\u001a\u00020U2\u0006\u0010E\u001a\u00020)2\u0006\u0010V\u001a\u00020L2\u0006\u0010W\u001a\u00020LH\u0002ø\u0001\u0000¢\u0006\u0004\bX\u0010YR\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\u00020\r*\u00020\u000e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006Z"}, d2 = {"Landroidx/compose/material3/SliderDefaults;", "", "()V", "TickSize", "Landroidx/compose/ui/unit/Dp;", "getTickSize-D9Ej5fM", "()F", "F", "TrackStopIndicatorSize", "getTrackStopIndicatorSize-D9Ej5fM", "trackPath", "Landroidx/compose/ui/graphics/Path;", "defaultSliderColors", "Landroidx/compose/material3/SliderColors;", "Landroidx/compose/material3/ColorScheme;", "getDefaultSliderColors$material3_release", "(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;", "Thumb", "", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "modifier", "Landroidx/compose/ui/Modifier;", "colors", "enabled", "", "thumbSize", "Landroidx/compose/ui/unit/DpSize;", "Thumb-9LiSoMs", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V", "Track", "rangeSliderState", "Landroidx/compose/material3/RangeSliderState;", "(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V", "drawStopIndicator", "Lkotlin/Function2;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/ExtensionFunctionType;", "drawTick", "Lkotlin/Function3;", "Landroidx/compose/ui/graphics/Color;", "thumbTrackGapSize", "trackInsideCornerSize", "Track-4EFweAY", "(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V", "sliderPositions", "Landroidx/compose/material3/SliderPositions;", "(Landroidx/compose/material3/SliderPositions;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V", "sliderState", "Landroidx/compose/material3/SliderState;", "(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;", "thumbColor", "activeTrackColor", "activeTickColor", "inactiveTrackColor", "inactiveTickColor", "disabledThumbColor", "disabledActiveTrackColor", "disabledActiveTickColor", "disabledInactiveTrackColor", "disabledInactiveTickColor", "colors-q0g_0yA", "(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SliderColors;", "drawScope", "offset", "size", TtmlNode.ATTR_TTS_COLOR, "drawStopIndicator-x3O1jOs", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V", "drawTrack", "tickFractions", "", "activeRangeStart", "", "activeRangeEnd", "height", "startThumbWidth", "endThumbWidth", "isRangeSlider", "drawTrack-ngJ0SCU", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Z)V", "drawTrackPath", "Landroidx/compose/ui/geometry/Size;", "startCornerRadius", "endCornerRadius", "drawTrackPath-Cx2C_VA", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFF)V", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SliderDefaults {
    public static final int $stable = 0;
    public static final SliderDefaults INSTANCE = new SliderDefaults();
    private static final float TrackStopIndicatorSize = SliderTokens.INSTANCE.m3781getStopIndicatorSizeD9Ej5fM();
    private static final float TickSize = SliderTokens.INSTANCE.m3781getStopIndicatorSizeD9Ej5fM();
    private static final Path trackPath = AndroidPath_androidKt.Path();

    private SliderDefaults() {
    }

    public final SliderColors colors(Composer $composer, int $changed) {
        ComposerKt.sourceInformationMarkerStart($composer, 1376295968, "C(colors)845@36907L11:Slider.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1376295968, $changed, -1, "androidx.compose.material3.SliderDefaults.colors (Slider.kt:845)");
        }
        SliderColors defaultSliderColors$material3_release = getDefaultSliderColors$material3_release(MaterialTheme.INSTANCE.getColorScheme($composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return defaultSliderColors$material3_release;
    }

    /* JADX INFO: renamed from: colors-q0g_0yA, reason: not valid java name */
    public final SliderColors m2778colorsq0g_0yA(long thumbColor, long activeTrackColor, long activeTickColor, long inactiveTrackColor, long inactiveTickColor, long disabledThumbColor, long disabledActiveTrackColor, long disabledActiveTickColor, long disabledInactiveTrackColor, long disabledInactiveTickColor, Composer $composer, int $changed, int $changed1, int i) {
        ComposerKt.sourceInformationMarkerStart($composer, 885588574, "C(colors)P(9:c#ui.graphics.Color,1:c#ui.graphics.Color,0:c#ui.graphics.Color,8:c#ui.graphics.Color,7:c#ui.graphics.Color,6:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.Color,5:c#ui.graphics.Color,4:c#ui.graphics.Color)887@39230L11:Slider.kt#uh7d8r");
        long thumbColor2 = (i & 1) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : thumbColor;
        long activeTrackColor2 = (i & 2) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : activeTrackColor;
        long activeTickColor2 = (i & 4) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : activeTickColor;
        long inactiveTrackColor2 = (i & 8) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : inactiveTrackColor;
        long inactiveTickColor2 = (i & 16) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : inactiveTickColor;
        long disabledThumbColor2 = (i & 32) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : disabledThumbColor;
        long disabledActiveTrackColor2 = (i & 64) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : disabledActiveTrackColor;
        long disabledActiveTickColor2 = (i & 128) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : disabledActiveTickColor;
        long disabledInactiveTrackColor2 = (i & 256) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : disabledInactiveTrackColor;
        long disabledInactiveTickColor2 = (i & 512) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : disabledInactiveTickColor;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(885588574, $changed, $changed1, "androidx.compose.material3.SliderDefaults.colors (Slider.kt:887)");
        }
        SliderColors sliderColorsM2756copyK518z4 = getDefaultSliderColors$material3_release(MaterialTheme.INSTANCE.getColorScheme($composer, 6)).m2756copyK518z4(thumbColor2, activeTrackColor2, activeTickColor2, inactiveTrackColor2, inactiveTickColor2, disabledThumbColor2, disabledActiveTrackColor2, disabledActiveTickColor2, disabledInactiveTrackColor2, disabledInactiveTickColor2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return sliderColorsM2756copyK518z4;
    }

    public final SliderColors getDefaultSliderColors$material3_release(ColorScheme $this$defaultSliderColors) {
        SliderColors it = $this$defaultSliderColors.getDefaultSliderColorsCached();
        if (it == null) {
            long jFromToken = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getHandleColor());
            long jFromToken2 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getActiveTrackColor());
            long jFromToken3 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getInactiveTrackColor());
            long jFromToken4 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getInactiveTrackColor());
            long jFromToken5 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getActiveTrackColor());
            long jFromToken6 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getDisabledHandleColor());
            long jM4742compositeOverOWjLjI = ColorKt.m4742compositeOverOWjLjI(Color.m4695copywmQWz5c(jFromToken6, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jFromToken6) : SliderTokens.INSTANCE.getDisabledHandleOpacity(), (14 & 2) != 0 ? Color.m4703getRedimpl(jFromToken6) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jFromToken6) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jFromToken6) : 0.0f), $this$defaultSliderColors.getSurface());
            long jFromToken7 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getDisabledActiveTrackColor());
            long jM4695copywmQWz5c = Color.m4695copywmQWz5c(jFromToken7, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jFromToken7) : SliderTokens.INSTANCE.getDisabledActiveTrackOpacity(), (14 & 2) != 0 ? Color.m4703getRedimpl(jFromToken7) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jFromToken7) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jFromToken7) : 0.0f);
            long jFromToken8 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getDisabledInactiveTrackColor());
            long jM4695copywmQWz5c2 = Color.m4695copywmQWz5c(jFromToken8, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jFromToken8) : SliderTokens.INSTANCE.getDisabledInactiveTrackOpacity(), (14 & 2) != 0 ? Color.m4703getRedimpl(jFromToken8) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jFromToken8) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jFromToken8) : 0.0f);
            long jFromToken9 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getDisabledInactiveTrackColor());
            long jM4695copywmQWz5c3 = Color.m4695copywmQWz5c(jFromToken9, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jFromToken9) : SliderTokens.INSTANCE.getDisabledInactiveTrackOpacity(), (14 & 2) != 0 ? Color.m4703getRedimpl(jFromToken9) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jFromToken9) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jFromToken9) : 0.0f);
            long jFromToken10 = ColorSchemeKt.fromToken($this$defaultSliderColors, SliderTokens.INSTANCE.getDisabledActiveTrackColor());
            SliderColors it2 = new SliderColors(jFromToken, jFromToken2, jFromToken3, jFromToken4, jFromToken5, jM4742compositeOverOWjLjI, jM4695copywmQWz5c, jM4695copywmQWz5c2, jM4695copywmQWz5c3, Color.m4695copywmQWz5c(jFromToken10, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jFromToken10) : SliderTokens.INSTANCE.getDisabledActiveTrackOpacity(), (14 & 2) != 0 ? Color.m4703getRedimpl(jFromToken10) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jFromToken10) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jFromToken10) : 0.0f), null);
            $this$defaultSliderColors.setDefaultSliderColorsCached$material3_release(it2);
            return it2;
        }
        return it;
    }

    /* JADX INFO: renamed from: Thumb-9LiSoMs, reason: not valid java name */
    public final void m2775Thumb9LiSoMs(final MutableInteractionSource interactionSource, Modifier modifier, SliderColors colors, boolean enabled, long thumbSize, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        SliderColors colors2;
        boolean enabled2;
        long j;
        long thumbSize2;
        Object value$iv;
        SliderDefaults$Thumb$1$1 value$iv2;
        long size;
        final Modifier modifier3;
        final long thumbSize3;
        final SliderColors colors3;
        final boolean enabled3;
        Composer $composer2 = $composer.startRestartGroup(-290277409);
        ComposerKt.sourceInformation($composer2, "C(Thumb)P(2,3!,4:c#ui.unit.DpSize)947@42562L8,951@42678L46,952@42767L658,952@42733L692,975@43824L5,971@43620L220:Slider.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(interactionSource) ? 4 : 2;
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
                colors2 = colors;
                int i3 = $composer2.changed(colors2) ? 256 : 128;
                $dirty |= i3;
            } else {
                colors2 = colors;
            }
            $dirty |= i3;
        } else {
            colors2 = colors;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 3072;
            enabled2 = enabled;
        } else if (($changed & 3072) == 0) {
            enabled2 = enabled;
            $dirty |= $composer2.changed(enabled2) ? 2048 : 1024;
        } else {
            enabled2 = enabled;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty |= 24576;
            j = thumbSize;
        } else if (($changed & 24576) == 0) {
            j = thumbSize;
            $dirty |= $composer2.changed(j) ? 16384 : 8192;
        } else {
            j = thumbSize;
        }
        if ((i & 32) != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty |= $composer2.changed(this) ? 131072 : 65536;
        }
        if (($dirty & 74899) == 74898 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            thumbSize3 = j;
            colors3 = colors2;
            enabled3 = enabled2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    SliderColors colors4 = colors($composer2, ($dirty >> 15) & 14);
                    $dirty &= -897;
                    colors2 = colors4;
                }
                if (i4 != 0) {
                    enabled2 = true;
                }
                thumbSize2 = i5 != 0 ? SliderKt.ThumbSize : j;
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                thumbSize2 = j;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-290277409, $dirty, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:950)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, -1068636116, "CC(remember):Slider.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = SnapshotStateKt.mutableStateListOf();
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            SnapshotStateList interactions = (SnapshotStateList) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1068632656, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv = ($dirty & 14) == 4;
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = new SliderDefaults$Thumb$1$1(interactionSource, interactions, null);
                $composer2.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(interactionSource, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv2, $composer2, $dirty & 14);
            if (interactions.isEmpty()) {
                size = thumbSize2;
            } else {
                float arg0$iv = DpSize.m7603getWidthD9Ej5fM(thumbSize2);
                size = DpSize.m7596copyDwJknco$default(thumbSize2, Dp.m7505constructorimpl(arg0$iv / 2), 0.0f, 2, null);
            }
            SpacerKt.Spacer(BackgroundKt.m263backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m865size6HolHcs(modifier2, size), interactionSource, false, 2, null), colors2.m2767thumbColorvNxB06k$material3_release(enabled2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), $composer2, 6)), $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
            thumbSize3 = thumbSize2;
            colors3 = colors2;
            enabled3 = enabled2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Thumb$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i6) {
                    this.$tmp2_rcvr.m2775Thumb9LiSoMs(interactionSource, modifier3, colors3, enabled3, thumbSize3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:98:0x018b  */
    @Deprecated(message = "Use version that supports slider state")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void Track(final SliderPositions sliderPositions, Modifier modifier, SliderColors colors, boolean enabled, Composer $composer, final int $changed, final int i) {
        final SliderPositions sliderPositions2;
        Modifier modifier2;
        SliderColors sliderColors;
        boolean z;
        Modifier.Companion modifier3;
        SliderColors colors2;
        boolean enabled2;
        final long activeTickColor;
        Object value$iv;
        final SliderColors colors3;
        final boolean enabled3;
        final Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(-1546713545);
        ComposerKt.sourceInformation($composer2, "C(Track)P(3,2)997@44755L8,1004@45160L1834,1004@45108L1886:Slider.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            sliderPositions2 = sliderPositions;
        } else if (($changed & 6) == 0) {
            sliderPositions2 = sliderPositions;
            $dirty |= $composer2.changed(sliderPositions2) ? 4 : 2;
        } else {
            sliderPositions2 = sliderPositions;
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
                sliderColors = colors;
                int i3 = $composer2.changed(sliderColors) ? 256 : 128;
                $dirty |= i3;
            } else {
                sliderColors = colors;
            }
            $dirty |= i3;
        } else {
            sliderColors = colors;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 3072;
            z = enabled;
        } else if (($changed & 3072) == 0) {
            z = enabled;
            $dirty |= $composer2.changed(z) ? 2048 : 1024;
        } else {
            z = enabled;
        }
        if ((i & 16) != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer2.changed(this) ? 16384 : 8192;
        }
        if (($dirty & 9363) == 9362 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            colors3 = sliderColors;
            enabled3 = z;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    colors2 = colors($composer2, ($dirty >> 12) & 14);
                    $dirty &= -897;
                } else {
                    colors2 = sliderColors;
                }
                enabled2 = i4 != 0 ? true : z;
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                modifier3 = modifier2;
                colors2 = sliderColors;
                enabled2 = z;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1546713545, $dirty, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:999)");
            }
            final long inactiveTrackColor = colors2.m2769trackColorWaAFU9c$material3_release(enabled2, false);
            final long activeTrackColor = colors2.m2769trackColorWaAFU9c$material3_release(enabled2, true);
            int $dirty2 = $dirty;
            final long inactiveTickColor = colors2.m2768tickColorWaAFU9c$material3_release(enabled2, false);
            long activeTickColor2 = colors2.m2768tickColorWaAFU9c$material3_release(enabled2, true);
            Modifier modifierM850height3ABfNKs = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
            ComposerKt.sourceInformationMarkerStart($composer2, -801023075, "CC(remember):Slider.kt#9igjgp");
            Modifier modifier5 = modifier3;
            boolean invalid$iv = $composer2.changed(inactiveTrackColor) | (($dirty2 & 14) == 4) | $composer2.changed(activeTrackColor) | $composer2.changed(inactiveTickColor) | $composer2.changed(activeTickColor2);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv) {
                activeTickColor = activeTickColor2;
            } else {
                activeTickColor = activeTickColor2;
                if (it$iv != Composer.INSTANCE.getEmpty()) {
                    value$iv = it$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                CanvasKt.Canvas(modifierM850height3ABfNKs, (Function1) value$iv, $composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colors3 = colors2;
                enabled3 = enabled2;
                modifier4 = modifier5;
            }
            value$iv = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$1$1
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
                    Object answer$iv$iv$iv;
                    boolean isRtl = $this$Canvas.getLayoutDirection() == LayoutDirection.Rtl;
                    long sliderLeft = OffsetKt.Offset(0.0f, Offset.m4453getYimpl($this$Canvas.mo5270getCenterF1C5BW0()));
                    long sliderRight = OffsetKt.Offset(Size.m4521getWidthimpl($this$Canvas.mo5271getSizeNHjbRc()), Offset.m4453getYimpl($this$Canvas.mo5270getCenterF1C5BW0()));
                    long sliderStart = isRtl ? sliderRight : sliderLeft;
                    long sliderEnd = isRtl ? sliderLeft : sliderRight;
                    float tickSize = $this$Canvas.mo405toPx0680j_4(SliderDefaults.INSTANCE.m2779getTickSizeD9Ej5fM());
                    float trackStrokeWidth = $this$Canvas.mo405toPx0680j_4(SliderKt.getTrackHeight());
                    DrawScope.m5257drawLineNGM6Ib0$default($this$Canvas, inactiveTrackColor, sliderStart, sliderEnd, trackStrokeWidth, StrokeCap.INSTANCE.m5072getRoundKaPHkGw(), null, 0.0f, null, 0, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
                    long sliderValueEnd = OffsetKt.Offset(Offset.m4452getXimpl(sliderStart) + ((Offset.m4452getXimpl(sliderEnd) - Offset.m4452getXimpl(sliderStart)) * sliderPositions2.getActiveRange().getEndInclusive().floatValue()), Offset.m4453getYimpl($this$Canvas.mo5270getCenterF1C5BW0()));
                    long sliderValueStart = OffsetKt.Offset(Offset.m4452getXimpl(sliderStart) + ((Offset.m4452getXimpl(sliderEnd) - Offset.m4452getXimpl(sliderStart)) * sliderPositions2.getActiveRange().getStart().floatValue()), Offset.m4453getYimpl($this$Canvas.mo5270getCenterF1C5BW0()));
                    long sliderStart2 = sliderStart;
                    long sliderEnd2 = sliderEnd;
                    DrawScope.m5257drawLineNGM6Ib0$default($this$Canvas, activeTrackColor, sliderValueStart, sliderValueEnd, trackStrokeWidth, StrokeCap.INSTANCE.m5072getRoundKaPHkGw(), null, 0.0f, null, 0, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
                    float[] $this$groupBy$iv = sliderPositions2.getTickFractions();
                    SliderPositions sliderPositions3 = sliderPositions2;
                    Map destination$iv$iv = new LinkedHashMap();
                    int length = $this$groupBy$iv.length;
                    for (int i5 = 0; i5 < length; i5++) {
                        float element$iv$iv = $this$groupBy$iv[i5];
                        Boolean boolValueOf = Boolean.valueOf(element$iv$iv > sliderPositions3.getActiveRange().getEndInclusive().floatValue() || element$iv$iv < sliderPositions3.getActiveRange().getStart().floatValue());
                        Object value$iv$iv$iv = destination$iv$iv.get(boolValueOf);
                        if (value$iv$iv$iv == null) {
                            answer$iv$iv$iv = new ArrayList();
                            destination$iv$iv.put(boolValueOf, answer$iv$iv$iv);
                        } else {
                            answer$iv$iv$iv = value$iv$iv$iv;
                        }
                        List list$iv$iv = (List) answer$iv$iv$iv;
                        list$iv$iv.add(Float.valueOf(element$iv$iv));
                    }
                    long j = inactiveTickColor;
                    long j2 = activeTickColor;
                    for (Map.Entry element$iv : destination$iv$iv.entrySet()) {
                        boolean outsideFraction = ((Boolean) element$iv.getKey()).booleanValue();
                        List list = (List) element$iv.getValue();
                        ArrayList target$iv = new ArrayList(list.size());
                        List $this$fastForEach$iv$iv = list;
                        int $i$f$fastForEach = 0;
                        int index$iv$iv = 0;
                        int size = $this$fastForEach$iv$iv.size();
                        while (index$iv$iv < size) {
                            Object item$iv$iv = $this$fastForEach$iv$iv.get(index$iv$iv);
                            long j3 = j;
                            float it = ((Number) item$iv$iv).floatValue();
                            List $this$fastForEach$iv$iv2 = $this$fastForEach$iv$iv;
                            long sliderStart3 = sliderStart2;
                            int index$iv$iv2 = index$iv$iv;
                            long sliderEnd3 = sliderEnd2;
                            target$iv.add(Offset.m4441boximpl(OffsetKt.Offset(Offset.m4452getXimpl(OffsetKt.m4475lerpWko1d7g(sliderStart3, sliderEnd3, it)), Offset.m4453getYimpl($this$Canvas.mo5270getCenterF1C5BW0()))));
                            sliderEnd2 = sliderEnd3;
                            size = size;
                            j = j3;
                            index$iv$iv = index$iv$iv2 + 1;
                            sliderStart2 = sliderStart3;
                            $this$fastForEach$iv$iv = $this$fastForEach$iv$iv2;
                            $i$f$fastForEach = $i$f$fastForEach;
                        }
                        long j4 = j;
                        long j5 = j2;
                        sliderStart2 = sliderStart2;
                        sliderEnd2 = sliderEnd2;
                        DrawScope.m5262drawPointsF8ZwMP8$default($this$Canvas, target$iv, PointMode.INSTANCE.m5017getPointsr_lszbg(), outsideFraction ? j4 : j5, tickSize, StrokeCap.INSTANCE.m5072getRoundKaPHkGw(), null, 0.0f, null, 0, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
                        j2 = j5;
                        j = j4;
                    }
                }
            };
            $composer2.updateRememberedValue(value$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            CanvasKt.Canvas(modifierM850height3ABfNKs, (Function1) value$iv, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
            }
            colors3 = colors2;
            enabled3 = enabled2;
            modifier4 = modifier5;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderDefaults.Track.2
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
                    SliderDefaults.this.Track(sliderPositions, modifier4, colors3, enabled3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the overload that takes `drawStopIndicator`, `drawTick`, `thumbTrackGapSize` and `trackInsideCornerSize`, see `LegacySliderSample` on how to restore the previous behavior", replaceWith = @ReplaceWith(expression = "Track(sliderState, modifier, enabled, colors, drawStopIndicator, drawTick, thumbTrackGapSize, trackInsideCornerSize)", imports = {}))
    public final /* synthetic */ void Track(final SliderState sliderState, Modifier modifier, SliderColors colors, boolean enabled, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        SliderColors sliderColors;
        boolean z;
        SliderColors colors2;
        int $dirty;
        Modifier modifier3;
        final SliderColors colors3;
        boolean enabled2;
        final boolean enabled3;
        final Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(593554206);
        ComposerKt.sourceInformation($composer2, "C(Track)P(3,2)1079@48295L8,1082@48353L213:Slider.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changedInstance(sliderState) ? 4 : 2;
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
                sliderColors = colors;
                int i3 = $composer2.changed(sliderColors) ? 256 : 128;
                $dirty2 |= i3;
            } else {
                sliderColors = colors;
            }
            $dirty2 |= i3;
        } else {
            sliderColors = colors;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
            z = enabled;
        } else if (($changed & 3072) == 0) {
            z = enabled;
            $dirty2 |= $composer2.changed(z) ? 2048 : 1024;
        } else {
            z = enabled;
        }
        if ((i & 16) != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty2 |= $composer2.changed(this) ? 16384 : 8192;
        }
        if (($dirty2 & 9363) == 9362 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            colors3 = sliderColors;
            enabled3 = z;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    colors2 = colors($composer2, ($dirty2 >> 12) & 14);
                    $dirty2 &= -897;
                } else {
                    colors2 = sliderColors;
                }
                if (i4 != 0) {
                    $dirty = $dirty2;
                    modifier3 = modifier5;
                    colors3 = colors2;
                    enabled2 = true;
                } else {
                    $dirty = $dirty2;
                    modifier3 = modifier5;
                    colors3 = colors2;
                    enabled2 = z;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                $dirty = $dirty2;
                modifier3 = modifier2;
                colors3 = sliderColors;
                enabled2 = z;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(593554206, $dirty, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1081)");
            }
            m2777Track4EFweAY(sliderState, modifier3, enabled2, colors3, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, $composer2, ($dirty & 14) | 14155776 | ($dirty & 112) | (($dirty >> 3) & 896) | (($dirty << 3) & 7168) | (234881024 & ($dirty << 12)), 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            enabled3 = enabled2;
            modifier4 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderDefaults.Track.3
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
                    SliderDefaults.this.Track(sliderState, modifier4, colors3, enabled3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02cc A[PHI: r16
      0x02cc: PHI (r16v6 kotlin.jvm.functions.Function2<? super androidx.compose.ui.graphics.drawscope.DrawScope, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit>) = 
      (r16v2 kotlin.jvm.functions.Function2<? super androidx.compose.ui.graphics.drawscope.DrawScope, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit>)
      (r16v7 kotlin.jvm.functions.Function2<? super androidx.compose.ui.graphics.drawscope.DrawScope, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit>)
     binds: [B:177:0x02ca, B:174:0x02bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0379  */
    /* JADX INFO: renamed from: Track-4EFweAY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m2777Track4EFweAY(final SliderState sliderState, Modifier modifier, boolean enabled, SliderColors colors, Function2<? super DrawScope, ? super Offset, Unit> function2, Function3<? super DrawScope, ? super Offset, ? super Color, Unit> function3, float thumbTrackGapSize, float trackInsideCornerSize, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final boolean enabled2;
        final SliderColors colors2;
        Function2<? super DrawScope, ? super Offset, Unit> function22;
        final Function3<? super DrawScope, ? super Offset, ? super Color, Unit> function32;
        float thumbTrackGapSize2;
        float trackInsideCornerSize2;
        float thumbTrackGapSize3;
        SliderColors colors3;
        Modifier modifier3;
        boolean enabled3;
        Object value$iv;
        Function2<? super DrawScope, ? super Offset, Unit> function23;
        Function2<? super DrawScope, ? super Offset, Unit> function24;
        boolean invalid$iv;
        Composer $this$cache$iv;
        boolean enabled4;
        SliderColors colors4;
        final float thumbTrackGapSize4;
        Composer $composer2;
        final Function2<? super DrawScope, ? super Offset, Unit> function25;
        final float trackInsideCornerSize3;
        Object value$iv2;
        Composer $composer3;
        final float thumbTrackGapSize5;
        final boolean enabled5;
        final SliderColors colors5;
        final Modifier modifier4;
        final float trackInsideCornerSize4;
        final Function2<? super DrawScope, ? super Offset, Unit> function26;
        final Function3<? super DrawScope, ? super Offset, ? super Color, Unit> function33;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i2;
        Composer $composer4 = $composer.startRestartGroup(49984771);
        ComposerKt.sourceInformation($composer4, "C(Track)P(5,4,3!3,6:c#ui.unit.Dp,7:c#ui.unit.Dp)1114@49756L8,1115@49825L232,1137@50806L7,1138@50862L595,1133@50659L798:Slider.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer4.changedInstance(sliderState) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer4.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            enabled2 = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            enabled2 = enabled;
            $dirty |= $composer4.changed(enabled2) ? 256 : 128;
        } else {
            enabled2 = enabled;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                colors2 = colors;
                int i5 = $composer4.changed(colors2) ? 2048 : 1024;
                $dirty |= i5;
            } else {
                colors2 = colors;
            }
            $dirty |= i5;
        } else {
            colors2 = colors;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                function22 = function2;
                int i6 = $composer4.changedInstance(function22) ? 16384 : 8192;
                $dirty |= i6;
            } else {
                function22 = function2;
            }
            $dirty |= i6;
        } else {
            function22 = function2;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function32 = function3;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            function32 = function3;
            $dirty |= $composer4.changedInstance(function32) ? 131072 : 65536;
        } else {
            function32 = function3;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
            thumbTrackGapSize2 = thumbTrackGapSize;
        } else if (($changed & 1572864) == 0) {
            thumbTrackGapSize2 = thumbTrackGapSize;
            $dirty |= $composer4.changed(thumbTrackGapSize2) ? 1048576 : 524288;
        } else {
            thumbTrackGapSize2 = thumbTrackGapSize;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty |= 12582912;
            trackInsideCornerSize2 = trackInsideCornerSize;
        } else if (($changed & 12582912) == 0) {
            trackInsideCornerSize2 = trackInsideCornerSize;
            $dirty |= $composer4.changed(trackInsideCornerSize2) ? 8388608 : 4194304;
        } else {
            trackInsideCornerSize2 = trackInsideCornerSize;
        }
        if ((i & 256) == 0) {
            i2 = ($changed & 100663296) == 0 ? $composer4.changed(this) ? 67108864 : 33554432 : 100663296;
            if ((38347923 & $dirty) == 38347922 || !$composer4.getSkipping()) {
                $composer4.startDefaults();
                if (($changed & 1) != 0 || $composer4.getDefaultsInvalid()) {
                    if (i3 != 0) {
                        modifier2 = Modifier.INSTANCE;
                    }
                    if (i4 != 0) {
                        enabled2 = true;
                    }
                    if ((i & 8) != 0) {
                        SliderColors colors6 = colors($composer4, ($dirty >> 24) & 14);
                        $dirty &= -7169;
                        colors2 = colors6;
                    }
                    if ((i & 16) != 0) {
                        ComposerKt.sourceInformationMarkerStart($composer4, -800875397, "CC(remember):Slider.kt#9igjgp");
                        boolean invalid$iv2 = (((($dirty & 7168) ^ 3072) > 2048 && $composer4.changed(colors2)) || ($dirty & 3072) == 2048) | (($dirty & 896) == 256);
                        Object it$iv = $composer4.rememberedValue();
                        if (invalid$iv2 || it$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv = (Function2) new Function2<DrawScope, Offset, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$4$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope, Offset offset) {
                                    m2782invokeUv8p0NA(drawScope, offset.m4462unboximpl());
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke-Uv8p0NA, reason: not valid java name */
                                public final void m2782invokeUv8p0NA(DrawScope $this$null, long it) {
                                    SliderDefaults.INSTANCE.m2772drawStopIndicatorx3O1jOs($this$null, it, SliderDefaults.INSTANCE.m2780getTrackStopIndicatorSizeD9Ej5fM(), colors2.m2769trackColorWaAFU9c$material3_release(enabled2, true));
                                }
                            };
                            $composer4.updateRememberedValue(value$iv);
                        } else {
                            value$iv = it$iv;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $dirty &= -57345;
                        function22 = (Function2) value$iv;
                    }
                    if (i7 != 0) {
                        function32 = new Function3<DrawScope, Offset, Color, Unit>() { // from class: androidx.compose.material3.SliderDefaults.Track.5
                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope, Offset offset, Color color) {
                                m2783invokewPWG1Vc(drawScope, offset.m4462unboximpl(), color.m4707unboximpl());
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m2783invokewPWG1Vc(DrawScope $this$null, long offset, long color) {
                                SliderDefaults.INSTANCE.m2772drawStopIndicatorx3O1jOs($this$null, offset, SliderDefaults.INSTANCE.m2779getTickSizeD9Ej5fM(), color);
                            }
                        };
                    }
                    if (i8 != 0) {
                        thumbTrackGapSize2 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i9 == 0) {
                        SliderColors sliderColors = colors2;
                        thumbTrackGapSize3 = thumbTrackGapSize2;
                        colors3 = sliderColors;
                        trackInsideCornerSize2 = SliderKt.TrackInsideCornerSize;
                        modifier3 = modifier2;
                        enabled3 = enabled2;
                    } else {
                        SliderColors sliderColors2 = colors2;
                        thumbTrackGapSize3 = thumbTrackGapSize2;
                        colors3 = sliderColors2;
                        modifier3 = modifier2;
                        enabled3 = enabled2;
                    }
                } else {
                    $composer4.skipToGroupEnd();
                    if ((i & 8) != 0) {
                        $dirty &= -7169;
                    }
                    if ((i & 16) != 0) {
                        SliderColors sliderColors3 = colors2;
                        thumbTrackGapSize3 = thumbTrackGapSize2;
                        colors3 = sliderColors3;
                        $dirty = (-57345) & $dirty;
                        modifier3 = modifier2;
                        enabled3 = enabled2;
                    } else {
                        SliderColors sliderColors4 = colors2;
                        thumbTrackGapSize3 = thumbTrackGapSize2;
                        colors3 = sliderColors4;
                        modifier3 = modifier2;
                        enabled3 = enabled2;
                    }
                }
                $composer4.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(49984771, $dirty, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1128)");
                }
                final long inactiveTrackColor = colors3.m2769trackColorWaAFU9c$material3_release(enabled3, false);
                float thumbTrackGapSize6 = thumbTrackGapSize3;
                final long activeTrackColor = colors3.m2769trackColorWaAFU9c$material3_release(enabled3, true);
                float trackInsideCornerSize5 = trackInsideCornerSize2;
                Function2<? super DrawScope, ? super Offset, Unit> function27 = function22;
                final long inactiveTickColor = colors3.m2768tickColorWaAFU9c$material3_release(enabled3, false);
                final long activeTickColor = colors3.m2768tickColorWaAFU9c$material3_release(enabled3, true);
                Modifier modifierM850height3ABfNKs = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                Modifier modifier5 = modifier3;
                ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume = $composer4.consume(localLayoutDirection);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                Modifier modifierRotate = RotateKt.rotate(modifierM850height3ABfNKs, objConsume != LayoutDirection.Rtl ? 180.0f : 0.0f);
                ComposerKt.sourceInformationMarkerStart($composer4, -800841850, "CC(remember):Slider.kt#9igjgp");
                boolean zChangedInstance = $composer4.changedInstance(sliderState) | $composer4.changed(inactiveTrackColor) | $composer4.changed(activeTrackColor) | $composer4.changed(inactiveTickColor) | $composer4.changed(activeTickColor) | (($dirty & 3670016) != 1048576) | ((29360128 & $dirty) != 8388608);
                if (((57344 & $dirty) ^ 24576) <= 16384) {
                    function23 = function27;
                    if ($composer4.changed(function23)) {
                        function24 = function23;
                    }
                    invalid$iv = zChangedInstance | z | ((458752 & $dirty) == 131072);
                    Object it$iv2 = $composer4.rememberedValue();
                    if (invalid$iv) {
                        $this$cache$iv = $composer4;
                    } else {
                        $this$cache$iv = $composer4;
                        if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                            value$iv2 = it$iv2;
                            enabled4 = enabled3;
                            colors4 = colors3;
                            thumbTrackGapSize4 = thumbTrackGapSize6;
                            $composer2 = $composer4;
                            function25 = function24;
                            trackInsideCornerSize3 = trackInsideCornerSize5;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        $composer3 = $composer2;
                        CanvasKt.Canvas(modifierRotate, (Function1) value$iv2, $composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        thumbTrackGapSize5 = thumbTrackGapSize4;
                        enabled5 = enabled4;
                        colors5 = colors4;
                        modifier4 = modifier5;
                        trackInsideCornerSize4 = trackInsideCornerSize3;
                        function26 = function25;
                        function33 = function32;
                    }
                    enabled4 = enabled3;
                    colors4 = colors3;
                    thumbTrackGapSize4 = thumbTrackGapSize6;
                    $composer2 = $composer4;
                    function25 = function24;
                    trackInsideCornerSize3 = trackInsideCornerSize5;
                    value$iv2 = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$6$1
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
                            SliderDefaults.INSTANCE.m2773drawTrackngJ0SCU($this$Canvas, sliderState.getTickFractions(), 0.0f, sliderState.getCoercedValueAsFraction$material3_release(), inactiveTrackColor, activeTrackColor, inactiveTickColor, activeTickColor, $this$Canvas.mo401toDpu2uoSUM(sliderState.getTrackHeight$material3_release()), $this$Canvas.mo402toDpu2uoSUM(0), $this$Canvas.mo401toDpu2uoSUM(sliderState.getThumbWidth$material3_release()), thumbTrackGapSize4, trackInsideCornerSize3, function25, function32, false);
                        }
                    };
                    $this$cache$iv.updateRememberedValue(value$iv2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer3 = $composer2;
                    CanvasKt.Canvas(modifierRotate, (Function1) value$iv2, $composer3, 0);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    thumbTrackGapSize5 = thumbTrackGapSize4;
                    enabled5 = enabled4;
                    colors5 = colors4;
                    modifier4 = modifier5;
                    trackInsideCornerSize4 = trackInsideCornerSize3;
                    function26 = function25;
                    function33 = function32;
                } else {
                    function23 = function27;
                }
                function24 = function23;
                boolean z = ($dirty & 24576) != 16384;
                invalid$iv = zChangedInstance | z | ((458752 & $dirty) == 131072);
                Object it$iv22 = $composer4.rememberedValue();
                if (invalid$iv) {
                }
                enabled4 = enabled3;
                colors4 = colors3;
                thumbTrackGapSize4 = thumbTrackGapSize6;
                $composer2 = $composer4;
                function25 = function24;
                trackInsideCornerSize3 = trackInsideCornerSize5;
                value$iv2 = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$6$1
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
                        SliderDefaults.INSTANCE.m2773drawTrackngJ0SCU($this$Canvas, sliderState.getTickFractions(), 0.0f, sliderState.getCoercedValueAsFraction$material3_release(), inactiveTrackColor, activeTrackColor, inactiveTickColor, activeTickColor, $this$Canvas.mo401toDpu2uoSUM(sliderState.getTrackHeight$material3_release()), $this$Canvas.mo402toDpu2uoSUM(0), $this$Canvas.mo401toDpu2uoSUM(sliderState.getThumbWidth$material3_release()), thumbTrackGapSize4, trackInsideCornerSize3, function25, function32, false);
                    }
                };
                $this$cache$iv.updateRememberedValue(value$iv2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer3 = $composer2;
                CanvasKt.Canvas(modifierRotate, (Function1) value$iv2, $composer3, 0);
                if (ComposerKt.isTraceInProgress()) {
                }
                thumbTrackGapSize5 = thumbTrackGapSize4;
                enabled5 = enabled4;
                colors5 = colors4;
                modifier4 = modifier5;
                trackInsideCornerSize4 = trackInsideCornerSize3;
                function26 = function25;
                function33 = function32;
            } else {
                $composer4.skipToGroupEnd();
                $composer3 = $composer4;
                modifier4 = modifier2;
                colors5 = colors2;
                thumbTrackGapSize5 = thumbTrackGapSize2;
                enabled5 = enabled2;
                trackInsideCornerSize4 = trackInsideCornerSize2;
                function26 = function22;
                function33 = function32;
            }
            scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderDefaults.Track.7
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

                    public final void invoke(Composer composer, int i10) {
                        SliderDefaults.this.m2777Track4EFweAY(sliderState, modifier4, enabled5, colors5, function26, function33, thumbTrackGapSize5, trackInsideCornerSize4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                    }
                });
                return;
            }
            return;
        }
        $dirty |= i2;
        if ((38347923 & $dirty) == 38347922) {
            $composer4.startDefaults();
            if (($changed & 1) != 0) {
                if (i3 != 0) {
                }
                if (i4 != 0) {
                }
                if ((i & 8) != 0) {
                }
                if ((i & 16) != 0) {
                }
                if (i7 != 0) {
                }
                if (i8 != 0) {
                }
                if (i9 == 0) {
                }
                $composer4.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                }
                final long inactiveTrackColor2 = colors3.m2769trackColorWaAFU9c$material3_release(enabled3, false);
                float thumbTrackGapSize62 = thumbTrackGapSize3;
                final long activeTrackColor2 = colors3.m2769trackColorWaAFU9c$material3_release(enabled3, true);
                float trackInsideCornerSize52 = trackInsideCornerSize2;
                Function2<? super DrawScope, ? super Offset, Unit> function272 = function22;
                final long inactiveTickColor2 = colors3.m2768tickColorWaAFU9c$material3_release(enabled3, false);
                final long activeTickColor2 = colors3.m2768tickColorWaAFU9c$material3_release(enabled3, true);
                Modifier modifierM850height3ABfNKs2 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                Modifier modifier52 = modifier3;
                ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer4.consume(localLayoutDirection2);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                Modifier modifierRotate2 = RotateKt.rotate(modifierM850height3ABfNKs2, objConsume2 != LayoutDirection.Rtl ? 180.0f : 0.0f);
                ComposerKt.sourceInformationMarkerStart($composer4, -800841850, "CC(remember):Slider.kt#9igjgp");
                boolean zChangedInstance2 = $composer4.changedInstance(sliderState) | $composer4.changed(inactiveTrackColor2) | $composer4.changed(activeTrackColor2) | $composer4.changed(inactiveTickColor2) | $composer4.changed(activeTickColor2) | (($dirty & 3670016) != 1048576) | ((29360128 & $dirty) != 8388608);
                if (((57344 & $dirty) ^ 24576) <= 16384) {
                }
                function24 = function23;
                if (($dirty & 24576) != 16384) {
                }
                invalid$iv = zChangedInstance2 | z | ((458752 & $dirty) == 131072);
                Object it$iv222 = $composer4.rememberedValue();
                if (invalid$iv) {
                }
                enabled4 = enabled3;
                colors4 = colors3;
                thumbTrackGapSize4 = thumbTrackGapSize62;
                $composer2 = $composer4;
                function25 = function24;
                trackInsideCornerSize3 = trackInsideCornerSize52;
                value$iv2 = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$6$1
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
                        SliderDefaults.INSTANCE.m2773drawTrackngJ0SCU($this$Canvas, sliderState.getTickFractions(), 0.0f, sliderState.getCoercedValueAsFraction$material3_release(), inactiveTrackColor2, activeTrackColor2, inactiveTickColor2, activeTickColor2, $this$Canvas.mo401toDpu2uoSUM(sliderState.getTrackHeight$material3_release()), $this$Canvas.mo402toDpu2uoSUM(0), $this$Canvas.mo401toDpu2uoSUM(sliderState.getThumbWidth$material3_release()), thumbTrackGapSize4, trackInsideCornerSize3, function25, function32, false);
                    }
                };
                $this$cache$iv.updateRememberedValue(value$iv2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer3 = $composer2;
                CanvasKt.Canvas(modifierRotate2, (Function1) value$iv2, $composer3, 0);
                if (ComposerKt.isTraceInProgress()) {
                }
                thumbTrackGapSize5 = thumbTrackGapSize4;
                enabled5 = enabled4;
                colors5 = colors4;
                modifier4 = modifier52;
                trackInsideCornerSize4 = trackInsideCornerSize3;
                function26 = function25;
                function33 = function32;
            }
        }
        scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the overload that takes `drawStopIndicator`, `drawTick`, `thumbTrackGapSize` and `trackInsideCornerSize`, see `LegacyRangeSliderSample` on how to restore the previous behavior", replaceWith = @ReplaceWith(expression = "Track(rangeSliderState, modifier, colors, enabled, drawStopIndicator, drawTick, thumbTrackGapSize, trackInsideCornerSize)", imports = {}))
    public final /* synthetic */ void Track(final RangeSliderState rangeSliderState, Modifier modifier, SliderColors colors, boolean enabled, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        SliderColors sliderColors;
        boolean z;
        SliderColors colors2;
        int $dirty;
        Modifier modifier3;
        final SliderColors colors3;
        boolean enabled2;
        final boolean enabled3;
        final Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(-1617869097);
        ComposerKt.sourceInformation($composer2, "C(Track)P(3,2)1187@52807L8,1190@52865L218:Slider.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changedInstance(rangeSliderState) ? 4 : 2;
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
                sliderColors = colors;
                int i3 = $composer2.changed(sliderColors) ? 256 : 128;
                $dirty2 |= i3;
            } else {
                sliderColors = colors;
            }
            $dirty2 |= i3;
        } else {
            sliderColors = colors;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
            z = enabled;
        } else if (($changed & 3072) == 0) {
            z = enabled;
            $dirty2 |= $composer2.changed(z) ? 2048 : 1024;
        } else {
            z = enabled;
        }
        if ((i & 16) != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty2 |= $composer2.changed(this) ? 16384 : 8192;
        }
        if (($dirty2 & 9363) == 9362 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            colors3 = sliderColors;
            enabled3 = z;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    colors2 = colors($composer2, ($dirty2 >> 12) & 14);
                    $dirty2 &= -897;
                } else {
                    colors2 = sliderColors;
                }
                if (i4 != 0) {
                    $dirty = $dirty2;
                    modifier3 = modifier5;
                    colors3 = colors2;
                    enabled2 = true;
                } else {
                    $dirty = $dirty2;
                    modifier3 = modifier5;
                    colors3 = colors2;
                    enabled2 = z;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                $dirty = $dirty2;
                modifier3 = modifier2;
                colors3 = sliderColors;
                enabled2 = z;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1617869097, $dirty, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1189)");
            }
            m2776Track4EFweAY(rangeSliderState, modifier3, enabled2, colors3, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, $composer2, ($dirty & 14) | 14155776 | ($dirty & 112) | (($dirty >> 3) & 896) | (($dirty << 3) & 7168) | (234881024 & ($dirty << 12)), 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            enabled3 = enabled2;
            modifier4 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderDefaults.Track.8
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
                    SliderDefaults.this.Track(rangeSliderState, modifier4, colors3, enabled3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02cc A[PHI: r16
      0x02cc: PHI (r16v6 kotlin.jvm.functions.Function2<? super androidx.compose.ui.graphics.drawscope.DrawScope, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit>) = 
      (r16v2 kotlin.jvm.functions.Function2<? super androidx.compose.ui.graphics.drawscope.DrawScope, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit>)
      (r16v7 kotlin.jvm.functions.Function2<? super androidx.compose.ui.graphics.drawscope.DrawScope, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit>)
     binds: [B:177:0x02ca, B:174:0x02bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0379  */
    /* JADX INFO: renamed from: Track-4EFweAY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m2776Track4EFweAY(final RangeSliderState rangeSliderState, Modifier modifier, boolean enabled, SliderColors colors, Function2<? super DrawScope, ? super Offset, Unit> function2, Function3<? super DrawScope, ? super Offset, ? super Color, Unit> function3, float thumbTrackGapSize, float trackInsideCornerSize, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final boolean enabled2;
        final SliderColors colors2;
        Function2<? super DrawScope, ? super Offset, Unit> function22;
        final Function3<? super DrawScope, ? super Offset, ? super Color, Unit> function32;
        float thumbTrackGapSize2;
        float trackInsideCornerSize2;
        float thumbTrackGapSize3;
        SliderColors colors3;
        Modifier modifier3;
        boolean enabled3;
        Object value$iv;
        Function2<? super DrawScope, ? super Offset, Unit> function23;
        Function2<? super DrawScope, ? super Offset, Unit> function24;
        boolean invalid$iv;
        Composer $this$cache$iv;
        boolean enabled4;
        SliderColors colors4;
        final float thumbTrackGapSize4;
        Composer $composer2;
        final Function2<? super DrawScope, ? super Offset, Unit> function25;
        final float trackInsideCornerSize3;
        Object value$iv2;
        Composer $composer3;
        final float thumbTrackGapSize5;
        final boolean enabled5;
        final SliderColors colors5;
        final Modifier modifier4;
        final float trackInsideCornerSize4;
        final Function2<? super DrawScope, ? super Offset, Unit> function26;
        final Function3<? super DrawScope, ? super Offset, ? super Color, Unit> function33;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i2;
        Composer $composer4 = $composer.startRestartGroup(-541824132);
        ComposerKt.sourceInformation($composer4, "C(Track)P(5,4,3!3,6:c#ui.unit.Dp,7:c#ui.unit.Dp)1222@54320L8,1223@54389L232,1245@55370L7,1246@55426L706,1241@55223L909:Slider.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer4.changedInstance(rangeSliderState) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer4.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            enabled2 = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            enabled2 = enabled;
            $dirty |= $composer4.changed(enabled2) ? 256 : 128;
        } else {
            enabled2 = enabled;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                colors2 = colors;
                int i5 = $composer4.changed(colors2) ? 2048 : 1024;
                $dirty |= i5;
            } else {
                colors2 = colors;
            }
            $dirty |= i5;
        } else {
            colors2 = colors;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                function22 = function2;
                int i6 = $composer4.changedInstance(function22) ? 16384 : 8192;
                $dirty |= i6;
            } else {
                function22 = function2;
            }
            $dirty |= i6;
        } else {
            function22 = function2;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function32 = function3;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            function32 = function3;
            $dirty |= $composer4.changedInstance(function32) ? 131072 : 65536;
        } else {
            function32 = function3;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
            thumbTrackGapSize2 = thumbTrackGapSize;
        } else if (($changed & 1572864) == 0) {
            thumbTrackGapSize2 = thumbTrackGapSize;
            $dirty |= $composer4.changed(thumbTrackGapSize2) ? 1048576 : 524288;
        } else {
            thumbTrackGapSize2 = thumbTrackGapSize;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty |= 12582912;
            trackInsideCornerSize2 = trackInsideCornerSize;
        } else if (($changed & 12582912) == 0) {
            trackInsideCornerSize2 = trackInsideCornerSize;
            $dirty |= $composer4.changed(trackInsideCornerSize2) ? 8388608 : 4194304;
        } else {
            trackInsideCornerSize2 = trackInsideCornerSize;
        }
        if ((i & 256) == 0) {
            i2 = ($changed & 100663296) == 0 ? $composer4.changed(this) ? 67108864 : 33554432 : 100663296;
            if ((38347923 & $dirty) == 38347922 || !$composer4.getSkipping()) {
                $composer4.startDefaults();
                if (($changed & 1) != 0 || $composer4.getDefaultsInvalid()) {
                    if (i3 != 0) {
                        modifier2 = Modifier.INSTANCE;
                    }
                    if (i4 != 0) {
                        enabled2 = true;
                    }
                    if ((i & 8) != 0) {
                        SliderColors colors6 = colors($composer4, ($dirty >> 24) & 14);
                        $dirty &= -7169;
                        colors2 = colors6;
                    }
                    if ((i & 16) != 0) {
                        ComposerKt.sourceInformationMarkerStart($composer4, -800729349, "CC(remember):Slider.kt#9igjgp");
                        boolean invalid$iv2 = (((($dirty & 7168) ^ 3072) > 2048 && $composer4.changed(colors2)) || ($dirty & 3072) == 2048) | (($dirty & 896) == 256);
                        Object it$iv = $composer4.rememberedValue();
                        if (invalid$iv2 || it$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv = (Function2) new Function2<DrawScope, Offset, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$9$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope, Offset offset) {
                                    m2784invokeUv8p0NA(drawScope, offset.m4462unboximpl());
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke-Uv8p0NA, reason: not valid java name */
                                public final void m2784invokeUv8p0NA(DrawScope $this$null, long it) {
                                    SliderDefaults.INSTANCE.m2772drawStopIndicatorx3O1jOs($this$null, it, SliderDefaults.INSTANCE.m2780getTrackStopIndicatorSizeD9Ej5fM(), colors2.m2769trackColorWaAFU9c$material3_release(enabled2, true));
                                }
                            };
                            $composer4.updateRememberedValue(value$iv);
                        } else {
                            value$iv = it$iv;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $dirty &= -57345;
                        function22 = (Function2) value$iv;
                    }
                    if (i7 != 0) {
                        function32 = new Function3<DrawScope, Offset, Color, Unit>() { // from class: androidx.compose.material3.SliderDefaults.Track.10
                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope, Offset offset, Color color) {
                                m2781invokewPWG1Vc(drawScope, offset.m4462unboximpl(), color.m4707unboximpl());
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m2781invokewPWG1Vc(DrawScope $this$null, long offset, long color) {
                                SliderDefaults.INSTANCE.m2772drawStopIndicatorx3O1jOs($this$null, offset, SliderDefaults.INSTANCE.m2779getTickSizeD9Ej5fM(), color);
                            }
                        };
                    }
                    if (i8 != 0) {
                        thumbTrackGapSize2 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i9 == 0) {
                        SliderColors sliderColors = colors2;
                        thumbTrackGapSize3 = thumbTrackGapSize2;
                        colors3 = sliderColors;
                        trackInsideCornerSize2 = SliderKt.TrackInsideCornerSize;
                        modifier3 = modifier2;
                        enabled3 = enabled2;
                    } else {
                        SliderColors sliderColors2 = colors2;
                        thumbTrackGapSize3 = thumbTrackGapSize2;
                        colors3 = sliderColors2;
                        modifier3 = modifier2;
                        enabled3 = enabled2;
                    }
                } else {
                    $composer4.skipToGroupEnd();
                    if ((i & 8) != 0) {
                        $dirty &= -7169;
                    }
                    if ((i & 16) != 0) {
                        SliderColors sliderColors3 = colors2;
                        thumbTrackGapSize3 = thumbTrackGapSize2;
                        colors3 = sliderColors3;
                        $dirty = (-57345) & $dirty;
                        modifier3 = modifier2;
                        enabled3 = enabled2;
                    } else {
                        SliderColors sliderColors4 = colors2;
                        thumbTrackGapSize3 = thumbTrackGapSize2;
                        colors3 = sliderColors4;
                        modifier3 = modifier2;
                        enabled3 = enabled2;
                    }
                }
                $composer4.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-541824132, $dirty, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1236)");
                }
                final long inactiveTrackColor = colors3.m2769trackColorWaAFU9c$material3_release(enabled3, false);
                float thumbTrackGapSize6 = thumbTrackGapSize3;
                final long activeTrackColor = colors3.m2769trackColorWaAFU9c$material3_release(enabled3, true);
                float trackInsideCornerSize5 = trackInsideCornerSize2;
                Function2<? super DrawScope, ? super Offset, Unit> function27 = function22;
                final long inactiveTickColor = colors3.m2768tickColorWaAFU9c$material3_release(enabled3, false);
                final long activeTickColor = colors3.m2768tickColorWaAFU9c$material3_release(enabled3, true);
                Modifier modifierM850height3ABfNKs = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                Modifier modifier5 = modifier3;
                ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume = $composer4.consume(localLayoutDirection);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                Modifier modifierRotate = RotateKt.rotate(modifierM850height3ABfNKs, objConsume != LayoutDirection.Rtl ? 180.0f : 0.0f);
                ComposerKt.sourceInformationMarkerStart($composer4, -800695691, "CC(remember):Slider.kt#9igjgp");
                boolean zChangedInstance = $composer4.changedInstance(rangeSliderState) | $composer4.changed(inactiveTrackColor) | $composer4.changed(activeTrackColor) | $composer4.changed(inactiveTickColor) | $composer4.changed(activeTickColor) | (($dirty & 3670016) != 1048576) | ((29360128 & $dirty) != 8388608);
                if (((57344 & $dirty) ^ 24576) <= 16384) {
                    function23 = function27;
                    if ($composer4.changed(function23)) {
                        function24 = function23;
                    }
                    invalid$iv = zChangedInstance | z | ((458752 & $dirty) == 131072);
                    Object it$iv2 = $composer4.rememberedValue();
                    if (invalid$iv) {
                        $this$cache$iv = $composer4;
                    } else {
                        $this$cache$iv = $composer4;
                        if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                            value$iv2 = it$iv2;
                            enabled4 = enabled3;
                            colors4 = colors3;
                            thumbTrackGapSize4 = thumbTrackGapSize6;
                            $composer2 = $composer4;
                            function25 = function24;
                            trackInsideCornerSize3 = trackInsideCornerSize5;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        $composer3 = $composer2;
                        CanvasKt.Canvas(modifierRotate, (Function1) value$iv2, $composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        thumbTrackGapSize5 = thumbTrackGapSize4;
                        enabled5 = enabled4;
                        colors5 = colors4;
                        modifier4 = modifier5;
                        trackInsideCornerSize4 = trackInsideCornerSize3;
                        function26 = function25;
                        function33 = function32;
                    }
                    enabled4 = enabled3;
                    colors4 = colors3;
                    thumbTrackGapSize4 = thumbTrackGapSize6;
                    $composer2 = $composer4;
                    function25 = function24;
                    trackInsideCornerSize3 = trackInsideCornerSize5;
                    value$iv2 = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$11$1
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
                            SliderDefaults.INSTANCE.m2773drawTrackngJ0SCU($this$Canvas, rangeSliderState.getTickFractions(), rangeSliderState.getCoercedActiveRangeStartAsFraction$material3_release(), rangeSliderState.getCoercedActiveRangeEndAsFraction$material3_release(), inactiveTrackColor, activeTrackColor, inactiveTickColor, activeTickColor, $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getTrackHeight$material3_release()), $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getStartThumbWidth$material3_release()), $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getEndThumbWidth$material3_release()), thumbTrackGapSize4, trackInsideCornerSize3, function25, function32, true);
                        }
                    };
                    $this$cache$iv.updateRememberedValue(value$iv2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer3 = $composer2;
                    CanvasKt.Canvas(modifierRotate, (Function1) value$iv2, $composer3, 0);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    thumbTrackGapSize5 = thumbTrackGapSize4;
                    enabled5 = enabled4;
                    colors5 = colors4;
                    modifier4 = modifier5;
                    trackInsideCornerSize4 = trackInsideCornerSize3;
                    function26 = function25;
                    function33 = function32;
                } else {
                    function23 = function27;
                }
                function24 = function23;
                boolean z = ($dirty & 24576) != 16384;
                invalid$iv = zChangedInstance | z | ((458752 & $dirty) == 131072);
                Object it$iv22 = $composer4.rememberedValue();
                if (invalid$iv) {
                }
                enabled4 = enabled3;
                colors4 = colors3;
                thumbTrackGapSize4 = thumbTrackGapSize6;
                $composer2 = $composer4;
                function25 = function24;
                trackInsideCornerSize3 = trackInsideCornerSize5;
                value$iv2 = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$11$1
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
                        SliderDefaults.INSTANCE.m2773drawTrackngJ0SCU($this$Canvas, rangeSliderState.getTickFractions(), rangeSliderState.getCoercedActiveRangeStartAsFraction$material3_release(), rangeSliderState.getCoercedActiveRangeEndAsFraction$material3_release(), inactiveTrackColor, activeTrackColor, inactiveTickColor, activeTickColor, $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getTrackHeight$material3_release()), $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getStartThumbWidth$material3_release()), $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getEndThumbWidth$material3_release()), thumbTrackGapSize4, trackInsideCornerSize3, function25, function32, true);
                    }
                };
                $this$cache$iv.updateRememberedValue(value$iv2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer3 = $composer2;
                CanvasKt.Canvas(modifierRotate, (Function1) value$iv2, $composer3, 0);
                if (ComposerKt.isTraceInProgress()) {
                }
                thumbTrackGapSize5 = thumbTrackGapSize4;
                enabled5 = enabled4;
                colors5 = colors4;
                modifier4 = modifier5;
                trackInsideCornerSize4 = trackInsideCornerSize3;
                function26 = function25;
                function33 = function32;
            } else {
                $composer4.skipToGroupEnd();
                $composer3 = $composer4;
                modifier4 = modifier2;
                colors5 = colors2;
                thumbTrackGapSize5 = thumbTrackGapSize2;
                enabled5 = enabled2;
                trackInsideCornerSize4 = trackInsideCornerSize2;
                function26 = function22;
                function33 = function32;
            }
            scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderDefaults.Track.12
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

                    public final void invoke(Composer composer, int i10) {
                        SliderDefaults.this.m2776Track4EFweAY(rangeSliderState, modifier4, enabled5, colors5, function26, function33, thumbTrackGapSize5, trackInsideCornerSize4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                    }
                });
                return;
            }
            return;
        }
        $dirty |= i2;
        if ((38347923 & $dirty) == 38347922) {
            $composer4.startDefaults();
            if (($changed & 1) != 0) {
                if (i3 != 0) {
                }
                if (i4 != 0) {
                }
                if ((i & 8) != 0) {
                }
                if ((i & 16) != 0) {
                }
                if (i7 != 0) {
                }
                if (i8 != 0) {
                }
                if (i9 == 0) {
                }
                $composer4.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                }
                final long inactiveTrackColor2 = colors3.m2769trackColorWaAFU9c$material3_release(enabled3, false);
                float thumbTrackGapSize62 = thumbTrackGapSize3;
                final long activeTrackColor2 = colors3.m2769trackColorWaAFU9c$material3_release(enabled3, true);
                float trackInsideCornerSize52 = trackInsideCornerSize2;
                Function2<? super DrawScope, ? super Offset, Unit> function272 = function22;
                final long inactiveTickColor2 = colors3.m2768tickColorWaAFU9c$material3_release(enabled3, false);
                final long activeTickColor2 = colors3.m2768tickColorWaAFU9c$material3_release(enabled3, true);
                Modifier modifierM850height3ABfNKs2 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                Modifier modifier52 = modifier3;
                ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer4.consume(localLayoutDirection2);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                Modifier modifierRotate2 = RotateKt.rotate(modifierM850height3ABfNKs2, objConsume2 != LayoutDirection.Rtl ? 180.0f : 0.0f);
                ComposerKt.sourceInformationMarkerStart($composer4, -800695691, "CC(remember):Slider.kt#9igjgp");
                boolean zChangedInstance2 = $composer4.changedInstance(rangeSliderState) | $composer4.changed(inactiveTrackColor2) | $composer4.changed(activeTrackColor2) | $composer4.changed(inactiveTickColor2) | $composer4.changed(activeTickColor2) | (($dirty & 3670016) != 1048576) | ((29360128 & $dirty) != 8388608);
                if (((57344 & $dirty) ^ 24576) <= 16384) {
                }
                function24 = function23;
                if (($dirty & 24576) != 16384) {
                }
                invalid$iv = zChangedInstance2 | z | ((458752 & $dirty) == 131072);
                Object it$iv222 = $composer4.rememberedValue();
                if (invalid$iv) {
                }
                enabled4 = enabled3;
                colors4 = colors3;
                thumbTrackGapSize4 = thumbTrackGapSize62;
                $composer2 = $composer4;
                function25 = function24;
                trackInsideCornerSize3 = trackInsideCornerSize52;
                value$iv2 = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.SliderDefaults$Track$11$1
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
                        SliderDefaults.INSTANCE.m2773drawTrackngJ0SCU($this$Canvas, rangeSliderState.getTickFractions(), rangeSliderState.getCoercedActiveRangeStartAsFraction$material3_release(), rangeSliderState.getCoercedActiveRangeEndAsFraction$material3_release(), inactiveTrackColor2, activeTrackColor2, inactiveTickColor2, activeTickColor2, $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getTrackHeight$material3_release()), $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getStartThumbWidth$material3_release()), $this$Canvas.mo401toDpu2uoSUM(rangeSliderState.getEndThumbWidth$material3_release()), thumbTrackGapSize4, trackInsideCornerSize3, function25, function32, true);
                    }
                };
                $this$cache$iv.updateRememberedValue(value$iv2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer3 = $composer2;
                CanvasKt.Canvas(modifierRotate2, (Function1) value$iv2, $composer3, 0);
                if (ComposerKt.isTraceInProgress()) {
                }
                thumbTrackGapSize5 = thumbTrackGapSize4;
                enabled5 = enabled4;
                colors5 = colors4;
                modifier4 = modifier52;
                trackInsideCornerSize4 = trackInsideCornerSize3;
                function26 = function25;
                function33 = function32;
            }
        }
        scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0251  */
    /* JADX INFO: renamed from: drawTrack-ngJ0SCU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m2773drawTrackngJ0SCU(DrawScope $this$drawTrack_u2dngJ0SCU, float[] tickFractions, float activeRangeStart, float activeRangeEnd, long inactiveTrackColor, long activeTrackColor, long inactiveTickColor, long activeTickColor, float height, float startThumbWidth, float endThumbWidth, float thumbTrackGapSize, float trackInsideCornerSize, Function2<? super DrawScope, ? super Offset, Unit> function2, Function3<? super DrawScope, ? super Offset, ? super Color, Unit> function3, boolean isRangeSlider) {
        float startGap;
        float endGap;
        float trackStrokeWidth;
        float cornerSize;
        int i;
        int i2;
        long start;
        long center;
        ClosedFloatingPointRange<Float> closedFloatingPointRange;
        long sliderStart = OffsetKt.Offset(0.0f, Offset.m4453getYimpl($this$drawTrack_u2dngJ0SCU.mo5270getCenterF1C5BW0()));
        long sliderEnd = OffsetKt.Offset(Size.m4521getWidthimpl($this$drawTrack_u2dngJ0SCU.mo5271getSizeNHjbRc()), Offset.m4453getYimpl($this$drawTrack_u2dngJ0SCU.mo5270getCenterF1C5BW0()));
        float trackStrokeWidth2 = $this$drawTrack_u2dngJ0SCU.mo405toPx0680j_4(height);
        long sliderValueEnd = OffsetKt.Offset(Offset.m4452getXimpl(sliderStart) + ((Offset.m4452getXimpl(sliderEnd) - Offset.m4452getXimpl(sliderStart)) * activeRangeEnd), Offset.m4453getYimpl($this$drawTrack_u2dngJ0SCU.mo5270getCenterF1C5BW0()));
        long sliderValueStart = OffsetKt.Offset(Offset.m4452getXimpl(sliderStart) + ((Offset.m4452getXimpl(sliderEnd) - Offset.m4452getXimpl(sliderStart)) * activeRangeStart), Offset.m4453getYimpl($this$drawTrack_u2dngJ0SCU.mo5270getCenterF1C5BW0()));
        float f = 2;
        float cornerSize2 = trackStrokeWidth2 / f;
        float cornerSize3 = $this$drawTrack_u2dngJ0SCU.mo405toPx0680j_4(trackInsideCornerSize);
        int $this$dp$iv = Dp.m7504compareTo0680j_4(thumbTrackGapSize, Dp.m7505constructorimpl(0));
        if ($this$dp$iv > 0) {
            float startGap2 = ($this$drawTrack_u2dngJ0SCU.mo405toPx0680j_4(startThumbWidth) / f) + $this$drawTrack_u2dngJ0SCU.mo405toPx0680j_4(thumbTrackGapSize);
            float endGap2 = ($this$drawTrack_u2dngJ0SCU.mo405toPx0680j_4(endThumbWidth) / f) + $this$drawTrack_u2dngJ0SCU.mo405toPx0680j_4(thumbTrackGapSize);
            startGap = startGap2;
            endGap = endGap2;
        } else {
            startGap = 0.0f;
            endGap = 0.0f;
        }
        if (!isRangeSlider || Offset.m4452getXimpl(sliderValueStart) <= Offset.m4452getXimpl(sliderStart) + startGap + cornerSize2) {
            trackStrokeWidth = trackStrokeWidth2;
        } else {
            float start2 = Offset.m4452getXimpl(sliderStart);
            float end = Offset.m4452getXimpl(sliderValueStart) - startGap;
            trackStrokeWidth = trackStrokeWidth2;
            m2774drawTrackPathCx2C_VA($this$drawTrack_u2dngJ0SCU, Offset.INSTANCE.m4468getZeroF1C5BW0(), androidx.compose.ui.geometry.SizeKt.Size(end - start2, trackStrokeWidth2), inactiveTrackColor, cornerSize2, cornerSize3);
            if (function2 != null) {
                function2.invoke($this$drawTrack_u2dngJ0SCU, Offset.m4441boximpl(OffsetKt.Offset(start2 + cornerSize2, Offset.m4453getYimpl($this$drawTrack_u2dngJ0SCU.mo5270getCenterF1C5BW0()))));
            }
        }
        if (Offset.m4452getXimpl(sliderValueEnd) >= (Offset.m4452getXimpl(sliderEnd) - endGap) - cornerSize2) {
            cornerSize = cornerSize2;
        } else {
            float start3 = Offset.m4452getXimpl(sliderValueEnd) + endGap;
            float end2 = Offset.m4452getXimpl(sliderEnd);
            m2774drawTrackPathCx2C_VA($this$drawTrack_u2dngJ0SCU, OffsetKt.Offset(start3, 0.0f), androidx.compose.ui.geometry.SizeKt.Size(end2 - start3, trackStrokeWidth), inactiveTrackColor, cornerSize3, cornerSize2);
            cornerSize = cornerSize2;
            cornerSize3 = cornerSize3;
            if (function2 != null) {
                function2.invoke($this$drawTrack_u2dngJ0SCU, Offset.m4441boximpl(OffsetKt.Offset(end2 - cornerSize, Offset.m4453getYimpl($this$drawTrack_u2dngJ0SCU.mo5270getCenterF1C5BW0()))));
            }
        }
        float activeTrackStart = isRangeSlider ? Offset.m4452getXimpl(sliderValueStart) + startGap : 0.0f;
        float activeTrackEnd = Offset.m4452getXimpl(sliderValueEnd) - endGap;
        float startCornerRadius = isRangeSlider ? cornerSize3 : cornerSize;
        if (activeTrackEnd - activeTrackStart > startCornerRadius) {
            m2774drawTrackPathCx2C_VA($this$drawTrack_u2dngJ0SCU, OffsetKt.Offset(activeTrackStart, 0.0f), androidx.compose.ui.geometry.SizeKt.Size(activeTrackEnd - activeTrackStart, trackStrokeWidth), activeTrackColor, startCornerRadius, cornerSize3);
        }
        long start4 = OffsetKt.Offset(Offset.m4452getXimpl(sliderStart) + cornerSize, Offset.m4453getYimpl(sliderStart));
        long end3 = OffsetKt.Offset(Offset.m4452getXimpl(sliderEnd) - cornerSize, Offset.m4453getYimpl(sliderEnd));
        ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo = RangesKt.rangeTo(Offset.m4452getXimpl(sliderValueStart) - startGap, Offset.m4452getXimpl(sliderValueStart) + startGap);
        ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo2 = RangesKt.rangeTo(Offset.m4452getXimpl(sliderValueEnd) - endGap, Offset.m4452getXimpl(sliderValueEnd) + endGap);
        int index$iv = 0;
        int length = tickFractions.length;
        int index = 0;
        while (index < length) {
            float item$iv = tickFractions[index];
            int index$iv2 = index$iv + 1;
            boolean outsideFraction = true;
            if (function2 == null) {
                i = index;
                i2 = length;
            } else {
                if (isRangeSlider && index$iv == 0) {
                    i = index;
                    i2 = length;
                } else {
                    i = index;
                    i2 = length;
                    int index2 = index$iv;
                    if (index2 == tickFractions.length - 1) {
                    }
                    index = i + 1;
                    index$iv = index$iv2;
                    closedFloatingPointRangeRangeTo = closedFloatingPointRange;
                    length = i2;
                    start4 = start;
                }
                closedFloatingPointRange = closedFloatingPointRangeRangeTo;
                start = start4;
                index = i + 1;
                index$iv = index$iv2;
                closedFloatingPointRangeRangeTo = closedFloatingPointRange;
                length = i2;
                start4 = start;
            }
            if (item$iv <= activeRangeEnd && item$iv >= activeRangeStart) {
                outsideFraction = false;
            }
            start = start4;
            long center2 = OffsetKt.Offset(Offset.m4452getXimpl(OffsetKt.m4475lerpWko1d7g(start4, end3, item$iv)), Offset.m4453getYimpl($this$drawTrack_u2dngJ0SCU.mo5270getCenterF1C5BW0()));
            if (isRangeSlider) {
                center = center2;
                if (closedFloatingPointRangeRangeTo.contains(Float.valueOf(Offset.m4452getXimpl(center2)))) {
                    closedFloatingPointRange = closedFloatingPointRangeRangeTo;
                }
                index = i + 1;
                index$iv = index$iv2;
                closedFloatingPointRangeRangeTo = closedFloatingPointRange;
                length = i2;
                start4 = start;
            } else {
                center = center2;
            }
            if (!closedFloatingPointRangeRangeTo2.contains(Float.valueOf(Offset.m4452getXimpl(center)))) {
                closedFloatingPointRange = closedFloatingPointRangeRangeTo;
                function3.invoke($this$drawTrack_u2dngJ0SCU, Offset.m4441boximpl(center), Color.m4687boximpl(outsideFraction ? inactiveTickColor : activeTickColor));
            }
            index = i + 1;
            index$iv = index$iv2;
            closedFloatingPointRangeRangeTo = closedFloatingPointRange;
            length = i2;
            start4 = start;
        }
    }

    /* JADX INFO: renamed from: drawTrackPath-Cx2C_VA, reason: not valid java name */
    private final void m2774drawTrackPathCx2C_VA(DrawScope $this$drawTrackPath_u2dCx2C_VA, long offset, long size, long color, float startCornerRadius, float endCornerRadius) {
        long startCorner = CornerRadiusKt.CornerRadius(startCornerRadius, startCornerRadius);
        long endCorner = CornerRadiusKt.CornerRadius(endCornerRadius, endCornerRadius);
        RoundRect track = RoundRectKt.m4504RoundRectZAM2FJo(RectKt.m4492Recttz77jQw(OffsetKt.Offset(Offset.m4452getXimpl(offset), 0.0f), androidx.compose.ui.geometry.SizeKt.Size(Size.m4521getWidthimpl(size), Size.m4518getHeightimpl(size))), startCorner, endCorner, endCorner, startCorner);
        Path.addRoundRect$default(trackPath, track, null, 2, null);
        DrawScope.m5261drawPathLG529CI$default($this$drawTrackPath_u2dCx2C_VA, trackPath, color, 0.0f, null, null, 0, 60, null);
        trackPath.rewind();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: drawStopIndicator-x3O1jOs, reason: not valid java name */
    public final void m2772drawStopIndicatorx3O1jOs(DrawScope drawScope, long offset, float size, long color) {
        DrawScope.m5252drawCircleVaOC9Bg$default(drawScope, color, drawScope.mo405toPx0680j_4(size) / 2.0f, offset, 0.0f, null, null, 0, 120, null);
    }

    /* JADX INFO: renamed from: getTrackStopIndicatorSize-D9Ej5fM, reason: not valid java name */
    public final float m2780getTrackStopIndicatorSizeD9Ej5fM() {
        return TrackStopIndicatorSize;
    }

    /* JADX INFO: renamed from: getTickSize-D9Ej5fM, reason: not valid java name */
    public final float m2779getTickSizeD9Ej5fM() {
        return TickSize;
    }
}
