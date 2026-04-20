package androidx.compose.material3;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
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
import androidx.media3.exoplayer.RendererCapabilities;
import com.google.firebase.database.core.ValidationPath;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: DateRangeInput.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0085\u0001\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062:\u0010\b\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0015\u0012\u0013\u0018\u00010\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00040\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0001¢\u0006\u0002\u0010\u0018\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002¨\u0006\u0019"}, d2 = {"TextFieldSpacing", "Landroidx/compose/ui/unit/Dp;", "F", "DateRangeInputContent", "", "selectedStartDateMillis", "", "selectedEndDateMillis", "onDatesSelectionChange", "Lkotlin/Function2;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "startDateMillis", "endDateMillis", "calendarModel", "Landroidx/compose/material3/internal/CalendarModel;", "yearRange", "Lkotlin/ranges/IntRange;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "selectableDates", "Landroidx/compose/material3/SelectableDates;", "colors", "Landroidx/compose/material3/DatePickerColors;", "(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class DateRangeInputKt {
    private static final float TextFieldSpacing = Dp.m7505constructorimpl(8);

    /* JADX WARN: Removed duplicated region for block: B:102:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DateRangeInputContent(final Long selectedStartDateMillis, final Long selectedEndDateMillis, final Function2<? super Long, ? super Long, Unit> function2, final CalendarModel calendarModel, final IntRange yearRange, final DatePickerFormatter dateFormatter, final SelectableDates selectableDates, final DatePickerColors colors, Composer $composer, final int $changed) {
        IntRange intRange;
        SelectableDates selectableDates2;
        DatePickerColors datePickerColors;
        Object value$iv;
        DateInputFormat dateInputFormat;
        Object value$iv2;
        int compositeKeyHash$iv$iv;
        Function0<ComposeUiNode> function0;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        boolean invalid$iv;
        Composer $composer2;
        Composer $composer3;
        Modifier modifierWeight$default;
        boolean invalid$iv2;
        Modifier modifier;
        Object value$iv3;
        Composer $composer4 = $composer.startRestartGroup(-607499086);
        ComposerKt.sourceInformation($composer4, "C(DateRangeInputContent)P(6,5,3!1,7,2,4)45@1775L15,47@1825L75,48@1928L45,49@2008L44,50@2086L45,51@2160L50,53@2248L530,70@2991L2331:DateRangeInput.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer4.changed(selectedStartDateMillis) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer4.changed(selectedEndDateMillis) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer4.changedInstance(function2) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer4.changedInstance(calendarModel) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            intRange = yearRange;
            $dirty |= $composer4.changedInstance(intRange) ? 16384 : 8192;
        } else {
            intRange = yearRange;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= ($changed & 262144) == 0 ? $composer4.changed(dateFormatter) : $composer4.changedInstance(dateFormatter) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            selectableDates2 = selectableDates;
            $dirty |= $composer4.changed(selectableDates2) ? 1048576 : 524288;
        } else {
            selectableDates2 = selectableDates;
        }
        if (($changed & 12582912) == 0) {
            datePickerColors = colors;
            $dirty |= $composer4.changed(datePickerColors) ? 8388608 : 4194304;
        } else {
            datePickerColors = colors;
        }
        if (($dirty & 4793491) != 4793490 || !$composer4.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-607499086, $dirty, -1, "androidx.compose.material3.DateRangeInputContent (DateRangeInput.kt:43)");
            }
            Locale defaultLocale = CalendarLocale_androidKt.defaultLocale($composer4, 0);
            ComposerKt.sourceInformationMarkerStart($composer4, 998328518, "CC(remember):DateRangeInput.kt#9igjgp");
            boolean invalid$iv3 = $composer4.changed(defaultLocale);
            Object it$iv = $composer4.rememberedValue();
            if (invalid$iv3 || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = calendarModel.getDateInputFormat(defaultLocale);
                $composer4.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            DateInputFormat dateInputFormat2 = (DateInputFormat) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer4);
            Strings.Companion companion = Strings.INSTANCE;
            String errorDatePattern = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_input_invalid_for_pattern), $composer4, 0);
            Strings.Companion companion2 = Strings.INSTANCE;
            String errorDateOutOfYearRange = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_input_invalid_year_range), $composer4, 0);
            Strings.Companion companion3 = Strings.INSTANCE;
            String errorInvalidNotAllowed = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_input_invalid_not_allowed), $composer4, 0);
            Strings.Companion companion4 = Strings.INSTANCE;
            String errorInvalidRange = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_input_invalid_range_input), $composer4, 0);
            ComposerKt.sourceInformationMarkerStart($composer4, 998342509, "CC(remember):DateRangeInput.kt#9igjgp");
            boolean invalid$iv4 = $composer4.changed(dateInputFormat2) | ((458752 & $dirty) == 131072 || (($dirty & 262144) != 0 && $composer4.changed(dateFormatter)));
            Object it$iv2 = $composer4.rememberedValue();
            if (!invalid$iv4) {
                dateInputFormat = dateInputFormat2;
                if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                    value$iv2 = it$iv2;
                }
                DateInputValidator dateInputValidator = (DateInputValidator) value$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer4);
                dateInputValidator.setCurrentStartDateMillis$material3_release(selectedStartDateMillis);
                dateInputValidator.setCurrentEndDateMillis$material3_release(selectedEndDateMillis);
                Modifier modifier$iv = PaddingKt.padding(Modifier.INSTANCE, DateInputKt.getInputTextFieldPadding());
                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m688spacedBy0680j_4(TextFieldSpacing);
                ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv = (54 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer4.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer4.startReusableNode();
                if (!$composer4.getInserting()) {
                    function0 = constructor;
                    $composer4.createNode(function0);
                } else {
                    function0 = constructor;
                    $composer4.useNode();
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i = ($changed$iv$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer4, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                int i2 = ((54 >> 6) & 112) | 6;
                RowScope $this$DateRangeInputContent_u24lambda_u245 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer4, -1199006788, "C75@3252L56,88@3849L203,79@3446L218,86@3692L62,76@3317L972,98@4317L54,110@4882L199,102@4509L190,108@4727L62,99@4380L936:DateRangeInput.kt#uh7d8r");
                final String pattern = dateInputFormat.getPatternWithDelimiters().toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(pattern, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                Strings.Companion companion5 = Strings.INSTANCE;
                final String startRangeText = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_start_headline), $composer4, 0);
                Modifier modifierWeight$default2 = RowScope.weight$default($this$DateRangeInputContent_u24lambda_u245, Modifier.INSTANCE, 0.5f, false, 2, null);
                int iM2459getStartDateInputJ2x2o4M = InputIdentifier.INSTANCE.m2459getStartDateInputJ2x2o4M();
                ComposerKt.sourceInformationMarkerStart($composer4, 1485363141, "CC(remember):DateRangeInput.kt#9igjgp");
                invalid$iv = (($dirty & 896) != 256) | (($dirty & 112) != 32);
                Object value$iv4 = $composer4.rememberedValue();
                if (invalid$iv) {
                    $composer2 = $composer4;
                    if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    int $dirty2 = $dirty;
                    DatePickerColors datePickerColors2 = datePickerColors;
                    DateInputFormat dateInputFormat3 = dateInputFormat;
                    $composer3 = $composer2;
                    DateInputKt.m2276DateInputTextFieldtQNruF0(modifierWeight$default2, selectedStartDateMillis, (Function1) value$iv4, calendarModel, ComposableLambdaKt.rememberComposableLambda(801434508, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer5, int $changed2) {
                            Object value$iv5;
                            ComposerKt.sourceInformation($composer5, "C83@3580L52,80@3464L186:DateRangeInput.kt#uh7d8r");
                            if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(801434508, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:80)");
                                }
                                String str = startRangeText;
                                Modifier.Companion companion6 = Modifier.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer5, -1505886067, "CC(remember):DateRangeInput.kt#9igjgp");
                                boolean invalid$iv5 = $composer5.changed(startRangeText) | $composer5.changed(pattern);
                                final String str2 = startRangeText;
                                final String str3 = pattern;
                                Object it$iv3 = $composer5.rememberedValue();
                                if (invalid$iv5 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                    value$iv5 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$2$1$1
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
                                            SemanticsPropertiesKt.setContentDescription($this$semantics, str2 + ", " + str3);
                                        }
                                    };
                                    $composer5.updateRememberedValue(value$iv5);
                                } else {
                                    value$iv5 = it$iv3;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                TextKt.m2976Text4IGK_g(str, SemanticsModifierKt.semantics$default(companion6, false, (Function1) value$iv5, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer5.skipToGroupEnd();
                        }
                    }, $composer4, 54), ComposableLambdaKt.rememberComposableLambda(665407211, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer5, int $changed2) {
                            ComposerKt.sourceInformation($composer5, "C86@3694L58:DateRangeInput.kt#uh7d8r");
                            if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                                $composer5.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(665407211, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:86)");
                            }
                            TextKt.m2976Text4IGK_g(pattern, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$3.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                                }
                            }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer4, 54), iM2459getStartDateInputJ2x2o4M, dateInputValidator, dateInputFormat3, defaultLocale, datePickerColors2, $composer4, (($dirty << 3) & 112) | 1794048 | ($dirty & 7168), ($dirty >> 21) & 14);
                    Strings.Companion companion6 = Strings.INSTANCE;
                    final String endRangeText = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_end_headline), $composer4, 0);
                    modifierWeight$default = RowScope.weight$default($this$DateRangeInputContent_u24lambda_u245, Modifier.INSTANCE, 0.5f, false, 2, null);
                    int iM2457getEndDateInputJ2x2o4M = InputIdentifier.INSTANCE.m2457getEndDateInputJ2x2o4M();
                    ComposerKt.sourceInformationMarkerStart($composer4, 1485396193, "CC(remember):DateRangeInput.kt#9igjgp");
                    invalid$iv2 = (($dirty2 & 896) == 256) | (($dirty2 & 14) == 4);
                    Object it$iv3 = $composer4.rememberedValue();
                    if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                        modifier = modifierWeight$default;
                        value$iv3 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$4$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                invoke2(l);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Long endDateMillis) {
                                function2.invoke(selectedStartDateMillis, endDateMillis);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv3);
                    } else {
                        modifier = modifierWeight$default;
                        value$iv3 = it$iv3;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    DateInputKt.m2276DateInputTextFieldtQNruF0(modifier, selectedEndDateMillis, (Function1) value$iv3, calendarModel, ComposableLambdaKt.rememberComposableLambda(911487285, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$5
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer5, int $changed2) {
                            Object value$iv5;
                            ComposerKt.sourceInformation($composer5, "C105@4617L50,103@4527L158:DateRangeInput.kt#uh7d8r");
                            if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(911487285, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:103)");
                                }
                                String str = endRangeText;
                                Modifier.Companion companion7 = Modifier.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer5, -1505852885, "CC(remember):DateRangeInput.kt#9igjgp");
                                boolean invalid$iv5 = $composer5.changed(endRangeText) | $composer5.changed(pattern);
                                final String str2 = endRangeText;
                                final String str3 = pattern;
                                Object it$iv4 = $composer5.rememberedValue();
                                if (invalid$iv5 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                                    value$iv5 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$5$1$1
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
                                            SemanticsPropertiesKt.setContentDescription($this$semantics, str2 + ", " + str3);
                                        }
                                    };
                                    $composer5.updateRememberedValue(value$iv5);
                                } else {
                                    value$iv5 = it$iv4;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                TextKt.m2976Text4IGK_g(str, SemanticsModifierKt.semantics$default(companion7, false, (Function1) value$iv5, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer5.skipToGroupEnd();
                        }
                    }, $composer4, 54), ComposableLambdaKt.rememberComposableLambda(-961726252, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$6
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer5, int $changed2) {
                            ComposerKt.sourceInformation($composer5, "C108@4729L58:DateRangeInput.kt#uh7d8r");
                            if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                                $composer5.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-961726252, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:108)");
                            }
                            TextKt.m2976Text4IGK_g(pattern, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$6.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                                }
                            }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer4, 54), iM2457getEndDateInputJ2x2o4M, dateInputValidator, dateInputFormat3, defaultLocale, colors, $composer4, ($dirty2 & 7168) | ($dirty2 & 112) | 1794048, ($dirty2 >> 21) & 14);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    $composer2 = $composer4;
                }
                value$iv4 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke2(l);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Long startDateMillis) {
                        function2.invoke(startDateMillis, selectedEndDateMillis);
                    }
                };
                $composer4.updateRememberedValue(value$iv4);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                int $dirty22 = $dirty;
                DatePickerColors datePickerColors22 = datePickerColors;
                DateInputFormat dateInputFormat32 = dateInputFormat;
                $composer3 = $composer2;
                DateInputKt.m2276DateInputTextFieldtQNruF0(modifierWeight$default2, selectedStartDateMillis, (Function1) value$iv4, calendarModel, ComposableLambdaKt.rememberComposableLambda(801434508, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer5, int $changed2) {
                        Object value$iv5;
                        ComposerKt.sourceInformation($composer5, "C83@3580L52,80@3464L186:DateRangeInput.kt#uh7d8r");
                        if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(801434508, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:80)");
                            }
                            String str = startRangeText;
                            Modifier.Companion companion62 = Modifier.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer5, -1505886067, "CC(remember):DateRangeInput.kt#9igjgp");
                            boolean invalid$iv5 = $composer5.changed(startRangeText) | $composer5.changed(pattern);
                            final String str2 = startRangeText;
                            final String str3 = pattern;
                            Object it$iv32 = $composer5.rememberedValue();
                            if (invalid$iv5 || it$iv32 == Composer.INSTANCE.getEmpty()) {
                                value$iv5 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$2$1$1
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
                                        SemanticsPropertiesKt.setContentDescription($this$semantics, str2 + ", " + str3);
                                    }
                                };
                                $composer5.updateRememberedValue(value$iv5);
                            } else {
                                value$iv5 = it$iv32;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer5);
                            TextKt.m2976Text4IGK_g(str, SemanticsModifierKt.semantics$default(companion62, false, (Function1) value$iv5, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer5.skipToGroupEnd();
                    }
                }, $composer4, 54), ComposableLambdaKt.rememberComposableLambda(665407211, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer5, int $changed2) {
                        ComposerKt.sourceInformation($composer5, "C86@3694L58:DateRangeInput.kt#uh7d8r");
                        if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                            $composer5.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(665407211, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:86)");
                        }
                        TextKt.m2976Text4IGK_g(pattern, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$3.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                            }
                        }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, $composer4, 54), iM2459getStartDateInputJ2x2o4M, dateInputValidator, dateInputFormat32, defaultLocale, datePickerColors22, $composer4, (($dirty << 3) & 112) | 1794048 | ($dirty & 7168), ($dirty >> 21) & 14);
                Strings.Companion companion62 = Strings.INSTANCE;
                final String endRangeText2 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_end_headline), $composer4, 0);
                modifierWeight$default = RowScope.weight$default($this$DateRangeInputContent_u24lambda_u245, Modifier.INSTANCE, 0.5f, false, 2, null);
                int iM2457getEndDateInputJ2x2o4M2 = InputIdentifier.INSTANCE.m2457getEndDateInputJ2x2o4M();
                ComposerKt.sourceInformationMarkerStart($composer4, 1485396193, "CC(remember):DateRangeInput.kt#9igjgp");
                invalid$iv2 = (($dirty22 & 896) == 256) | (($dirty22 & 14) == 4);
                Object it$iv32 = $composer4.rememberedValue();
                if (invalid$iv2) {
                    modifier = modifierWeight$default;
                    value$iv3 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$4$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                            invoke2(l);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Long endDateMillis) {
                            function2.invoke(selectedStartDateMillis, endDateMillis);
                        }
                    };
                    $composer4.updateRememberedValue(value$iv3);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    DateInputKt.m2276DateInputTextFieldtQNruF0(modifier, selectedEndDateMillis, (Function1) value$iv3, calendarModel, ComposableLambdaKt.rememberComposableLambda(911487285, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$5
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer5, int $changed2) {
                            Object value$iv5;
                            ComposerKt.sourceInformation($composer5, "C105@4617L50,103@4527L158:DateRangeInput.kt#uh7d8r");
                            if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(911487285, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:103)");
                                }
                                String str = endRangeText2;
                                Modifier.Companion companion7 = Modifier.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer5, -1505852885, "CC(remember):DateRangeInput.kt#9igjgp");
                                boolean invalid$iv5 = $composer5.changed(endRangeText2) | $composer5.changed(pattern);
                                final String str2 = endRangeText2;
                                final String str3 = pattern;
                                Object it$iv4 = $composer5.rememberedValue();
                                if (invalid$iv5 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                                    value$iv5 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$5$1$1
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
                                            SemanticsPropertiesKt.setContentDescription($this$semantics, str2 + ", " + str3);
                                        }
                                    };
                                    $composer5.updateRememberedValue(value$iv5);
                                } else {
                                    value$iv5 = it$iv4;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                TextKt.m2976Text4IGK_g(str, SemanticsModifierKt.semantics$default(companion7, false, (Function1) value$iv5, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer5.skipToGroupEnd();
                        }
                    }, $composer4, 54), ComposableLambdaKt.rememberComposableLambda(-961726252, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$6
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer5, int $changed2) {
                            ComposerKt.sourceInformation($composer5, "C108@4729L58:DateRangeInput.kt#uh7d8r");
                            if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                                $composer5.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-961726252, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:108)");
                            }
                            TextKt.m2976Text4IGK_g(pattern, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$6.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                                }
                            }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer4, 54), iM2457getEndDateInputJ2x2o4M2, dateInputValidator, dateInputFormat32, defaultLocale, colors, $composer4, ($dirty22 & 7168) | ($dirty22 & 112) | 1794048, ($dirty22 >> 21) & 14);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            } else {
                dateInputFormat = dateInputFormat2;
            }
            value$iv2 = new DateInputValidator(intRange, selectableDates2, dateInputFormat, dateFormatter, errorDatePattern, errorDateOutOfYearRange, errorInvalidNotAllowed, errorInvalidRange, null, null, ValidationPath.MAX_PATH_LENGTH_BYTES, null);
            $composer4.updateRememberedValue(value$iv2);
            DateInputValidator dateInputValidator2 = (DateInputValidator) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer4);
            dateInputValidator2.setCurrentStartDateMillis$material3_release(selectedStartDateMillis);
            dateInputValidator2.setCurrentEndDateMillis$material3_release(selectedEndDateMillis);
            Modifier modifier$iv2 = PaddingKt.padding(Modifier.INSTANCE, DateInputKt.getInputTextFieldPadding());
            Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.m688spacedBy0680j_4(TextFieldSpacing);
            ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
            Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv2 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv2 = (54 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
            CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer4, modifier$iv2);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer4.getApplier() instanceof Applier)) {
            }
            $composer4.startReusableNode();
            if (!$composer4.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
            int i3 = ($changed$iv$iv$iv2 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer4, -407918630, "C100@5047L9:Row.kt#2w3rfo");
            int i22 = ((54 >> 6) & 112) | 6;
            RowScope $this$DateRangeInputContent_u24lambda_u2452 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer4, -1199006788, "C75@3252L56,88@3849L203,79@3446L218,86@3692L62,76@3317L972,98@4317L54,110@4882L199,102@4509L190,108@4727L62,99@4380L936:DateRangeInput.kt#uh7d8r");
            final String pattern2 = dateInputFormat.getPatternWithDelimiters().toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(pattern2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            Strings.Companion companion52 = Strings.INSTANCE;
            final String startRangeText2 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_start_headline), $composer4, 0);
            Modifier modifierWeight$default22 = RowScope.weight$default($this$DateRangeInputContent_u24lambda_u2452, Modifier.INSTANCE, 0.5f, false, 2, null);
            int iM2459getStartDateInputJ2x2o4M2 = InputIdentifier.INSTANCE.m2459getStartDateInputJ2x2o4M();
            ComposerKt.sourceInformationMarkerStart($composer4, 1485363141, "CC(remember):DateRangeInput.kt#9igjgp");
            invalid$iv = (($dirty & 896) != 256) | (($dirty & 112) != 32);
            Object value$iv42 = $composer4.rememberedValue();
            if (invalid$iv) {
            }
            value$iv42 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                    invoke2(l);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Long startDateMillis) {
                    function2.invoke(startDateMillis, selectedEndDateMillis);
                }
            };
            $composer4.updateRememberedValue(value$iv42);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            int $dirty222 = $dirty;
            DatePickerColors datePickerColors222 = datePickerColors;
            DateInputFormat dateInputFormat322 = dateInputFormat;
            $composer3 = $composer2;
            DateInputKt.m2276DateInputTextFieldtQNruF0(modifierWeight$default22, selectedStartDateMillis, (Function1) value$iv42, calendarModel, ComposableLambdaKt.rememberComposableLambda(801434508, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer5, int $changed2) {
                    Object value$iv5;
                    ComposerKt.sourceInformation($composer5, "C83@3580L52,80@3464L186:DateRangeInput.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(801434508, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:80)");
                        }
                        String str = startRangeText2;
                        Modifier.Companion companion622 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer5, -1505886067, "CC(remember):DateRangeInput.kt#9igjgp");
                        boolean invalid$iv5 = $composer5.changed(startRangeText2) | $composer5.changed(pattern2);
                        final String str2 = startRangeText2;
                        final String str3 = pattern2;
                        Object it$iv322 = $composer5.rememberedValue();
                        if (invalid$iv5 || it$iv322 == Composer.INSTANCE.getEmpty()) {
                            value$iv5 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$2$1$1
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
                                    SemanticsPropertiesKt.setContentDescription($this$semantics, str2 + ", " + str3);
                                }
                            };
                            $composer5.updateRememberedValue(value$iv5);
                        } else {
                            value$iv5 = it$iv322;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer5);
                        TextKt.m2976Text4IGK_g(str, SemanticsModifierKt.semantics$default(companion622, false, (Function1) value$iv5, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer5.skipToGroupEnd();
                }
            }, $composer4, 54), ComposableLambdaKt.rememberComposableLambda(665407211, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer5, int $changed2) {
                    ComposerKt.sourceInformation($composer5, "C86@3694L58:DateRangeInput.kt#uh7d8r");
                    if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                        $composer5.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(665407211, $changed2, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:86)");
                    }
                    TextKt.m2976Text4IGK_g(pattern2, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt$DateRangeInputContent$2$3.1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                            invoke2(semanticsPropertyReceiver);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                        }
                    }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 131068);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer4, 54), iM2459getStartDateInputJ2x2o4M2, dateInputValidator2, dateInputFormat322, defaultLocale, datePickerColors222, $composer4, (($dirty << 3) & 112) | 1794048 | ($dirty & 7168), ($dirty >> 21) & 14);
            Strings.Companion companion622 = Strings.INSTANCE;
            final String endRangeText22 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_end_headline), $composer4, 0);
            modifierWeight$default = RowScope.weight$default($this$DateRangeInputContent_u24lambda_u2452, Modifier.INSTANCE, 0.5f, false, 2, null);
            int iM2457getEndDateInputJ2x2o4M22 = InputIdentifier.INSTANCE.m2457getEndDateInputJ2x2o4M();
            ComposerKt.sourceInformationMarkerStart($composer4, 1485396193, "CC(remember):DateRangeInput.kt#9igjgp");
            invalid$iv2 = (($dirty222 & 896) == 256) | (($dirty222 & 14) == 4);
            Object it$iv322 = $composer4.rememberedValue();
            if (invalid$iv2) {
            }
        } else {
            $composer4.skipToGroupEnd();
            $composer3 = $composer4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateRangeInputKt.DateRangeInputContent.3
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
                    DateRangeInputKt.DateRangeInputContent(selectedStartDateMillis, selectedEndDateMillis, function2, calendarModel, yearRange, dateFormatter, selectableDates, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
