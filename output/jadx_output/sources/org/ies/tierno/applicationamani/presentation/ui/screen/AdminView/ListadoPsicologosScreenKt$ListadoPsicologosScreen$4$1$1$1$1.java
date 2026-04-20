package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
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
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;

/* JADX INFO: compiled from: ListadoPsicologosScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final class ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1 implements Function3<ColumnScope, Composer, Integer, Unit> {
    final /* synthetic */ long $deleteColor;
    final /* synthetic */ LoginViewModel $loginViewModel;
    final /* synthetic */ MutableState<Boolean> $mostrarDialogoBaja$delegate;
    final /* synthetic */ long $pacienteId;
    final /* synthetic */ long $primaryColor;
    final /* synthetic */ PsicologoSelfResponseDTO $psicologo;
    final /* synthetic */ MutableState<PsicologoSelfResponseDTO> $psicologoSeleccionado$delegate;
    final /* synthetic */ FontFamily $roboto;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ SnackbarHostState $snackbarHostState;

    ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1(PsicologoSelfResponseDTO psicologoSelfResponseDTO, FontFamily fontFamily, LoginViewModel loginViewModel, long j, CoroutineScope coroutineScope, long j2, long j3, MutableState<PsicologoSelfResponseDTO> mutableState, MutableState<Boolean> mutableState2, SnackbarHostState snackbarHostState) {
        this.$psicologo = psicologoSelfResponseDTO;
        this.$roboto = fontFamily;
        this.$loginViewModel = loginViewModel;
        this.$primaryColor = j;
        this.$scope = coroutineScope;
        this.$pacienteId = j2;
        this.$deleteColor = j3;
        this.$psicologoSeleccionado$delegate = mutableState;
        this.$mostrarDialogoBaja$delegate = mutableState2;
        this.$snackbarHostState = snackbarHostState;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
        invoke(columnScope, composer, num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C102@4354L4003:ListadoPsicologosScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2007772495, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:102)");
        }
        Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
        final PsicologoSelfResponseDTO psicologoSelfResponseDTO = this.$psicologo;
        final FontFamily fontFamily = this.$roboto;
        final LoginViewModel loginViewModel = this.$loginViewModel;
        long j = this.$primaryColor;
        final CoroutineScope coroutineScope = this.$scope;
        final long j2 = this.$pacienteId;
        long j3 = this.$deleteColor;
        final MutableState<PsicologoSelfResponseDTO> mutableState = this.$psicologoSeleccionado$delegate;
        final MutableState<Boolean> mutableState2 = this.$mostrarDialogoBaja$delegate;
        SnackbarHostState snackbarHostState = this.$snackbarHostState;
        ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
        ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
        CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
        int i = ((((6 << 3) & 112) << 6) & 896) | 6;
        ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
        if (!($composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        $composer.startReusableNode();
        if ($composer.getInserting()) {
            function0 = constructor;
            $composer.createNode(function0);
        } else {
            function0 = constructor;
            $composer.useNode();
        }
        Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
        Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
        Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
        Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
        int i2 = (i >> 6) & 14;
        ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        int i3 = ((6 >> 6) & 112) | 6;
        ComposerKt.sourceInformationMarkerStart($composer, 428317762, "C103@4423L209,108@4657L199,113@4881L207,118@5113L201,124@5340L41,126@5407L1397,153@6830L40,155@6956L16,156@7053L16,164@7413L43,159@7141L218,166@7547L124,158@7095L576,171@7796L539,171@7751L584:ListadoPsicologosScreen.kt#6w2cjo");
        TextKt.m2976Text4IGK_g("Nombre: " + psicologoSelfResponseDTO.getNombre() + " " + psicologoSelfResponseDTO.getApellido(), (Modifier) null, Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, fontFamily, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1573248, 0, 131002);
        TextKt.m2976Text4IGK_g("Especialidad: " + psicologoSelfResponseDTO.getEspecialidad(), (Modifier) null, Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, fontFamily, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1573248, 0, 131002);
        String descripcion = psicologoSelfResponseDTO.getDescripcion();
        if (descripcion == null) {
            descripcion = "-";
        }
        TextKt.m2976Text4IGK_g("Descripción: " + descripcion, (Modifier) null, Color.INSTANCE.m4726getDarkGray0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, fontFamily, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1573248, 0, 131002);
        String licencia = psicologoSelfResponseDTO.getLicencia();
        if (licencia == null) {
            licencia = "-";
        }
        TextKt.m2976Text4IGK_g("Licencia: " + licencia, (Modifier) null, Color.INSTANCE.m4726getDarkGray0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, fontFamily, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1573248, 0, 131002);
        SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
        Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
        ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
        ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
        int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
        CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
        int i4 = ((((54 << 3) & 112) << 6) & 896) | 6;
        ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
        if (!($composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        $composer.startReusableNode();
        if ($composer.getInserting()) {
            function02 = constructor2;
            $composer.createNode(function02);
        } else {
            function02 = constructor2;
            $composer.useNode();
        }
        Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
        Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
        Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
        Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
        int i5 = (i4 >> 6) & 14;
        ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
        int i6 = ((54 >> 6) & 112) | 6;
        RowScope rowScope = RowScopeInstance.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer, 1148030399, "C135@5886L42,131@5661L167,137@6023L125,130@5611L537,146@6520L43,142@6228L234,148@6658L120,141@6178L600:ListadoPsicologosScreen.kt#6w2cjo");
        ButtonColors buttonColorsM2092buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(j3, 0L, 0L, 0L, $composer, (ButtonDefaults.$stable << 12) | 6, 14);
        Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
        ComposerKt.sourceInformationMarkerStart($composer, 1561054492, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
        boolean zChanged = $composer.changed(psicologoSelfResponseDTO);
        Object objRememberedValue = $composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
            objRememberedValue = (Function0) new Function0<Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    mutableState.setValue(psicologoSelfResponseDTO);
                    ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$7(mutableState2, true);
                }
            };
            $composer.updateRememberedValue(objRememberedValue);
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        ButtonKt.Button((Function0) objRememberedValue, modifierWeight$default, false, null, buttonColorsM2092buttonColorsro_MJ88, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1766648379, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$2
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope2, Composer composer, Integer num) {
                invoke(rowScope2, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(RowScope Button, Composer $composer2, int $changed2) {
                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                ComposerKt.sourceInformation($composer2, "C138@6057L61:ListadoPsicologosScreen.kt#6w2cjo");
                if (!$composer2.shouldExecute(($changed2 & 17) != 16, $changed2 & 1)) {
                    $composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1766648379, $changed2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:138)");
                }
                TextKt.m2976Text4IGK_g("Dar de baja", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, fontFamily, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 1573254, 0, 131002);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }, $composer, 54), $composer, 805306368, 492);
        ButtonColors buttonColorsM2092buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(j, 0L, 0L, 0L, $composer, (ButtonDefaults.$stable << 12) | 6, 14);
        Modifier modifierWeight$default2 = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
        ComposerKt.sourceInformationMarkerStart($composer, 1561072703, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
        Object objRememberedValue2 = $composer.rememberedValue();
        if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            Object obj = (Function0) new Function0<Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$3$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }
            };
            $composer.updateRememberedValue(obj);
            objRememberedValue2 = obj;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        ButtonKt.Button((Function0) objRememberedValue2, modifierWeight$default2, false, null, buttonColorsM2092buttonColorsro_MJ882, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1006720558, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$4
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope2, Composer composer, Integer num) {
                invoke(rowScope2, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(RowScope Button, Composer $composer2, int $changed2) {
                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                ComposerKt.sourceInformation($composer2, "C149@6692L56:ListadoPsicologosScreen.kt#6w2cjo");
                if (!$composer2.shouldExecute(($changed2 & 17) != 16, $changed2 & 1)) {
                    $composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1006720558, $changed2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:149)");
                }
                TextKt.m2976Text4IGK_g("Editar", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, fontFamily, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 1573254, 0, 131002);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }, $composer, 54), $composer, 805306374, 492);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        $composer.endNode();
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
        State stateCollectAsState = SnapshotStateKt.collectAsState(loginViewModel.getAsignarPacienteSuccess(), null, $composer, 0, 1);
        State stateCollectAsState2 = SnapshotStateKt.collectAsState(loginViewModel.getAsignarPacienteError(), null, $composer, 0, 1);
        ButtonColors buttonColorsM2092buttonColorsro_MJ883 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(j, 0L, 0L, 0L, $composer, (ButtonDefaults.$stable << 12) | 6, 14);
        Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
        ComposerKt.sourceInformationMarkerStart($composer, -955931341, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
        boolean zChangedInstance = $composer.changedInstance(coroutineScope) | $composer.changedInstance(loginViewModel) | $composer.changed(j2) | $composer.changed(psicologoSelfResponseDTO);
        Object objRememberedValue3 = $composer.rememberedValue();
        if (zChangedInstance || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
            Object obj2 = (Function0) new Function0<Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1

                /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1$1, reason: invalid class name */
                /* JADX INFO: compiled from: ListadoPsicologosScreen.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
                @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1$1", f = "ListadoPsicologosScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ LoginViewModel $loginViewModel;
                    final /* synthetic */ long $pacienteId;
                    final /* synthetic */ PsicologoSelfResponseDTO $psicologo;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(LoginViewModel loginViewModel, long j, PsicologoSelfResponseDTO psicologoSelfResponseDTO, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$loginViewModel = loginViewModel;
                        this.$pacienteId = j;
                        this.$psicologo = psicologoSelfResponseDTO;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.$loginViewModel, this.$pacienteId, this.$psicologo, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object $result) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        switch (this.label) {
                            case 0:
                                ResultKt.throwOnFailure($result);
                                this.$loginViewModel.asignarPaciente(this.$pacienteId, this.$psicologo.getIdPsicologo());
                                return Unit.INSTANCE;
                            default:
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(loginViewModel, j2, psicologoSelfResponseDTO, null), 3, null);
                }
            };
            $composer.updateRememberedValue(obj2);
            objRememberedValue3 = obj2;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        ButtonKt.Button((Function0) objRememberedValue3, modifierFillMaxWidth$default2, false, null, buttonColorsM2092buttonColorsro_MJ883, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(119350697, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$3
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope2, Composer composer, Integer num) {
                invoke(rowScope2, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(RowScope Button, Composer $composer2, int $changed2) {
                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                ComposerKt.sourceInformation($composer2, "C167@7577L68:ListadoPsicologosScreen.kt#6w2cjo");
                if (!$composer2.shouldExecute(($changed2 & 17) != 16, $changed2 & 1)) {
                    $composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(119350697, $changed2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:167)");
                }
                TextKt.m2976Text4IGK_g("Asignar a paciente", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, fontFamily, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 1573254, 0, 131002);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }, $composer, 54), $composer, 805306416, 492);
        Boolean boolValueOf = Boolean.valueOf(invoke$lambda$7$lambda$3(stateCollectAsState));
        String strInvoke$lambda$7$lambda$4 = invoke$lambda$7$lambda$4(stateCollectAsState2);
        ComposerKt.sourceInformationMarkerStart($composer, -955910060, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
        boolean zChanged2 = $composer.changed(stateCollectAsState) | $composer.changedInstance(loginViewModel) | $composer.changed(stateCollectAsState2);
        Object objRememberedValue4 = $composer.rememberedValue();
        if (zChanged2 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
            Object obj3 = (Function2) new ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1(snackbarHostState, loginViewModel, stateCollectAsState, stateCollectAsState2, null);
            $composer.updateRememberedValue(obj3);
            objRememberedValue4 = obj3;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        EffectsKt.LaunchedEffect(boolValueOf, strInvoke$lambda$7$lambda$4, (Function2) objRememberedValue4, $composer, 0);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        $composer.endNode();
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$7$lambda$3(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String invoke$lambda$7$lambda$4(State<String> state) {
        return (String) state.getValue();
    }
}
