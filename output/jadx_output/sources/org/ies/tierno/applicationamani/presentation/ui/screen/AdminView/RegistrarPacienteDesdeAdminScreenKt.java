package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.VisibilityKt;
import androidx.compose.material.icons.filled.VisibilityOffKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import com.google.firebase.firestore.model.Values;
import com.google.logging.type.LogSeverity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;
import org.ies.tierno.applicationamani.ui.theme.TypeKt;

/* JADX INFO: compiled from: RegistrarPacienteDesdeAdminScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a1\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\fH\u0007¢\u0006\u0002\u0010\r¨\u0006\u000e²\u0006\n\u0010\u000f\u001a\u00020\tX\u008a\u0084\u0002²\u0006\n\u0010\u0010\u001a\u00020\tX\u008a\u0084\u0002²\u0006\n\u0010\u0011\u001a\u00020\tX\u008a\u0084\u0002²\u0006\n\u0010\u0012\u001a\u00020\tX\u008a\u0084\u0002²\u0006\n\u0010\u0013\u001a\u00020\tX\u008a\u008e\u0002²\u0006\n\u0010\u0014\u001a\u00020\tX\u008a\u008e\u0002²\u0006\n\u0010\u0015\u001a\u00020\tX\u008a\u008e\u0002²\u0006\n\u0010\u0016\u001a\u00020\u0017X\u008a\u008e\u0002"}, d2 = {"RegistrarPacienteDesdeAdminScreen", "", "navController", "Landroidx/navigation/NavController;", "loginViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V", "CustomTextFields", Values.VECTOR_MAP_VECTORS_KEY, "", "placeholder", "onChange", "Lkotlin/Function1;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "app", "nombre", "apellido", "email", HintConstants.AUTOFILL_HINT_PASSWORD, "telefono", "genero", "fechaNacimiento", "passwordVisible", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class RegistrarPacienteDesdeAdminScreenKt {
    static final Unit CustomTextFields$lambda$46(String str, String str2, Function1 function1, int i, Composer composer, int i2) {
        CustomTextFields(str, str2, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$44(NavController navController, LoginViewModel loginViewModel, int i, Composer composer, int i2) {
        RegistrarPacienteDesdeAdminScreen(navController, loginViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void RegistrarPacienteDesdeAdminScreen(final NavController navController, LoginViewModel loginViewModel, Composer $composer, final int $changed) {
        Composer $composer2;
        int $dirty;
        MutableState fechaNacimiento$delegate;
        final LoginViewModel loginViewModel2 = loginViewModel;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(loginViewModel2, "loginViewModel");
        Composer $composer3 = $composer.startRestartGroup(1908170186);
        ComposerKt.sourceInformation($composer3, "C(RegistrarPacienteDesdeAdminScreen)N(navController,loginViewModel)60@2795L16,61@2860L16,62@2919L16,63@2987L16,66@3055L31,67@3109L31,68@3172L31,70@3236L34,74@3357L87,77@3455L3199,72@3280L3374:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changedInstance(loginViewModel2) ? 32 : 16;
        }
        if ($composer3.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1908170186, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen (RegistrarPacienteDesdeAdminScreen.kt:53)");
            }
            long backgroundColor = ColorKt.Color(4291608804L);
            final long primaryColor = ColorKt.Color(4285293567L);
            final FontFamily roboto = TypeKt.getRoboto();
            final State nombre$delegate = SnapshotStateKt.collectAsState(loginViewModel2.getNombre(), null, $composer3, 0, 1);
            final State apellido$delegate = SnapshotStateKt.collectAsState(loginViewModel2.getApellido(), null, $composer3, 0, 1);
            final State email$delegate = SnapshotStateKt.collectAsState(loginViewModel2.getEmail(), null, $composer3, 0, 1);
            final State password$delegate = SnapshotStateKt.collectAsState(loginViewModel2.getRegPassword(), null, $composer3, 0, 1);
            ComposerKt.sourceInformationMarkerStart($composer3, -199467447, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            Object objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                $dirty = $dirty2;
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
                $composer3.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            } else {
                $dirty = $dirty2;
            }
            final MutableState telefono$delegate = (MutableState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -199465719, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer3.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                MutableState mutableStateMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
                $composer3.updateRememberedValue(mutableStateMutableStateOf$default);
                objRememberedValue2 = mutableStateMutableStateOf$default;
            }
            final MutableState genero$delegate = (MutableState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -199463703, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            Object objRememberedValue3 = $composer3.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
                $composer3.updateRememberedValue(objMutableStateOf$default2);
                objRememberedValue3 = objMutableStateOf$default2;
            }
            MutableState fechaNacimiento$delegate2 = (MutableState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -199461652, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            Object objRememberedValue4 = $composer3.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                fechaNacimiento$delegate = fechaNacimiento$delegate2;
                Object objMutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer3.updateRememberedValue(objMutableStateOf$default3);
                objRememberedValue4 = objMutableStateOf$default3;
            } else {
                fechaNacimiento$delegate = fechaNacimiento$delegate2;
            }
            final MutableState passwordVisible$delegate = (MutableState) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            loginViewModel2 = loginViewModel;
            final MutableState fechaNacimiento$delegate3 = fechaNacimiento$delegate;
            $composer2 = $composer3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(-1687454842, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$16(navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, null, null, 0, backgroundColor, 0L, null, ComposableLambdaKt.rememberComposableLambda(-457390693, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43(loginViewModel2, navController, primaryColor, nombre$delegate, apellido$delegate, email$delegate, telefono$delegate, genero$delegate, fechaNacimiento$delegate3, password$delegate, passwordVisible$delegate, roboto, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), $composer2, 806879280, 445);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$44(navController, loginViewModel2, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final String RegistrarPacienteDesdeAdminScreen$lambda$0(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegistrarPacienteDesdeAdminScreen$lambda$1(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegistrarPacienteDesdeAdminScreen$lambda$2(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegistrarPacienteDesdeAdminScreen$lambda$3(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegistrarPacienteDesdeAdminScreen$lambda$5(MutableState<String> mutableState) {
        return mutableState.getValue();
    }

    private static final String RegistrarPacienteDesdeAdminScreen$lambda$8(MutableState<String> mutableState) {
        return mutableState.getValue();
    }

    private static final String RegistrarPacienteDesdeAdminScreen$lambda$11(MutableState<String> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean RegistrarPacienteDesdeAdminScreen$lambda$14(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void RegistrarPacienteDesdeAdminScreen$lambda$15(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$16(NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C75@3375L55:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1687454842, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:75)");
            }
            MenuAdministradorKt.MenuAdministrador("Registrar Psicólogo", $navController, false, false, null, null, $composer, 6, 60);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x05c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43(final LoginViewModel $loginViewModel, final NavController $navController, long $primaryColor, State $nombre$delegate, State $apellido$delegate, State $email$delegate, final MutableState $telefono$delegate, final MutableState $genero$delegate, final MutableState $fechaNacimiento$delegate, State $password$delegate, final MutableState $passwordVisible$delegate, final FontFamily $roboto, PaddingValues padding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Object obj;
        String str;
        int i;
        Object obj2;
        PasswordVisualTransformation passwordVisualTransformation;
        Modifier modifier;
        boolean zChangedInstance;
        Object objRememberedValue;
        Composer composer;
        Composer composer2;
        boolean zChangedInstance2;
        Object objRememberedValue2;
        Intrinsics.checkNotNullParameter(padding, "padding");
        ComposerKt.sourceInformation($composer, "CN(padding)79@3481L3163:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(padding) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if ($composer.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-457390693, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:79)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxSize$default(PaddingKt.padding(Modifier.INSTANCE, padding), 0.0f, 1, null), Dp.m7505constructorimpl(20));
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i2 = ((((48 << 3) & 112) << 6) & 896) | 6;
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
            int i3 = (i2 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i4 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -388838750, "C87@3769L32,87@3734L67,88@3857L34,88@3818L73,89@3941L31,89@3908L64,90@4028L17,90@3989L56,91@4103L15,91@4062L56,92@4202L24,92@4135L91,109@5192L152,96@4356L37,97@4429L43,99@4636L396,94@4271L1091,115@5380L41,119@5512L335,130@6068L43,131@6130L99,118@5474L755,137@6327L32,142@6553L77,136@6281L349:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
            String strRegistrarPacienteDesdeAdminScreen$lambda$0 = RegistrarPacienteDesdeAdminScreen$lambda$0($nombre$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1536565583, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            boolean zChangedInstance3 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$18$lambda$17($loginViewModel, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue3);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CustomTextFields(strRegistrarPacienteDesdeAdminScreen$lambda$0, "Nombre", (Function1) objRememberedValue3, $composer, 48);
            String strRegistrarPacienteDesdeAdminScreen$lambda$1 = RegistrarPacienteDesdeAdminScreen$lambda$1($apellido$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1536562765, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            boolean zChangedInstance4 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue4 = $composer.rememberedValue();
            if (zChangedInstance4 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$20$lambda$19($loginViewModel, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue4);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CustomTextFields(strRegistrarPacienteDesdeAdminScreen$lambda$1, "Apellido", (Function1) objRememberedValue4, $composer, 48);
            String strRegistrarPacienteDesdeAdminScreen$lambda$2 = RegistrarPacienteDesdeAdminScreen$lambda$2($email$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1536560080, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            boolean zChangedInstance5 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue5 = $composer.rememberedValue();
            if (zChangedInstance5 || objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$22$lambda$21($loginViewModel, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue5);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CustomTextFields(strRegistrarPacienteDesdeAdminScreen$lambda$2, "Email", (Function1) objRememberedValue5, $composer, 48);
            String strRegistrarPacienteDesdeAdminScreen$lambda$5 = RegistrarPacienteDesdeAdminScreen$lambda$5($telefono$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1536557310, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            Object objRememberedValue6 = $composer.rememberedValue();
            if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue6 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$24$lambda$23($telefono$delegate, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue6);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CustomTextFields(strRegistrarPacienteDesdeAdminScreen$lambda$5, "Teléfono", (Function1) objRememberedValue6, $composer, 432);
            String strRegistrarPacienteDesdeAdminScreen$lambda$8 = RegistrarPacienteDesdeAdminScreen$lambda$8($genero$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1536554912, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            Object objRememberedValue7 = $composer.rememberedValue();
            if (objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$26$lambda$25($genero$delegate, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(obj);
            } else {
                obj = objRememberedValue7;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CustomTextFields(strRegistrarPacienteDesdeAdminScreen$lambda$8, "Género (M/F)", (Function1) obj, $composer, 432);
            String strRegistrarPacienteDesdeAdminScreen$lambda$11 = RegistrarPacienteDesdeAdminScreen$lambda$11($fechaNacimiento$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1536551735, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            Object objRememberedValue8 = $composer.rememberedValue();
            if (objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue8 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$28$lambda$27($fechaNacimiento$delegate, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue8);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CustomTextFields(strRegistrarPacienteDesdeAdminScreen$lambda$11, "Fecha nacimiento (YYYY-MM-DD)", (Function1) objRememberedValue8, $composer, 432);
            String strRegistrarPacienteDesdeAdminScreen$lambda$3 = RegistrarPacienteDesdeAdminScreen$lambda$3($password$delegate);
            if (RegistrarPacienteDesdeAdminScreen$lambda$14($passwordVisible$delegate)) {
                passwordVisualTransformation = VisualTransformation.INSTANCE.getNone();
                str = strRegistrarPacienteDesdeAdminScreen$lambda$3;
                i = 1;
                obj2 = null;
            } else {
                str = strRegistrarPacienteDesdeAdminScreen$lambda$3;
                i = 1;
                obj2 = null;
                passwordVisualTransformation = new PasswordVisualTransformation((char) 0, 1, null);
            }
            VisualTransformation visualTransformation = passwordVisualTransformation;
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i, obj2);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            TextFieldColors textFieldColorsM2957colors0hiis_0 = TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, Color.INSTANCE.m4734getWhite0d7_KjU(), Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, 0L, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 221184, 0, 0, 0, 3072, 2147483599, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -1536546794, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            boolean zChangedInstance6 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue9 = $composer.rememberedValue();
            if (zChangedInstance6) {
                modifier = modifierFillMaxWidth$default;
            } else {
                modifier = modifierFillMaxWidth$default;
                if (objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                TextFieldKt.TextField(str, (Function1<? super String, Unit>) objRememberedValue9, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1618334196, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$31($roboto, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-807814582, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35($passwordVisible$delegate, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, visualTransformation, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) roundedCornerShapeM1126RoundedCornerShape0680j_4, textFieldColorsM2957colors0hiis_0, $composer, 817889664, 0, 0, 2080120);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), $composer, 6);
                ComposerKt.sourceInformationMarkerStart($composer, -1536509504, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
                zChangedInstance = $composer.changedInstance($loginViewModel) | $composer.changedInstance($navController);
                objRememberedValue = $composer.rememberedValue();
                if (!zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    composer = $composer;
                    objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$37$lambda$36($loginViewModel, $navController, $telefono$delegate, $genero$delegate, $fechaNacimiento$delegate);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue);
                } else {
                    composer = $composer;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer2 = composer;
                ButtonKt.Button((Function0) objRememberedValue, SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(55)), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($primaryColor, 0L, 0L, 0L, composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(868659201, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj3, Object obj4, Object obj5) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$38($roboto, (RowScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, composer2, 54), composer2, 805306416, 484);
                ComposerKt.sourceInformationMarkerStart(composer2, -1536483727, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
                zChangedInstance2 = composer2.changedInstance($navController);
                objRememberedValue2 = composer2.rememberedValue();
                if (!zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$40$lambda$39($navController);
                        }
                    };
                    composer2.updateRememberedValue(obj3);
                    objRememberedValue2 = obj3;
                }
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ButtonKt.OutlinedButton((Function0) objRememberedValue2, SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(55)), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), null, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1742466435, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj4, Object obj5, Object obj6) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$41($roboto, (RowScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                    }
                }, composer2, 54), composer2, 805306416, LogSeverity.ERROR_VALUE);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            objRememberedValue9 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$30$lambda$29($loginViewModel, (String) obj4);
                }
            };
            $composer.updateRememberedValue(objRememberedValue9);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextFieldKt.TextField(str, (Function1<? super String, Unit>) objRememberedValue9, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1618334196, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj32, Object obj4) {
                    return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$31($roboto, (Composer) obj32, ((Integer) obj4).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-807814582, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj32, Object obj4) {
                    return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35($passwordVisible$delegate, (Composer) obj32, ((Integer) obj4).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, visualTransformation, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) roundedCornerShapeM1126RoundedCornerShape0680j_4, textFieldColorsM2957colors0hiis_0, $composer, 817889664, 0, 0, 2080120);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), $composer, 6);
            ComposerKt.sourceInformationMarkerStart($composer, -1536509504, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            zChangedInstance = $composer.changedInstance($loginViewModel) | $composer.changedInstance($navController);
            objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance) {
                composer = $composer;
                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$37$lambda$36($loginViewModel, $navController, $telefono$delegate, $genero$delegate, $fechaNacimiento$delegate);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer2 = composer;
                ButtonKt.Button((Function0) objRememberedValue, SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(55)), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($primaryColor, 0L, 0L, 0L, composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(868659201, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj32, Object obj4, Object obj5) {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$38($roboto, (RowScope) obj32, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, composer2, 54), composer2, 805306416, 484);
                ComposerKt.sourceInformationMarkerStart(composer2, -1536483727, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
                zChangedInstance2 = composer2.changedInstance($navController);
                objRememberedValue2 = composer2.rememberedValue();
                if (!zChangedInstance2) {
                    Object obj32 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$40$lambda$39($navController);
                        }
                    };
                    composer2.updateRememberedValue(obj32);
                    objRememberedValue2 = obj32;
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ButtonKt.OutlinedButton((Function0) objRememberedValue2, SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(55)), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), null, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1742466435, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj4, Object obj5, Object obj6) {
                            return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$41($roboto, (RowScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                        }
                    }, composer2, 54), composer2, 805306416, LogSeverity.ERROR_VALUE);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$18$lambda$17(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setNombre(it);
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$20$lambda$19(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setApellido(it);
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$22$lambda$21(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setEmail(it);
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$24$lambda$23(MutableState $telefono$delegate, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $telefono$delegate.setValue(it);
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$26$lambda$25(MutableState $genero$delegate, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $genero$delegate.setValue(it);
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$28$lambda$27(MutableState $fechaNacimiento$delegate, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $fechaNacimiento$delegate.setValue(it);
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$30$lambda$29(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setRegPassword(it);
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$31(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C97@4431L39:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1618334196, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:97)");
            }
            TextKt.m2976Text4IGK_g("Contraseña", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35(final MutableState $passwordVisible$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C100@4683L38,100@4723L287,100@4662L348:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-807814582, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:100)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 1079268816, "CC(remember):RegistrarPacienteDesdeAdminScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35$lambda$33$lambda$32($passwordVisible$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableLambdaKt.rememberComposableLambda(-1154441779, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35$lambda$34($passwordVisible$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35$lambda$33$lambda$32(MutableState $passwordVisible$delegate) {
        RegistrarPacienteDesdeAdminScreen$lambda$15($passwordVisible$delegate, !RegistrarPacienteDesdeAdminScreen$lambda$14($passwordVisible$delegate));
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$35$lambda$34(MutableState $passwordVisible$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C101@4753L231:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1154441779, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:101)");
            }
            IconKt.m2433Iconww6aTOc(RegistrarPacienteDesdeAdminScreen$lambda$14($passwordVisible$delegate) ? VisibilityKt.getVisibility(Icons.INSTANCE.getDefault()) : VisibilityOffKt.getVisibilityOff(Icons.INSTANCE.getDefault()), "Ver contraseña", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$37$lambda$36(LoginViewModel $loginViewModel, NavController $navController, MutableState $telefono$delegate, MutableState $genero$delegate, MutableState $fechaNacimiento$delegate) {
        $loginViewModel.setTelefono(RegistrarPacienteDesdeAdminScreen$lambda$5($telefono$delegate));
        $loginViewModel.setGenero(RegistrarPacienteDesdeAdminScreen$lambda$8($genero$delegate));
        $loginViewModel.setFechaNacimiento(RegistrarPacienteDesdeAdminScreen$lambda$11($fechaNacimiento$delegate));
        $navController.popBackStack();
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$38(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C132@6152L59:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(868659201, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:132)");
            }
            TextKt.m2976Text4IGK_g("Registrar", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1573254, 0, 131002);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$40$lambda$39(NavController $navController) {
        $navController.popBackStack();
        return Unit.INSTANCE;
    }

    static final Unit RegistrarPacienteDesdeAdminScreen$lambda$43$lambda$42$lambda$41(FontFamily $roboto, RowScope OutlinedButton, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(OutlinedButton, "$this$OutlinedButton");
        ComposerKt.sourceInformation($composer, "C143@6575L37:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1742466435, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen.<anonymous>.<anonymous>.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:143)");
            }
            TextKt.m2976Text4IGK_g("Cancelar", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void CustomTextFields(String value, final String placeholder, Function1<? super String, Unit> onChange, Composer $composer, final int $changed) {
        final Function1<? super String, Unit> function1;
        Composer $composer2;
        final String value2 = value;
        Intrinsics.checkNotNullParameter(value2, "value");
        Intrinsics.checkNotNullParameter(placeholder, "placeholder");
        Intrinsics.checkNotNullParameter(onChange, "onChange");
        Composer $composer3 = $composer.startRestartGroup(1273115912);
        ComposerKt.sourceInformation($composer3, "C(CustomTextFields)N(value,placeholder,onChange)166@7364L128,163@7207L21,160@7105L397:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(value2) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(placeholder) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(onChange) ? 256 : 128;
        }
        if (!$composer3.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            function1 = onChange;
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1273115912, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CustomTextFields (RegistrarPacienteDesdeAdminScreen.kt:159)");
            }
            $composer2 = $composer3;
            int $dirty2 = $dirty;
            value2 = value;
            function1 = onChange;
            TextFieldKt.TextField(value2, function1, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1665219667, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RegistrarPacienteDesdeAdminScreenKt.CustomTextFields$lambda$45(placeholder, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, Color.INSTANCE.m4734getWhite0d7_KjU(), Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, 0L, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer2, 221184, 0, 0, 0, 3072, 2147483599, 4095), $composer2, ($dirty2 & 14) | 12583296 | (($dirty2 >> 3) & 112), 0, 0, 2097016);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RegistrarPacienteDesdeAdminScreenKt.CustomTextFields$lambda$46(value2, placeholder, function1, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit CustomTextFields$lambda$45(String $placeholder, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C163@7209L17:RegistrarPacienteDesdeAdminScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1665219667, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CustomTextFields.<anonymous> (RegistrarPacienteDesdeAdminScreen.kt:163)");
            }
            TextKt.m2976Text4IGK_g($placeholder, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }
}
