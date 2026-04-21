package androidx.compose.material3;

import androidx.autofill.HintConstants;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.CalendarModel_androidKt;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.profileinstaller.ProfileVerifier;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DateRangePicker.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000¼\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ak\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0015\b\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012¢\u0006\u0002\b\u00132\u0015\b\u0002\u0010\u0014\u001a\u000f\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012¢\u0006\u0002\b\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019\u001a°\u0001\u0010\u001a\u001a\u00020\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2:\u0010\u001f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\n0 2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b('\u0012\u0004\u0012\u00020\n0&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0017\u001a\u00020\u0018H\u0003¢\u0006\u0002\u0010.\u001a`\u0010/\u001a\u00020\f2\n\u00100\u001a\u000601j\u0002`22\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u00106\u001a\u0002072\b\b\u0002\u0010,\u001a\u00020-H\u0007ø\u0001\u0000¢\u0006\u0004\b8\u00109\u001a½\u0001\u0010:\u001a\u00020\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010;\u001a\u0002072:\u0010\u001f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\n0 2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b('\u0012\u0004\u0012\u00020\n0&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0017\u001a\u00020\u0018H\u0003ø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001a°\u0001\u0010>\u001a\u00020\n2\u0006\u0010?\u001a\u00020@2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2:\u0010\u001f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\n0 2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b('\u0012\u0004\u0012\u00020\n0&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0017\u001a\u00020\u0018H\u0003¢\u0006\u0002\u0010A\u001a.\u0010B\u001a\b\u0012\u0004\u0012\u00020D0C2\u0006\u0010\u000b\u001a\u00020@2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020HH\u0002\u001aT\u0010J\u001a\u00020\f2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u00106\u001a\u0002072\b\b\u0002\u0010,\u001a\u00020-H\u0007ø\u0001\u0000¢\u0006\u0004\bK\u0010L\u001ae\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\u001c2\b\u0010O\u001a\u0004\u0018\u00010\u001c2\b\u0010P\u001a\u0004\u0018\u00010\u001c2:\u0010\u001f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\n0 H\u0002¢\u0006\u0002\u0010Q\u001a&\u0010R\u001a\u00020\n*\u00020S2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020WH\u0000ø\u0001\u0000¢\u0006\u0004\bX\u0010Y\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006Z"}, d2 = {"CalendarMonthSubheadPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "getCalendarMonthSubheadPadding", "()Landroidx/compose/foundation/layout/PaddingValues;", "DateRangePickerHeadlinePadding", "DateRangePickerTitlePadding", "HeaderHeightOffset", "Landroidx/compose/ui/unit/Dp;", "F", "DateRangePicker", "", "state", "Landroidx/compose/material3/DateRangePickerState;", "modifier", "Landroidx/compose/ui/Modifier;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "title", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "headline", "showModeToggle", "", "colors", "Landroidx/compose/material3/DatePickerColors;", "(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V", "DateRangePickerContent", "selectedStartDateMillis", "", "selectedEndDateMillis", "displayedMonthMillis", "onDatesSelectionChange", "Lkotlin/Function2;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "startDateMillis", "endDateMillis", "onDisplayedMonthChange", "Lkotlin/Function1;", "monthInMillis", "calendarModel", "Landroidx/compose/material3/internal/CalendarModel;", "yearRange", "Lkotlin/ranges/IntRange;", "selectableDates", "Landroidx/compose/material3/SelectableDates;", "(Ljava/lang/Long;Ljava/lang/Long;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "DateRangePickerState", "locale", "Ljava/util/Locale;", "Landroidx/compose/material3/CalendarLocale;", "initialSelectedStartDateMillis", "initialSelectedEndDateMillis", "initialDisplayedMonthMillis", "initialDisplayMode", "Landroidx/compose/material3/DisplayMode;", "DateRangePickerState-HVP43zI", "(Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DateRangePickerState;", "SwitchableDateEntryContent", "displayMode", "SwitchableDateEntryContent-RN-2D1Q", "(Ljava/lang/Long;Ljava/lang/Long;JILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V", "VerticalMonthsList", "lazyListState", "Landroidx/compose/foundation/lazy/LazyListState;", "(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "customScrollActions", "", "Landroidx/compose/ui/semantics/CustomAccessibilityAction;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "scrollUpLabel", "", "scrollDownLabel", "rememberDateRangePickerState", "rememberDateRangePickerState-IlFM19s", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DateRangePickerState;", "updateDateSelection", "dateInMillis", "currentStartDateMillis", "currentEndDateMillis", "(JLjava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V", "drawRangeBackground", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "selectedRangeInfo", "Landroidx/compose/material3/SelectedRangeInfo;", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/Color;", "drawRangeBackground-mxwnekA", "(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/material3/SelectedRangeInfo;J)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class DateRangePickerKt {
    private static final PaddingValues CalendarMonthSubheadPadding = PaddingKt.m815PaddingValuesa9UjIt4$default(Dp.m7505constructorimpl(24), Dp.m7505constructorimpl(20), 0.0f, Dp.m7505constructorimpl(8), 4, null);
    private static final PaddingValues DateRangePickerTitlePadding = PaddingKt.m815PaddingValuesa9UjIt4$default(Dp.m7505constructorimpl(64), 0.0f, Dp.m7505constructorimpl(12), 0.0f, 10, null);
    private static final PaddingValues DateRangePickerHeadlinePadding = PaddingKt.m815PaddingValuesa9UjIt4$default(Dp.m7505constructorimpl(64), 0.0f, Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(12), 2, null);
    private static final float HeaderHeightOffset = Dp.m7505constructorimpl(60);

    /* JADX WARN: Removed duplicated region for block: B:131:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DateRangePicker(final DateRangePickerState state, Modifier modifier, DatePickerFormatter dateFormatter, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, boolean showModeToggle, DatePickerColors colors, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function2RememberComposableLambda;
        Function2<? super Composer, ? super Integer, Unit> function2RememberComposableLambda2;
        boolean showModeToggle2;
        DatePickerColors datePickerColors;
        final DatePickerFormatter dateFormatter2;
        int $dirty;
        boolean z;
        int i2;
        Function2<? super Composer, ? super Integer, Unit> function23;
        boolean showModeToggle3;
        final DatePickerColors colors2;
        Modifier modifier3;
        Object value$iv;
        boolean showModeToggle4;
        Object value$iv2;
        Composer $composer2;
        final Function2<? super Composer, ? super Integer, Unit> function24;
        final boolean showModeToggle5;
        final Modifier modifier4;
        final DatePickerColors colors3;
        final DatePickerFormatter dateFormatter3;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        int i3;
        Composer $composer3 = $composer.startRestartGroup(650830774);
        ComposerKt.sourceInformation($composer3, "C(DateRangePicker)P(5,3,1,6,2,4)95@4412L47,96@4500L185,102@4729L352,112@5169L8,114@5206L15,115@5246L62,132@5955L5,136@6111L1139,116@5313L1937:DateRangePicker.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(state) ? 4 : 2;
        }
        int i4 = i & 2;
        if (i4 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) != 0) {
                i3 = 128;
                $dirty2 |= i3;
            } else {
                if (($changed & 512) == 0 ? $composer3.changed(dateFormatter) : $composer3.changedInstance(dateFormatter)) {
                    i3 = 256;
                }
                $dirty2 |= i3;
            }
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty2 |= 3072;
            function2RememberComposableLambda = function2;
        } else if (($changed & 3072) == 0) {
            function2RememberComposableLambda = function2;
            $dirty2 |= $composer3.changedInstance(function2RememberComposableLambda) ? 2048 : 1024;
        } else {
            function2RememberComposableLambda = function2;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty2 |= 24576;
            function2RememberComposableLambda2 = function22;
        } else if (($changed & 24576) == 0) {
            function2RememberComposableLambda2 = function22;
            $dirty2 |= $composer3.changedInstance(function2RememberComposableLambda2) ? 16384 : 8192;
        } else {
            function2RememberComposableLambda2 = function22;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            showModeToggle2 = showModeToggle;
        } else if ((196608 & $changed) == 0) {
            showModeToggle2 = showModeToggle;
            $dirty2 |= $composer3.changed(showModeToggle2) ? 131072 : 65536;
        } else {
            showModeToggle2 = showModeToggle;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                datePickerColors = colors;
                int i8 = $composer3.changed(datePickerColors) ? 1048576 : 524288;
                $dirty2 |= i8;
            } else {
                datePickerColors = colors;
            }
            $dirty2 |= i8;
        } else {
            datePickerColors = colors;
        }
        if ((599187 & $dirty2) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            function24 = function2RememberComposableLambda;
            showModeToggle5 = showModeToggle2;
            colors3 = datePickerColors;
            dateFormatter3 = dateFormatter;
            function25 = function2RememberComposableLambda2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i4 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, -1454781303, "CC(remember):DateRangePicker.kt#9igjgp");
                    Object it$iv = $composer3.rememberedValue();
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    dateFormatter2 = (DatePickerFormatter) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $dirty2 &= -897;
                } else {
                    dateFormatter2 = dateFormatter;
                }
                if (i5 != 0) {
                    $dirty = $dirty2;
                    z = true;
                    i2 = 54;
                    function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-162164694, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer4, int $changed2) {
                            ComposerKt.sourceInformation($composer4, "C97@4534L145:DateRangePicker.kt#uh7d8r");
                            if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-162164694, $changed2, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:97)");
                                }
                                DateRangePickerDefaults.INSTANCE.m2325DateRangePickerTitlehOD91z4(state.mo2334getDisplayModejFl4v0(), PaddingKt.padding(Modifier.INSTANCE, DateRangePickerKt.DateRangePickerTitlePadding), $composer4, 432, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer4.skipToGroupEnd();
                        }
                    }, $composer3, 54);
                } else {
                    $dirty = $dirty2;
                    z = true;
                    i2 = 54;
                }
                if (i6 != 0) {
                    function2RememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-185279404, z, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer4, int $changed2) {
                            ComposerKt.sourceInformation($composer4, "C103@4763L312:DateRangePicker.kt#uh7d8r");
                            if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-185279404, $changed2, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:103)");
                                }
                                DateRangePickerDefaults.INSTANCE.m2324DateRangePickerHeadlinev84Udv0(state.getSelectedStartDateMillis(), state.getSelectedEndDateMillis(), state.mo2334getDisplayModejFl4v0(), dateFormatter2, PaddingKt.padding(Modifier.INSTANCE, DateRangePickerKt.DateRangePickerHeadlinePadding), $composer4, 221184, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer4.skipToGroupEnd();
                        }
                    }, $composer3, i2);
                }
                if (i7 != 0) {
                    showModeToggle2 = true;
                }
                if ((i & 64) != 0) {
                    $dirty2 = $dirty & (-3670017);
                    boolean z2 = showModeToggle2;
                    colors2 = DatePickerDefaults.INSTANCE.colors($composer3, 6);
                    showModeToggle3 = z2;
                    function23 = function2RememberComposableLambda;
                    modifier3 = modifier2;
                } else {
                    $dirty2 = $dirty;
                    function23 = function2RememberComposableLambda;
                    showModeToggle3 = showModeToggle2;
                    colors2 = datePickerColors;
                    modifier3 = modifier2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 64) != 0) {
                    dateFormatter2 = dateFormatter;
                    $dirty2 &= -3670017;
                    function23 = function2RememberComposableLambda;
                    showModeToggle3 = showModeToggle2;
                    colors2 = datePickerColors;
                    modifier3 = modifier2;
                } else {
                    dateFormatter2 = dateFormatter;
                    function23 = function2RememberComposableLambda;
                    showModeToggle3 = showModeToggle2;
                    colors2 = datePickerColors;
                    modifier3 = modifier2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(650830774, $dirty2, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:113)");
            }
            Locale defaultLocale = CalendarLocale_androidKt.defaultLocale($composer3, 0);
            ComposerKt.sourceInformationMarkerStart($composer3, -1454754600, "CC(remember):DateRangePicker.kt#9igjgp");
            boolean invalid$iv = $composer3.changed(defaultLocale);
            Object it$iv2 = $composer3.rememberedValue();
            if (invalid$iv) {
                showModeToggle4 = showModeToggle3;
            } else {
                showModeToggle4 = showModeToggle3;
                if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                    value$iv2 = it$iv2;
                }
                final CalendarModel calendarModel = (CalendarModel) value$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.startReplaceGroup(-1454747621);
                ComposerKt.sourceInformation($composer3, "122@5491L323");
                ComposableLambda composableLambdaRememberComposableLambda = !showModeToggle4 ? ComposableLambdaKt.rememberComposableLambda(-1490010652, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.4
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer4, int $changed2) {
                        Object value$iv3;
                        ComposerKt.sourceInformation($composer4, "C126@5723L50,123@5513L283:DateRangePicker.kt#uh7d8r");
                        if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1490010652, $changed2, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:123)");
                            }
                            Modifier modifierPadding = PaddingKt.padding(Modifier.INSTANCE, DatePickerKt.getDatePickerModeTogglePadding());
                            int iMo2334getDisplayModejFl4v0 = state.mo2334getDisplayModejFl4v0();
                            ComposerKt.sourceInformationMarkerStart($composer4, 1752251243, "CC(remember):DateRangePicker.kt#9igjgp");
                            boolean invalid$iv2 = $composer4.changed(state);
                            final DateRangePickerState dateRangePickerState = state;
                            Object it$iv3 = $composer4.rememberedValue();
                            if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                value$iv3 = (Function1) new Function1<DisplayMode, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$DateRangePicker$4$1$1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(DisplayMode displayMode) {
                                        m2332invokevCnGnXg(displayMode.getValue());
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke-vCnGnXg, reason: not valid java name */
                                    public final void m2332invokevCnGnXg(int displayMode) {
                                        dateRangePickerState.mo2335setDisplayModevCnGnXg(displayMode);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv3);
                            } else {
                                value$iv3 = it$iv3;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            DatePickerKt.m2313DisplayModeToggleButtontER2X8s(modifierPadding, iMo2334getDisplayModejFl4v0, (Function1) value$iv3, $composer4, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer4.skipToGroupEnd();
                    }
                }, $composer3, 54) : null;
                $composer3.endReplaceGroup();
                TextStyle value = TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getRangeSelectionHeaderHeadlineFont(), $composer3, 6);
                float arg0$iv = DatePickerModalTokens.INSTANCE.m3433getRangeSelectionHeaderContainerHeightD9Ej5fM();
                float other$iv = HeaderHeightOffset;
                DatePickerFormatter dateFormatter4 = dateFormatter2;
                $composer2 = $composer3;
                DatePickerKt.m2309DateEntryContainerau3_HiA(modifier3, function23, function2RememberComposableLambda2, composableLambdaRememberComposableLambda, colors2, value, Dp.m7505constructorimpl(arg0$iv - other$iv), ComposableLambdaKt.rememberComposableLambda(-57534331, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.5
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer4, int $changed2) {
                        Object value$iv3;
                        Object value$iv4;
                        ComposerKt.sourceInformation($composer4, "C142@6428L467,153@6934L91,137@6121L1123:DateRangePicker.kt#uh7d8r");
                        if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-57534331, $changed2, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:137)");
                            }
                            Long selectedStartDateMillis = state.getSelectedStartDateMillis();
                            Long selectedEndDateMillis = state.getSelectedEndDateMillis();
                            long displayedMonthMillis = state.getDisplayedMonthMillis();
                            int iMo2334getDisplayModejFl4v0 = state.mo2334getDisplayModejFl4v0();
                            ComposerKt.sourceInformationMarkerStart($composer4, 1752274220, "CC(remember):DateRangePicker.kt#9igjgp");
                            boolean invalid$iv2 = $composer4.changed(state);
                            final DateRangePickerState dateRangePickerState = state;
                            Object it$iv3 = $composer4.rememberedValue();
                            if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                value$iv3 = (Function2) new Function2<Long, Long, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$DateRangePicker$5$1$1
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Long l, Long l2) {
                                        invoke2(l, l2);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(Long startDateMillis, Long endDateMillis) {
                                        try {
                                            dateRangePickerState.setSelection(startDateMillis, endDateMillis);
                                        } catch (IllegalArgumentException e) {
                                        }
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv3);
                            } else {
                                value$iv3 = it$iv3;
                            }
                            Function2 function26 = (Function2) value$iv3;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerStart($composer4, 1752290036, "CC(remember):DateRangePicker.kt#9igjgp");
                            boolean invalid$iv3 = $composer4.changed(state);
                            final DateRangePickerState dateRangePickerState2 = state;
                            Object it$iv4 = $composer4.rememberedValue();
                            if (invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                                value$iv4 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$DateRangePicker$5$2$1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                        invoke(l.longValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(long monthInMillis) {
                                        dateRangePickerState2.setDisplayedMonthMillis(monthInMillis);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv4);
                            } else {
                                value$iv4 = it$iv4;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            DateRangePickerKt.m2328SwitchableDateEntryContentRN2D1Q(selectedStartDateMillis, selectedEndDateMillis, displayedMonthMillis, iMo2334getDisplayModejFl4v0, function26, (Function1) value$iv4, calendarModel, state.getYearRange(), dateFormatter2, state.getSelectableDates(), colors2, $composer4, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer4.skipToGroupEnd();
                    }
                }, $composer3, 54), $composer2, (($dirty2 >> 3) & 14) | 14155776 | (($dirty2 >> 6) & 112) | (($dirty2 >> 6) & 896) | (($dirty2 >> 6) & 57344));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                function24 = function23;
                showModeToggle5 = showModeToggle4;
                modifier4 = modifier3;
                colors3 = colors2;
                dateFormatter3 = dateFormatter4;
                function25 = function2RememberComposableLambda2;
            }
            value$iv2 = CalendarModel_androidKt.createCalendarModel(defaultLocale);
            $composer3.updateRememberedValue(value$iv2);
            final CalendarModel calendarModel2 = (CalendarModel) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.startReplaceGroup(-1454747621);
            ComposerKt.sourceInformation($composer3, "122@5491L323");
            if (!showModeToggle4) {
            }
            $composer3.endReplaceGroup();
            TextStyle value2 = TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getRangeSelectionHeaderHeadlineFont(), $composer3, 6);
            float arg0$iv2 = DatePickerModalTokens.INSTANCE.m3433getRangeSelectionHeaderContainerHeightD9Ej5fM();
            float other$iv2 = HeaderHeightOffset;
            DatePickerFormatter dateFormatter42 = dateFormatter2;
            $composer2 = $composer3;
            DatePickerKt.m2309DateEntryContainerau3_HiA(modifier3, function23, function2RememberComposableLambda2, composableLambdaRememberComposableLambda, colors2, value2, Dp.m7505constructorimpl(arg0$iv2 - other$iv2), ComposableLambdaKt.rememberComposableLambda(-57534331, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    Object value$iv3;
                    Object value$iv4;
                    ComposerKt.sourceInformation($composer4, "C142@6428L467,153@6934L91,137@6121L1123:DateRangePicker.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-57534331, $changed2, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:137)");
                        }
                        Long selectedStartDateMillis = state.getSelectedStartDateMillis();
                        Long selectedEndDateMillis = state.getSelectedEndDateMillis();
                        long displayedMonthMillis = state.getDisplayedMonthMillis();
                        int iMo2334getDisplayModejFl4v0 = state.mo2334getDisplayModejFl4v0();
                        ComposerKt.sourceInformationMarkerStart($composer4, 1752274220, "CC(remember):DateRangePicker.kt#9igjgp");
                        boolean invalid$iv2 = $composer4.changed(state);
                        final DateRangePickerState dateRangePickerState = state;
                        Object it$iv3 = $composer4.rememberedValue();
                        if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                            value$iv3 = (Function2) new Function2<Long, Long, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$DateRangePicker$5$1$1
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Long l, Long l2) {
                                    invoke2(l, l2);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(Long startDateMillis, Long endDateMillis) {
                                    try {
                                        dateRangePickerState.setSelection(startDateMillis, endDateMillis);
                                    } catch (IllegalArgumentException e) {
                                    }
                                }
                            };
                            $composer4.updateRememberedValue(value$iv3);
                        } else {
                            value$iv3 = it$iv3;
                        }
                        Function2 function26 = (Function2) value$iv3;
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerStart($composer4, 1752290036, "CC(remember):DateRangePicker.kt#9igjgp");
                        boolean invalid$iv3 = $composer4.changed(state);
                        final DateRangePickerState dateRangePickerState2 = state;
                        Object it$iv4 = $composer4.rememberedValue();
                        if (invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                            value$iv4 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$DateRangePicker$5$2$1
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                    invoke(l.longValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(long monthInMillis) {
                                    dateRangePickerState2.setDisplayedMonthMillis(monthInMillis);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv4);
                        } else {
                            value$iv4 = it$iv4;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        DateRangePickerKt.m2328SwitchableDateEntryContentRN2D1Q(selectedStartDateMillis, selectedEndDateMillis, displayedMonthMillis, iMo2334getDisplayModejFl4v0, function26, (Function1) value$iv4, calendarModel2, state.getYearRange(), dateFormatter2, state.getSelectableDates(), colors2, $composer4, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer2, (($dirty2 >> 3) & 14) | 14155776 | (($dirty2 >> 6) & 112) | (($dirty2 >> 6) & 896) | (($dirty2 >> 6) & 57344));
            if (ComposerKt.isTraceInProgress()) {
            }
            function24 = function23;
            showModeToggle5 = showModeToggle4;
            modifier4 = modifier3;
            colors3 = colors2;
            dateFormatter3 = dateFormatter42;
            function25 = function2RememberComposableLambda2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.6
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

                public final void invoke(Composer composer, int i9) {
                    DateRangePickerKt.DateRangePicker(state, modifier4, dateFormatter3, function24, function25, showModeToggle5, colors3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: rememberDateRangePickerState-IlFM19s, reason: not valid java name */
    public static final DateRangePickerState m2331rememberDateRangePickerStateIlFM19s(Long initialSelectedStartDateMillis, Long initialSelectedEndDateMillis, Long initialDisplayedMonthMillis, IntRange yearRange, int initialDisplayMode, SelectableDates selectableDates, Composer $composer, int $changed, int i) {
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -2012087461, "C(rememberDateRangePickerState)P(3,2,1,5,0:c#material3.DisplayMode)262@11757L15,263@11866L435,263@11784L517:DateRangePicker.kt#uh7d8r");
        final Long initialSelectedStartDateMillis2 = (i & 1) != 0 ? null : initialSelectedStartDateMillis;
        final Long initialSelectedEndDateMillis2 = (i & 2) != 0 ? null : initialSelectedEndDateMillis;
        final Long initialDisplayedMonthMillis2 = (i & 4) != 0 ? initialSelectedStartDateMillis2 : initialDisplayedMonthMillis;
        final IntRange yearRange2 = (i & 8) != 0 ? DatePickerDefaults.INSTANCE.getYearRange() : yearRange;
        final int initialDisplayMode2 = (i & 16) != 0 ? DisplayMode.INSTANCE.m2352getPickerjFl4v0() : initialDisplayMode;
        final SelectableDates selectableDates2 = (i & 32) != 0 ? DatePickerDefaults.INSTANCE.getAllDates() : selectableDates;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2012087461, $changed, -1, "androidx.compose.material3.rememberDateRangePickerState (DateRangePicker.kt:261)");
        }
        final Locale locale = CalendarLocale_androidKt.defaultLocale($composer, 0);
        Object[] objArr = new Object[0];
        Saver<DateRangePickerStateImpl, Object> Saver = DateRangePickerStateImpl.INSTANCE.Saver(selectableDates2, locale);
        ComposerKt.sourceInformationMarkerStart($composer, -250595241, "CC(remember):DateRangePicker.kt#9igjgp");
        boolean z = true;
        boolean zChangedInstance = (((($changed & 112) ^ 48) > 32 && $composer.changed(initialSelectedEndDateMillis2)) || ($changed & 48) == 32) | (((($changed & 14) ^ 6) > 4 && $composer.changed(initialSelectedStartDateMillis2)) || ($changed & 6) == 4) | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(initialDisplayedMonthMillis2)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | $composer.changedInstance(yearRange2) | ((((57344 & $changed) ^ 24576) > 16384 && $composer.changed(initialDisplayMode2)) || ($changed & 24576) == 16384);
        if ((((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072 || !$composer.changed(selectableDates2)) && ($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
            z = false;
        }
        boolean invalid$iv = zChangedInstance | z | $composer.changedInstance(locale);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            value$iv = (Function0) new Function0<DateRangePickerStateImpl>() { // from class: androidx.compose.material3.DateRangePickerKt$rememberDateRangePickerState$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final DateRangePickerStateImpl invoke() {
                    return new DateRangePickerStateImpl(initialSelectedStartDateMillis2, initialSelectedEndDateMillis2, initialDisplayedMonthMillis2, yearRange2, initialDisplayMode2, selectableDates2, locale, null);
                }
            };
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        DateRangePickerStateImpl dateRangePickerStateImpl = (DateRangePickerStateImpl) RememberSaveableKt.m4137rememberSaveable(objArr, (Saver) Saver, (String) null, (Function0) value$iv, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return dateRangePickerStateImpl;
    }

    /* JADX INFO: renamed from: DateRangePickerState-HVP43zI$default, reason: not valid java name */
    public static /* synthetic */ DateRangePickerState m2327DateRangePickerStateHVP43zI$default(Locale locale, Long l, Long l2, Long l3, IntRange intRange, int i, SelectableDates selectableDates, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            l = null;
        }
        if ((i2 & 4) != 0) {
            l2 = null;
        }
        if ((i2 & 8) != 0) {
            l3 = l;
        }
        if ((i2 & 16) != 0) {
            intRange = DatePickerDefaults.INSTANCE.getYearRange();
        }
        if ((i2 & 32) != 0) {
            i = DisplayMode.INSTANCE.m2352getPickerjFl4v0();
        }
        if ((i2 & 64) != 0) {
            selectableDates = DatePickerDefaults.INSTANCE.getAllDates();
        }
        return m2326DateRangePickerStateHVP43zI(locale, l, l2, l3, intRange, i, selectableDates);
    }

    /* JADX INFO: renamed from: DateRangePickerState-HVP43zI, reason: not valid java name */
    public static final DateRangePickerState m2326DateRangePickerStateHVP43zI(Locale locale, Long initialSelectedStartDateMillis, Long initialSelectedEndDateMillis, Long initialDisplayedMonthMillis, IntRange yearRange, int initialDisplayMode, SelectableDates selectableDates) {
        return new DateRangePickerStateImpl(initialSelectedStartDateMillis, initialSelectedEndDateMillis, initialDisplayedMonthMillis, yearRange, initialDisplayMode, selectableDates, locale, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: SwitchableDateEntryContent-RN-2D1Q, reason: not valid java name */
    public static final void m2328SwitchableDateEntryContentRN2D1Q(final Long selectedStartDateMillis, final Long selectedEndDateMillis, final long displayedMonthMillis, int displayMode, final Function2<? super Long, ? super Long, Unit> function2, final Function1<? super Long, Unit> function1, final CalendarModel calendarModel, final IntRange yearRange, final DatePickerFormatter dateFormatter, final SelectableDates selectableDates, final DatePickerColors colors, Composer $composer, final int $changed, final int $changed1) {
        Long l;
        long j;
        int i;
        Function2<? super Long, ? super Long, Unit> function22;
        Function1<? super Long, Unit> function12;
        CalendarModel calendarModel2;
        IntRange intRange;
        DatePickerColors datePickerColors;
        int $dirty;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-532789335);
        ComposerKt.sourceInformation($composer3, "C(SwitchableDateEntryContent)P(9,8,4,3:c#material3.DisplayMode,5,6!1,10,2,7)672@30082L1249,664@29854L1477:DateRangePicker.kt#uh7d8r");
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(selectedStartDateMillis) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            l = selectedEndDateMillis;
            $dirty2 |= $composer3.changed(l) ? 32 : 16;
        } else {
            l = selectedEndDateMillis;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            j = displayedMonthMillis;
            $dirty2 |= $composer3.changed(j) ? 256 : 128;
        } else {
            j = displayedMonthMillis;
        }
        if (($changed & 3072) == 0) {
            i = displayMode;
            $dirty2 |= $composer3.changed(i) ? 2048 : 1024;
        } else {
            i = displayMode;
        }
        if (($changed & 24576) == 0) {
            function22 = function2;
            $dirty2 |= $composer3.changedInstance(function22) ? 16384 : 8192;
        } else {
            function22 = function2;
        }
        if ((196608 & $changed) == 0) {
            function12 = function1;
            $dirty2 |= $composer3.changedInstance(function12) ? 131072 : 65536;
        } else {
            function12 = function1;
        }
        if ((1572864 & $changed) == 0) {
            calendarModel2 = calendarModel;
            $dirty2 |= $composer3.changedInstance(calendarModel2) ? 1048576 : 524288;
        } else {
            calendarModel2 = calendarModel;
        }
        if (($changed & 12582912) == 0) {
            intRange = yearRange;
            $dirty2 |= $composer3.changedInstance(intRange) ? 8388608 : 4194304;
        } else {
            intRange = yearRange;
        }
        if (($changed & 100663296) == 0) {
            $dirty2 |= ($changed & C.BUFFER_FLAG_FIRST_SAMPLE) == 0 ? $composer3.changed(dateFormatter) : $composer3.changedInstance(dateFormatter) ? 67108864 : 33554432;
        }
        if (($changed & 805306368) == 0) {
            $dirty2 |= $composer3.changed(selectableDates) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($changed1 & 6) == 0) {
            datePickerColors = colors;
            $dirty1 |= $composer3.changed(datePickerColors) ? 4 : 2;
        } else {
            datePickerColors = colors;
        }
        if (($dirty2 & 306783379) != 306783378 || ($dirty1 & 3) != 2 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-532789335, $dirty2, $dirty1, "androidx.compose.material3.SwitchableDateEntryContent (DateRangePicker.kt:661)");
            }
            int $dirty3 = $dirty2;
            final long j2 = j;
            final IntRange intRange2 = intRange;
            final Long l2 = l;
            final Function1<? super Long, Unit> function13 = function12;
            final CalendarModel calendarModel3 = calendarModel2;
            $dirty = $dirty3;
            final DatePickerColors datePickerColors2 = datePickerColors;
            final Function2<? super Long, ? super Long, Unit> function23 = function22;
            CrossfadeKt.Crossfade(DisplayMode.m2344boximpl(i), SemanticsModifierKt.semantics$default(Modifier.INSTANCE, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$SwitchableDateEntryContent$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                    SemanticsPropertiesKt.setContainer($this$semantics, true);
                }
            }, 1, null), AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null), (String) null, ComposableLambdaKt.rememberComposableLambda(-1026642619, true, new Function3<DisplayMode, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$SwitchableDateEntryContent$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(DisplayMode displayMode2, Composer composer, Integer num) {
                    m2333invokeQujVXRc(displayMode2.getValue(), composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke-QujVXRc, reason: not valid java name */
                public final void m2333invokeQujVXRc(int mode, Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "CP(0:c#material3.DisplayMode):DateRangePicker.kt#uh7d8r");
                    int $dirty4 = $changed2;
                    if (($changed2 & 6) == 0) {
                        $dirty4 |= $composer4.changed(mode) ? 4 : 2;
                    }
                    int $dirty5 = $dirty4;
                    if (($dirty5 & 19) != 18 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1026642619, $dirty5, -1, "androidx.compose.material3.SwitchableDateEntryContent.<anonymous> (DateRangePicker.kt:673)");
                        }
                        if (DisplayMode.m2347equalsimpl0(mode, DisplayMode.INSTANCE.m2352getPickerjFl4v0())) {
                            $composer4.startReplaceGroup(-1871305297);
                            ComposerKt.sourceInformation($composer4, "675@30164L618");
                            DateRangePickerKt.DateRangePickerContent(selectedStartDateMillis, l2, j2, function23, function13, calendarModel3, intRange2, dateFormatter, selectableDates, datePickerColors2, $composer4, 0);
                            $composer4.endReplaceGroup();
                        } else if (DisplayMode.m2347equalsimpl0(mode, DisplayMode.INSTANCE.m2351getInputjFl4v0())) {
                            $composer4.startReplaceGroup(-1871284056);
                            ComposerKt.sourceInformation($composer4, "688@30832L483");
                            DateRangeInputKt.DateRangeInputContent(selectedStartDateMillis, l2, function23, calendarModel3, intRange2, dateFormatter, selectableDates, datePickerColors2, $composer4, 0);
                            $composer4.endReplaceGroup();
                        } else {
                            $composer4.startReplaceGroup(2120210493);
                            $composer4.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer3, (($dirty >> 9) & 14) | 24960, 8);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $dirty = $dirty2;
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final int i2 = i;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$SwitchableDateEntryContent$3
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

                public final void invoke(Composer composer, int i3) {
                    DateRangePickerKt.m2328SwitchableDateEntryContentRN2D1Q(selectedStartDateMillis, selectedEndDateMillis, displayedMonthMillis, i2, function2, function1, calendarModel, yearRange, dateFormatter, selectableDates, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DateRangePickerContent(final Long selectedStartDateMillis, final Long selectedEndDateMillis, final long displayedMonthMillis, final Function2<? super Long, ? super Long, Unit> function2, final Function1<? super Long, Unit> function1, final CalendarModel calendarModel, final IntRange yearRange, final DatePickerFormatter dateFormatter, final SelectableDates selectableDates, final DatePickerColors colors, Composer $composer, final int $changed) {
        Long l;
        Function2<? super Long, ? super Long, Unit> function22;
        Function1<? super Long, Unit> function12;
        Function0<ComposeUiNode> function0;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-787063721);
        ComposerKt.sourceInformation($composer3, "C(DateRangePickerContent)P(8,7,3,4,5!1,9,2,6)718@31942L87,719@32034L648:DateRangePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(selectedStartDateMillis) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            l = selectedEndDateMillis;
            $dirty |= $composer3.changed(l) ? 32 : 16;
        } else {
            l = selectedEndDateMillis;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changed(displayedMonthMillis) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            function22 = function2;
            $dirty |= $composer3.changedInstance(function22) ? 2048 : 1024;
        } else {
            function22 = function2;
        }
        if (($changed & 24576) == 0) {
            function12 = function1;
            $dirty |= $composer3.changedInstance(function12) ? 16384 : 8192;
        } else {
            function12 = function1;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(calendarModel) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(yearRange) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= (16777216 & $changed) == 0 ? $composer3.changed(dateFormatter) : $composer3.changedInstance(dateFormatter) ? 8388608 : 4194304;
        }
        if ((100663296 & $changed) == 0) {
            $dirty |= $composer3.changed(selectableDates) ? 67108864 : 33554432;
        }
        if (($changed & 805306368) == 0) {
            $dirty |= $composer3.changed(colors) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($dirty & 306783379) != 306783378 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-787063721, $dirty, -1, "androidx.compose.material3.DateRangePickerContent (DateRangePicker.kt:715)");
            }
            CalendarMonth displayedMonth = calendarModel.getMonth(displayedMonthMillis);
            LazyListState monthsListState = LazyListStateKt.rememberLazyListState(displayedMonth.indexIn(yearRange), 0, $composer3, 0, 2);
            Modifier modifier$iv = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer3, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
            Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
            int $changed$iv = ((6 >> 3) & 14) | ((6 >> 3) & 112);
            MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer3, $changed$iv);
            int $changed$iv$iv = (6 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                $composer2 = $composer3;
            } else {
                $composer2 = $composer3;
                if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i = ($changed$iv$iv$iv >> 6) & 14;
                Composer $composer$iv = $composer2;
                ComposerKt.sourceInformationMarkerStart($composer$iv, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                int i2 = ((6 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer$iv, 556336155, "C720@32122L31,721@32162L514:DateRangePicker.kt#uh7d8r");
                DatePickerKt.WeekDays(colors, calendarModel, $composer$iv, (($dirty >> 27) & 14) | (($dirty >> 12) & 112));
                VerticalMonthsList(monthsListState, selectedStartDateMillis, l, function22, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, $composer$iv, (($dirty << 3) & 112) | (($dirty << 3) & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty) | (1879048192 & $dirty));
                ComposerKt.sourceInformationMarkerEnd($composer$iv);
                ComposerKt.sourceInformationMarkerEnd($composer$iv);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i3 = ($changed$iv$iv$iv >> 6) & 14;
            Composer $composer$iv2 = $composer2;
            ComposerKt.sourceInformationMarkerStart($composer$iv2, -384862393, "C87@4365L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            int i22 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer$iv2, 556336155, "C720@32122L31,721@32162L514:DateRangePicker.kt#uh7d8r");
            DatePickerKt.WeekDays(colors, calendarModel, $composer$iv2, (($dirty >> 27) & 14) | (($dirty >> 12) & 112));
            VerticalMonthsList(monthsListState, selectedStartDateMillis, l, function22, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, $composer$iv2, (($dirty << 3) & 112) | (($dirty << 3) & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty) | (1879048192 & $dirty));
            ComposerKt.sourceInformationMarkerEnd($composer$iv2);
            ComposerKt.sourceInformationMarkerEnd($composer$iv2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePickerContent.2
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

                public final void invoke(Composer composer, int i4) {
                    DateRangePickerKt.DateRangePickerContent(selectedStartDateMillis, selectedEndDateMillis, displayedMonthMillis, function2, function1, calendarModel, yearRange, dateFormatter, selectableDates, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void VerticalMonthsList(final LazyListState lazyListState, final Long selectedStartDateMillis, final Long selectedEndDateMillis, final Function2<? super Long, ? super Long, Unit> function2, final Function1<? super Long, Unit> function1, final CalendarModel calendarModel, final IntRange yearRange, final DatePickerFormatter dateFormatter, final SelectableDates selectableDates, final DatePickerColors colors, Composer $composer, final int $changed) {
        Long l;
        Long l2;
        final SelectableDates selectableDates2;
        DateRangePickerKt$VerticalMonthsList$2$1 value$iv;
        final LazyListState lazyListState2 = lazyListState;
        Composer $composer2 = $composer.startRestartGroup(1257365001);
        ComposerKt.sourceInformation($composer2, "C(VerticalMonthsList)P(3,8,7,4,5!1,9,2,6)756@33410L158,762@33630L5,762@33637L3748,762@33573L3812,839@37420L228,839@37390L258:DateRangePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(lazyListState2) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            l = selectedStartDateMillis;
            $dirty |= $composer2.changed(l) ? 32 : 16;
        } else {
            l = selectedStartDateMillis;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            l2 = selectedEndDateMillis;
            $dirty |= $composer2.changed(l2) ? 256 : 128;
        } else {
            l2 = selectedEndDateMillis;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer2.changedInstance(function1) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(calendarModel) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(yearRange) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= (16777216 & $changed) == 0 ? $composer2.changed(dateFormatter) : $composer2.changedInstance(dateFormatter) ? 8388608 : 4194304;
        }
        if ((100663296 & $changed) == 0) {
            selectableDates2 = selectableDates;
            $dirty |= $composer2.changed(selectableDates2) ? 67108864 : 33554432;
        } else {
            selectableDates2 = selectableDates;
        }
        if ((805306368 & $changed) == 0) {
            $dirty |= $composer2.changed(colors) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($dirty & 306783379) != 306783378 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1257365001, $dirty, -1, "androidx.compose.material3.VerticalMonthsList (DateRangePicker.kt:753)");
            }
            final CalendarDate today = calendarModel.getToday();
            ComposerKt.sourceInformationMarkerStart($composer2, -2140165432, "CC(remember):DateRangePicker.kt#9igjgp");
            boolean invalid$iv = $composer2.changed(yearRange);
            Object value$iv2 = $composer2.rememberedValue();
            if (invalid$iv || value$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = calendarModel.getMonth(yearRange.getFirst(), 1);
                $composer2.updateRememberedValue(value$iv2);
            }
            final CalendarMonth firstMonth = (CalendarMonth) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $dirty2 = $dirty;
            final Long l3 = l;
            final Long l4 = l2;
            TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getDateLabelTextFont(), $composer2, 6), ComposableLambdaKt.rememberComposableLambda(1090773432, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.VerticalMonthsList.1
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

                /* JADX WARN: Removed duplicated region for block: B:32:0x01c0  */
                /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(Composer $composer3, int $changed2) {
                    Object value$iv$iv;
                    Object value$iv3;
                    final DatePickerColors datePickerColors;
                    Object value$iv4;
                    ComposerKt.sourceInformation($composer3, "C763@33668L24,764@33734L59,765@33831L55,769@34067L317,794@35062L2317,786@34687L2692:DateRangePicker.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1090773432, $changed2, -1, "androidx.compose.material3.VerticalMonthsList.<anonymous> (DateRangePicker.kt:763)");
                        }
                        ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp");
                        ComposerKt.sourceInformationMarkerStart($composer3, -954363344, "CC(remember):Effects.kt#9igjgp");
                        Object it$iv$iv = $composer3.rememberedValue();
                        if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv$iv = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3));
                            $composer3.updateRememberedValue(value$iv$iv);
                        } else {
                            value$iv$iv = it$iv$iv;
                        }
                        CompositionScopedCoroutineScopeCanceller wrapper$iv = (CompositionScopedCoroutineScopeCanceller) value$iv$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        CoroutineScope coroutineScope = wrapper$iv.getCoroutineScope();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        Strings.Companion companion = Strings.INSTANCE;
                        String scrollToPreviousMonthLabel = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_scroll_to_previous_month), $composer3, 0);
                        Strings.Companion companion2 = Strings.INSTANCE;
                        String scrollToNextMonthLabel = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_scroll_to_next_month), $composer3, 0);
                        ComposerKt.sourceInformationMarkerStart($composer3, -522211194, "CC(remember):DateRangePicker.kt#9igjgp");
                        boolean invalid$iv2 = $composer3.changed(l3) | $composer3.changed(l4) | $composer3.changed(function2);
                        final Long l5 = l3;
                        final Long l6 = l4;
                        final Function2<Long, Long, Unit> function22 = function2;
                        Object it$iv = $composer3.rememberedValue();
                        if (invalid$iv2 || it$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv3 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$VerticalMonthsList$1$onDateSelectionChange$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Long l7) {
                                    invoke(l7.longValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(long dateInMillis) {
                                    DateRangePickerKt.updateDateSelection(dateInMillis, l5, l6, function22);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv3);
                        } else {
                            value$iv3 = it$iv;
                        }
                        final Function1 onDateSelectionChange = (Function1) value$iv3;
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        final List customAccessibilityAction = DateRangePickerKt.customScrollActions(lazyListState, coroutineScope, scrollToPreviousMonthLabel, scrollToNextMonthLabel);
                        Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(Modifier.INSTANCE, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.VerticalMonthsList.1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                SemanticsPropertiesKt.setVerticalScrollAxisRange($this$semantics, new ScrollAxisRange(new Function0<Float>() { // from class: androidx.compose.material3.DateRangePickerKt.VerticalMonthsList.1.1.1
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Float invoke() {
                                        return Float.valueOf(0.0f);
                                    }
                                }, new Function0<Float>() { // from class: androidx.compose.material3.DateRangePickerKt.VerticalMonthsList.1.1.2
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Float invoke() {
                                        return Float.valueOf(0.0f);
                                    }
                                }, false, 4, null));
                            }
                        }, 1, null);
                        LazyListState lazyListState3 = lazyListState;
                        ComposerKt.sourceInformationMarkerStart($composer3, -522177354, "CC(remember):DateRangePicker.kt#9igjgp");
                        boolean invalid$iv3 = $composer3.changedInstance(yearRange) | $composer3.changedInstance(calendarModel) | $composer3.changed(firstMonth) | $composer3.changedInstance(dateFormatter) | $composer3.changedInstance(customAccessibilityAction) | $composer3.changed(colors) | $composer3.changed(l3) | $composer3.changed(l4) | $composer3.changed(onDateSelectionChange) | $composer3.changed(today) | $composer3.changed(selectableDates2);
                        final IntRange intRange = yearRange;
                        final CalendarModel calendarModel2 = calendarModel;
                        final CalendarMonth calendarMonth = firstMonth;
                        final Long l7 = l3;
                        final Long l8 = l4;
                        final CalendarDate calendarDate = today;
                        final DatePickerFormatter datePickerFormatter = dateFormatter;
                        final SelectableDates selectableDates3 = selectableDates2;
                        DatePickerColors datePickerColors2 = colors;
                        Object it$iv2 = $composer3.rememberedValue();
                        if (!invalid$iv3) {
                            datePickerColors = datePickerColors2;
                            if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                                value$iv4 = it$iv2;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            LazyDslKt.LazyColumn(modifierSemantics$default, lazyListState3, null, false, null, null, null, false, (Function1) value$iv4, $composer3, 0, 252);
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        datePickerColors = datePickerColors2;
                        value$iv4 = new Function1<LazyListScope, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$VerticalMonthsList$1$2$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(LazyListScope lazyListScope) {
                                invoke2(lazyListScope);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(LazyListScope $this$LazyColumn) {
                                int iNumberOfMonthsInRange = DatePickerKt.numberOfMonthsInRange(intRange);
                                final CalendarModel calendarModel3 = calendarModel2;
                                final CalendarMonth calendarMonth2 = calendarMonth;
                                final Long l9 = l7;
                                final Long l10 = l8;
                                final Function1<Long, Unit> function12 = onDateSelectionChange;
                                final CalendarDate calendarDate2 = calendarDate;
                                final DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
                                final SelectableDates selectableDates4 = selectableDates3;
                                final DatePickerColors datePickerColors3 = datePickerColors;
                                final List<CustomAccessibilityAction> list = customAccessibilityAction;
                                LazyListScope.items$default($this$LazyColumn, iNumberOfMonthsInRange, null, null, ComposableLambdaKt.composableLambdaInstance(-1413501381, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$VerticalMonthsList$1$2$1.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(4);
                                    }

                                    @Override // kotlin.jvm.functions.Function4
                                    public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                                        invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(LazyItemScope $this$items, int it, Composer $composer4, int $changed3) {
                                        Function0<ComposeUiNode> function0;
                                        Composer $composer5;
                                        SelectedRangeInfo rangeSelectionInfo;
                                        Object value$iv5;
                                        ComposerKt.sourceInformation($composer4, "C797@35229L2126:DateRangePicker.kt#uh7d8r");
                                        int $dirty3 = $changed3;
                                        if (($changed3 & 6) == 0) {
                                            $dirty3 |= $composer4.changed($this$items) ? 4 : 2;
                                        }
                                        if (($changed3 & 48) == 0) {
                                            $dirty3 |= $composer4.changed(it) ? 32 : 16;
                                        }
                                        if (($dirty3 & 147) != 146 || !$composer4.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1413501381, $dirty3, -1, "androidx.compose.material3.VerticalMonthsList.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DateRangePicker.kt:796)");
                                            }
                                            final CalendarMonth month = calendarModel3.plusMonths(calendarMonth2, it);
                                            Modifier modifier$iv = LazyItemScope.fillParentMaxWidth$default($this$items, Modifier.INSTANCE, 0.0f, 1, null);
                                            Long l11 = l9;
                                            Long l12 = l10;
                                            Function1<Long, Unit> function13 = function12;
                                            CalendarDate calendarDate3 = calendarDate2;
                                            final DatePickerFormatter datePickerFormatter3 = datePickerFormatter2;
                                            SelectableDates selectableDates5 = selectableDates4;
                                            final DatePickerColors datePickerColors4 = datePickerColors3;
                                            final List<CustomAccessibilityAction> list2 = list;
                                            CalendarModel calendarModel4 = calendarModel3;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                                            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                                            Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                                            MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                            int $changed$iv$iv = (0 << 3) & 112;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                            CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                                            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                            if (!($composer4.getApplier() instanceof Applier)) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            $composer4.startReusableNode();
                                            if ($composer4.getInserting()) {
                                                function0 = constructor;
                                                $composer4.createNode(function0);
                                            } else {
                                                function0 = constructor;
                                                $composer4.useNode();
                                            }
                                            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                                                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                                            }
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                            int i = ($changed$iv$iv$iv >> 6) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                            int i2 = ((0 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer4, 1459498729, "C798@35370L5,798@35377L623,798@35300L700,824@36791L546:DateRangePicker.kt#uh7d8r");
                                            TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getRangeSelectionMonthSubheadFont(), $composer4, 6), ComposableLambdaKt.rememberComposableLambda(1622100276, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$VerticalMonthsList$1$2$1$1$1$1
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(2);
                                                }

                                                @Override // kotlin.jvm.functions.Function2
                                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                                    invoke(composer, num.intValue());
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(Composer $composer6, int $changed4) {
                                                    Object value$iv6;
                                                    ComposerKt.sourceInformation($composer6, "C803@35605L15,807@35843L45,799@35403L575:DateRangePicker.kt#uh7d8r");
                                                    if (($changed4 & 3) != 2 || !$composer6.getSkipping()) {
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(1622100276, $changed4, -1, "androidx.compose.material3.VerticalMonthsList.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DateRangePicker.kt:799)");
                                                        }
                                                        String monthYear = datePickerFormatter3.formatMonthYear(Long.valueOf(month.getStartUtcTimeMillis()), CalendarLocale_androidKt.defaultLocale($composer6, 0));
                                                        if (monthYear == null) {
                                                            monthYear = "-";
                                                        }
                                                        Modifier modifierPadding = PaddingKt.padding(Modifier.INSTANCE, DateRangePickerKt.getCalendarMonthSubheadPadding());
                                                        ComposerKt.sourceInformationMarkerStart($composer6, -77518095, "CC(remember):DateRangePicker.kt#9igjgp");
                                                        boolean invalid$iv4 = $composer6.changedInstance(list2);
                                                        final List<CustomAccessibilityAction> list3 = list2;
                                                        Object it$iv3 = $composer6.rememberedValue();
                                                        if (invalid$iv4 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                                            value$iv6 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt$VerticalMonthsList$1$2$1$1$1$1$1$1
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
                                                                    SemanticsPropertiesKt.setCustomActions($this$semantics, list3);
                                                                }
                                                            };
                                                            $composer6.updateRememberedValue(value$iv6);
                                                        } else {
                                                            value$iv6 = it$iv3;
                                                        }
                                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                                        TextKt.m2976Text4IGK_g(monthYear, SemanticsModifierKt.semantics$default(modifierPadding, false, (Function1) value$iv6, 1, null), datePickerColors4.getSubheadContentColor(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer6, 0, 0, 131064);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    $composer6.skipToGroupEnd();
                                                }
                                            }, $composer4, 54), $composer4, 48);
                                            $composer4.startReplaceGroup(2125314509);
                                            ComposerKt.sourceInformation($composer4, "813@36190L488");
                                            if (l11 == null || l12 == null) {
                                                $composer5 = $composer4;
                                                rangeSelectionInfo = null;
                                            } else {
                                                ComposerKt.sourceInformationMarkerStart($composer4, 2125317517, "CC(remember):DateRangePicker.kt#9igjgp");
                                                boolean invalid$iv4 = $composer4.changed(l11) | $composer4.changed(l12);
                                                Object it$iv3 = $composer4.rememberedValue();
                                                if (invalid$iv4 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                                    $composer5 = $composer4;
                                                    value$iv5 = SelectedRangeInfo.INSTANCE.calculateRangeInfo(month, calendarModel4.getCanonicalDate(l11.longValue()), calendarModel4.getCanonicalDate(l12.longValue()));
                                                    $composer4.updateRememberedValue(value$iv5);
                                                } else {
                                                    $composer5 = $composer4;
                                                    value$iv5 = it$iv3;
                                                }
                                                rangeSelectionInfo = (SelectedRangeInfo) value$iv5;
                                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                            }
                                            $composer5.endReplaceGroup();
                                            Composer $composer6 = $composer5;
                                            DatePickerKt.Month(month, function13, calendarDate3.getUtcTimeMillis(), l11, l12, rangeSelectionInfo, datePickerFormatter3, selectableDates5, datePickerColors4, $composer6, 0);
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer4.skipToGroupEnd();
                                    }
                                }), 6, null);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv4);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        LazyDslKt.LazyColumn(modifierSemantics$default, lazyListState3, null, false, null, null, null, false, (Function1) value$iv4, $composer3, 0, 252);
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer3.skipToGroupEnd();
                    }
                }
            }, $composer2, 54), $composer2, 48);
            ComposerKt.sourceInformationMarkerStart($composer2, -2140037042, "CC(remember):DateRangePicker.kt#9igjgp");
            boolean invalid$iv2 = (($dirty2 & 14) == 4) | ((57344 & $dirty2) == 16384) | $composer2.changedInstance(calendarModel) | $composer2.changedInstance(yearRange);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv == Composer.INSTANCE.getEmpty()) {
                lazyListState2 = lazyListState;
                value$iv = new DateRangePickerKt$VerticalMonthsList$2$1(lazyListState2, function1, calendarModel, yearRange, null);
                $composer2.updateRememberedValue(value$iv);
            } else {
                lazyListState2 = lazyListState;
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(lazyListState2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv, $composer2, $dirty2 & 14);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangePickerKt.VerticalMonthsList.3
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

                public final void invoke(Composer composer, int i) {
                    DateRangePickerKt.VerticalMonthsList(lazyListState2, selectedStartDateMillis, selectedEndDateMillis, function2, function1, calendarModel, yearRange, dateFormatter, selectableDates, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateDateSelection(long dateInMillis, Long currentStartDateMillis, Long currentEndDateMillis, Function2<? super Long, ? super Long, Unit> function2) {
        if ((currentStartDateMillis == null && currentEndDateMillis == null) || (currentStartDateMillis != null && currentEndDateMillis != null)) {
            function2.invoke(Long.valueOf(dateInMillis), null);
        } else if (currentStartDateMillis == null || dateInMillis < currentStartDateMillis.longValue()) {
            function2.invoke(Long.valueOf(dateInMillis), null);
        } else {
            function2.invoke(currentStartDateMillis, Long.valueOf(dateInMillis));
        }
    }

    public static final PaddingValues getCalendarMonthSubheadPadding() {
        return CalendarMonthSubheadPadding;
    }

    /* JADX INFO: renamed from: drawRangeBackground-mxwnekA, reason: not valid java name */
    public static final void m2330drawRangeBackgroundmxwnekA(ContentDrawScope $this$drawRangeBackground_u2dmxwnekA, SelectedRangeInfo selectedRangeInfo, long color) {
        float fM4521getWidthimpl;
        ContentDrawScope contentDrawScope = $this$drawRangeBackground_u2dmxwnekA;
        float itemContainerWidth = contentDrawScope.mo405toPx0680j_4(DatePickerKt.getRecommendedSizeForAccessibility());
        float itemContainerHeight = contentDrawScope.mo405toPx0680j_4(DatePickerKt.getRecommendedSizeForAccessibility());
        float itemStateLayerHeight = contentDrawScope.mo405toPx0680j_4(DatePickerModalTokens.INSTANCE.m3426getDateStateLayerHeightD9Ej5fM());
        float f = 2;
        float stateLayerVerticalPadding = (itemContainerHeight - itemStateLayerHeight) / f;
        float f2 = 7;
        float horizontalSpaceBetweenItems = (Size.m4521getWidthimpl(contentDrawScope.mo5271getSizeNHjbRc()) - (f2 * itemContainerWidth)) / f2;
        long gridStartCoordinates = selectedRangeInfo.getGridStartCoordinates();
        int iM7633getXimpl = IntOffset.m7633getXimpl(gridStartCoordinates);
        int y1 = IntOffset.m7634getYimpl(gridStartCoordinates);
        long gridEndCoordinates = selectedRangeInfo.getGridEndCoordinates();
        int iM7633getXimpl2 = IntOffset.m7633getXimpl(gridEndCoordinates);
        int y2 = IntOffset.m7634getYimpl(gridEndCoordinates);
        float startX = (iM7633getXimpl * (itemContainerWidth + horizontalSpaceBetweenItems)) + (selectedRangeInfo.getFirstIsSelectionStart() ? itemContainerWidth / f : 0.0f) + (horizontalSpaceBetweenItems / f);
        float startY = (y1 * itemContainerHeight) + stateLayerVerticalPadding;
        float endX = (iM7633getXimpl2 * (itemContainerWidth + horizontalSpaceBetweenItems)) + (selectedRangeInfo.getLastIsSelectionEnd() ? itemContainerWidth / f : itemContainerWidth) + (horizontalSpaceBetweenItems / f);
        float endY = (y2 * itemContainerHeight) + stateLayerVerticalPadding;
        boolean isRtl = contentDrawScope.getLayoutDirection() == LayoutDirection.Rtl;
        if (isRtl) {
            startX = Size.m4521getWidthimpl(contentDrawScope.mo5271getSizeNHjbRc()) - startX;
            endX = Size.m4521getWidthimpl(contentDrawScope.mo5271getSizeNHjbRc()) - endX;
        }
        ContentDrawScope contentDrawScope2 = contentDrawScope;
        long jOffset = OffsetKt.Offset(startX, startY);
        if (y1 == y2) {
            fM4521getWidthimpl = endX - startX;
        } else {
            fM4521getWidthimpl = isRtl ? -startX : Size.m4521getWidthimpl(contentDrawScope.mo5271getSizeNHjbRc()) - startX;
        }
        DrawScope.m5265drawRectnJ9OG0$default(contentDrawScope2, color, jOffset, SizeKt.Size(fM4521getWidthimpl, itemStateLayerHeight), 0.0f, null, null, 0, 120, null);
        if (y1 != y2) {
            int y = (y2 - y1) - 1;
            while (y > 0) {
                DrawScope.m5265drawRectnJ9OG0$default(contentDrawScope, color, OffsetKt.Offset(0.0f, (y * itemContainerHeight) + startY), SizeKt.Size(Size.m4521getWidthimpl($this$drawRangeBackground_u2dmxwnekA.mo5271getSizeNHjbRc()), itemStateLayerHeight), 0.0f, null, null, 0, 120, null);
                y--;
                contentDrawScope = $this$drawRangeBackground_u2dmxwnekA;
                itemContainerWidth = itemContainerWidth;
            }
            float topLeftX = $this$drawRangeBackground_u2dmxwnekA.getLayoutDirection() == LayoutDirection.Ltr ? 0.0f : Size.m4521getWidthimpl($this$drawRangeBackground_u2dmxwnekA.mo5271getSizeNHjbRc());
            DrawScope.m5265drawRectnJ9OG0$default($this$drawRangeBackground_u2dmxwnekA, color, OffsetKt.Offset(topLeftX, endY), SizeKt.Size(isRtl ? endX - Size.m4521getWidthimpl($this$drawRangeBackground_u2dmxwnekA.mo5271getSizeNHjbRc()) : endX, itemStateLayerHeight), 0.0f, null, null, 0, 120, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<CustomAccessibilityAction> customScrollActions(final LazyListState state, final CoroutineScope coroutineScope, String scrollUpLabel, String scrollDownLabel) {
        return CollectionsKt.listOf((Object[]) new CustomAccessibilityAction[]{new CustomAccessibilityAction(scrollUpLabel, new Function0<Boolean>() { // from class: androidx.compose.material3.DateRangePickerKt$customScrollActions$scrollUpAction$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                boolean z;
                if (state.getCanScrollBackward()) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(state, null), 3, null);
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }

            /* JADX INFO: renamed from: androidx.compose.material3.DateRangePickerKt$customScrollActions$scrollUpAction$1$1, reason: invalid class name */
            /* JADX INFO: compiled from: DateRangePicker.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.DateRangePickerKt$customScrollActions$scrollUpAction$1$1", f = "DateRangePicker.kt", i = {}, l = {AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ LazyListState $state;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(LazyListState lazyListState, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$state = lazyListState;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$state, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            if (LazyListState.scrollToItem$default(this.$state, this.$state.getFirstVisibleItemIndex() - 1, 0, this, 2, null) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return Unit.INSTANCE;
                }
            }
        }), new CustomAccessibilityAction(scrollDownLabel, new Function0<Boolean>() { // from class: androidx.compose.material3.DateRangePickerKt$customScrollActions$scrollDownAction$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                boolean z;
                if (state.getCanScrollForward()) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(state, null), 3, null);
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }

            /* JADX INFO: renamed from: androidx.compose.material3.DateRangePickerKt$customScrollActions$scrollDownAction$1$1, reason: invalid class name */
            /* JADX INFO: compiled from: DateRangePicker.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.DateRangePickerKt$customScrollActions$scrollDownAction$1$1", f = "DateRangePicker.kt", i = {}, l = {1040}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ LazyListState $state;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(LazyListState lazyListState, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$state = lazyListState;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$state, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            if (LazyListState.scrollToItem$default(this.$state, this.$state.getFirstVisibleItemIndex() + 1, 0, this, 2, null) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return Unit.INSTANCE;
                }
            }
        })});
    }
}
