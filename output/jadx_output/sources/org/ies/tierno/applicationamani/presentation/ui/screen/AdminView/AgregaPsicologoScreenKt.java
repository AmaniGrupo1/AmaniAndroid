package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.MedicalServicesKt;
import androidx.compose.material.icons.filled.PersonKt;
import androidx.compose.material.icons.filled.VisibilityKt;
import androidx.compose.material.icons.filled.VisibilityOffKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CheckboxKt;
import androidx.compose.material3.DatePickerDialog_androidKt;
import androidx.compose.material3.ExposedDropdownMenuBoxScope;
import androidx.compose.material3.ExposedDropdownMenuDefaults;
import androidx.compose.material3.ExposedDropdownMenu_androidKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
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
import androidx.compose.ui.unit.TextUnitKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.profileinstaller.ProfileVerifier;
import androidx.window.core.layout.WindowSizeClass;
import j$.time.LocalDate;
import j$.time.Period;
import j$.time.format.DateTimeFormatter;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;

/* JADX INFO: compiled from: AgregaPsicologoScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\u001a\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006#²\u0006\f\u0010\b\u001a\u00020\u00078\nX\u008a\u0084\u0002²\u0006\f\u0010\t\u001a\u00020\u00078\nX\u008a\u0084\u0002²\u0006\f\u0010\n\u001a\u00020\u00078\nX\u008a\u0084\u0002²\u0006\f\u0010\u000b\u001a\u00020\u00078\nX\u008a\u0084\u0002²\u0006\f\u0010\f\u001a\u00020\u00078\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u000e\u001a\u0004\u0018\u00010\r8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0010\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002²\u0006\f\u0010\u0011\u001a\u00020\u00078\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0013\u001a\u0004\u0018\u00010\u00128\nX\u008a\u0084\u0002²\u0006\f\u0010\u0015\u001a\u00020\u00148\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0016\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0017\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0018\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0019\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002²\u0006\f\u0010\u001a\u001a\u00020\u00148\nX\u008a\u0084\u0002²\u0006\f\u0010\u001b\u001a\u00020\u00148\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002²\u0006\f\u0010\u001d\u001a\u00020\u00148\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u001e\u001a\u00020\u00148\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u001f\u001a\u00020\u00148\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010 \u001a\u00020\r8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010!\u001a\u00020\r8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\"\u001a\u00020\r8\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/navigation/NavController;", "navController", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;", "loginViewModel", "", "AgregaPsicologoScreen", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V", "", HintConstants.AUTOFILL_HINT_NAME, "surname", "email", HintConstants.AUTOFILL_HINT_PASSWORD, "especialidad", "", "experiencia", "descripcion", "licencia", "telefono", "j$/time/LocalDate", "dateOfBirth", "", "showDatePicker", "dateError", "phoneError", "emailError", "passwordError", "aceptaTerminos", "isRegistering", "registerError", "registerSuccess", "passwordVisible", "expandedEspecialidad", "year", "month", "day", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class AgregaPsicologoScreenKt {
    static final Unit AgregaPsicologoScreen$lambda$113(NavController navController, LoginViewModel loginViewModel, int i, Composer composer, int i2) {
        AgregaPsicologoScreen(navController, loginViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x04d9  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x04e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void AgregaPsicologoScreen(final NavController navController, final LoginViewModel loginViewModel, Composer $composer, final int $changed) {
        final LoginViewModel loginViewModel2;
        long primaryColor;
        MutableState expandedEspecialidad$delegate;
        boolean zChangedInstance;
        CoroutineScope scope;
        String str;
        ScrollState scrollState;
        final long primaryColor2;
        DateTimeFormatter dateFormatter;
        int i;
        final NavController navController2;
        AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1 agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1;
        int i2;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(loginViewModel, "loginViewModel");
        Composer $composer2 = $composer.startRestartGroup(2128087594);
        ComposerKt.sourceInformation($composer2, "C(AgregaPsicologoScreen)N(navController,loginViewModel)82@3786L29,83@3859L29,84@3927L29,85@4004L29,86@4094L29,87@4182L29,88@4270L29,89@4352L29,90@4426L29,91@4506L29,92@4592L29,93@4668L29,94@4746L29,95@4824L29,96@4908L29,97@5003L29,99@5088L29,100@5172L29,101@5260L29,104@5349L34,105@5416L34,106@5473L21,107@5523L32,108@5572L24,126@6067L93,126@6037L123,132@6198L302,132@6166L334,146@6647L594,145@6581L47,161@7248L15271,143@6506L16013:AgregaPsicologoScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(loginViewModel) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if ($composer2.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2128087594, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen (AgregaPsicologoScreen.kt:77)");
            }
            long primaryColor3 = ColorKt.Color(4286277870L);
            long backgroundColor = ColorKt.Color(4291608804L);
            final long errorColor = ColorKt.Color(4292030255L);
            final State name$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getNombre(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State surname$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getApellido(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State email$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getEmail(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State password$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegPassword(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State especialidad$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegistroEspecialidad(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State experiencia$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegistroExperiencia(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State descripcion$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegistroDescripcion(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State licencia$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegistroLicencia(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State telefono$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTelefono(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State dateOfBirth$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getDateOfBirth(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State showDatePicker$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getShowDatePicker(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State dateError$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getDateError(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State phoneError$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getPhoneError(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State emailError$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getEmailError(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State passwordError$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getPasswordError(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State aceptaTerminos$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getAceptaTerminosPsicologo(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State isRegistering$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.isRegistering(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State registerError$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegisterError(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State registerSuccess$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegisterSuccess(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            ComposerKt.sourceInformationMarkerStart($composer2, 687806284, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            Object objRememberedValue = $composer2.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                primaryColor = primaryColor3;
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            } else {
                primaryColor = primaryColor3;
            }
            final MutableState passwordVisible$delegate = (MutableState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 687808428, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer2.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default2);
                objRememberedValue2 = objMutableStateOf$default2;
            }
            MutableState expandedEspecialidad$delegate2 = (MutableState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ScrollState scrollState2 = ScrollKt.rememberScrollState(0, $composer2, 0, 1);
            ComposerKt.sourceInformationMarkerStart($composer2, 687811850, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            Object objRememberedValue3 = $composer2.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object snackbarHostState = new SnackbarHostState();
                $composer2.updateRememberedValue(snackbarHostState);
                objRememberedValue3 = snackbarHostState;
            }
            final SnackbarHostState snackbarHostState2 = (SnackbarHostState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer2, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object objRememberedValue4 = $composer2.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue4 = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer2);
                $composer2.updateRememberedValue(objRememberedValue4);
            }
            CoroutineScope scope2 = (CoroutineScope) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            DateTimeFormatter dateFormatter2 = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            final List listaEspecialidades = CollectionsKt.listOf((Object[]) new String[]{"Psicología Clínica", "Psicología Educativa", "Psicología Laboral", "Psicología Infantil", "Psicología de la Salud", "Psicología Forense", "Psicología Social", "Otro"});
            String strAgregaPsicologoScreen$lambda$17 = AgregaPsicologoScreen$lambda$17(registerError$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, 687829319, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            boolean zChanged = $composer2.changed(registerError$delegate);
            AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1 agregaPsicologoScreenKt$AgregaPsicologoScreen$1$1RememberedValue = $composer2.rememberedValue();
            if (zChanged) {
                expandedEspecialidad$delegate = expandedEspecialidad$delegate2;
            } else {
                expandedEspecialidad$delegate = expandedEspecialidad$delegate2;
                if (agregaPsicologoScreenKt$AgregaPsicologoScreen$1$1RememberedValue == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(strAgregaPsicologoScreen$lambda$17, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) agregaPsicologoScreenKt$AgregaPsicologoScreen$1$1RememberedValue, $composer2, 0);
                Boolean boolValueOf = Boolean.valueOf(AgregaPsicologoScreen$lambda$18(registerSuccess$delegate));
                ComposerKt.sourceInformationMarkerStart($composer2, 687833720, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                zChangedInstance = $composer2.changedInstance(navController) | $composer2.changed(registerSuccess$delegate) | $composer2.changedInstance(scope2) | $composer2.changedInstance(loginViewModel);
                Object objRememberedValue5 = $composer2.rememberedValue();
                if (zChangedInstance) {
                    scope = scope2;
                    if (objRememberedValue5 != Composer.INSTANCE.getEmpty()) {
                        navController2 = navController;
                        str = "CC(remember):AgregaPsicologoScreen.kt#9igjgp";
                        scrollState = scrollState2;
                        agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1 = objRememberedValue5;
                        dateFormatter = dateFormatter2;
                        primaryColor2 = primaryColor;
                        i = 0;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    EffectsKt.LaunchedEffect(boolValueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1, $composer2, i);
                    ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(879860710, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda32
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$31(primaryColor2, navController2, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, $composer2, 54);
                    ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(49207076, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda33
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$32(snackbarHostState2, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, $composer2, 54);
                    final long primaryColor4 = primaryColor2;
                    final DateTimeFormatter dateFormatter3 = dateFormatter;
                    final MutableState expandedEspecialidad$delegate3 = expandedEspecialidad$delegate;
                    String str2 = str;
                    int i3 = i;
                    final ScrollState scrollState3 = scrollState;
                    loginViewModel2 = loginViewModel;
                    ScaffoldKt.m2691ScaffoldTvnljyQ(null, composableLambdaRememberComposableLambda, null, composableLambdaRememberComposableLambda2, null, 0, backgroundColor, 0L, null, ComposableLambdaKt.rememberComposableLambda(2045220091, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda34
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95(scrollState3, primaryColor4, loginViewModel, errorColor, dateFormatter3, name$delegate, surname$delegate, email$delegate, emailError$delegate, password$delegate, passwordVisible$delegate, passwordError$delegate, dateOfBirth$delegate, dateError$delegate, telefono$delegate, phoneError$delegate, expandedEspecialidad$delegate3, especialidad$delegate, listaEspecialidades, experiencia$delegate, descripcion$delegate, licencia$delegate, aceptaTerminos$delegate, isRegistering$delegate, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    }, $composer2, 54), $composer2, 806882352, 437);
                    $composer2 = $composer2;
                    if (AgregaPsicologoScreen$lambda$10(showDatePicker$delegate)) {
                        $composer2.startReplaceGroup(-135721242);
                        ComposerKt.sourceInformation($composer2, "472@22592L33,473@22647L30,474@22697L30,477@22786L43,478@22859L645,493@23534L154,476@22737L1061");
                        ComposerKt.sourceInformationMarkerStart($composer2, 688358059, str2);
                        Object objRememberedValue6 = $composer2.rememberedValue();
                        if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                            i2 = 2;
                            Object objMutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(1990, null, 2, null);
                            $composer2.updateRememberedValue(objMutableStateOf$default3);
                            objRememberedValue6 = objMutableStateOf$default3;
                        } else {
                            i2 = 2;
                        }
                        final MutableState year$delegate = (MutableState) objRememberedValue6;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 688359816, str2);
                        Object objRememberedValue7 = $composer2.rememberedValue();
                        if (objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                            Object objMutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Integer.valueOf(i3), null, i2, null);
                            $composer2.updateRememberedValue(objMutableStateOf$default4);
                            objRememberedValue7 = objMutableStateOf$default4;
                        }
                        final MutableState month$delegate = (MutableState) objRememberedValue7;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 688361416, str2);
                        Object objRememberedValue8 = $composer2.rememberedValue();
                        if (objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                            Object objMutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(1, null, i2, null);
                            $composer2.updateRememberedValue(objMutableStateOf$default5);
                            objRememberedValue8 = objMutableStateOf$default5;
                        }
                        final MutableState day$delegate = (MutableState) objRememberedValue8;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 688364277, str2);
                        boolean zChangedInstance2 = $composer2.changedInstance(loginViewModel2);
                        Object objRememberedValue9 = $composer2.rememberedValue();
                        if (zChangedInstance2 || objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                            Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda35
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$106$lambda$105(loginViewModel2);
                                }
                            };
                            $composer2.updateRememberedValue(obj);
                            objRememberedValue9 = obj;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        DatePickerDialog_androidKt.m2308DatePickerDialogGmEhDVc((Function0) objRememberedValue9, ComposableLambdaKt.rememberComposableLambda(-1151807139, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda36
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$109(loginViewModel2, year$delegate, month$delegate, day$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                            }
                        }, $composer2, 54), null, ComposableLambdaKt.rememberComposableLambda(-664733413, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda37
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$112(loginViewModel2, (Composer) obj2, ((Integer) obj3).intValue());
                            }
                        }, $composer2, 54), null, 0.0f, null, null, ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10416getLambda$2026091802$app(), $composer2, 100666416, 244);
                    } else {
                        $composer2.startReplaceGroup(-158149928);
                    }
                    $composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    scope = scope2;
                }
                str = "CC(remember):AgregaPsicologoScreen.kt#9igjgp";
                scrollState = scrollState2;
                primaryColor2 = primaryColor;
                dateFormatter = dateFormatter2;
                i = 0;
                navController2 = navController;
                agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1 = new AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1(snackbarHostState2, scope, registerSuccess$delegate, loginViewModel, navController, null);
                $composer2.updateRememberedValue(agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(boolValueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1, $composer2, i);
                ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(879860710, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda32
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj22) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$31(primaryColor2, navController2, (Composer) obj2, ((Integer) obj22).intValue());
                    }
                }, $composer2, 54);
                ComposableLambda composableLambdaRememberComposableLambda22 = ComposableLambdaKt.rememberComposableLambda(49207076, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda33
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj22) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$32(snackbarHostState2, (Composer) obj2, ((Integer) obj22).intValue());
                    }
                }, $composer2, 54);
                final long primaryColor42 = primaryColor2;
                final DateTimeFormatter dateFormatter32 = dateFormatter;
                final MutableState expandedEspecialidad$delegate32 = expandedEspecialidad$delegate;
                String str22 = str;
                int i32 = i;
                final ScrollState scrollState32 = scrollState;
                loginViewModel2 = loginViewModel;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, composableLambdaRememberComposableLambda3, null, composableLambdaRememberComposableLambda22, null, 0, backgroundColor, 0L, null, ComposableLambdaKt.rememberComposableLambda(2045220091, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda34
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj2, Object obj22, Object obj3) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95(scrollState32, primaryColor42, loginViewModel, errorColor, dateFormatter32, name$delegate, surname$delegate, email$delegate, emailError$delegate, password$delegate, passwordVisible$delegate, passwordError$delegate, dateOfBirth$delegate, dateError$delegate, telefono$delegate, phoneError$delegate, expandedEspecialidad$delegate32, especialidad$delegate, listaEspecialidades, experiencia$delegate, descripcion$delegate, licencia$delegate, aceptaTerminos$delegate, isRegistering$delegate, (PaddingValues) obj2, (Composer) obj22, ((Integer) obj3).intValue());
                    }
                }, $composer2, 54), $composer2, 806882352, 437);
                $composer2 = $composer2;
                if (AgregaPsicologoScreen$lambda$10(showDatePicker$delegate)) {
                }
                $composer2.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            agregaPsicologoScreenKt$AgregaPsicologoScreen$1$1RememberedValue = new AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1(registerError$delegate, snackbarHostState2, null);
            $composer2.updateRememberedValue(agregaPsicologoScreenKt$AgregaPsicologoScreen$1$1RememberedValue);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(strAgregaPsicologoScreen$lambda$17, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) agregaPsicologoScreenKt$AgregaPsicologoScreen$1$1RememberedValue, $composer2, 0);
            Boolean boolValueOf2 = Boolean.valueOf(AgregaPsicologoScreen$lambda$18(registerSuccess$delegate));
            ComposerKt.sourceInformationMarkerStart($composer2, 687833720, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            zChangedInstance = $composer2.changedInstance(navController) | $composer2.changed(registerSuccess$delegate) | $composer2.changedInstance(scope2) | $composer2.changedInstance(loginViewModel);
            Object objRememberedValue52 = $composer2.rememberedValue();
            if (zChangedInstance) {
            }
            str = "CC(remember):AgregaPsicologoScreen.kt#9igjgp";
            scrollState = scrollState2;
            primaryColor2 = primaryColor;
            dateFormatter = dateFormatter2;
            i = 0;
            navController2 = navController;
            agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1 = new AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1(snackbarHostState2, scope, registerSuccess$delegate, loginViewModel, navController, null);
            $composer2.updateRememberedValue(agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(boolValueOf2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) agregaPsicologoScreenKt$AgregaPsicologoScreen$2$1, $composer2, i);
            ComposableLambda composableLambdaRememberComposableLambda32 = ComposableLambdaKt.rememberComposableLambda(879860710, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj22) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$31(primaryColor2, navController2, (Composer) obj2, ((Integer) obj22).intValue());
                }
            }, $composer2, 54);
            ComposableLambda composableLambdaRememberComposableLambda222 = ComposableLambdaKt.rememberComposableLambda(49207076, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda33
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj22) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$32(snackbarHostState2, (Composer) obj2, ((Integer) obj22).intValue());
                }
            }, $composer2, 54);
            final long primaryColor422 = primaryColor2;
            final DateTimeFormatter dateFormatter322 = dateFormatter;
            final MutableState expandedEspecialidad$delegate322 = expandedEspecialidad$delegate;
            String str222 = str;
            int i322 = i;
            final ScrollState scrollState322 = scrollState;
            loginViewModel2 = loginViewModel;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, composableLambdaRememberComposableLambda32, null, composableLambdaRememberComposableLambda222, null, 0, backgroundColor, 0L, null, ComposableLambdaKt.rememberComposableLambda(2045220091, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda34
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj22, Object obj3) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95(scrollState322, primaryColor422, loginViewModel, errorColor, dateFormatter322, name$delegate, surname$delegate, email$delegate, emailError$delegate, password$delegate, passwordVisible$delegate, passwordError$delegate, dateOfBirth$delegate, dateError$delegate, telefono$delegate, phoneError$delegate, expandedEspecialidad$delegate322, especialidad$delegate, listaEspecialidades, experiencia$delegate, descripcion$delegate, licencia$delegate, aceptaTerminos$delegate, isRegistering$delegate, (PaddingValues) obj2, (Composer) obj22, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, 806882352, 437);
            $composer2 = $composer2;
            if (AgregaPsicologoScreen$lambda$10(showDatePicker$delegate)) {
            }
            $composer2.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            loginViewModel2 = loginViewModel;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda38
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$113(navController, loginViewModel2, $changed, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    private static final String AgregaPsicologoScreen$lambda$0(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$1(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$2(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$3(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$4(State<String> state) {
        return (String) state.getValue();
    }

    private static final Integer AgregaPsicologoScreen$lambda$5(State<Integer> state) {
        return (Integer) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$6(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$7(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$8(State<String> state) {
        return (String) state.getValue();
    }

    private static final LocalDate AgregaPsicologoScreen$lambda$9(State<LocalDate> state) {
        return (LocalDate) state.getValue();
    }

    private static final boolean AgregaPsicologoScreen$lambda$10(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final String AgregaPsicologoScreen$lambda$11(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$12(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$13(State<String> state) {
        return (String) state.getValue();
    }

    private static final String AgregaPsicologoScreen$lambda$14(State<String> state) {
        return (String) state.getValue();
    }

    private static final boolean AgregaPsicologoScreen$lambda$15(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final boolean AgregaPsicologoScreen$lambda$16(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String AgregaPsicologoScreen$lambda$17(State<String> state) {
        return (String) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean AgregaPsicologoScreen$lambda$18(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final boolean AgregaPsicologoScreen$lambda$20(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void AgregaPsicologoScreen$lambda$21(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final boolean AgregaPsicologoScreen$lambda$23(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void AgregaPsicologoScreen$lambda$24(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit AgregaPsicologoScreen$lambda$32(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C145@6583L43:AgregaPsicologoScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(49207076, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous> (AgregaPsicologoScreen.kt:145)");
            }
            SnackbarHostKt.SnackbarHost($snackbarHostState, null, null, $composer, 6, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$31(long $primaryColor, final NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C149@6793L46,150@6874L343,147@6661L570:AgregaPsicologoScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(879860710, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous> (AgregaPsicologoScreen.kt:147)");
            }
            AppBarKt.m2057TopAppBarGHTll3U(ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10415getLambda$1723000918$app(), null, ComposableLambdaKt.rememberComposableLambda(809140652, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$31$lambda$30($navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), null, 0.0f, null, TopAppBarDefaults.INSTANCE.m3147topAppBarColorszjMxDiM($primaryColor, 0L, 0L, 0L, 0L, $composer, (TopAppBarDefaults.$stable << 15) | 6, 30), null, $composer, 390, 186);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$31$lambda$30(final NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C151@6917L30,151@6896L303:AgregaPsicologoScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(809140652, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:151)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 195087402, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($navController);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$31$lambda$30$lambda$29$lambda$28($navController);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10412getLambda$1067757367$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$31$lambda$30$lambda$29$lambda$28(NavController $navController) {
        $navController.navigateUp();
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95(ScrollState $scrollState, final long $primaryColor, final LoginViewModel $loginViewModel, final long $errorColor, final DateTimeFormatter $dateFormatter, final State $name$delegate, final State $surname$delegate, final State $email$delegate, final State $emailError$delegate, final State $password$delegate, final MutableState $passwordVisible$delegate, final State $passwordError$delegate, final State $dateOfBirth$delegate, final State $dateError$delegate, final State $telefono$delegate, final State $phoneError$delegate, final MutableState $expandedEspecialidad$delegate, final State $especialidad$delegate, final List $listaEspecialidades, final State $experiencia$delegate, final State $descripcion$delegate, final State $licencia$delegate, final State $aceptaTerminos$delegate, final State $isRegistering$delegate, PaddingValues paddingValues, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        ComposerKt.sourceInformation($composer, "CN(paddingValues)162@7275L15238:AgregaPsicologoScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(paddingValues) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2045220091, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous> (AgregaPsicologoScreen.kt:162)");
            }
            Modifier modifierVerticalScroll$default = ScrollKt.verticalScroll$default(PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxSize$default(PaddingKt.padding(Modifier.INSTANCE, paddingValues), 0.0f, 1, null), Dp.m7505constructorimpl(16)), $scrollState, false, null, false, 14, null);
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierVerticalScroll$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor);
            } else {
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
            int i3 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 139664873, "C175@7791L40,177@7925L38,178@7978L7245,173@7695L7528,320@15421L40,322@15555L38,323@15608L4450,318@15325L4733,417@20259L40,419@20393L38,420@20446L755,415@20163L1038,444@21486L205,450@21770L39,451@21824L549,439@21288L1085,466@22462L41:AgregaPsicologoScreen.kt#6w2cjo");
            final RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, $composer, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(-1823297309, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61($primaryColor, $loginViewModel, roundedCornerShapeM1126RoundedCornerShape0680j_4, $errorColor, $dateFormatter, $name$delegate, $surname$delegate, $email$delegate, $emailError$delegate, $password$delegate, $passwordVisible$delegate, $passwordError$delegate, $dateOfBirth$delegate, $dateError$delegate, $telefono$delegate, $phoneError$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 16);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, $composer, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(329110298, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83($primaryColor, $loginViewModel, roundedCornerShapeM1126RoundedCornerShape0680j_4, $expandedEspecialidad$delegate, $especialidad$delegate, $listaEspecialidades, $experiencia$delegate, $descripcion$delegate, $licencia$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 16);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, $composer, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(-181901861, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90($loginViewModel, $aceptaTerminos$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 16);
            Modifier modifierM850height3ABfNKs = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
            boolean z = !AgregaPsicologoScreen$lambda$16($isRegistering$delegate);
            ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
            long jM4734getWhite0d7_KjU = Color.INSTANCE.m4734getWhite0d7_KjU();
            long jM4727getGray0d7_KjU = Color.INSTANCE.m4727getGray0d7_KjU();
            ButtonColors buttonColorsM2092buttonColorsro_MJ88 = buttonDefaults.m2092buttonColorsro_MJ88($primaryColor, jM4734getWhite0d7_KjU, Color.m4695copywmQWz5c(jM4727getGray0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM4727getGray0d7_KjU) : 0.5f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM4727getGray0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM4727getGray0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM4727getGray0d7_KjU) : 0.0f), 0L, $composer, (ButtonDefaults.$stable << 12) | 438, 8);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, -410696552, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$92$lambda$91($loginViewModel);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs, z, roundedCornerShapeM1126RoundedCornerShape0680j_42, buttonColorsM2092buttonColorsro_MJ88, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1487327585, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$93($isRegistering$delegate, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 805306416, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x086c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x08f8  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x08fb  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0905  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0908  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x098d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0999  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0a21  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0628  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0642  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0644  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x064d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0650  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x06d7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x06e5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x076b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0774 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0799  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x07a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x07d2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x07d4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x07dd  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x07e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61(long $primaryColor, final LoginViewModel $loginViewModel, RoundedCornerShape $textFieldShape, final long $errorColor, DateTimeFormatter $dateFormatter, State $name$delegate, State $surname$delegate, State $email$delegate, final State $emailError$delegate, final State $password$delegate, final MutableState $passwordVisible$delegate, final State $passwordError$delegate, State $dateOfBirth$delegate, final State $dateError$delegate, final State $telefono$delegate, final State $phoneError$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Modifier modifier;
        boolean zChangedInstance;
        Modifier modifier2;
        boolean zChangedInstance2;
        Modifier modifier3;
        int i;
        PasswordVisualTransformation passwordVisualTransformation;
        boolean zChangedInstance3;
        VisualTransformation visualTransformation;
        LocalDate localDateAgregaPsicologoScreen$lambda$9;
        boolean zChangedInstance4;
        Object objRememberedValue;
        Object objRememberedValue2;
        boolean zChangedInstance5;
        Modifier modifier4;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C179@7996L7213:AgregaPsicologoScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1823297309, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:179)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i2 = ((((6 << 3) & 112) << 6) & 896) | 6;
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
            int i4 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 264015152, "C180@8061L522,190@8604L41,199@9083L158,195@8794L32,193@8697L566,212@9710L158,208@9417L34,206@9317L573,226@10380L198,221@10039L31,230@10621L182,219@9941L884,246@11468L201,240@10982L37,250@11710L475,258@12228L355,238@10881L1724,274@13050L42,283@13596L197,270@12818L2,277@13222L260,287@13836L180,268@12685L1353,302@14577L198,297@14193L71,306@14818L351,295@14092L1099:AgregaPsicologoScreen.kt#6w2cjo");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier5 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i5 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier5);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i6 = ((i5 << 6) & 896) | 6;
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
            int i7 = (i6 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i8 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1289838720, "C181@8139L74,182@8238L39,185@8406L10,183@8302L259:AgregaPsicologoScreen.kt#6w2cjo");
            IconKt.m2433Iconww6aTOc(PersonKt.getPerson(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, $primaryColor, $composer, 3120, 4);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Datos Personales", (Modifier) null, $primaryColor, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, 196998, 0, 65498);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            String strAgregaPsicologoScreen$lambda$0 = AgregaPsicologoScreen$lambda$0($name$delegate);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1394006297, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            boolean zChangedInstance6 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (zChangedInstance6) {
                modifier = modifierFillMaxWidth$default;
            } else {
                modifier = modifierFillMaxWidth$default;
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$0, (Function1<? super String, Unit>) objRememberedValue3, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$339564403$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 1573248, 0, 0, 2097080);
                String strAgregaPsicologoScreen$lambda$1 = AgregaPsicologoScreen$lambda$1($surname$delegate);
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                TextFieldColors textFieldColorsM2626colors0hiis_02 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 1394026235, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                zChangedInstance = $composer.changedInstance($loginViewModel);
                Object objRememberedValue4 = $composer.rememberedValue();
                if (zChangedInstance) {
                    modifier2 = modifierFillMaxWidth$default2;
                    if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$1, (Function1<? super String, Unit>) objRememberedValue4, modifier2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10414getLambda$1305127318$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_02, $composer, 1573248, 0, 0, 2097080);
                    String strAgregaPsicologoScreen$lambda$2 = AgregaPsicologoScreen$lambda$2($email$delegate);
                    Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    boolean z = AgregaPsicologoScreen$lambda$13($emailError$delegate) != null;
                    TextFieldColors textFieldColorsM2626colors0hiis_03 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$13($emailError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                    ComposerKt.sourceInformationMarkerStart($composer, 1394046136, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                    zChangedInstance2 = $composer.changedInstance($loginViewModel);
                    Object objRememberedValue5 = $composer.rememberedValue();
                    if (zChangedInstance2) {
                        modifier3 = modifierFillMaxWidth$default3;
                    } else {
                        modifier3 = modifierFillMaxWidth$default3;
                        if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$2, (Function1<? super String, Unit>) objRememberedValue5, modifier3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$132925547$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-782662280, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda25
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$40($errorColor, $emailError$delegate, (Composer) obj, ((Integer) obj2).intValue());
                            }
                        }, $composer, 54), z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_03, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
                        String strAgregaPsicologoScreen$lambda$3 = AgregaPsicologoScreen$lambda$3($password$delegate);
                        if (AgregaPsicologoScreen$lambda$20($passwordVisible$delegate)) {
                            i = 1;
                            passwordVisualTransformation = new PasswordVisualTransformation((char) 0, 1, null);
                        } else {
                            passwordVisualTransformation = VisualTransformation.INSTANCE.getNone();
                            i = 1;
                        }
                        Modifier modifierFillMaxWidth$default4 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i, null);
                        boolean z2 = AgregaPsicologoScreen$lambda$14($passwordError$delegate) == null;
                        TextFieldColors textFieldColorsM2626colors0hiis_04 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$14($passwordError$delegate) == null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                        ComposerKt.sourceInformationMarkerStart($composer, 1394076318, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                        zChangedInstance3 = $composer.changedInstance($loginViewModel);
                        Object objRememberedValue6 = $composer.rememberedValue();
                        if (zChangedInstance3) {
                            visualTransformation = passwordVisualTransformation;
                            if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$3, (Function1<? super String, Unit>) objRememberedValue6, modifierFillMaxWidth$default4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$1570978412$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-569958967, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda27
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46($passwordVisible$delegate, (Composer) obj, ((Integer) obj2).intValue());
                                }
                            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(655390585, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda28
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$47($errorColor, $passwordError$delegate, $password$delegate, (Composer) obj, ((Integer) obj2).intValue());
                                }
                            }, $composer, 54), z2, visualTransformation, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_04, $composer, 806879616, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2067896);
                            localDateAgregaPsicologoScreen$lambda$9 = AgregaPsicologoScreen$lambda$9($dateOfBirth$delegate);
                            if (localDateAgregaPsicologoScreen$lambda$9 == null || (str = localDateAgregaPsicologoScreen$lambda$9.format($dateFormatter)) == null) {
                                String str = "";
                            }
                            String str2 = str;
                            Modifier modifierFillMaxWidth$default5 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            ComposerKt.sourceInformationMarkerStart($composer, 1394142499, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                            zChangedInstance4 = $composer.changedInstance($loginViewModel);
                            objRememberedValue = $composer.rememberedValue();
                            if (zChangedInstance4 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda29
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$49$lambda$48($loginViewModel);
                                    }
                                };
                                $composer.updateRememberedValue(obj);
                                objRememberedValue = obj;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            Modifier modifierM299clickableoSLSa3U$default = ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default5, false, null, null, null, (Function0) objRememberedValue, 15, null);
                            boolean z3 = AgregaPsicologoScreen$lambda$11($dateError$delegate) != null;
                            TextFieldColors textFieldColorsM2626colors0hiis_05 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$11($dateError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                            ComposerKt.sourceInformationMarkerStart($composer, 1394135035, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                            objRememberedValue2 = $composer.rememberedValue();
                            boolean z4 = z3;
                            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda30
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj3) {
                                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$51$lambda$50((String) obj3);
                                    }
                                };
                                $composer.updateRememberedValue(obj2);
                                objRememberedValue2 = obj2;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            OutlinedTextFieldKt.OutlinedTextField(str2, (Function1<? super String, Unit>) objRememberedValue2, modifierM299clickableoSLSa3U$default, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10413getLambda$1285936019$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(868093898, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda31
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$54($loginViewModel, (Composer) obj3, ((Integer) obj4).intValue());
                                }
                            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(2093443450, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda20
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$55($errorColor, $dateError$delegate, (Composer) obj3, ((Integer) obj4).intValue());
                                }
                            }, $composer, 54), z4, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_05, $composer, 806903856, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084264);
                            String strAgregaPsicologoScreen$lambda$8 = AgregaPsicologoScreen$lambda$8($telefono$delegate);
                            Modifier modifierFillMaxWidth$default6 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            boolean z5 = AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null;
                            TextFieldColors textFieldColorsM2626colors0hiis_06 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                            ComposerKt.sourceInformationMarkerStart($composer, 1394179104, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                            zChangedInstance5 = $composer.changedInstance($loginViewModel);
                            Object objRememberedValue7 = $composer.rememberedValue();
                            if (zChangedInstance5) {
                                modifier4 = modifierFillMaxWidth$default6;
                            } else {
                                modifier4 = modifierFillMaxWidth$default6;
                                if (objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$8, (Function1<? super String, Unit>) objRememberedValue7, modifier4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$152116846$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-763470981, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda22
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$59($errorColor, $phoneError$delegate, $telefono$delegate, (Composer) obj3, ((Integer) obj4).intValue());
                                    }
                                }, $composer, 54), z5, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_06, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
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
                            objRememberedValue7 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda21
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$58$lambda$57($loginViewModel, (String) obj3);
                                }
                            };
                            $composer.updateRememberedValue(objRememberedValue7);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$8, (Function1<? super String, Unit>) objRememberedValue7, modifier4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$152116846$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-763470981, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda22
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$59($errorColor, $phoneError$delegate, $telefono$delegate, (Composer) obj3, ((Integer) obj4).intValue());
                                }
                            }, $composer, 54), z5, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_06, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            $composer.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        } else {
                            visualTransformation = passwordVisualTransformation;
                        }
                        objRememberedValue6 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda26
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$42$lambda$41($loginViewModel, (String) obj3);
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue6);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$3, (Function1<? super String, Unit>) objRememberedValue6, modifierFillMaxWidth$default4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$1570978412$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-569958967, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda27
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj22) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46($passwordVisible$delegate, (Composer) obj3, ((Integer) obj22).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(655390585, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda28
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj22) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$47($errorColor, $passwordError$delegate, $password$delegate, (Composer) obj3, ((Integer) obj22).intValue());
                            }
                        }, $composer, 54), z2, visualTransformation, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_04, $composer, 806879616, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2067896);
                        localDateAgregaPsicologoScreen$lambda$9 = AgregaPsicologoScreen$lambda$9($dateOfBirth$delegate);
                        if (localDateAgregaPsicologoScreen$lambda$9 == null) {
                        }
                        String str3 = "";
                        String str22 = str3;
                        Modifier modifierFillMaxWidth$default52 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        ComposerKt.sourceInformationMarkerStart($composer, 1394142499, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                        zChangedInstance4 = $composer.changedInstance($loginViewModel);
                        objRememberedValue = $composer.rememberedValue();
                        if (zChangedInstance4) {
                        }
                        Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda29
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$49$lambda$48($loginViewModel);
                            }
                        };
                        $composer.updateRememberedValue(obj3);
                        objRememberedValue = obj3;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        Modifier modifierM299clickableoSLSa3U$default2 = ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default52, false, null, null, null, (Function0) objRememberedValue, 15, null);
                        if (AgregaPsicologoScreen$lambda$11($dateError$delegate) != null) {
                        }
                        TextFieldColors textFieldColorsM2626colors0hiis_052 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$11($dateError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                        ComposerKt.sourceInformationMarkerStart($composer, 1394135035, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                        objRememberedValue2 = $composer.rememberedValue();
                        boolean z42 = z3;
                        if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(str22, (Function1<? super String, Unit>) objRememberedValue2, modifierM299clickableoSLSa3U$default2, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10413getLambda$1285936019$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(868093898, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj32, Object obj4) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$54($loginViewModel, (Composer) obj32, ((Integer) obj4).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(2093443450, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj32, Object obj4) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$55($errorColor, $dateError$delegate, (Composer) obj32, ((Integer) obj4).intValue());
                            }
                        }, $composer, 54), z42, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_052, $composer, 806903856, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084264);
                        String strAgregaPsicologoScreen$lambda$82 = AgregaPsicologoScreen$lambda$8($telefono$delegate);
                        Modifier modifierFillMaxWidth$default62 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        if (AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null) {
                        }
                        TextFieldColors textFieldColorsM2626colors0hiis_062 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                        ComposerKt.sourceInformationMarkerStart($composer, 1394179104, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                        zChangedInstance5 = $composer.changedInstance($loginViewModel);
                        Object objRememberedValue72 = $composer.rememberedValue();
                        if (zChangedInstance5) {
                        }
                        objRememberedValue72 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda21
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj32) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$58$lambda$57($loginViewModel, (String) obj32);
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue72);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$82, (Function1<? super String, Unit>) objRememberedValue72, modifier4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$152116846$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-763470981, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda22
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj32, Object obj4) {
                                return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$59($errorColor, $phoneError$delegate, $telefono$delegate, (Composer) obj32, ((Integer) obj4).intValue());
                            }
                        }, $composer, 54), z5, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_062, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    objRememberedValue5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda24
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$39$lambda$38($loginViewModel, (String) obj4);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue5);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$2, (Function1<? super String, Unit>) objRememberedValue5, modifier3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$132925547$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-782662280, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda25
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj22) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$40($errorColor, $emailError$delegate, (Composer) obj4, ((Integer) obj22).intValue());
                        }
                    }, $composer, 54), z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_03, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
                    String strAgregaPsicologoScreen$lambda$32 = AgregaPsicologoScreen$lambda$3($password$delegate);
                    if (AgregaPsicologoScreen$lambda$20($passwordVisible$delegate)) {
                    }
                    Modifier modifierFillMaxWidth$default42 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i, null);
                    if (AgregaPsicologoScreen$lambda$14($passwordError$delegate) == null) {
                    }
                    TextFieldColors textFieldColorsM2626colors0hiis_042 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$14($passwordError$delegate) == null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                    ComposerKt.sourceInformationMarkerStart($composer, 1394076318, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                    zChangedInstance3 = $composer.changedInstance($loginViewModel);
                    Object objRememberedValue62 = $composer.rememberedValue();
                    if (zChangedInstance3) {
                    }
                    objRememberedValue62 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda26
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj32) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$42$lambda$41($loginViewModel, (String) obj32);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue62);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$32, (Function1<? super String, Unit>) objRememberedValue62, modifierFillMaxWidth$default42, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$1570978412$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-569958967, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda27
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj32, Object obj22) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46($passwordVisible$delegate, (Composer) obj32, ((Integer) obj22).intValue());
                        }
                    }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(655390585, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda28
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj32, Object obj22) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$47($errorColor, $passwordError$delegate, $password$delegate, (Composer) obj32, ((Integer) obj22).intValue());
                        }
                    }, $composer, 54), z2, visualTransformation, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_042, $composer, 806879616, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2067896);
                    localDateAgregaPsicologoScreen$lambda$9 = AgregaPsicologoScreen$lambda$9($dateOfBirth$delegate);
                    if (localDateAgregaPsicologoScreen$lambda$9 == null) {
                    }
                    String str32 = "";
                    String str222 = str32;
                    Modifier modifierFillMaxWidth$default522 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    ComposerKt.sourceInformationMarkerStart($composer, 1394142499, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                    zChangedInstance4 = $composer.changedInstance($loginViewModel);
                    objRememberedValue = $composer.rememberedValue();
                    if (zChangedInstance4) {
                    }
                    Object obj32 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda29
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$49$lambda$48($loginViewModel);
                        }
                    };
                    $composer.updateRememberedValue(obj32);
                    objRememberedValue = obj32;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    Modifier modifierM299clickableoSLSa3U$default22 = ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default522, false, null, null, null, (Function0) objRememberedValue, 15, null);
                    if (AgregaPsicologoScreen$lambda$11($dateError$delegate) != null) {
                    }
                    TextFieldColors textFieldColorsM2626colors0hiis_0522 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$11($dateError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                    ComposerKt.sourceInformationMarkerStart($composer, 1394135035, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                    objRememberedValue2 = $composer.rememberedValue();
                    boolean z422 = z3;
                    if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(str222, (Function1<? super String, Unit>) objRememberedValue2, modifierM299clickableoSLSa3U$default22, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10413getLambda$1285936019$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(868093898, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj322, Object obj4) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$54($loginViewModel, (Composer) obj322, ((Integer) obj4).intValue());
                        }
                    }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(2093443450, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj322, Object obj4) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$55($errorColor, $dateError$delegate, (Composer) obj322, ((Integer) obj4).intValue());
                        }
                    }, $composer, 54), z422, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0522, $composer, 806903856, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084264);
                    String strAgregaPsicologoScreen$lambda$822 = AgregaPsicologoScreen$lambda$8($telefono$delegate);
                    Modifier modifierFillMaxWidth$default622 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    if (AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null) {
                    }
                    TextFieldColors textFieldColorsM2626colors0hiis_0622 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                    ComposerKt.sourceInformationMarkerStart($composer, 1394179104, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                    zChangedInstance5 = $composer.changedInstance($loginViewModel);
                    Object objRememberedValue722 = $composer.rememberedValue();
                    if (zChangedInstance5) {
                    }
                    objRememberedValue722 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda21
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj322) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$58$lambda$57($loginViewModel, (String) obj322);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue722);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$822, (Function1<? super String, Unit>) objRememberedValue722, modifier4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$152116846$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-763470981, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda22
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj322, Object obj4) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$59($errorColor, $phoneError$delegate, $telefono$delegate, (Composer) obj322, ((Integer) obj4).intValue());
                        }
                    }, $composer, 54), z5, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0622, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                } else {
                    modifier2 = modifierFillMaxWidth$default2;
                }
                objRememberedValue4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda23
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$37$lambda$36($loginViewModel, (String) obj4);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue4);
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$1, (Function1<? super String, Unit>) objRememberedValue4, modifier2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10414getLambda$1305127318$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_02, $composer, 1573248, 0, 0, 2097080);
                String strAgregaPsicologoScreen$lambda$22 = AgregaPsicologoScreen$lambda$2($email$delegate);
                Modifier modifierFillMaxWidth$default32 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                if (AgregaPsicologoScreen$lambda$13($emailError$delegate) != null) {
                }
                TextFieldColors textFieldColorsM2626colors0hiis_032 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$13($emailError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 1394046136, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                zChangedInstance2 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue52 = $composer.rememberedValue();
                if (zChangedInstance2) {
                }
                objRememberedValue52 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda24
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$39$lambda$38($loginViewModel, (String) obj4);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue52);
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$22, (Function1<? super String, Unit>) objRememberedValue52, modifier3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$132925547$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-782662280, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda25
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj22) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$40($errorColor, $emailError$delegate, (Composer) obj4, ((Integer) obj22).intValue());
                    }
                }, $composer, 54), z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_032, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
                String strAgregaPsicologoScreen$lambda$322 = AgregaPsicologoScreen$lambda$3($password$delegate);
                if (AgregaPsicologoScreen$lambda$20($passwordVisible$delegate)) {
                }
                Modifier modifierFillMaxWidth$default422 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i, null);
                if (AgregaPsicologoScreen$lambda$14($passwordError$delegate) == null) {
                }
                TextFieldColors textFieldColorsM2626colors0hiis_0422 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$14($passwordError$delegate) == null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 1394076318, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                zChangedInstance3 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue622 = $composer.rememberedValue();
                if (zChangedInstance3) {
                }
                objRememberedValue622 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda26
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj322) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$42$lambda$41($loginViewModel, (String) obj322);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue622);
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$322, (Function1<? super String, Unit>) objRememberedValue622, modifierFillMaxWidth$default422, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$1570978412$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-569958967, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda27
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj322, Object obj22) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46($passwordVisible$delegate, (Composer) obj322, ((Integer) obj22).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(655390585, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda28
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj322, Object obj22) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$47($errorColor, $passwordError$delegate, $password$delegate, (Composer) obj322, ((Integer) obj22).intValue());
                    }
                }, $composer, 54), z2, visualTransformation, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0422, $composer, 806879616, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2067896);
                localDateAgregaPsicologoScreen$lambda$9 = AgregaPsicologoScreen$lambda$9($dateOfBirth$delegate);
                if (localDateAgregaPsicologoScreen$lambda$9 == null) {
                }
                String str322 = "";
                String str2222 = str322;
                Modifier modifierFillMaxWidth$default5222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                ComposerKt.sourceInformationMarkerStart($composer, 1394142499, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                zChangedInstance4 = $composer.changedInstance($loginViewModel);
                objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance4) {
                }
                Object obj322 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda29
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$49$lambda$48($loginViewModel);
                    }
                };
                $composer.updateRememberedValue(obj322);
                objRememberedValue = obj322;
                ComposerKt.sourceInformationMarkerEnd($composer);
                Modifier modifierM299clickableoSLSa3U$default222 = ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default5222, false, null, null, null, (Function0) objRememberedValue, 15, null);
                if (AgregaPsicologoScreen$lambda$11($dateError$delegate) != null) {
                }
                TextFieldColors textFieldColorsM2626colors0hiis_05222 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$11($dateError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 1394135035, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                objRememberedValue2 = $composer.rememberedValue();
                boolean z4222 = z3;
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str2222, (Function1<? super String, Unit>) objRememberedValue2, modifierM299clickableoSLSa3U$default222, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10413getLambda$1285936019$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(868093898, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3222, Object obj4) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$54($loginViewModel, (Composer) obj3222, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(2093443450, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda20
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3222, Object obj4) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$55($errorColor, $dateError$delegate, (Composer) obj3222, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), z4222, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_05222, $composer, 806903856, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084264);
                String strAgregaPsicologoScreen$lambda$8222 = AgregaPsicologoScreen$lambda$8($telefono$delegate);
                Modifier modifierFillMaxWidth$default6222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                if (AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null) {
                }
                TextFieldColors textFieldColorsM2626colors0hiis_06222 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 1394179104, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                zChangedInstance5 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue7222 = $composer.rememberedValue();
                if (zChangedInstance5) {
                }
                objRememberedValue7222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda21
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3222) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$58$lambda$57($loginViewModel, (String) obj3222);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue7222);
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$8222, (Function1<? super String, Unit>) objRememberedValue7222, modifier4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$152116846$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-763470981, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda22
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3222, Object obj4) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$59($errorColor, $phoneError$delegate, $telefono$delegate, (Composer) obj3222, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), z5, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_06222, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            objRememberedValue3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$35$lambda$34($loginViewModel, (String) obj4);
                }
            };
            $composer.updateRememberedValue(objRememberedValue3);
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$0, (Function1<? super String, Unit>) objRememberedValue3, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$339564403$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 1573248, 0, 0, 2097080);
            String strAgregaPsicologoScreen$lambda$12 = AgregaPsicologoScreen$lambda$1($surname$delegate);
            Modifier modifierFillMaxWidth$default22 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_022 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1394026235, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue42 = $composer.rememberedValue();
            if (zChangedInstance) {
            }
            objRememberedValue42 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$37$lambda$36($loginViewModel, (String) obj4);
                }
            };
            $composer.updateRememberedValue(objRememberedValue42);
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$12, (Function1<? super String, Unit>) objRememberedValue42, modifier2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10414getLambda$1305127318$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_022, $composer, 1573248, 0, 0, 2097080);
            String strAgregaPsicologoScreen$lambda$222 = AgregaPsicologoScreen$lambda$2($email$delegate);
            Modifier modifierFillMaxWidth$default322 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            if (AgregaPsicologoScreen$lambda$13($emailError$delegate) != null) {
            }
            TextFieldColors textFieldColorsM2626colors0hiis_0322 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$13($emailError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1394046136, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            zChangedInstance2 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue522 = $composer.rememberedValue();
            if (zChangedInstance2) {
            }
            objRememberedValue522 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$39$lambda$38($loginViewModel, (String) obj4);
                }
            };
            $composer.updateRememberedValue(objRememberedValue522);
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$222, (Function1<? super String, Unit>) objRememberedValue522, modifier3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$132925547$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-782662280, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda25
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj22) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$40($errorColor, $emailError$delegate, (Composer) obj4, ((Integer) obj22).intValue());
                }
            }, $composer, 54), z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0322, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
            String strAgregaPsicologoScreen$lambda$3222 = AgregaPsicologoScreen$lambda$3($password$delegate);
            if (AgregaPsicologoScreen$lambda$20($passwordVisible$delegate)) {
            }
            Modifier modifierFillMaxWidth$default4222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i, null);
            if (AgregaPsicologoScreen$lambda$14($passwordError$delegate) == null) {
            }
            TextFieldColors textFieldColorsM2626colors0hiis_04222 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$14($passwordError$delegate) == null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1394076318, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            zChangedInstance3 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue6222 = $composer.rememberedValue();
            if (zChangedInstance3) {
            }
            objRememberedValue6222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda26
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3222) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$42$lambda$41($loginViewModel, (String) obj3222);
                }
            };
            $composer.updateRememberedValue(objRememberedValue6222);
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$3222, (Function1<? super String, Unit>) objRememberedValue6222, modifierFillMaxWidth$default4222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$1570978412$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-569958967, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3222, Object obj22) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46($passwordVisible$delegate, (Composer) obj3222, ((Integer) obj22).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(655390585, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda28
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3222, Object obj22) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$47($errorColor, $passwordError$delegate, $password$delegate, (Composer) obj3222, ((Integer) obj22).intValue());
                }
            }, $composer, 54), z2, visualTransformation, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_04222, $composer, 806879616, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2067896);
            localDateAgregaPsicologoScreen$lambda$9 = AgregaPsicologoScreen$lambda$9($dateOfBirth$delegate);
            if (localDateAgregaPsicologoScreen$lambda$9 == null) {
            }
            String str3222 = "";
            String str22222 = str3222;
            Modifier modifierFillMaxWidth$default52222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1394142499, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            zChangedInstance4 = $composer.changedInstance($loginViewModel);
            objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance4) {
            }
            Object obj3222 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$49$lambda$48($loginViewModel);
                }
            };
            $composer.updateRememberedValue(obj3222);
            objRememberedValue = obj3222;
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierM299clickableoSLSa3U$default2222 = ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default52222, false, null, null, null, (Function0) objRememberedValue, 15, null);
            if (AgregaPsicologoScreen$lambda$11($dateError$delegate) != null) {
            }
            TextFieldColors textFieldColorsM2626colors0hiis_052222 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$11($dateError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1394135035, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            objRememberedValue2 = $composer.rememberedValue();
            boolean z42222 = z3;
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(str22222, (Function1<? super String, Unit>) objRememberedValue2, modifierM299clickableoSLSa3U$default2222, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10413getLambda$1285936019$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(868093898, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj32222, Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$54($loginViewModel, (Composer) obj32222, ((Integer) obj4).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(2093443450, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj32222, Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$55($errorColor, $dateError$delegate, (Composer) obj32222, ((Integer) obj4).intValue());
                }
            }, $composer, 54), z42222, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_052222, $composer, 806903856, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084264);
            String strAgregaPsicologoScreen$lambda$82222 = AgregaPsicologoScreen$lambda$8($telefono$delegate);
            Modifier modifierFillMaxWidth$default62222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            if (AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null) {
            }
            TextFieldColors textFieldColorsM2626colors0hiis_062222 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null ? $errorColor : $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1394179104, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            zChangedInstance5 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue72222 = $composer.rememberedValue();
            if (zChangedInstance5) {
            }
            objRememberedValue72222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda21
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj32222) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$58$lambda$57($loginViewModel, (String) obj32222);
                }
            };
            $composer.updateRememberedValue(objRememberedValue72222);
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$82222, (Function1<? super String, Unit>) objRememberedValue72222, modifier4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$152116846$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-763470981, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj32222, Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$59($errorColor, $phoneError$delegate, $telefono$delegate, (Composer) obj32222, ((Integer) obj4).intValue());
                }
            }, $composer, 54), z5, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_062222, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
            ComposerKt.sourceInformationMarkerEnd($composer);
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

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$35$lambda$34(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setNombre(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$37$lambda$36(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setApellido(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$39$lambda$38(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setEmail(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$40(long $errorColor, State $emailError$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:AgregaPsicologoScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-782662280, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:231)");
            }
            if (AgregaPsicologoScreen$lambda$13($emailError$delegate) != null) {
                composer.startReplaceGroup(1085523236);
                ComposerKt.sourceInformation(composer, "232@10709L38");
                String strAgregaPsicologoScreen$lambda$13 = AgregaPsicologoScreen$lambda$13($emailError$delegate);
                Intrinsics.checkNotNull(strAgregaPsicologoScreen$lambda$13);
                TextKt.m2976Text4IGK_g(strAgregaPsicologoScreen$lambda$13, (Modifier) null, $errorColor, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 131066);
                composer = $composer;
            } else {
                composer.startReplaceGroup(1074929482);
            }
            composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$42$lambda$41(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setRegPassword(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46(final MutableState $passwordVisible$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C251@11761L38,251@11801L358,251@11740L419:AgregaPsicologoScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-569958967, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:251)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 2025248271, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46$lambda$44$lambda$43($passwordVisible$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableLambdaKt.rememberComposableLambda(436654156, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46$lambda$45($passwordVisible$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46$lambda$44$lambda$43(MutableState $passwordVisible$delegate) {
        AgregaPsicologoScreen$lambda$21($passwordVisible$delegate, !AgregaPsicologoScreen$lambda$20($passwordVisible$delegate));
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$46$lambda$45(MutableState $passwordVisible$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C252@11835L294:AgregaPsicologoScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(436654156, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:252)");
            }
            IconKt.m2433Iconww6aTOc(AgregaPsicologoScreen$lambda$20($passwordVisible$delegate) ? VisibilityKt.getVisibility(Icons.INSTANCE.getDefault()) : VisibilityOffKt.getVisibilityOff(Icons.INSTANCE.getDefault()), AgregaPsicologoScreen$lambda$20($passwordVisible$delegate) ? "Ocultar contraseña" : "Mostrar contraseña", (Modifier) null, 0L, $composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$47(long $errorColor, State $passwordError$delegate, State $password$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:AgregaPsicologoScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(655390585, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:259)");
            }
            if (AgregaPsicologoScreen$lambda$14($passwordError$delegate) != null) {
                composer.startReplaceGroup(-180350080);
                ComposerKt.sourceInformation(composer, "260@12319L41");
                String strAgregaPsicologoScreen$lambda$14 = AgregaPsicologoScreen$lambda$14($passwordError$delegate);
                Intrinsics.checkNotNull(strAgregaPsicologoScreen$lambda$14);
                TextKt.m2976Text4IGK_g(strAgregaPsicologoScreen$lambda$14, (Modifier) null, $errorColor, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 131066);
                $composer.endReplaceGroup();
            } else {
                if (StringsKt.isBlank(AgregaPsicologoScreen$lambda$3($password$delegate)) || AgregaPsicologoScreen$lambda$3($password$delegate).length() >= 8) {
                    composer.startReplaceGroup(-192541047);
                } else {
                    composer.startReplaceGroup(-180190182);
                    ComposerKt.sourceInformation(composer, "262@12480L47");
                    TextKt.m2976Text4IGK_g("Mínimo 8 caracteres", (Modifier) null, $errorColor, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 131066);
                    composer = $composer;
                }
                composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$51$lambda$50(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$49$lambda$48(LoginViewModel $loginViewModel) {
        $loginViewModel.setShowDatePicker(true);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$54(final LoginViewModel $loginViewModel, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C278@13273L42,278@13252L204:AgregaPsicologoScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(868093898, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:278)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 1014582228, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda39
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$54$lambda$53$lambda$52($loginViewModel);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$1874707021$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$54$lambda$53$lambda$52(LoginViewModel $loginViewModel) {
        $loginViewModel.setShowDatePicker(true);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$55(long $errorColor, State $dateError$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:AgregaPsicologoScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2093443450, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:288)");
            }
            if (AgregaPsicologoScreen$lambda$11($dateError$delegate) != null) {
                composer.startReplaceGroup(-1446230557);
                ComposerKt.sourceInformation(composer, "289@13923L37");
                String strAgregaPsicologoScreen$lambda$11 = AgregaPsicologoScreen$lambda$11($dateError$delegate);
                Intrinsics.checkNotNull(strAgregaPsicologoScreen$lambda$11);
                TextKt.m2976Text4IGK_g(strAgregaPsicologoScreen$lambda$11, (Modifier) null, $errorColor, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 131066);
                composer = $composer;
            } else {
                composer.startReplaceGroup(-1460012568);
            }
            composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$58$lambda$57(LoginViewModel $loginViewModel, String it) throws IOException {
        Intrinsics.checkNotNullParameter(it, "it");
        String str = it;
        Appendable sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        $loginViewModel.setTelefonoPsicologo(((StringBuilder) sb).toString());
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$59(long $errorColor, State $phoneError$delegate, State $telefono$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:AgregaPsicologoScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-763470981, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:307)");
            }
            if (AgregaPsicologoScreen$lambda$12($phoneError$delegate) != null) {
                composer.startReplaceGroup(1582861377);
                ComposerKt.sourceInformation(composer, "308@14906L38");
                String strAgregaPsicologoScreen$lambda$12 = AgregaPsicologoScreen$lambda$12($phoneError$delegate);
                Intrinsics.checkNotNull(strAgregaPsicologoScreen$lambda$12);
                TextKt.m2976Text4IGK_g(strAgregaPsicologoScreen$lambda$12, (Modifier) null, $errorColor, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 131066);
                $composer.endReplaceGroup();
            } else {
                if (StringsKt.isBlank(AgregaPsicologoScreen$lambda$8($telefono$delegate)) || AgregaPsicologoScreen$lambda$8($telefono$delegate).length() == 9) {
                    composer.startReplaceGroup(1568104199);
                } else {
                    composer.startReplaceGroup(1583019415);
                    ComposerKt.sourceInformation(composer, "310@15065L48");
                    TextKt.m2976Text4IGK_g("Debe tener 9 dígitos", (Modifier) null, $errorColor, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 131066);
                    composer = $composer;
                }
                composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0604  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x067a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83(final long $primaryColor, final LoginViewModel $loginViewModel, final RoundedCornerShape $textFieldShape, MutableState $expandedEspecialidad$delegate, final State $especialidad$delegate, final List $listaEspecialidades, State $experiencia$delegate, State $descripcion$delegate, State $licencia$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        String str;
        final MutableState mutableState;
        String string;
        String str2;
        String strAgregaPsicologoScreen$lambda$6;
        boolean zChangedInstance;
        String str3;
        boolean zChangedInstance2;
        Modifier modifier;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C324@15626L4418:AgregaPsicologoScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(329110298, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:324)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
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
                $composer.createNode(constructor);
            } else {
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
            ComposerKt.sourceInformationMarkerStart($composer, 1206447780, "C325@15691L534,335@16246L41,340@16480L29,341@16532L1609,338@16356L1785,380@18612L158,376@18320L59,374@18198L594,393@19230L158,389@18959L45,387@18849L561,406@19846L158,402@19571L42,400@19464L562:AgregaPsicologoScreen.kt#6w2cjo");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier2 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier2);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor2;
                $composer.createNode(function0);
            } else {
                function0 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -623673635, "C326@15769L83,327@15877L39,330@16048L10,328@15941L262:AgregaPsicologoScreen.kt#6w2cjo");
            IconKt.m2433Iconww6aTOc(MedicalServicesKt.getMedicalServices(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, $primaryColor, $composer, 3120, 4);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Datos Profesionales", (Modifier) null, $primaryColor, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, 196998, 0, 65498);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            boolean zAgregaPsicologoScreen$lambda$23 = AgregaPsicologoScreen$lambda$23($expandedEspecialidad$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 870222605, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                str = "CC(remember):AgregaPsicologoScreen.kt#9igjgp";
                mutableState = $expandedEspecialidad$delegate;
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda40
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$64$lambda$63(mutableState, ((Boolean) obj2).booleanValue());
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            } else {
                str = "CC(remember):AgregaPsicologoScreen.kt#9igjgp";
                mutableState = $expandedEspecialidad$delegate;
            }
            Function1 function1 = (Function1) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer);
            final MutableState mutableState2 = mutableState;
            String str4 = str;
            ExposedDropdownMenu_androidKt.ExposedDropdownMenuBox(zAgregaPsicologoScreen$lambda$23, function1, null, ComposableLambdaKt.rememberComposableLambda(-1741620570, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda41
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75($primaryColor, $textFieldShape, $especialidad$delegate, mutableState2, $listaEspecialidades, $loginViewModel, (ExposedDropdownMenuBoxScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 3120, 4);
            Integer numAgregaPsicologoScreen$lambda$5 = AgregaPsicologoScreen$lambda$5($experiencia$delegate);
            if (numAgregaPsicologoScreen$lambda$5 == null || (string = numAgregaPsicologoScreen$lambda$5.toString()) == null) {
                string = "";
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 870281515, str4);
            boolean zChangedInstance3 = $composer.changedInstance($loginViewModel);
            String str5 = string;
            Object objRememberedValue2 = $composer.rememberedValue();
            if (!zChangedInstance3) {
                str2 = "";
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str5, (Function1<? super String, Unit>) objRememberedValue2, modifierFillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$75044266$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 1573248, 0, 0, 2097080);
                strAgregaPsicologoScreen$lambda$6 = AgregaPsicologoScreen$lambda$6($descripcion$delegate);
                if (strAgregaPsicologoScreen$lambda$6 == null) {
                    strAgregaPsicologoScreen$lambda$6 = str2;
                }
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                TextFieldColors textFieldColorsM2626colors0hiis_02 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 870301949, str4);
                zChangedInstance = $composer.changedInstance($loginViewModel);
                Object objRememberedValue3 = $composer.rememberedValue();
                if (zChangedInstance) {
                    str3 = strAgregaPsicologoScreen$lambda$6;
                    if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(str3, (Function1<? super String, Unit>) objRememberedValue3, modifierFillMaxWidth$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$74265313$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_02, $composer, 1573248, 0, 0, 2097080);
                    String strAgregaPsicologoScreen$lambda$7 = AgregaPsicologoScreen$lambda$7($licencia$delegate);
                    String str6 = strAgregaPsicologoScreen$lambda$7 == null ? str2 : strAgregaPsicologoScreen$lambda$7;
                    Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    TextFieldColors textFieldColorsM2626colors0hiis_03 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                    ComposerKt.sourceInformationMarkerStart($composer, 870321530, str4);
                    zChangedInstance2 = $composer.changedInstance($loginViewModel);
                    Object objRememberedValue4 = $composer.rememberedValue();
                    if (!zChangedInstance2) {
                        modifier = modifierFillMaxWidth$default3;
                        if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(str6, (Function1<? super String, Unit>) objRememberedValue4, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10418getLambda$936400734$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_03, $composer, 1573248, 0, 0, 2097080);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        modifier = modifierFillMaxWidth$default3;
                    }
                    Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda44
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$81$lambda$80($loginViewModel, (String) obj3);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue4 = obj2;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(str6, (Function1<? super String, Unit>) objRememberedValue4, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10418getLambda$936400734$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_03, $composer, 1573248, 0, 0, 2097080);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                } else {
                    str3 = strAgregaPsicologoScreen$lambda$6;
                }
                Object obj3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda43
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$79$lambda$78($loginViewModel, (String) obj4);
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str3, (Function1<? super String, Unit>) objRememberedValue3, modifierFillMaxWidth$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$74265313$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_02, $composer, 1573248, 0, 0, 2097080);
                String strAgregaPsicologoScreen$lambda$72 = AgregaPsicologoScreen$lambda$7($licencia$delegate);
                if (strAgregaPsicologoScreen$lambda$72 == null) {
                }
                Modifier modifierFillMaxWidth$default32 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                TextFieldColors textFieldColorsM2626colors0hiis_032 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 870321530, str4);
                zChangedInstance2 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue42 = $composer.rememberedValue();
                if (!zChangedInstance2) {
                }
                Object obj22 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda44
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj32) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$81$lambda$80($loginViewModel, (String) obj32);
                    }
                };
                $composer.updateRememberedValue(obj22);
                objRememberedValue42 = obj22;
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str6, (Function1<? super String, Unit>) objRememberedValue42, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10418getLambda$936400734$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_032, $composer, 1573248, 0, 0, 2097080);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
            } else {
                str2 = "";
            }
            objRememberedValue2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda42
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$77$lambda$76($loginViewModel, (String) obj4);
                }
            };
            $composer.updateRememberedValue(objRememberedValue2);
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(str5, (Function1<? super String, Unit>) objRememberedValue2, modifierFillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$75044266$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 1573248, 0, 0, 2097080);
            strAgregaPsicologoScreen$lambda$6 = AgregaPsicologoScreen$lambda$6($descripcion$delegate);
            if (strAgregaPsicologoScreen$lambda$6 == null) {
            }
            Modifier modifierFillMaxWidth$default22 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_022 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 870301949, str4);
            zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue32 = $composer.rememberedValue();
            if (zChangedInstance) {
            }
            Object obj32 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda43
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$79$lambda$78($loginViewModel, (String) obj4);
                }
            };
            $composer.updateRememberedValue(obj32);
            objRememberedValue32 = obj32;
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(str3, (Function1<? super String, Unit>) objRememberedValue32, modifierFillMaxWidth$default22, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$74265313$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_022, $composer, 1573248, 0, 0, 2097080);
            String strAgregaPsicologoScreen$lambda$722 = AgregaPsicologoScreen$lambda$7($licencia$delegate);
            if (strAgregaPsicologoScreen$lambda$722 == null) {
            }
            Modifier modifierFillMaxWidth$default322 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_0322 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 870321530, str4);
            zChangedInstance2 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue422 = $composer.rememberedValue();
            if (!zChangedInstance2) {
            }
            Object obj222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda44
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj322) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$81$lambda$80($loginViewModel, (String) obj322);
                }
            };
            $composer.updateRememberedValue(obj222);
            objRememberedValue422 = obj222;
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(str6, (Function1<? super String, Unit>) objRememberedValue422, modifier, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10418getLambda$936400734$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0322, $composer, 1573248, 0, 0, 2097080);
            ComposerKt.sourceInformationMarkerEnd($composer);
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

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$64$lambda$63(MutableState $expandedEspecialidad$delegate, boolean it) {
        AgregaPsicologoScreen$lambda$24($expandedEspecialidad$delegate, it);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75(long $primaryColor, RoundedCornerShape $textFieldShape, State $especialidad$delegate, final MutableState $expandedEspecialidad$delegate, final List $listaEspecialidades, final LoginViewModel $loginViewModel, ExposedDropdownMenuBoxScope ExposedDropdownMenuBox, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(ExposedDropdownMenuBox, "$this$ExposedDropdownMenuBox");
        ComposerKt.sourceInformation($composer, "C352@17198L170,344@16671L2,351@17056L77,342@16558L836,359@17548L32,360@17607L512,357@17419L700:AgregaPsicologoScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= ($changed & 8) == 0 ? $composer.changed(ExposedDropdownMenuBox) : $composer.changedInstance(ExposedDropdownMenuBox) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1741620570, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:342)");
            }
            String strAgregaPsicologoScreen$lambda$4 = AgregaPsicologoScreen$lambda$4($especialidad$delegate);
            Modifier modifierMenuAnchor = ExposedDropdownMenuBox.menuAnchor(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null));
            int $dirty2 = $dirty;
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1339882120, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$66$lambda$65((String) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strAgregaPsicologoScreen$lambda$4, (Function1<? super String, Unit>) objRememberedValue, modifierMenuAnchor, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.m10417getLambda$2119899712$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-796585827, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$67($expandedEspecialidad$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 806903856, 0, 0, 2096552);
            boolean zAgregaPsicologoScreen$lambda$23 = AgregaPsicologoScreen$lambda$23($expandedEspecialidad$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 1339910214, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$69$lambda$68($expandedEspecialidad$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ExposedDropdownMenuBox.m2364ExposedDropdownMenuvNxi1II(zAgregaPsicologoScreen$lambda$23, (Function0) objRememberedValue2, null, null, false, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-488924060, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$74($listaEspecialidades, $loginViewModel, $expandedEspecialidad$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer, 54), $composer, 48, (ExposedDropdownMenuBoxScope.$stable << 3) | 6 | (($dirty2 << 3) & 112), 1020);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$66$lambda$65(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$67(MutableState $expandedEspecialidad$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C351@17086L45:AgregaPsicologoScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-796585827, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:351)");
            }
            ExposedDropdownMenuDefaults.INSTANCE.TrailingIcon(AgregaPsicologoScreen$lambda$23($expandedEspecialidad$delegate), null, $composer, ExposedDropdownMenuDefaults.$stable << 6, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$69$lambda$68(MutableState $expandedEspecialidad$delegate) {
        AgregaPsicologoScreen$lambda$24($expandedEspecialidad$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$74(List $listaEspecialidades, final LoginViewModel $loginViewModel, final MutableState $expandedEspecialidad$delegate, ColumnScope ExposedDropdownMenu, Composer $composer, int $changed) {
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(ExposedDropdownMenu, "$this$ExposedDropdownMenu");
        ComposerKt.sourceInformation(composer, "C*363@17770L16,364@17834L195,362@17709L354:AgregaPsicologoScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-488924060, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:361)");
            }
            Iterator it = $listaEspecialidades.iterator();
            while (it.hasNext()) {
                final String str = (String) it.next();
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1828478236, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$74$lambda$73$lambda$70(str, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -965326441, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                boolean zChangedInstance = composer.changedInstance($loginViewModel) | composer.changed(str);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$74$lambda$73$lambda$72$lambda$71($loginViewModel, str, $expandedEspecialidad$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue, null, null, null, false, null, null, null, composer, 6, 508);
                composer = $composer;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$74$lambda$73$lambda$70(String $opcion, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C363@17772L12:AgregaPsicologoScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1828478236, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:363)");
            }
            TextKt.m2976Text4IGK_g($opcion, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$75$lambda$74$lambda$73$lambda$72$lambda$71(LoginViewModel $loginViewModel, String $opcion, MutableState $expandedEspecialidad$delegate) {
        $loginViewModel.setRegistroEspecialidad($opcion);
        AgregaPsicologoScreen$lambda$24($expandedEspecialidad$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$77$lambda$76(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setRegistroExperiencia(StringsKt.toIntOrNull(it));
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$79$lambda$78(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setRegistroDescripcion(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$83$lambda$82$lambda$81$lambda$80(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setRegistroLicencia(it);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x037a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90(final LoginViewModel $loginViewModel, final State $aceptaTerminos$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer composer;
        boolean zChangedInstance;
        Composer composer2;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C421@20464L723:AgregaPsicologoScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-181901861, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:421)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
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
            ComposerKt.sourceInformationMarkerStart($composer, -992798510, "C422@20529L640:AgregaPsicologoScreen.kt#6w2cjo");
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((390 << 3) & 112) << 6) & 896) | 6;
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
            int i6 = ((390 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 1472161916, "C428@20823L49,426@20713L185,432@21059L62,430@20923L224:AgregaPsicologoScreen.kt#6w2cjo");
            boolean zAgregaPsicologoScreen$lambda$15 = AgregaPsicologoScreen$lambda$15($aceptaTerminos$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 1155870886, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            boolean zChangedInstance2 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (!zChangedInstance2) {
                composer = $composer;
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                CheckboxKt.Checkbox(zAgregaPsicologoScreen$lambda$15, (Function1) objRememberedValue, null, false, null, null, composer, 0, 60);
                Composer composer3 = composer;
                Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
                ComposerKt.sourceInformationMarkerStart(composer3, 1155878451, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
                zChangedInstance = composer3.changedInstance($loginViewModel) | composer3.changed($aceptaTerminos$delegate);
                Object objRememberedValue2 = composer3.rememberedValue();
                if (zChangedInstance) {
                    composer2 = composer3;
                    if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    Composer composer4 = composer2;
                    TextKt.m2976Text4IGK_g("Acepto términos y condiciones", ClickableKt.m299clickableoSLSa3U$default(modifierWeight$default, false, null, null, null, (Function0) objRememberedValue2, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 6, 0, 131068);
                    ComposerKt.sourceInformationMarkerEnd(composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composer2 = composer3;
                }
                objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90$lambda$89$lambda$88$lambda$87$lambda$86($loginViewModel, $aceptaTerminos$delegate);
                    }
                };
                composer3.updateRememberedValue(objRememberedValue2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                Composer composer42 = composer2;
                TextKt.m2976Text4IGK_g("Acepto términos y condiciones", ClickableKt.m299clickableoSLSa3U$default(modifierWeight$default, false, null, null, null, (Function0) objRememberedValue2, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer42, 6, 0, 131068);
                ComposerKt.sourceInformationMarkerEnd(composer42);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
            } else {
                composer = $composer;
            }
            objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90$lambda$89$lambda$88$lambda$85$lambda$84($loginViewModel, ((Boolean) obj).booleanValue());
                }
            };
            $composer.updateRememberedValue(objRememberedValue);
            ComposerKt.sourceInformationMarkerEnd(composer);
            CheckboxKt.Checkbox(zAgregaPsicologoScreen$lambda$15, (Function1) objRememberedValue, null, false, null, null, composer, 0, 60);
            Composer composer32 = composer;
            Modifier modifierWeight$default2 = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart(composer32, 1155878451, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            zChangedInstance = composer32.changedInstance($loginViewModel) | composer32.changed($aceptaTerminos$delegate);
            Object objRememberedValue22 = composer32.rememberedValue();
            if (zChangedInstance) {
            }
            objRememberedValue22 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90$lambda$89$lambda$88$lambda$87$lambda$86($loginViewModel, $aceptaTerminos$delegate);
                }
            };
            composer32.updateRememberedValue(objRememberedValue22);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            Composer composer422 = composer2;
            TextKt.m2976Text4IGK_g("Acepto términos y condiciones", ClickableKt.m299clickableoSLSa3U$default(modifierWeight$default2, false, null, null, null, (Function0) objRememberedValue22, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer422, 6, 0, 131068);
            ComposerKt.sourceInformationMarkerEnd(composer422);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90$lambda$89$lambda$88$lambda$85$lambda$84(LoginViewModel $loginViewModel, boolean it) {
        $loginViewModel.setAceptaTerminosPsicologo(it);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90$lambda$89$lambda$88$lambda$87$lambda$86(LoginViewModel $loginViewModel, State $aceptaTerminos$delegate) {
        $loginViewModel.setAceptaTerminosPsicologo(!AgregaPsicologoScreen$lambda$15($aceptaTerminos$delegate));
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$92$lambda$91(LoginViewModel $loginViewModel) {
        $loginViewModel.registrarPsicologo();
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$95$lambda$94$lambda$93(State $isRegistering$delegate, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C:AgregaPsicologoScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1487327585, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous>.<anonymous>.<anonymous> (AgregaPsicologoScreen.kt:452)");
            }
            if (AgregaPsicologoScreen$lambda$16($isRegistering$delegate)) {
                $composer.startReplaceGroup(2093507809);
                ComposerKt.sourceInformation($composer, "453@21883L193,458@22097L39,459@22157L70");
                ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), Color.INSTANCE.m4734getWhite0d7_KjU(), Dp.m7505constructorimpl(2), 0L, 0, $composer, 438, 24);
                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
                TextKt.m2976Text4IGK_g("Registrando...", (Modifier) null, 0L, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199686, 0, 131030);
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(2093886133);
                ComposerKt.sourceInformation($composer, "461@22273L68");
                TextKt.m2976Text4IGK_g("Crear Cuenta", (Modifier) null, 0L, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199686, 0, 131030);
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    private static final int AgregaPsicologoScreen$lambda$97(MutableState<Integer> mutableState) {
        return mutableState.getValue().intValue();
    }

    private static final int AgregaPsicologoScreen$lambda$100(MutableState<Integer> mutableState) {
        return mutableState.getValue().intValue();
    }

    private static final int AgregaPsicologoScreen$lambda$103(MutableState<Integer> mutableState) {
        return mutableState.getValue().intValue();
    }

    static final Unit AgregaPsicologoScreen$lambda$106$lambda$105(LoginViewModel $loginViewModel) {
        $loginViewModel.setShowDatePicker(false);
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$109(final LoginViewModel $loginViewModel, final MutableState $year$delegate, final MutableState $month$delegate, final MutableState $day$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C479@22898L535,479@22877L613:AgregaPsicologoScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1151807139, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous> (AgregaPsicologoScreen.kt:479)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 1214903572, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$109$lambda$108$lambda$107($loginViewModel, $year$delegate, $month$delegate, $day$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.TextButton((Function0) objRememberedValue, null, false, null, null, null, null, null, null, ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$563581504$app(), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$109$lambda$108$lambda$107(LoginViewModel $loginViewModel, MutableState $year$delegate, MutableState $month$delegate, MutableState $day$delegate) {
        LocalDate selectedDate = LocalDate.of(AgregaPsicologoScreen$lambda$97($year$delegate), AgregaPsicologoScreen$lambda$100($month$delegate) + 1, AgregaPsicologoScreen$lambda$103($day$delegate));
        int age = Period.between(selectedDate, LocalDate.now()).getYears();
        if (age >= 18) {
            Intrinsics.checkNotNull(selectedDate);
            $loginViewModel.setDateOfBirth(selectedDate);
            $loginViewModel.setDateError(null);
            $loginViewModel.setShowDatePicker(false);
        } else {
            $loginViewModel.setDateError("Debes ser mayor de 18 años");
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$112(final LoginViewModel $loginViewModel, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C494@23573L43,494@23552L122:AgregaPsicologoScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-664733413, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen.<anonymous> (AgregaPsicologoScreen.kt:494)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 1141318502, "CC(remember):AgregaPsicologoScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$112$lambda$111$lambda$110($loginViewModel);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.TextButton((Function0) objRememberedValue, null, false, null, null, null, null, null, null, ComposableSingletons$AgregaPsicologoScreenKt.INSTANCE.getLambda$1050655230$app(), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AgregaPsicologoScreen$lambda$112$lambda$111$lambda$110(LoginViewModel $loginViewModel) {
        $loginViewModel.setShowDatePicker(false);
        return Unit.INSTANCE;
    }
}
