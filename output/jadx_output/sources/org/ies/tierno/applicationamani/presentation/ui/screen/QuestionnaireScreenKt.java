package org.ies.tierno.applicationamani.presentation.ui.screen;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CheckboxKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ProgressIndicatorDefaults;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
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
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.core.app.FrameMetricsAggregator;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.ies.tierno.applicationamani.domain.models.Question;
import org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel;

/* JADX INFO: compiled from: QuestionnaireScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\r\u0010\u0007\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"QuestionnaireScreen", "", "navController", "Landroidx/navigation/NavController;", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/runtime/Composer;II)V", "QuestionnairePreview", "(Landroidx/compose/runtime/Composer;I)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class QuestionnaireScreenKt {
    static final Unit QuestionnairePreview$lambda$11(int i, Composer composer, int i2) {
        QuestionnairePreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit QuestionnaireScreen$lambda$10(NavController navController, QuestionnaireViewModel questionnaireViewModel, int i, int i2, Composer composer, int i3) {
        QuestionnaireScreen(navController, questionnaireViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void QuestionnaireScreen(final NavController navController, QuestionnaireViewModel viewModel, Composer $composer, final int $changed, final int i) {
        QuestionnaireViewModel questionnaireViewModel;
        Composer $composer2;
        final QuestionnaireViewModel viewModel2;
        CreationExtras defaultViewModelCreationExtras;
        int i2;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer3 = $composer.startRestartGroup(1907764280);
        ComposerKt.sourceInformation($composer3, "C(QuestionnaireScreen)N(navController,viewModel)51@2329L10,56@2427L2667,54@2410L2684:QuestionnaireScreen.kt#8o7o96");
        int $dirty = $changed;
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                questionnaireViewModel = viewModel;
                if ($composer3.changedInstance(questionnaireViewModel)) {
                    i2 = 32;
                }
                $dirty |= i2;
            } else {
                questionnaireViewModel = viewModel;
            }
            i2 = 16;
            $dirty |= i2;
        } else {
            questionnaireViewModel = viewModel;
        }
        if ($composer3.shouldExecute(($dirty & 17) != 16, $dirty & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "50@2279L11");
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
            } else {
                if ((i & 2) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, 1729797275, "CC(viewModel)N(viewModelStoreOwner,key,factory,extras)56@2573L7,67@2981L63:ViewModel.kt#3tja67");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, 6);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    if (current instanceof HasDefaultViewModelProviderFactory) {
                        defaultViewModelCreationExtras = ((HasDefaultViewModelProviderFactory) current).getDefaultViewModelCreationExtras();
                    } else {
                        defaultViewModelCreationExtras = CreationExtras.Empty.INSTANCE;
                    }
                    ViewModel viewModel3 = ViewModelKt.viewModel((KClass<ViewModel>) Reflection.getOrCreateKotlinClass(QuestionnaireViewModel.class), current, (String) null, (ViewModelProvider.Factory) null, defaultViewModelCreationExtras, $composer3, ((0 << 3) & 7168) | ((0 << 3) & 112) | ((0 << 3) & 896) | ((0 << 3) & 57344), 0);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    viewModel2 = (QuestionnaireViewModel) viewModel3;
                    $dirty &= -113;
                }
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1907764280, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen (QuestionnaireScreen.kt:50)");
                }
                final Typography typography = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
                final Question question = viewModel2.getQuestions().get(viewModel2.getActualQuestion());
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(649488329, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return QuestionnaireScreenKt.QuestionnaireScreen$lambda$9(viewModel2, typography, question, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer3, 54), $composer3, 805306368, FrameMetricsAggregator.EVERY_DURATION);
                $composer2 = $composer3;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            viewModel2 = questionnaireViewModel;
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            final Typography typography2 = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
            final Question question2 = viewModel2.getQuestions().get(viewModel2.getActualQuestion());
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(649488329, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return QuestionnaireScreenKt.QuestionnaireScreen$lambda$9(viewModel2, typography2, question2, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), $composer3, 805306368, FrameMetricsAggregator.EVERY_DURATION);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            viewModel2 = questionnaireViewModel;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return QuestionnaireScreenKt.QuestionnaireScreen$lambda$10(navController, viewModel2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit QuestionnaireScreen$lambda$9(final QuestionnaireViewModel $viewModel, Typography $typography, Question $question, PaddingValues innerPadding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer composer;
        Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
        ComposerKt.sourceInformation($composer, "CN(innerPadding)58@2461L2627:QuestionnaireScreen.kt#8o7o96");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(innerPadding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(649488329, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen.<anonymous> (QuestionnaireScreen.kt:58)");
            }
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(PaddingKt.m818padding3ABfNKs(PaddingKt.padding(Modifier.INSTANCE, innerPadding), Dp.m7505constructorimpl(16)), 0.0f, 1, null);
            Alignment.Horizontal start = Alignment.INSTANCE.getStart();
            Arrangement.Vertical center = Arrangement.INSTANCE.getCenter();
            int i = 432;
            Composer composer2 = $composer;
            ComposerKt.sourceInformationMarkerStart(composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, start, composer2, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            String str = "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh";
            ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxSize$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i2 = ((((432 << 3) & 112) << 6) & 896) | 6;
            String str2 = "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp";
            ComposerKt.sourceInformationMarkerStart(composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer2.startReusableNode();
            if (composer2.getInserting()) {
                function0 = constructor;
                composer2.createNode(function0);
            } else {
                function0 = constructor;
                composer2.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl(composer2);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i3 = (i2 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            int i4 = ((432 >> 6) & 112) | 6;
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composer2, -51061943, "C66@2763L139,71@2983L11,72@3047L16,65@2715L430,75@3158L245,80@3416L229,85@3658L41,87@3713L158,93@3885L41,112@4486L38,116@4630L384,114@4538L540:QuestionnaireScreen.kt#8o7o96");
            ComposerKt.sourceInformationMarkerStart(composer2, 1660920138, "CC(remember):QuestionnaireScreen.kt#9igjgp");
            boolean zChangedInstance = composer2.changedInstance($viewModel);
            Object objRememberedValue = composer2.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Float.valueOf(QuestionnaireScreenKt.QuestionnaireScreen$lambda$9$lambda$8$lambda$1$lambda$0($viewModel));
                    }
                };
                composer2.updateRememberedValue(objRememberedValue);
            }
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ProgressIndicatorKt.m2654LinearProgressIndicatorGJbTh5U((Function0) objRememberedValue, Modifier.INSTANCE, ProgressIndicatorDefaults.INSTANCE.getLinearColor(composer2, ProgressIndicatorDefaults.$stable), ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composer2, ProgressIndicatorDefaults.$stable), ProgressIndicatorDefaults.INSTANCE.m2645getLinearStrokeCapKaPHkGw(), 0.0f, null, composer2, 48, 96);
            TextKt.m2976Text4IGK_g("Intenta marcar las respuestas o frases que encajen contigo, te asignaremos un psicólogo en base a ellas.", PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getHeadlineSmall(), composer2, 54, 0, 65532);
            TextKt.m2976Text4IGK_g("No te preocupes si no encajais, puedes cambiar de profesional sin problema más adelante.", PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getHeadlineSmall(), composer2, 54, 0, 65532);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(15)), composer2, 6);
            TextKt.m2976Text4IGK_g($question.getTitle(), PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleMedium(), composer2, 48, 0, 65532);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), composer2, 6);
            composer2.startReplaceGroup(1660958722);
            ComposerKt.sourceInformation(composer2, "*97@4008L450");
            Iterable answers = $question.getAnswers();
            int i5 = 0;
            final int i6 = 0;
            for (Object obj : answers) {
                int i7 = i6 + 1;
                if (i6 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                String str3 = (String) obj;
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                Iterable iterable = answers;
                int i8 = i5;
                int i9 = i;
                ComposerKt.sourceInformationMarkerStart(composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier = Modifier.INSTANCE;
                Composer composer3 = composer2;
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
                int i10 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, str);
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                String str4 = str;
                CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifier);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int i11 = ((i10 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer2, -553112988, str2);
                if (!(composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    function02 = constructor2;
                    composer2.createNode(function02);
                } else {
                    function02 = constructor2;
                    composer2.useNode();
                }
                Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer2);
                String str5 = str2;
                Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                int i12 = (i11 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i13 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart(composer2, 739833434, "C104@4296L89,100@4120L287,108@4428L12:QuestionnaireScreen.kt#8o7o96");
                boolean zBooleanValue = $viewModel.getSelectedAnswers().get($viewModel.getActualQuestion()).get(i6).booleanValue();
                ComposerKt.sourceInformationMarkerStart(composer2, -1638696990, "CC(remember):QuestionnaireScreen.kt#9igjgp");
                boolean zChangedInstance2 = composer2.changedInstance($viewModel) | composer2.changed(i6);
                Object objRememberedValue2 = composer2.rememberedValue();
                if (!zChangedInstance2) {
                    composer = composer2;
                    if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    CheckboxKt.Checkbox(zBooleanValue, (Function1) objRememberedValue2, null, false, null, null, composer, 0, 60);
                    Composer composer4 = composer;
                    TextKt.m2976Text4IGK_g(str3, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 0, 0, 131070);
                    ComposerKt.sourceInformationMarkerEnd(composer4);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    i6 = i7;
                    answers = iterable;
                    i5 = i8;
                    i = i9;
                    composer2 = composer3;
                    str = str4;
                    str2 = str5;
                } else {
                    composer = composer2;
                }
                objRememberedValue2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreenKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return QuestionnaireScreenKt.QuestionnaireScreen$lambda$9$lambda$8$lambda$5$lambda$4$lambda$3$lambda$2($viewModel, i6, ((Boolean) obj2).booleanValue());
                    }
                };
                composer2.updateRememberedValue(objRememberedValue2);
                ComposerKt.sourceInformationMarkerEnd(composer);
                CheckboxKt.Checkbox(zBooleanValue, (Function1) objRememberedValue2, null, false, null, null, composer, 0, 60);
                Composer composer42 = composer;
                TextKt.m2976Text4IGK_g(str3, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer42, 0, 0, 131070);
                ComposerKt.sourceInformationMarkerEnd(composer42);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                i6 = i7;
                answers = iterable;
                i5 = i8;
                i = i9;
                composer2 = composer3;
                str = str4;
                str2 = str5;
            }
            Composer composer5 = composer2;
            composer2.endReplaceGroup();
            SpacerKt.Spacer(ColumnScope.weight$default(columnScope, Modifier.INSTANCE, 1.0f, false, 2, null), composer2, 0);
            Modifier modifierAlign = columnScope.align(Modifier.INSTANCE, Alignment.INSTANCE.getEnd());
            ComposerKt.sourceInformationMarkerStart(composer2, 1660980127, "CC(remember):QuestionnaireScreen.kt#9igjgp");
            boolean zChangedInstance3 = composer2.changedInstance($viewModel);
            Object objRememberedValue3 = composer2.rememberedValue();
            if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return QuestionnaireScreenKt.QuestionnaireScreen$lambda$9$lambda$8$lambda$7$lambda$6($viewModel);
                    }
                };
                composer2.updateRememberedValue(obj2);
                objRememberedValue3 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ButtonKt.Button((Function0) objRememberedValue3, modifierAlign, false, null, null, null, null, null, null, ComposableSingletons$QuestionnaireScreenKt.INSTANCE.m10422getLambda$484677457$app(), composer2, 805306368, 508);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer5);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final float QuestionnaireScreen$lambda$9$lambda$8$lambda$1$lambda$0(QuestionnaireViewModel $viewModel) {
        return ($viewModel.getActualQuestion() + 1) / $viewModel.getQuestions().size();
    }

    static final Unit QuestionnaireScreen$lambda$9$lambda$8$lambda$5$lambda$4$lambda$3$lambda$2(QuestionnaireViewModel $viewModel, int $index, boolean it) {
        $viewModel.changeAnswer($index, it);
        return Unit.INSTANCE;
    }

    static final Unit QuestionnaireScreen$lambda$9$lambda$8$lambda$7$lambda$6(QuestionnaireViewModel $viewModel) {
        if ($viewModel.getActualQuestion() < $viewModel.getQuestions().size() - 1) {
            $viewModel.nextQuestion();
        }
        return Unit.INSTANCE;
    }

    public static final void QuestionnairePreview(Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(1801803672);
        ComposerKt.sourceInformation($composer2, "C(QuestionnairePreview)142@5287L23,142@5267L44:QuestionnaireScreen.kt#8o7o96");
        if (!$composer2.shouldExecute($changed != 0, $changed & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1801803672, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnairePreview (QuestionnaireScreen.kt:141)");
            }
            QuestionnaireScreen(NavHostControllerKt.rememberNavController(new Navigator[0], $composer2, 0), null, $composer2, 0, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return QuestionnaireScreenKt.QuestionnairePreview$lambda$11($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
