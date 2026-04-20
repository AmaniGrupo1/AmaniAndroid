package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import android.graphics.Color;
import androidx.autofill.HintConstants;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
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
import androidx.compose.material3.ButtonColors;
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
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
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
import androidx.compose.ui.unit.TextUnitKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
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

/* JADX INFO: compiled from: AgregarAdministrador.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006¨\u0006\u0007²\u0006\n\u0010\b\u001a\u00020\tX\u008a\u008e\u0002²\u0006\n\u0010\n\u001a\u00020\tX\u008a\u0084\u0002²\u0006\n\u0010\u000b\u001a\u00020\tX\u008a\u0084\u0002²\u0006\n\u0010\f\u001a\u00020\tX\u008a\u0084\u0002²\u0006\n\u0010\r\u001a\u00020\tX\u008a\u0084\u0002²\u0006\n\u0010\u000e\u001a\u00020\u000fX\u008a\u008e\u0002"}, d2 = {"AgregarAdministrador", "", "navController", "Landroidx/navigation/NavController;", "loginViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V", "app", "currentRoute", "", HintConstants.AUTOFILL_HINT_NAME, "surname", "email", HintConstants.AUTOFILL_HINT_PASSWORD, "existe", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class AgregarAdministradorKt {
    static final Unit AgregarAdministrador$lambda$35(NavController navController, LoginViewModel loginViewModel, int i, Composer composer, int i2) {
        AgregarAdministrador(navController, loginViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void AgregarAdministrador(final NavController navController, LoginViewModel loginViewModel, Composer $composer, final int $changed) {
        Composer $composer2;
        int colorButton;
        final LoginViewModel loginViewModel2 = loginViewModel;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(loginViewModel2, "loginViewModel");
        Composer $composer3 = $composer.startRestartGroup(469322132);
        ComposerKt.sourceInformation($composer3, "C(AgregarAdministrador)N(navController,loginViewModel)59@2506L40,68@2804L16,69@2864L16,70@2919L16,71@2983L16,73@3019L33,77@3163L81,80@3251L5204,75@3094L5361:AgregarAdministrador.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(loginViewModel2) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (!$composer3.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(469322132, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador (AgregarAdministrador.kt:57)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 47007164, "CC(remember):AgregarAdministrador.kt#9igjgp");
            Object objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("pacientes", null, 2, null);
                $composer3.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            long backgroundColor = ColorKt.Color(4291608804L);
            int colorButton2 = Color.parseColor("#CCC0E4");
            final FontFamily roboto = TypeKt.getRoboto();
            TypeKt.getBarlowCondensed();
            final State name$delegate = SnapshotStateKt.collectAsState(loginViewModel2.getNombre(), null, $composer3, 0, 1);
            final State surname$delegate = SnapshotStateKt.collectAsState(loginViewModel2.getApellido(), null, $composer3, 0, 1);
            final State email$delegate = SnapshotStateKt.collectAsState(loginViewModel2.getEmail(), null, $composer3, 0, 1);
            final State password$delegate = SnapshotStateKt.collectAsState(loginViewModel2.getRegPassword(), null, $composer3, 0, 1);
            ComposerKt.sourceInformationMarkerStart($composer3, 47023573, "CC(remember):AgregarAdministrador.kt#9igjgp");
            Object objRememberedValue2 = $composer3.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                colorButton = colorButton2;
                Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null);
                $composer3.updateRememberedValue(objMutableStateOf$default2);
                objRememberedValue2 = objMutableStateOf$default2;
            } else {
                colorButton = colorButton2;
            }
            final MutableState existe$delegate = (MutableState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            loginViewModel2 = loginViewModel;
            final int colorButton3 = colorButton;
            $composer2 = $composer3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(-385607088, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$10(navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, null, null, 0, backgroundColor, 0L, null, ComposableLambdaKt.rememberComposableLambda(-1738582875, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34(loginViewModel2, colorButton3, navController, name$delegate, roboto, surname$delegate, email$delegate, password$delegate, existe$delegate, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), $composer2, 806879280, 445);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$35(navController, loginViewModel2, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final String AgregarAdministrador$lambda$3(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregarAdministrador$lambda$4(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregarAdministrador$lambda$5(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregarAdministrador$lambda$6(State<String> state) {
        return (String) state.getValue();
    }

    private static final boolean AgregarAdministrador$lambda$8(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void AgregarAdministrador$lambda$9(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit AgregarAdministrador$lambda$10(NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C78@3177L57:AgregarAdministrador.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-385607088, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous> (AgregarAdministrador.kt:78)");
            }
            MenuAdministradorKt.MenuAdministrador("Agregar administrador", $navController, false, false, null, null, $composer, 6, 60);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x060c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0618  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x071c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x07dd  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x07e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x084b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit AgregarAdministrador$lambda$34(final LoginViewModel $loginViewModel, int $colorButton, final NavController $navController, State $name$delegate, final FontFamily $roboto, State $surname$delegate, State $email$delegate, State $password$delegate, final MutableState $existe$delegate, PaddingValues padding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        String str;
        boolean zChangedInstance;
        String str2;
        Modifier modifier;
        Composer composer;
        PasswordVisualTransformation none;
        boolean zChangedInstance2;
        String str3;
        boolean zChangedInstance3;
        RoundedCornerShape roundedCornerShape;
        boolean zChangedInstance4;
        Object objRememberedValue;
        Intrinsics.checkNotNullParameter(padding, "padding");
        ComposerKt.sourceInformation($composer, "CN(padding)82@3273L5176:AgregarAdministrador.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(padding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1738582875, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous> (AgregarAdministrador.kt:82)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxSize$default(PaddingKt.padding(Modifier.INSTANCE, padding), 0.0f, 1, null), Dp.m7505constructorimpl(24));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i2 = ((i << 6) & 896) | 6;
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
            int i4 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1283258332, "C90@3499L41,101@3950L244,98@3767L32,99@3831L39,93@3576L632,109@4222L41,120@4682L244,117@4495L34,118@4561L41,112@4301L639,128@4954L41,139@5403L244,136@5222L31,137@5285L38,131@5030L631,147@5675L41,164@6582L244,154@5948L37,155@6017L41,157@6205L297,149@5753L1087,172@6854L41,182@7268L135,181@7191L35,186@7418L232,175@6940L710,195@7664L41,205@8074L135,204@8000L32,209@8224L215,198@7749L690:AgregarAdministrador.kt#6w2cjo");
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(40)), $composer, 6);
            Modifier modifierM264backgroundbw27NRU$default = BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), null, 2, null);
            String strAgregarAdministrador$lambda$3 = AgregarAdministrador$lambda$3($name$delegate);
            TextFieldColors textFieldColorsM2957colors0hiis_0 = TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, null, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 100884480, 48, 0, 0, 3072, 2147481295, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1149777755, "CC(remember):AgregarAdministrador.kt#9igjgp");
            boolean zChangedInstance5 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChangedInstance5 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$12$lambda$11($loginViewModel, (String) obj);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue2);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextFieldKt.TextField(strAgregarAdministrador$lambda$3, (Function1<? super String, Unit>) objRememberedValue2, modifierM264backgroundbw27NRU$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1275193430, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$13($roboto, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_0, $composer, 12583296, 12582912, 0, 4063096);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), $composer, 6);
            Modifier modifierM264backgroundbw27NRU$default2 = BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), null, 2, null);
            String strAgregarAdministrador$lambda$4 = AgregarAdministrador$lambda$4($surname$delegate);
            TextFieldColors textFieldColorsM2957colors0hiis_02 = TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, null, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 100884480, 48, 0, 0, 3072, 2147481295, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1149801053, "CC(remember):AgregarAdministrador.kt#9igjgp");
            boolean zChangedInstance6 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (zChangedInstance6) {
                str = strAgregarAdministrador$lambda$4;
            } else {
                str = strAgregarAdministrador$lambda$4;
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                TextFieldKt.TextField(str, (Function1<? super String, Unit>) objRememberedValue3, modifierM264backgroundbw27NRU$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(6151693, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$16($roboto, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_02, $composer, 12583296, 12582912, 0, 4063096);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), $composer, 6);
                Modifier modifierM264backgroundbw27NRU$default3 = BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), null, 2, null);
                String strAgregarAdministrador$lambda$5 = AgregarAdministrador$lambda$5($email$delegate);
                TextFieldColors textFieldColorsM2957colors0hiis_03 = TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, null, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 100884480, 48, 0, 0, 3072, 2147481295, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 1149824314, "CC(remember):AgregarAdministrador.kt#9igjgp");
                zChangedInstance = $composer.changedInstance($loginViewModel);
                Object objRememberedValue4 = $composer.rememberedValue();
                if (zChangedInstance) {
                    str2 = strAgregarAdministrador$lambda$5;
                    if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    TextFieldKt.TextField(str2, (Function1<? super String, Unit>) objRememberedValue4, modifierM264backgroundbw27NRU$default3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1858065138, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda13
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$19($roboto, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_03, $composer, 12583296, 12582912, 0, 4063096);
                    SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), $composer, 6);
                    Modifier modifierM264backgroundbw27NRU$default4 = BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), null, 2, null);
                    String strAgregarAdministrador$lambda$6 = AgregarAdministrador$lambda$6($password$delegate);
                    if (AgregarAdministrador$lambda$8($existe$delegate)) {
                        modifier = modifierM264backgroundbw27NRU$default4;
                        composer = $composer;
                        none = new PasswordVisualTransformation((char) 0, 1, null);
                    } else {
                        modifier = modifierM264backgroundbw27NRU$default4;
                        composer = $composer;
                        none = VisualTransformation.INSTANCE.getNone();
                    }
                    TextFieldColors textFieldColorsM2957colors0hiis_04 = TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, null, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, 100884480, 48, 0, 0, 3072, 2147481295, 4095);
                    Composer composer2 = composer;
                    ComposerKt.sourceInformationMarkerStart(composer2, 1149847552, "CC(remember):AgregarAdministrador.kt#9igjgp");
                    zChangedInstance2 = composer2.changedInstance($loginViewModel);
                    Object objRememberedValue5 = composer2.rememberedValue();
                    if (zChangedInstance2) {
                        str3 = strAgregarAdministrador$lambda$6;
                    } else {
                        str3 = strAgregarAdministrador$lambda$6;
                        if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        TextFieldKt.TextField(str3, (Function1<? super String, Unit>) objRememberedValue5, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(572685327, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda15
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$22($roboto, (Composer) obj, ((Integer) obj2).intValue());
                            }
                        }, composer2, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-745446835, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda16
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$26($existe$delegate, (Composer) obj, ((Integer) obj2).intValue());
                            }
                        }, composer2, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, none, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_04, composer2, 817889664, 12582912, 0, 4046200);
                        SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer2, 6);
                        Modifier modifierM850height3ABfNKs = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
                        RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
                        BorderStroke borderStrokeM290BorderStrokecXLIe8U = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
                        ButtonColors buttonColorsM2092buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer2, (ButtonDefaults.$stable << 12) | 6, 12);
                        ComposerKt.sourceInformationMarkerStart(composer2, 1149887326, "CC(remember):AgregarAdministrador.kt#9igjgp");
                        zChangedInstance3 = composer2.changedInstance($loginViewModel);
                        Object objRememberedValue6 = composer2.rememberedValue();
                        if (zChangedInstance3) {
                            roundedCornerShape = roundedCornerShapeM1126RoundedCornerShape0680j_4;
                            if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ButtonKt.Button((Function0) objRememberedValue6, modifierM850height3ABfNKs, false, roundedCornerShape, buttonColorsM2092buttonColorsro_MJ88, null, borderStrokeM290BorderStrokecXLIe8U, null, null, ComposableLambdaKt.rememberComposableLambda(-1100057973, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda6
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj, Object obj2, Object obj3) {
                                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$29($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                                }
                            }, composer2, 54), composer2, 806879280, 420);
                            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer2, 6);
                            Modifier modifierM850height3ABfNKs2 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
                            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
                            BorderStroke borderStrokeM290BorderStrokecXLIe8U2 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
                            ButtonColors buttonColorsM2092buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer2, (ButtonDefaults.$stable << 12) | 6, 12);
                            ComposerKt.sourceInformationMarkerStart(composer2, 1149913211, "CC(remember):AgregarAdministrador.kt#9igjgp");
                            zChangedInstance4 = composer2.changedInstance($navController);
                            objRememberedValue = composer2.rememberedValue();
                            if (zChangedInstance4 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda7
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$31$lambda$30($navController);
                                    }
                                };
                                composer2.updateRememberedValue(objRememberedValue);
                            }
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs2, false, roundedCornerShapeM1126RoundedCornerShape0680j_42, buttonColorsM2092buttonColorsro_MJ882, null, borderStrokeM290BorderStrokecXLIe8U2, null, null, ComposableLambdaKt.rememberComposableLambda(-1982812414, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda8
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj, Object obj2, Object obj3) {
                                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$32($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                                }
                            }, composer2, 54), composer2, 806879280, 420);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            $composer.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        } else {
                            roundedCornerShape = roundedCornerShapeM1126RoundedCornerShape0680j_4;
                        }
                        objRememberedValue6 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda17
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$28$lambda$27($loginViewModel);
                            }
                        };
                        composer2.updateRememberedValue(objRememberedValue6);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ButtonKt.Button((Function0) objRememberedValue6, modifierM850height3ABfNKs, false, roundedCornerShape, buttonColorsM2092buttonColorsro_MJ88, null, borderStrokeM290BorderStrokecXLIe8U, null, null, ComposableLambdaKt.rememberComposableLambda(-1100057973, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda6
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj, Object obj2, Object obj3) {
                                return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$29($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                            }
                        }, composer2, 54), composer2, 806879280, 420);
                        SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer2, 6);
                        Modifier modifierM850height3ABfNKs22 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
                        RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_422 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
                        BorderStroke borderStrokeM290BorderStrokecXLIe8U22 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
                        ButtonColors buttonColorsM2092buttonColorsro_MJ8822 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer2, (ButtonDefaults.$stable << 12) | 6, 12);
                        ComposerKt.sourceInformationMarkerStart(composer2, 1149913211, "CC(remember):AgregarAdministrador.kt#9igjgp");
                        zChangedInstance4 = composer2.changedInstance($navController);
                        objRememberedValue = composer2.rememberedValue();
                        if (zChangedInstance4) {
                        }
                        objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda7
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$31$lambda$30($navController);
                            }
                        };
                        composer2.updateRememberedValue(objRememberedValue);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs22, false, roundedCornerShapeM1126RoundedCornerShape0680j_422, buttonColorsM2092buttonColorsro_MJ8822, null, borderStrokeM290BorderStrokecXLIe8U22, null, null, ComposableLambdaKt.rememberComposableLambda(-1982812414, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda8
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj, Object obj2, Object obj3) {
                                return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$32($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                            }
                        }, composer2, 54), composer2, 806879280, 420);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    objRememberedValue5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda14
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$21$lambda$20($loginViewModel, (String) obj);
                        }
                    };
                    composer2.updateRememberedValue(objRememberedValue5);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    TextFieldKt.TextField(str3, (Function1<? super String, Unit>) objRememberedValue5, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(572685327, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$22($roboto, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, composer2, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-745446835, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$26($existe$delegate, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, composer2, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, none, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_04, composer2, 817889664, 12582912, 0, 4046200);
                    SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer2, 6);
                    Modifier modifierM850height3ABfNKs3 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
                    RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_43 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
                    BorderStroke borderStrokeM290BorderStrokecXLIe8U3 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
                    ButtonColors buttonColorsM2092buttonColorsro_MJ883 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer2, (ButtonDefaults.$stable << 12) | 6, 12);
                    ComposerKt.sourceInformationMarkerStart(composer2, 1149887326, "CC(remember):AgregarAdministrador.kt#9igjgp");
                    zChangedInstance3 = composer2.changedInstance($loginViewModel);
                    Object objRememberedValue62 = composer2.rememberedValue();
                    if (zChangedInstance3) {
                    }
                    objRememberedValue62 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda17
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$28$lambda$27($loginViewModel);
                        }
                    };
                    composer2.updateRememberedValue(objRememberedValue62);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ButtonKt.Button((Function0) objRememberedValue62, modifierM850height3ABfNKs3, false, roundedCornerShape, buttonColorsM2092buttonColorsro_MJ883, null, borderStrokeM290BorderStrokecXLIe8U3, null, null, ComposableLambdaKt.rememberComposableLambda(-1100057973, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$29($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    }, composer2, 54), composer2, 806879280, 420);
                    SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer2, 6);
                    Modifier modifierM850height3ABfNKs222 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
                    RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4222 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
                    BorderStroke borderStrokeM290BorderStrokecXLIe8U222 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
                    ButtonColors buttonColorsM2092buttonColorsro_MJ88222 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer2, (ButtonDefaults.$stable << 12) | 6, 12);
                    ComposerKt.sourceInformationMarkerStart(composer2, 1149913211, "CC(remember):AgregarAdministrador.kt#9igjgp");
                    zChangedInstance4 = composer2.changedInstance($navController);
                    objRememberedValue = composer2.rememberedValue();
                    if (zChangedInstance4) {
                    }
                    objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$31$lambda$30($navController);
                        }
                    };
                    composer2.updateRememberedValue(objRememberedValue);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs222, false, roundedCornerShapeM1126RoundedCornerShape0680j_4222, buttonColorsM2092buttonColorsro_MJ88222, null, borderStrokeM290BorderStrokecXLIe8U222, null, null, ComposableLambdaKt.rememberComposableLambda(-1982812414, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda8
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$32($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    }, composer2, 54), composer2, 806879280, 420);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                } else {
                    str2 = strAgregarAdministrador$lambda$5;
                }
                objRememberedValue4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$18$lambda$17($loginViewModel, (String) obj);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue4);
                ComposerKt.sourceInformationMarkerEnd($composer);
                TextFieldKt.TextField(str2, (Function1<? super String, Unit>) objRememberedValue4, modifierM264backgroundbw27NRU$default3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1858065138, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$19($roboto, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_03, $composer, 12583296, 12582912, 0, 4063096);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), $composer, 6);
                Modifier modifierM264backgroundbw27NRU$default42 = BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), null, 2, null);
                String strAgregarAdministrador$lambda$62 = AgregarAdministrador$lambda$6($password$delegate);
                if (AgregarAdministrador$lambda$8($existe$delegate)) {
                }
                TextFieldColors textFieldColorsM2957colors0hiis_042 = TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, null, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, 100884480, 48, 0, 0, 3072, 2147481295, 4095);
                Composer composer22 = composer;
                ComposerKt.sourceInformationMarkerStart(composer22, 1149847552, "CC(remember):AgregarAdministrador.kt#9igjgp");
                zChangedInstance2 = composer22.changedInstance($loginViewModel);
                Object objRememberedValue52 = composer22.rememberedValue();
                if (zChangedInstance2) {
                }
                objRememberedValue52 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$21$lambda$20($loginViewModel, (String) obj);
                    }
                };
                composer22.updateRememberedValue(objRememberedValue52);
                ComposerKt.sourceInformationMarkerEnd(composer22);
                TextFieldKt.TextField(str3, (Function1<? super String, Unit>) objRememberedValue52, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(572685327, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$22($roboto, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer22, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-745446835, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$26($existe$delegate, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer22, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, none, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_042, composer22, 817889664, 12582912, 0, 4046200);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer22, 6);
                Modifier modifierM850height3ABfNKs32 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_432 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
                BorderStroke borderStrokeM290BorderStrokecXLIe8U32 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
                ButtonColors buttonColorsM2092buttonColorsro_MJ8832 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer22, (ButtonDefaults.$stable << 12) | 6, 12);
                ComposerKt.sourceInformationMarkerStart(composer22, 1149887326, "CC(remember):AgregarAdministrador.kt#9igjgp");
                zChangedInstance3 = composer22.changedInstance($loginViewModel);
                Object objRememberedValue622 = composer22.rememberedValue();
                if (zChangedInstance3) {
                }
                objRememberedValue622 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$28$lambda$27($loginViewModel);
                    }
                };
                composer22.updateRememberedValue(objRememberedValue622);
                ComposerKt.sourceInformationMarkerEnd(composer22);
                ButtonKt.Button((Function0) objRememberedValue622, modifierM850height3ABfNKs32, false, roundedCornerShape, buttonColorsM2092buttonColorsro_MJ8832, null, borderStrokeM290BorderStrokecXLIe8U32, null, null, ComposableLambdaKt.rememberComposableLambda(-1100057973, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$29($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer22, 54), composer22, 806879280, 420);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer22, 6);
                Modifier modifierM850height3ABfNKs2222 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42222 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
                BorderStroke borderStrokeM290BorderStrokecXLIe8U2222 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
                ButtonColors buttonColorsM2092buttonColorsro_MJ882222 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer22, (ButtonDefaults.$stable << 12) | 6, 12);
                ComposerKt.sourceInformationMarkerStart(composer22, 1149913211, "CC(remember):AgregarAdministrador.kt#9igjgp");
                zChangedInstance4 = composer22.changedInstance($navController);
                objRememberedValue = composer22.rememberedValue();
                if (zChangedInstance4) {
                }
                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$31$lambda$30($navController);
                    }
                };
                composer22.updateRememberedValue(objRememberedValue);
                ComposerKt.sourceInformationMarkerEnd(composer22);
                ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs2222, false, roundedCornerShapeM1126RoundedCornerShape0680j_42222, buttonColorsM2092buttonColorsro_MJ882222, null, borderStrokeM290BorderStrokecXLIe8U2222, null, null, ComposableLambdaKt.rememberComposableLambda(-1982812414, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$32($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer22, 54), composer22, 806879280, 420);
                ComposerKt.sourceInformationMarkerEnd(composer22);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            objRememberedValue3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$15$lambda$14($loginViewModel, (String) obj);
                }
            };
            $composer.updateRememberedValue(objRememberedValue3);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextFieldKt.TextField(str, (Function1<? super String, Unit>) objRememberedValue3, modifierM264backgroundbw27NRU$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(6151693, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$16($roboto, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_02, $composer, 12583296, 12582912, 0, 4063096);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), $composer, 6);
            Modifier modifierM264backgroundbw27NRU$default32 = BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), null, 2, null);
            String strAgregarAdministrador$lambda$52 = AgregarAdministrador$lambda$5($email$delegate);
            TextFieldColors textFieldColorsM2957colors0hiis_032 = TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, null, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 100884480, 48, 0, 0, 3072, 2147481295, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1149824314, "CC(remember):AgregarAdministrador.kt#9igjgp");
            zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue42 = $composer.rememberedValue();
            if (zChangedInstance) {
            }
            objRememberedValue42 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$18$lambda$17($loginViewModel, (String) obj);
                }
            };
            $composer.updateRememberedValue(objRememberedValue42);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextFieldKt.TextField(str2, (Function1<? super String, Unit>) objRememberedValue42, modifierM264backgroundbw27NRU$default32, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1858065138, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$19($roboto, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_032, $composer, 12583296, 12582912, 0, 4063096);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), $composer, 6);
            Modifier modifierM264backgroundbw27NRU$default422 = BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), null, 2, null);
            String strAgregarAdministrador$lambda$622 = AgregarAdministrador$lambda$6($password$delegate);
            if (AgregarAdministrador$lambda$8($existe$delegate)) {
            }
            TextFieldColors textFieldColorsM2957colors0hiis_0422 = TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, null, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, 100884480, 48, 0, 0, 3072, 2147481295, 4095);
            Composer composer222 = composer;
            ComposerKt.sourceInformationMarkerStart(composer222, 1149847552, "CC(remember):AgregarAdministrador.kt#9igjgp");
            zChangedInstance2 = composer222.changedInstance($loginViewModel);
            Object objRememberedValue522 = composer222.rememberedValue();
            if (zChangedInstance2) {
            }
            objRememberedValue522 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$21$lambda$20($loginViewModel, (String) obj);
                }
            };
            composer222.updateRememberedValue(objRememberedValue522);
            ComposerKt.sourceInformationMarkerEnd(composer222);
            TextFieldKt.TextField(str3, (Function1<? super String, Unit>) objRememberedValue522, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(572685327, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$22($roboto, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, composer222, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-745446835, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$26($existe$delegate, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, composer222, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, none, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2957colors0hiis_0422, composer222, 817889664, 12582912, 0, 4046200);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer222, 6);
            Modifier modifierM850height3ABfNKs322 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4322 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
            BorderStroke borderStrokeM290BorderStrokecXLIe8U322 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
            ButtonColors buttonColorsM2092buttonColorsro_MJ88322 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer222, (ButtonDefaults.$stable << 12) | 6, 12);
            ComposerKt.sourceInformationMarkerStart(composer222, 1149887326, "CC(remember):AgregarAdministrador.kt#9igjgp");
            zChangedInstance3 = composer222.changedInstance($loginViewModel);
            Object objRememberedValue6222 = composer222.rememberedValue();
            if (zChangedInstance3) {
            }
            objRememberedValue6222 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$28$lambda$27($loginViewModel);
                }
            };
            composer222.updateRememberedValue(objRememberedValue6222);
            ComposerKt.sourceInformationMarkerEnd(composer222);
            ButtonKt.Button((Function0) objRememberedValue6222, modifierM850height3ABfNKs322, false, roundedCornerShape, buttonColorsM2092buttonColorsro_MJ88322, null, borderStrokeM290BorderStrokecXLIe8U322, null, null, ComposableLambdaKt.rememberComposableLambda(-1100057973, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$29($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, composer222, 54), composer222, 806879280, 420);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(30)), composer222, 6);
            Modifier modifierM850height3ABfNKs22222 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_422222 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
            BorderStroke borderStrokeM290BorderStrokecXLIe8U22222 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU());
            ButtonColors buttonColorsM2092buttonColorsro_MJ8822222 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), ColorKt.Color($colorButton), 0L, 0L, composer222, (ButtonDefaults.$stable << 12) | 6, 12);
            ComposerKt.sourceInformationMarkerStart(composer222, 1149913211, "CC(remember):AgregarAdministrador.kt#9igjgp");
            zChangedInstance4 = composer222.changedInstance($navController);
            objRememberedValue = composer222.rememberedValue();
            if (zChangedInstance4) {
            }
            objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$31$lambda$30($navController);
                }
            };
            composer222.updateRememberedValue(objRememberedValue);
            ComposerKt.sourceInformationMarkerEnd(composer222);
            ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs22222, false, roundedCornerShapeM1126RoundedCornerShape0680j_422222, buttonColorsM2092buttonColorsro_MJ8822222, null, borderStrokeM290BorderStrokecXLIe8U22222, null, null, ComposableLambdaKt.rememberComposableLambda(-1982812414, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$32($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, composer222, 54), composer222, 806879280, 420);
            ComposerKt.sourceInformationMarkerEnd(composer222);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$12$lambda$11(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setNombre(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$13(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C99@3833L35:AgregarAdministrador.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1275193430, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:99)");
            }
            TextKt.m2976Text4IGK_g("Nombre", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$15$lambda$14(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setApellido(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$16(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C118@4563L37:AgregarAdministrador.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(6151693, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:118)");
            }
            TextKt.m2976Text4IGK_g("Apellido", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$18$lambda$17(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setEmail(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$19(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C137@5287L34:AgregarAdministrador.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1858065138, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:137)");
            }
            TextKt.m2976Text4IGK_g("Email", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$21$lambda$20(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setRegPassword(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$22(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C155@6019L37:AgregarAdministrador.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(572685327, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:155)");
            }
            TextKt.m2976Text4IGK_g("Password", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$26(final MutableState $existe$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C159@6350L20,159@6372L112,159@6329L155:AgregarAdministrador.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-745446835, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:158)");
            }
            final ImageVector image = AgregarAdministrador$lambda$8($existe$delegate) ? VisibilityOffKt.getVisibilityOff(Icons.INSTANCE.getDefault()) : VisibilityKt.getVisibility(Icons.INSTANCE.getDefault());
            ComposerKt.sourceInformationMarkerStart($composer, 885134657, "CC(remember):AgregarAdministrador.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$26$lambda$24$lambda$23($existe$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableLambdaKt.rememberComposableLambda(-1109074224, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return AgregarAdministradorKt.AgregarAdministrador$lambda$34$lambda$33$lambda$26$lambda$25(image, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$26$lambda$24$lambda$23(MutableState $existe$delegate) {
        AgregarAdministrador$lambda$9($existe$delegate, !AgregarAdministrador$lambda$8($existe$delegate));
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$26$lambda$25(ImageVector $image, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C160@6398L64:AgregarAdministrador.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1109074224, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:160)");
            }
            IconKt.m2433Iconww6aTOc($image, "Ver contraseña", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$28$lambda$27(LoginViewModel $loginViewModel) {
        $loginViewModel.registrarAdmin();
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$29(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C187@7436L200:AgregarAdministrador.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1100057973, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:187)");
            }
            TextKt.m2976Text4IGK_g("Registrarse administrador", (Modifier) null, 0L, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getBold(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1772550, 0, 130966);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$31$lambda$30(NavController $navController) {
        $navController.popBackStack();
        return Unit.INSTANCE;
    }

    static final Unit AgregarAdministrador$lambda$34$lambda$33$lambda$32(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C210@8242L183:AgregarAdministrador.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1982812414, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:210)");
            }
            TextKt.m2976Text4IGK_g("Cancelar", (Modifier) null, 0L, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getBold(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1772550, 0, 130966);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
