package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import j$.time.LocalDate;
import j$.time.YearMonth;
import j$.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CalendarioView.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\u001ak\u0010\f\u001a\u00020\t2\b\b\u0002\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\b2\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\bH\u0007¢\u0006\u0004\b\f\u0010\r\u001a3\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u000fH\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u000f\u0010\u0014\u001a\u00020\tH\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001aC\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\bH\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001aI\u0010\u001f\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a2\b\b\u0002\u0010\u0001\u001a\u00020\u00002\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\t0\u000fH\u0003¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Landroidx/compose/ui/Modifier;", "modifier", "j$/time/YearMonth", "mesVisible", "j$/time/LocalDate", "fechaSeleccionada", "", "fechasDestacadas", "Lkotlin/Function1;", "", "onMesVisibleChange", "onFechaSeleccionada", "CalendarioView", "(Landroidx/compose/ui/Modifier;Lj$/time/YearMonth;Lj$/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "mesActual", "Lkotlin/Function0;", "onMesAnterior", "onMesSiguiente", "CalendarioHeader", "(Lj$/time/YearMonth;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "CalendarioDiasSemana", "(Landroidx/compose/runtime/Composer;I)V", "mes", "CalendarioGrid", "(Lj$/time/YearMonth;Lj$/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "fecha", "", "esSeleccionada", "esDestacada", "esHoy", "onClick", "CeldaDia", "(Lj$/time/LocalDate;ZZZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class CalendarioViewKt {
    static final Unit CalendarioDiasSemana$lambda$15(int i, Composer composer, int i2) {
        CalendarioDiasSemana(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit CalendarioGrid$lambda$25(YearMonth yearMonth, LocalDate localDate, Set set, Function1 function1, int i, Composer composer, int i2) {
        CalendarioGrid(yearMonth, localDate, set, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit CalendarioHeader$lambda$12(YearMonth yearMonth, Function0 function0, Function0 function02, int i, Composer composer, int i2) {
        CalendarioHeader(yearMonth, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit CalendarioView$lambda$9(Modifier modifier, YearMonth yearMonth, LocalDate localDate, Set set, Function1 function1, Function1 function12, int i, int i2, Composer composer, int i3) {
        CalendarioView(modifier, yearMonth, localDate, set, function1, function12, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit CeldaDia$lambda$28(LocalDate localDate, boolean z, boolean z2, boolean z3, Modifier modifier, Function0 function0, int i, int i2, Composer composer, int i3) {
        CeldaDia(localDate, z, z2, z3, modifier, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit CalendarioView$lambda$1$lambda$0(YearMonth it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit CalendarioView$lambda$3$lambda$2(LocalDate it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public static final void CalendarioView(Modifier modifier, YearMonth mesVisible, LocalDate fechaSeleccionada, Set<LocalDate> set, Function1<? super YearMonth, Unit> function1, Function1<? super LocalDate, Unit> function12, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        YearMonth yearMonth;
        LocalDate localDate;
        Set<LocalDate> setEmptySet;
        final Function1<? super YearMonth, Unit> function13;
        Function1<? super LocalDate, Unit> function14;
        final Modifier modifier3;
        final YearMonth mesVisible2;
        final LocalDate fechaSeleccionada2;
        final Set<LocalDate> set2;
        final Function1<? super YearMonth, Unit> function15;
        final Function1<? super LocalDate, Unit> function16;
        Modifier.Companion modifier4;
        LocalDate fechaSeleccionada3;
        int $dirty;
        Function0<ComposeUiNode> function0;
        Composer $composer2 = $composer.startRestartGroup(-725282159);
        ComposerKt.sourceInformation($composer2, "C(CalendarioView)N(modifier,mesVisible,fechaSeleccionada,fechasDestacadas,onMesVisibleChange,onFechaSeleccionada)59@2428L513:CalendarioView.kt#6w2cjo");
        int $dirty2 = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty2 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                yearMonth = mesVisible;
                int i3 = $composer2.changedInstance(yearMonth) ? 32 : 16;
                $dirty2 |= i3;
            } else {
                yearMonth = mesVisible;
            }
            $dirty2 |= i3;
        } else {
            yearMonth = mesVisible;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            localDate = fechaSeleccionada;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            localDate = fechaSeleccionada;
            $dirty2 |= $composer2.changedInstance(localDate) ? 256 : 128;
        } else {
            localDate = fechaSeleccionada;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty2 |= 3072;
            setEmptySet = set;
        } else if (($changed & 3072) == 0) {
            setEmptySet = set;
            $dirty2 |= $composer2.changedInstance(setEmptySet) ? 2048 : 1024;
        } else {
            setEmptySet = set;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty2 |= 24576;
            function13 = function1;
        } else if (($changed & 24576) == 0) {
            function13 = function1;
            $dirty2 |= $composer2.changedInstance(function13) ? 16384 : 8192;
        } else {
            function13 = function1;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function14 = function12;
        } else if ((196608 & $changed) == 0) {
            function14 = function12;
            $dirty2 |= $composer2.changedInstance(function14) ? 131072 : 65536;
        } else {
            function14 = function12;
        }
        int $dirty3 = $dirty2;
        if (!$composer2.shouldExecute(($dirty2 & 74899) != 74898, $dirty3 & 1)) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            mesVisible2 = yearMonth;
            fechaSeleccionada2 = localDate;
            set2 = setEmptySet;
            function15 = function13;
            function16 = function14;
        } else {
            $composer2.startDefaults();
            ComposerKt.sourceInformation($composer2, "56@2366L2,57@2417L2");
            if (($changed & 1) != 0 && !$composer2.getDefaultsInvalid()) {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty = $dirty3 & (-113);
                    modifier4 = modifier2;
                    mesVisible2 = yearMonth;
                    fechaSeleccionada3 = localDate;
                } else {
                    modifier4 = modifier2;
                    mesVisible2 = yearMonth;
                    fechaSeleccionada3 = localDate;
                    $dirty = $dirty3;
                }
            } else {
                if (i2 != 0) {
                    modifier4 = Modifier.INSTANCE;
                } else {
                    modifier4 = modifier2;
                }
                if ((i & 2) == 0) {
                    mesVisible2 = yearMonth;
                } else {
                    mesVisible2 = YearMonth.now();
                    Intrinsics.checkNotNullExpressionValue(mesVisible2, "now(...)");
                    $dirty3 &= -113;
                }
                if (i4 == 0) {
                    fechaSeleccionada3 = localDate;
                } else {
                    fechaSeleccionada3 = null;
                }
                if (i5 != 0) {
                    setEmptySet = SetsKt.emptySet();
                }
                if (i6 != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, -1211443661, "CC(remember):CalendarioView.kt#9igjgp");
                    Object objRememberedValue = $composer2.rememberedValue();
                    if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                return CalendarioViewKt.CalendarioView$lambda$1$lambda$0((YearMonth) obj2);
                            }
                        };
                        $composer2.updateRememberedValue(obj);
                        objRememberedValue = obj;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    function13 = (Function1) objRememberedValue;
                }
                if (i7 == 0) {
                    $dirty = $dirty3;
                } else {
                    ComposerKt.sourceInformationMarkerStart($composer2, -1211442029, "CC(remember):CalendarioView.kt#9igjgp");
                    Object objRememberedValue2 = $composer2.rememberedValue();
                    if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda6
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                return CalendarioViewKt.CalendarioView$lambda$3$lambda$2((LocalDate) obj3);
                            }
                        };
                        $composer2.updateRememberedValue(obj2);
                        objRememberedValue2 = obj2;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    function14 = (Function1) objRememberedValue2;
                    $dirty = $dirty3;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-725282159, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView (CalendarioView.kt:58)");
            }
            int i8 = $dirty & 14;
            Modifier modifier5 = modifier4;
            ComposerKt.sourceInformationMarkerStart($composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier6 = modifier4;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer2, ((i8 >> 3) & 14) | ((i8 >> 3) & 112));
            int i9 = (i8 << 3) & 112;
            int $dirty4 = $dirty;
            LocalDate fechaSeleccionada4 = fechaSeleccionada3;
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifier5);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i10 = ((i9 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function0 = constructor;
                $composer2.createNode(function0);
            } else {
                function0 = constructor;
                $composer2.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i11 = (i10 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i12 = ((i8 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 433561427, "C62@2548L49,63@2628L48,60@2466L220,65@2695L22,66@2726L209:CalendarioView.kt#6w2cjo");
            ComposerKt.sourceInformationMarkerStart($composer2, -401653940, "CC(remember):CalendarioView.kt#9igjgp");
            boolean zChangedInstance = (($dirty4 & 57344) == 16384) | $composer2.changedInstance(mesVisible2);
            Object objRememberedValue3 = $composer2.rememberedValue();
            if (zChangedInstance || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CalendarioViewKt.CalendarioView$lambda$8$lambda$5$lambda$4(function13, mesVisible2);
                    }
                };
                $composer2.updateRememberedValue(objRememberedValue3);
            }
            Function0 function02 = (Function0) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -401651381, "CC(remember):CalendarioView.kt#9igjgp");
            boolean zChangedInstance2 = (($dirty4 & 57344) == 16384) | $composer2.changedInstance(mesVisible2);
            Object objRememberedValue4 = $composer2.rememberedValue();
            if (zChangedInstance2 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CalendarioViewKt.CalendarioView$lambda$8$lambda$7$lambda$6(function13, mesVisible2);
                    }
                };
                $composer2.updateRememberedValue(objRememberedValue4);
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            CalendarioHeader(mesVisible2, function02, (Function0) objRememberedValue4, $composer2, ($dirty4 >> 3) & 14);
            CalendarioDiasSemana($composer2, 0);
            CalendarioGrid(mesVisible2, fechaSeleccionada4, setEmptySet, function14, $composer2, (($dirty4 >> 3) & 14) | (($dirty4 >> 3) & 112) | (($dirty4 >> 3) & 896) | (($dirty4 >> 6) & 7168));
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            fechaSeleccionada2 = fechaSeleccionada4;
            modifier3 = modifier6;
            set2 = setEmptySet;
            function15 = function13;
            function16 = function14;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return CalendarioViewKt.CalendarioView$lambda$9(modifier3, mesVisible2, fechaSeleccionada2, set2, function15, function16, $changed, i, (Composer) obj3, ((Integer) obj4).intValue());
                }
            });
        }
    }

    static final Unit CalendarioView$lambda$8$lambda$5$lambda$4(Function1 $onMesVisibleChange, YearMonth $mesVisible) {
        YearMonth yearMonthMinusMonths = $mesVisible.minusMonths(1L);
        Intrinsics.checkNotNullExpressionValue(yearMonthMinusMonths, "minusMonths(...)");
        $onMesVisibleChange.invoke(yearMonthMinusMonths);
        return Unit.INSTANCE;
    }

    static final Unit CalendarioView$lambda$8$lambda$7$lambda$6(Function1 $onMesVisibleChange, YearMonth $mesVisible) {
        YearMonth yearMonthPlusMonths = $mesVisible.plusMonths(1L);
        Intrinsics.checkNotNullExpressionValue(yearMonthPlusMonths, "plusMonths(...)");
        $onMesVisibleChange.invoke(yearMonthPlusMonths);
        return Unit.INSTANCE;
    }

    private static final void CalendarioHeader(final YearMonth mesActual, Function0<Unit> function0, Function0<Unit> function02, Composer $composer, final int $changed) {
        final Function0<Unit> function03;
        final Function0<Unit> function04;
        Function0<ComposeUiNode> function05;
        Composer $composer2 = $composer.startRestartGroup(-1489716741);
        ComposerKt.sourceInformation($composer2, "C(CalendarioHeader)N(mesActual,onMesAnterior,onMesSiguiente)91@3460L734:CalendarioView.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(mesActual) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(function02) ? 256 : 128;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 147) != 146, $dirty2 & 1)) {
            function03 = function0;
            function04 = function02;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1489716741, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioHeader (CalendarioView.kt:88)");
            }
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMMM yyyy", Locale.forLanguageTag("es"));
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(8), Dp.m7505constructorimpl(12));
            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, centerVertically, $composer2, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifierM819paddingVpY3zN4);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((438 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function05 = constructor;
                $composer2.createNode(function05);
            } else {
                function05 = constructor;
                $composer2.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -341986555, "C98@3709L128,103@3970L10,101@3846L202,106@4057L131:CalendarioView.kt#6w2cjo");
            IconButtonKt.IconButton(function0, null, false, null, null, ComposableSingletons$CalendarioViewKt.INSTANCE.getLambda$30391740$app(), $composer2, (($dirty2 >> 3) & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            String string = mesActual.format(formatter);
            Intrinsics.checkNotNullExpressionValue(string, "format(...)");
            if (string.length() > 0) {
                StringBuilder sb = new StringBuilder();
                String strValueOf = String.valueOf(string.charAt(0));
                Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
                String upperCase = strValueOf.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                StringBuilder sbAppend = sb.append((Object) upperCase);
                String strSubstring = string.substring(1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                string = sbAppend.append(strSubstring).toString();
            }
            TextKt.m2976Text4IGK_g(string, (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable).getTitleMedium(), $composer2, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
            function04 = function02;
            function03 = function0;
            IconButtonKt.IconButton(function04, null, false, null, null, ComposableSingletons$CalendarioViewKt.INSTANCE.getLambda$1337667635$app(), $composer2, (($dirty2 >> 6) & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CalendarioViewKt.CalendarioHeader$lambda$12(mesActual, function03, function04, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void CalendarioDiasSemana(Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Composer $composer3 = $composer.startRestartGroup(-658067385);
        ComposerKt.sourceInformation($composer3, "C(CalendarioDiasSemana)118@4390L369:CalendarioView.kt#6w2cjo");
        if (!$composer3.shouldExecute($changed != 0, $changed & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-658067385, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioDiasSemana (CalendarioView.kt:116)");
            }
            Iterable dias = CollectionsKt.listOf((Object[]) new String[]{"L", "M", "X", "J", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LATITUDE_SOUTH, "D"});
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.INSTANCE.getTop(), $composer3, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            $composer2 = $composer3;
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
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
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i3 = ((6 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer3, -1071609497, "C:CalendarioView.kt#6w2cjo");
            $composer3.startReplaceGroup(381074103);
            ComposerKt.sourceInformation($composer3, "*124@4640L10,125@4701L11,120@4474L269");
            Iterable iterable = dias;
            int i4 = 0;
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                TextKt.m2976Text4IGK_g((String) it.next(), RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getLabelSmall(), $composer3, 0, 0, 65016);
                iterable = iterable;
                i4 = i4;
            }
            $composer3.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CalendarioViewKt.CalendarioDiasSemana$lambda$15($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void CalendarioGrid(final YearMonth mes, final LocalDate fechaSeleccionada, final Set<LocalDate> set, final Function1<? super LocalDate, Unit> function1, Composer $composer, final int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer composer;
        LocalDate localDate = fechaSeleccionada;
        Composer $composer2 = $composer.startRestartGroup(10124906);
        ComposerKt.sourceInformation($composer2, "C(CalendarioGrid)N(mes,fechaSeleccionada,fechasDestacadas,onFechaSeleccionada)163@5812L770:CalendarioView.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(mes) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(localDate) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(set) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(function1) ? 2048 : 1024;
        }
        if (!$composer2.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(10124906, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioGrid (CalendarioView.kt:149)");
            }
            LocalDate primerDia = mes.atDay(1);
            int offsetInicio = primerDia.getDayOfWeek().getValue() - 1;
            int diasEnMes = mes.lengthOfMonth();
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            for (int i = 0; i < offsetInicio; i++) {
                listCreateListBuilder.add(null);
            }
            int i2 = 1;
            if (1 <= diasEnMes) {
                while (true) {
                    listCreateListBuilder.add(mes.atDay(i2));
                    if (i2 == diasEnMes) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            List celdas = CollectionsKt.build(listCreateListBuilder);
            Iterable filas = CollectionsKt.chunked(celdas, 7);
            ComposerKt.sourceInformationMarkerStart($composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer2, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            String str = "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh";
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i3 = ((((0 << 3) & 112) << 6) & 896) | 6;
            String str2 = "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp";
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function0 = constructor;
                $composer2.createNode(function0);
            } else {
                function0 = constructor;
                $composer2.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
            MeasurePolicy measurePolicy = measurePolicyColumnMeasurePolicy;
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i4 = (i3 >> 6) & 14;
            int i5 = 0;
            ComposerKt.sourceInformationMarkerStart($composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((0 >> 6) & 112) | 6;
            String str3 = "C:CalendarioView.kt#6w2cjo";
            Composer composer2 = $composer2;
            ComposerKt.sourceInformationMarkerStart(composer2, -170225064, "C:CalendarioView.kt#6w2cjo");
            composer2.startReplaceGroup(-1945153595);
            ComposerKt.sourceInformation(composer2, "*165@5865L701");
            Iterable<List> iterable = filas;
            for (List list : iterable) {
                Iterable iterable2 = iterable;
                Composer composer3 = composer2;
                int i7 = i5;
                MeasurePolicy measurePolicy2 = measurePolicy;
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                ComposerKt.sourceInformationMarkerStart(composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.INSTANCE.getTop(), composer3, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, str);
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                String str4 = str;
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierFillMaxWidth$default);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int i8 = ((((6 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer3, -553112988, str2);
                if (!(composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer3.startReusableNode();
                if (composer3.getInserting()) {
                    function02 = constructor2;
                    composer3.createNode(function02);
                } else {
                    function02 = constructor2;
                    composer3.useNode();
                }
                Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer3);
                String str5 = str2;
                Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                int i9 = (i8 >> 6) & 14;
                Composer composer4 = composer3;
                ComposerKt.sourceInformationMarkerStart(composer4, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                int i10 = ((6 >> 6) & 112) | 6;
                RowScope rowScope = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(composer4, -2091308034, str3);
                List list2 = list;
                String str6 = str3;
                int size = 7 - list.size();
                ArrayList arrayList = new ArrayList(size);
                int i11 = 0;
                while (i11 < size) {
                    arrayList.add(null);
                    i11++;
                    size = size;
                }
                List<LocalDate> listPlus = CollectionsKt.plus((Collection) list2, (Iterable) arrayList);
                composer4.startReplaceGroup(-1591479723);
                ComposerKt.sourceInformation(composer4, "*175@6463L49,169@6115L419");
                for (final LocalDate localDate2 : listPlus) {
                    boolean zAreEqual = Intrinsics.areEqual(localDate2, localDate);
                    boolean z = localDate2 != null && set.contains(localDate2);
                    List list3 = listPlus;
                    boolean zAreEqual2 = Intrinsics.areEqual(localDate2, LocalDate.now());
                    Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
                    RowScope rowScope2 = rowScope;
                    ComposerKt.sourceInformationMarkerStart(composer4, -1189194936, "CC(remember):CalendarioView.kt#9igjgp");
                    boolean zChangedInstance = $composer2.changedInstance(localDate2) | (($dirty & 7168) == 2048);
                    Composer composer5 = composer4;
                    Object objRememberedValue = composer5.rememberedValue();
                    if (!zChangedInstance) {
                        composer = composer4;
                        if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd(composer);
                        Composer composer6 = composer;
                        CeldaDia(localDate2, zAreEqual, z, zAreEqual2, modifierWeight$default, (Function0) objRememberedValue, composer6, 0, 0);
                        composer4 = composer6;
                        localDate = fechaSeleccionada;
                        listPlus = list3;
                        rowScope = rowScope2;
                    } else {
                        composer = composer4;
                    }
                    objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return CalendarioViewKt.CalendarioGrid$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20$lambda$19(localDate2, function1);
                        }
                    };
                    composer5.updateRememberedValue(objRememberedValue);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    Composer composer62 = composer;
                    CeldaDia(localDate2, zAreEqual, z, zAreEqual2, modifierWeight$default, (Function0) objRememberedValue, composer62, 0, 0);
                    composer4 = composer62;
                    localDate = fechaSeleccionada;
                    listPlus = list3;
                    rowScope = rowScope2;
                }
                composer4.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer3);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                localDate = fechaSeleccionada;
                measurePolicy = measurePolicy2;
                composer2 = composer3;
                iterable = iterable2;
                i5 = i7;
                str = str4;
                str2 = str5;
                str3 = str6;
            }
            Composer composer7 = composer2;
            composer7.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer7);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CalendarioViewKt.CalendarioGrid$lambda$25(mes, fechaSeleccionada, set, function1, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit CalendarioGrid$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20$lambda$19(LocalDate $fecha, Function1 $onFechaSeleccionada) {
        if ($fecha != null) {
            $onFechaSeleccionada.invoke($fecha);
        }
        return Unit.INSTANCE;
    }

    private static final void CeldaDia(final LocalDate fecha, final boolean esSeleccionada, final boolean esDestacada, final boolean esHoy, Modifier modifier, final Function0<Unit> function0, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Function0<Unit> function02;
        final Modifier modifier3;
        long jM4732getTransparent0d7_KjU;
        long onSurface;
        Function0<ComposeUiNode> function03;
        Function0<ComposeUiNode> function04;
        String string;
        Composer $composer2 = $composer.startRestartGroup(-1992067226);
        ComposerKt.sourceInformation($composer2, "C(CeldaDia)N(fecha,esSeleccionada,esDestacada,esHoy,modifier,onClick)218@7828L959:CalendarioView.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(fecha) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(esSeleccionada) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changed(esDestacada) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changed(esHoy) ? 2048 : 1024;
        }
        int i2 = i & 16;
        if (i2 != 0) {
            $dirty |= 24576;
            modifier2 = modifier;
        } else if (($changed & 24576) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 16384 : 8192;
        } else {
            modifier2 = modifier;
        }
        if ((196608 & $changed) == 0) {
            function02 = function0;
            $dirty |= $composer2.changedInstance(function02) ? 131072 : 65536;
        } else {
            function02 = function0;
        }
        if ($composer2.shouldExecute((74899 & $dirty) != 74898, $dirty & 1)) {
            if (i2 != 0) {
                modifier2 = Modifier.INSTANCE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1992067226, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CeldaDia (CalendarioView.kt:205)");
            }
            if (esSeleccionada) {
                $composer2.startReplaceGroup(1178819693);
                ComposerKt.sourceInformation($composer2, "207@7451L11");
                jM4732getTransparent0d7_KjU = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getPrimary();
                $composer2.endReplaceGroup();
            } else if (esHoy) {
                $composer2.startReplaceGroup(1178821334);
                ComposerKt.sourceInformation($composer2, "208@7502L11");
                jM4732getTransparent0d7_KjU = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getPrimaryContainer();
                $composer2.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(1178822577);
                $composer2.endReplaceGroup();
                jM4732getTransparent0d7_KjU = Color.INSTANCE.m4732getTransparent0d7_KjU();
            }
            long bgColor = jM4732getTransparent0d7_KjU;
            if (esSeleccionada) {
                $composer2.startReplaceGroup(1178825679);
                ComposerKt.sourceInformation($composer2, "212@7638L11");
                onSurface = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getOnPrimary();
                $composer2.endReplaceGroup();
            } else if (esHoy) {
                $composer2.startReplaceGroup(1178827384);
                ComposerKt.sourceInformation($composer2, "213@7691L11");
                onSurface = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getOnPrimaryContainer();
                $composer2.endReplaceGroup();
            } else if (fecha == null) {
                $composer2.startReplaceGroup(1178828977);
                $composer2.endReplaceGroup();
                onSurface = Color.INSTANCE.m4732getTransparent0d7_KjU();
            } else {
                $composer2.startReplaceGroup(1178830703);
                ComposerKt.sourceInformation($composer2, "215@7795L11");
                onSurface = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getOnSurface();
                $composer2.endReplaceGroup();
            }
            long textColor = onSurface;
            Modifier modifierM299clickableoSLSa3U$default = ClickableKt.m299clickableoSLSa3U$default(BackgroundKt.m264backgroundbw27NRU$default(ClipKt.clip(PaddingKt.m818padding3ABfNKs(AspectRatioKt.aspectRatio$default(modifier2, 1.0f, false, 2, null), Dp.m7505constructorimpl(2)), RoundedCornerShapeKt.getCircleShape()), bgColor, null, 2, null), fecha != null, null, null, null, function02, 14, null);
            Alignment center = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer2, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifierM299clickableoSLSa3U$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i3 = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function03 = constructor;
                $composer2.createNode(function03);
            } else {
                function03 = constructor;
                $composer2.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i4 = (i3 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i5 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1608649981, "C227@8109L672:CalendarioView.kt#6w2cjo");
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier4 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i6 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer2, modifier4);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i7 = ((i6 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function04 = constructor2;
                $composer2.createNode(function04);
            } else {
                function04 = constructor2;
                $composer2.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i8 = (i7 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i9 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1352666516, "C230@8286L10,228@8182L173:CalendarioView.kt#6w2cjo");
            if (fecha == null || (string = Integer.valueOf(fecha.getDayOfMonth()).toString()) == null) {
                string = "";
            }
            TextKt.m2976Text4IGK_g(string, (Modifier) null, textColor, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable).getBodySmall(), $composer2, 0, 0, 65530);
            if (!esDestacada || esSeleccionada) {
                $composer2.startReplaceGroup(-1360802312);
            } else {
                $composer2.startReplaceGroup(-1352389749);
                ComposerKt.sourceInformation($composer2, "235@8488L40,240@8719L11,236@8545L212");
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(2)), $composer2, 6);
                BoxKt.Box(BackgroundKt.m264backgroundbw27NRU$default(ClipKt.clip(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), RoundedCornerShapeKt.getCircleShape()), MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getPrimary(), null, 2, null), $composer2, 0);
            }
            $composer2.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
        } else {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CalendarioViewKt.CeldaDia$lambda$28(fecha, esSeleccionada, esDestacada, esHoy, modifier3, function0, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
