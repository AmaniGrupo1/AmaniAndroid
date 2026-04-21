package org.ies.tierno.applicationamani.presentation.ui.screen;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ImageKt;
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
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.VisibilityKt;
import androidx.compose.material.icons.filled.VisibilityOffKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
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
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.WavUtil;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.R;
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;
import org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors;
import org.ies.tierno.applicationamani.ui.theme.ThemeKt;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: LoginScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000Z\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\u0093\u0001\u0010\u0007\u001a\u00020\u00012\b\b\u0002\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007¢\u0006\u0002\u0010\u001c\u001a\r\u0010\u001d\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001e¨\u0006\u001f²\u0006\n\u0010\n\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u000e\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\u0012\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!X\u008a\u0084\u0002²\u0006\n\u0010\u0010\u001a\u00020\u0011X\u008a\u0084\u0002²\u0006\f\u0010#\u001a\u0004\u0018\u00010\u000bX\u008a\u0084\u0002²\u0006\n\u0010$\u001a\u00020\u0011X\u008a\u008e\u0002"}, d2 = {"LoginScreen", "", "navController", "Landroidx/navigation/NavController;", "loginViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;II)V", "LoginScreenContent", "modifier", "Landroidx/compose/ui/Modifier;", HintConstants.AUTOFILL_HINT_USERNAME, "", "onUsernameChange", "Lkotlin/Function1;", HintConstants.AUTOFILL_HINT_PASSWORD, "onPasswordChange", "isLoggingIn", "", "isLoginEnabled", "onLogin", "Lkotlin/Function0;", "onRegisterClick", "colors", "Landroidx/compose/material3/ColorScheme;", "amaniColors", "Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;", "typography", "Landroidx/compose/material3/Typography;", "(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;III)V", "LoginScreenPreview", "(Landroidx/compose/runtime/Composer;I)V", "app", "loginResult", "Lkotlin/Result;", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;", "loginError", "isPasswordVisible"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class LoginScreenKt {
    static final Unit LoginScreen$lambda$18(NavController navController, LoginViewModel loginViewModel, int i, int i2, Composer composer, int i3) {
        LoginScreen(navController, loginViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$37(Modifier modifier, String str, Function1 function1, String str2, Function1 function12, boolean z, boolean z2, Function0 function0, Function0 function02, ColorScheme colorScheme, AmaniExtraColors amaniExtraColors, Typography typography, int i, int i2, int i3, Composer composer, int i4) {
        LoginScreenContent(modifier, str, function1, str2, function12, z, z2, function0, function02, colorScheme, amaniExtraColors, typography, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenPreview$lambda$38(int i, Composer composer, int i2) {
        LoginScreenPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x024c  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void LoginScreen(NavController navController, LoginViewModel loginViewModel, Composer $composer, final int $changed, final int i) {
        final LoginViewModel loginViewModel2;
        Composer $composer2;
        int $dirty;
        LoginViewModel loginViewModel3;
        Object objRememberedValue;
        boolean zChanged;
        LoginScreenKt$LoginScreen$1$1 loginScreenKt$LoginScreen$1$1RememberedValue;
        boolean zChanged2;
        Object objRememberedValue2;
        final NavController navController2 = navController;
        Intrinsics.checkNotNullParameter(navController2, "navController");
        Composer $composer3 = $composer.startRestartGroup(-1421226330);
        ComposerKt.sourceInformation($composer3, "C(LoginScreen)N(navController,loginViewModel)80@3629L16,81@3690L16,82@3757L16,83@3824L16,84@3889L16,86@3935L32,89@4056L235,89@4029L262,99@4408L830,99@4380L858,123@5271L11,124@5322L7,125@5365L10,129@5469L47,130@5523L750,127@5381L892:LoginScreen.kt#8o7o96");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changedInstance(navController2) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                loginViewModel2 = loginViewModel;
                int i2 = $composer3.changedInstance(loginViewModel2) ? 32 : 16;
                $dirty2 |= i2;
            } else {
                loginViewModel2 = loginViewModel;
            }
            $dirty2 |= i2;
        } else {
            loginViewModel2 = loginViewModel;
        }
        if ($composer3.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "78@3565L15");
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
            } else {
                if ((i & 2) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(LoginViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer3, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    LoginViewModel loginViewModel4 = (LoginViewModel) viewModelResolveViewModel;
                    $dirty = $dirty2 & (-113);
                    loginViewModel3 = loginViewModel4;
                }
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1421226330, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen (LoginScreen.kt:79)");
                }
                final State username$delegate = SnapshotStateKt.collectAsState(loginViewModel3.getUsername(), null, $composer3, 0, 1);
                final State password$delegate = SnapshotStateKt.collectAsState(loginViewModel3.getPassword(), null, $composer3, 0, 1);
                State loginResult$delegate = SnapshotStateKt.collectAsState(loginViewModel3.getLoginResult(), null, $composer3, 0, 1);
                final State isLoggingIn$delegate = SnapshotStateKt.collectAsState(loginViewModel3.isLoggingIn(), null, $composer3, 0, 1);
                State loginError$delegate = SnapshotStateKt.collectAsState(loginViewModel3.getLoginError(), null, $composer3, 0, 1);
                ComposerKt.sourceInformationMarkerStart($composer3, 1112070, "CC(remember):LoginScreen.kt#9igjgp");
                objRememberedValue = $composer3.rememberedValue();
                if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
                    Object snackbarHostState = new SnackbarHostState();
                    $composer3.updateRememberedValue(snackbarHostState);
                    objRememberedValue = snackbarHostState;
                }
                final SnackbarHostState snackbarHostState2 = (SnackbarHostState) objRememberedValue;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                String strLoginScreen$lambda$4 = LoginScreen$lambda$4(loginError$delegate);
                ComposerKt.sourceInformationMarkerStart($composer3, 1116145, "CC(remember):LoginScreen.kt#9igjgp");
                zChanged = $composer3.changed(loginError$delegate);
                loginScreenKt$LoginScreen$1$1RememberedValue = $composer3.rememberedValue();
                if (!zChanged || loginScreenKt$LoginScreen$1$1RememberedValue == Composer.INSTANCE.getEmpty()) {
                    loginScreenKt$LoginScreen$1$1RememberedValue = new LoginScreenKt$LoginScreen$1$1(snackbarHostState2, loginError$delegate, null);
                    $composer3.updateRememberedValue(loginScreenKt$LoginScreen$1$1RememberedValue);
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.LaunchedEffect(strLoginScreen$lambda$4, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) loginScreenKt$LoginScreen$1$1RememberedValue, $composer3, 0);
                Result<LoginResponseDTO> resultLoginScreen$lambda$2 = LoginScreen$lambda$2(loginResult$delegate);
                ComposerKt.sourceInformationMarkerStart($composer3, 1128004, "CC(remember):LoginScreen.kt#9igjgp");
                zChanged2 = $composer3.changed(loginResult$delegate) | $composer3.changedInstance(navController2) | $composer3.changedInstance(loginViewModel3);
                objRememberedValue2 = $composer3.rememberedValue();
                if (!zChanged2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj = (Function2) new LoginScreenKt$LoginScreen$2$1(loginResult$delegate, navController2, loginViewModel3, null);
                    $composer3.updateRememberedValue(obj);
                    objRememberedValue2 = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.LaunchedEffect(resultLoginScreen$lambda$2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue2, $composer3, 0);
                final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
                ProvidableCompositionLocal<AmaniExtraColors> localAmaniColors = ThemeKt.getLocalAmaniColors();
                final LoginViewModel loginViewModel5 = loginViewModel3;
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume = $composer3.consume(localAmaniColors);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final AmaniExtraColors amaniColors = (AmaniExtraColors) objConsume;
                final Typography typography = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
                navController2 = navController;
                $composer2 = $composer3;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, ComposableLambdaKt.rememberComposableLambda(856272160, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return LoginScreenKt.LoginScreen$lambda$8(snackbarHostState2, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer3, 54), null, 0, amaniColors.m10507getScreenBackground0d7_KjU(), 0L, null, ComposableLambdaKt.rememberComposableLambda(-1419219657, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj2, Object obj3, Object obj4) {
                        return LoginScreenKt.LoginScreen$lambda$17(loginViewModel5, navController2, colors, amaniColors, typography, username$delegate, password$delegate, isLoggingIn$delegate, (PaddingValues) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer3, 54), $composer2, 805309440, 439);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                loginViewModel2 = loginViewModel5;
            }
            $dirty = $dirty2;
            loginViewModel3 = loginViewModel2;
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            final State username$delegate2 = SnapshotStateKt.collectAsState(loginViewModel3.getUsername(), null, $composer3, 0, 1);
            final State password$delegate2 = SnapshotStateKt.collectAsState(loginViewModel3.getPassword(), null, $composer3, 0, 1);
            State loginResult$delegate2 = SnapshotStateKt.collectAsState(loginViewModel3.getLoginResult(), null, $composer3, 0, 1);
            final State isLoggingIn$delegate2 = SnapshotStateKt.collectAsState(loginViewModel3.isLoggingIn(), null, $composer3, 0, 1);
            State loginError$delegate2 = SnapshotStateKt.collectAsState(loginViewModel3.getLoginError(), null, $composer3, 0, 1);
            ComposerKt.sourceInformationMarkerStart($composer3, 1112070, "CC(remember):LoginScreen.kt#9igjgp");
            objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
            }
            final SnackbarHostState snackbarHostState22 = (SnackbarHostState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            String strLoginScreen$lambda$42 = LoginScreen$lambda$4(loginError$delegate2);
            ComposerKt.sourceInformationMarkerStart($composer3, 1116145, "CC(remember):LoginScreen.kt#9igjgp");
            zChanged = $composer3.changed(loginError$delegate2);
            loginScreenKt$LoginScreen$1$1RememberedValue = $composer3.rememberedValue();
            if (!zChanged) {
            }
            loginScreenKt$LoginScreen$1$1RememberedValue = new LoginScreenKt$LoginScreen$1$1(snackbarHostState22, loginError$delegate2, null);
            $composer3.updateRememberedValue(loginScreenKt$LoginScreen$1$1RememberedValue);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.LaunchedEffect(strLoginScreen$lambda$42, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) loginScreenKt$LoginScreen$1$1RememberedValue, $composer3, 0);
            Result<LoginResponseDTO> resultLoginScreen$lambda$22 = LoginScreen$lambda$2(loginResult$delegate2);
            ComposerKt.sourceInformationMarkerStart($composer3, 1128004, "CC(remember):LoginScreen.kt#9igjgp");
            zChanged2 = $composer3.changed(loginResult$delegate2) | $composer3.changedInstance(navController2) | $composer3.changedInstance(loginViewModel3);
            objRememberedValue2 = $composer3.rememberedValue();
            if (!zChanged2) {
            }
            Object obj2 = (Function2) new LoginScreenKt$LoginScreen$2$1(loginResult$delegate2, navController2, loginViewModel3, null);
            $composer3.updateRememberedValue(obj2);
            objRememberedValue2 = obj2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.LaunchedEffect(resultLoginScreen$lambda$22, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue2, $composer3, 0);
            final ColorScheme colors2 = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
            ProvidableCompositionLocal<AmaniExtraColors> localAmaniColors2 = ThemeKt.getLocalAmaniColors();
            final LoginViewModel loginViewModel52 = loginViewModel3;
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer3.consume(localAmaniColors2);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final AmaniExtraColors amaniColors2 = (AmaniExtraColors) objConsume2;
            final Typography typography2 = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
            navController2 = navController;
            $composer2 = $composer3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, ComposableLambdaKt.rememberComposableLambda(856272160, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj22, Object obj3) {
                    return LoginScreenKt.LoginScreen$lambda$8(snackbarHostState22, (Composer) obj22, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), null, 0, amaniColors2.m10507getScreenBackground0d7_KjU(), 0L, null, ComposableLambdaKt.rememberComposableLambda(-1419219657, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj22, Object obj3, Object obj4) {
                    return LoginScreenKt.LoginScreen$lambda$17(loginViewModel52, navController2, colors2, amaniColors2, typography2, username$delegate2, password$delegate2, isLoggingIn$delegate2, (PaddingValues) obj22, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer3, 54), $composer2, 805309440, 439);
            if (ComposerKt.isTraceInProgress()) {
            }
            loginViewModel2 = loginViewModel52;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return LoginScreenKt.LoginScreen$lambda$18(navController2, loginViewModel2, $changed, i, (Composer) obj3, ((Integer) obj4).intValue());
                }
            });
        }
    }

    private static final String LoginScreen$lambda$0(State<String> state) {
        return (String) state.getValue();
    }

    private static final String LoginScreen$lambda$1(State<String> state) {
        return (String) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result<LoginResponseDTO> LoginScreen$lambda$2(State<Result<LoginResponseDTO>> state) {
        return (Result) state.getValue();
    }

    private static final boolean LoginScreen$lambda$3(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String LoginScreen$lambda$4(State<String> state) {
        return (String) state.getValue();
    }

    static final Unit LoginScreen$lambda$8(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C129@5471L43:LoginScreen.kt#8o7o96");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(856272160, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen.<anonymous> (LoginScreen.kt:129)");
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

    static final Unit LoginScreen$lambda$17(final LoginViewModel $loginViewModel, final NavController $navController, ColorScheme $colors, AmaniExtraColors $amaniColors, Typography $typography, State $username$delegate, State $password$delegate, State $isLoggingIn$delegate, PaddingValues paddingValues, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        ComposerKt.sourceInformation($composer, "CN(paddingValues)134@5690L34,136@5790L34,139@5967L26,140@6025L127,131@5550L717:LoginScreen.kt#8o7o96");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(paddingValues) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1419219657, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen.<anonymous> (LoginScreen.kt:131)");
            }
            Modifier modifierPadding = PaddingKt.padding(Modifier.INSTANCE, paddingValues);
            String strLoginScreen$lambda$0 = LoginScreen$lambda$0($username$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 1929515129, "CC(remember):LoginScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return LoginScreenKt.LoginScreen$lambda$17$lambda$10$lambda$9($loginViewModel, (String) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            Function1 function1 = (Function1) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer);
            String strLoginScreen$lambda$1 = LoginScreen$lambda$1($password$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 1929518329, "CC(remember):LoginScreen.kt#9igjgp");
            boolean zChangedInstance2 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return LoginScreenKt.LoginScreen$lambda$17$lambda$12$lambda$11($loginViewModel, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            Function1 function12 = (Function1) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer);
            boolean zLoginScreen$lambda$3 = LoginScreen$lambda$3($isLoggingIn$delegate);
            boolean z = !LoginScreen$lambda$3($isLoggingIn$delegate) && $loginViewModel.isLoginFormValid();
            ComposerKt.sourceInformationMarkerStart($composer, 1929523985, "CC(remember):LoginScreen.kt#9igjgp");
            boolean zChangedInstance3 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return LoginScreenKt.LoginScreen$lambda$17$lambda$14$lambda$13($loginViewModel);
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
            }
            Function0 function0 = (Function0) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 1929525942, "CC(remember):LoginScreen.kt#9igjgp");
            boolean zChangedInstance4 = $composer.changedInstance($loginViewModel) | $composer.changedInstance($navController);
            Object objRememberedValue4 = $composer.rememberedValue();
            if (zChangedInstance4 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Object obj4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return LoginScreenKt.LoginScreen$lambda$17$lambda$16$lambda$15($loginViewModel, $navController);
                    }
                };
                $composer.updateRememberedValue(obj4);
                objRememberedValue4 = obj4;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            LoginScreenContent(modifierPadding, strLoginScreen$lambda$0, function1, strLoginScreen$lambda$1, function12, zLoginScreen$lambda$3, z, function0, (Function0) objRememberedValue4, $colors, $amaniColors, $typography, $composer, 0, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit LoginScreen$lambda$17$lambda$10$lambda$9(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setUsername(it);
        return Unit.INSTANCE;
    }

    static final Unit LoginScreen$lambda$17$lambda$12$lambda$11(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setPassword(it);
        return Unit.INSTANCE;
    }

    static final Unit LoginScreen$lambda$17$lambda$14$lambda$13(LoginViewModel $loginViewModel) {
        $loginViewModel.login();
        return Unit.INSTANCE;
    }

    static final Unit LoginScreen$lambda$17$lambda$16$lambda$15(LoginViewModel $loginViewModel, NavController $navController) {
        $loginViewModel.resetLoginState();
        NavController.navigate$default($navController, Screens.registro.INSTANCE.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    public static final void LoginScreenContent(Modifier modifier, final String username, final Function1<? super String, Unit> onUsernameChange, final String password, final Function1<? super String, Unit> onPasswordChange, final boolean isLoggingIn, final boolean isLoginEnabled, final Function0<Unit> onLogin, final Function0<Unit> onRegisterClick, final ColorScheme colors, final AmaniExtraColors amaniColors, final Typography typography, Composer $composer, final int $changed, final int $changed1, final int i) {
        final Modifier modifier2;
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(onUsernameChange, "onUsernameChange");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(onPasswordChange, "onPasswordChange");
        Intrinsics.checkNotNullParameter(onLogin, "onLogin");
        Intrinsics.checkNotNullParameter(onRegisterClick, "onRegisterClick");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(amaniColors, "amaniColors");
        Intrinsics.checkNotNullParameter(typography, "typography");
        Composer $composer2 = $composer.startRestartGroup(2014189397);
        ComposerKt.sourceInformation($composer2, "C(LoginScreenContent)N(modifier,username,onUsernameChange,password,onPasswordChange,isLoggingIn,isLoginEnabled,onLogin,onRegisterClick,colors,amaniColors,typography)166@6763L25,166@6746L42,168@6794L6997:LoginScreen.kt#8o7o96");
        int $dirty = $changed;
        int $dirty1 = $changed1;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(username) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(onUsernameChange) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changed(password) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer2.changedInstance(onPasswordChange) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changed(isLoggingIn) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer2.changed(isLoginEnabled) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= $composer2.changedInstance(onLogin) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty |= $composer2.changedInstance(onRegisterClick) ? 67108864 : 33554432;
        }
        if (($changed & 805306368) == 0) {
            $dirty |= $composer2.changed(colors) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($changed1 & 6) == 0) {
            $dirty1 |= $composer2.changed(amaniColors) ? 4 : 2;
        }
        if (($changed1 & 48) == 0) {
            $dirty1 |= $composer2.changed(typography) ? 32 : 16;
        }
        if ($composer2.shouldExecute((($dirty & 306783379) == 306783378 && ($dirty1 & 19) == 18) ? false : true, $dirty & 1)) {
            Modifier modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2014189397, $dirty, $dirty1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent (LoginScreen.kt:165)");
            }
            Object[] objArr = new Object[0];
            ComposerKt.sourceInformationMarkerStart($composer2, -1394224402, "CC(remember):LoginScreen.kt#9igjgp");
            Object objRememberedValue = $composer2.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    }
                };
                $composer2.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final MutableState isPasswordVisible$delegate = (MutableState) RememberSaveableKt.rememberSaveable(objArr, (Function0) objRememberedValue, $composer2, 48);
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(SizeKt.fillMaxSize$default(modifier3, 0.0f, 1, null), Dp.m7505constructorimpl(24), Dp.m7505constructorimpl(20));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(20));
            ComposerKt.sourceInformationMarkerStart($composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, centerHorizontally, $composer2, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifierM819paddingVpY3zN4);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i3 = ((((432 << 3) & 112) << 6) & 896) | 6;
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
            int i4 = (i3 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i5 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -204541046, "C176@7080L37,175@7051L196,184@7345L6,185@7393L43,186@7475L38,187@7524L5911,182@7257L6178,313@13541L244,310@13445L340:LoginScreen.kt#8o7o96");
            ImageKt.Image(PainterResources_androidKt.painterResource(R.drawable.logo, $composer2, 0), "Logo de Amani", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(180)), (Alignment) null, (ContentScale) null, 1.0f, (ColorFilter) null, $composer2, Painter.$stable | 197040, 88);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MaterialTheme.INSTANCE.getShapes($composer2, MaterialTheme.$stable).getLarge(), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(colors.getSurface(), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(6), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer2, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(-1050241219, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34(typography, colors, username, isLoggingIn, amaniColors, onUsernameChange, password, onPasswordChange, onLogin, isLoginEnabled, isPasswordVisible$delegate, (ColumnScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer2, 54), $composer2, 196614, 16);
            ButtonKt.TextButton(onRegisterClick, null, !isLoggingIn, null, null, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1302790152, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return LoginScreenKt.LoginScreenContent$lambda$36$lambda$35(typography, isLoggingIn, colors, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer2, 54), $composer2, (($dirty >> 24) & 14) | 805306368, 506);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
        } else {
            $composer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return LoginScreenKt.LoginScreenContent$lambda$37(modifier2, username, onUsernameChange, password, onPasswordChange, isLoggingIn, isLoginEnabled, onLogin, onRegisterClick, colors, amaniColors, typography, $changed, $changed1, i, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    private static final boolean LoginScreenContent$lambda$21(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void LoginScreenContent$lambda$22(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x01bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit LoginScreenContent$lambda$36$lambda$34(final Typography $typography, final ColorScheme $colors, final String $username, final boolean $isLoggingIn, AmaniExtraColors $amaniColors, Function1 $onUsernameChange, final String $password, Function1 $onPasswordChange, Function0 $onLogin, boolean $isLoginEnabled, final MutableState $isPasswordVisible$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C188@7538L5887:LoginScreen.kt#8o7o96");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1050241219, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous> (LoginScreen.kt:188)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(20));
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((54 << 3) & 112) << 6) & 896) | 6;
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
            int i3 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1721429974, "C194@7753L164,199@7934L188,223@9154L6,224@9224L425,209@8335L61,212@8610L417,205@8140L1527,264@11349L6,265@11419L425,238@9880L53,251@10661L561,241@10102L393,234@9685L2177,279@12050L6,282@12194L292,289@12580L831,275@11880L1531:LoginScreen.kt#8o7o96");
            TextKt.m2976Text4IGK_g("Iniciar sesión", (Modifier) null, $colors.getOnSurface(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleLarge(), $composer, 6, 0, 65530);
            TextKt.m2976Text4IGK_g("Accede a tu espacio terapéutico", (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 6, 0, 65530);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            if (!StringsKt.isBlank($username)) {
                boolean z = !new Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches($username);
                OutlinedTextFieldKt.OutlinedTextField($username, (Function1<? super String, Unit>) $onUsernameChange, modifierFillMaxWidth$default, !$isLoggingIn, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1396434381, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$23($typography, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$LoginScreenKt.INSTANCE.getLambda$693038124$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(111015578, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$24($username, $typography, $colors, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium(), OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, $amaniColors.m10508getTextFieldContainer0d7_KjU(), $amaniColors.m10508getTextFieldContainer0d7_KjU(), 0L, 0L, $colors.getPrimary(), 0L, null, $colors.getPrimary(), $colors.getOutline(), 0L, $colors.getError(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 0, 0, 0, 3072, 2147460815, 4095), $composer, 14156160, 12583296, 0, 1953584);
                OutlinedTextFieldKt.OutlinedTextField($password, (Function1<? super String, Unit>) $onPasswordChange, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), !$isLoggingIn, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-678286780, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$25($typography, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$LoginScreenKt.INSTANCE.getLambda$1962743011$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1345131999, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29($isPasswordVisible$delegate, $isLoggingIn, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(984824785, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$30($password, $typography, $colors, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), !StringsKt.isBlank($password) && $password.length() < 6, LoginScreenContent$lambda$21($isPasswordVisible$delegate) ? VisualTransformation.INSTANCE.getNone() : new PasswordVisualTransformation((char) 0, 1, null), (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium(), OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, $amaniColors.m10508getTextFieldContainer0d7_KjU(), $amaniColors.m10508getTextFieldContainer0d7_KjU(), 0L, 0L, $colors.getPrimary(), 0L, null, $colors.getPrimary(), $colors.getOutline(), 0L, $colors.getError(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 0, 0, 0, 3072, 2147460815, 4095), $composer, 819462528, 12583296, 0, 1936688);
                ButtonKt.Button($onLogin, SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(52)), $isLoginEnabled, MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium(), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), $colors.getSurfaceVariant(), $colors.getOnSurfaceVariant(), $composer, ButtonDefaults.$stable << 12, 0), null, BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(1), $amaniColors.m10499getButtonBorder0d7_KjU()), null, null, ComposableLambdaKt.rememberComposableLambda(-182288861, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$32($isLoggingIn, $typography, $colors, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), $composer, 805306416, 416);
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
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$23(Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C209@8337L57:LoginScreen.kt#8o7o96");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1396434381, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:209)");
            }
            TextKt.m2976Text4IGK_g("Correo electrónico", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$24(String $username, Typography $typography, ColorScheme $colors, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:LoginScreen.kt#8o7o96");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(111015578, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:213)");
            }
            if (!StringsKt.isBlank($username)) {
                if (new Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches($username)) {
                    composer.startReplaceGroup(131724168);
                } else {
                    composer.startReplaceGroup(140382313);
                    ComposerKt.sourceInformation(composer, "214@8748L231");
                    TextKt.m2976Text4IGK_g("Introduce un correo electrónico válido", (Modifier) null, $colors.getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodySmall(), $composer, 6, 0, 65530);
                    composer = $composer;
                }
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$25(Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C238@9882L49:LoginScreen.kt#8o7o96");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-678286780, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:238)");
            }
            TextKt.m2976Text4IGK_g("Contraseña", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$30(String $password, Typography $typography, ColorScheme $colors, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:LoginScreen.kt#8o7o96");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(984824785, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:242)");
            }
            if (StringsKt.isBlank($password) || $password.length() >= 6) {
                composer.startReplaceGroup(-16451215);
            } else {
                composer.startReplaceGroup(-6344502);
                ComposerKt.sourceInformation(composer, "243@10208L239");
                TextKt.m2976Text4IGK_g("La contraseña debe tener al menos 6 caracteres", (Modifier) null, $colors.getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodySmall(), $composer, 6, 0, 65530);
                composer = $composer;
            }
            composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29(final MutableState $isPasswordVisible$delegate, boolean $isLoggingIn, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C253@10737L42,255@10858L342,252@10687L513:LoginScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1345131999, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:252)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 113307531, "CC(remember):LoginScreen.kt#9igjgp");
            boolean zChanged = $composer.changed($isPasswordVisible$delegate);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29$lambda$27$lambda$26($isPasswordVisible$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, !$isLoggingIn, null, null, ComposableLambdaKt.rememberComposableLambda(216264740, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return LoginScreenKt.LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29$lambda$28($isPasswordVisible$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 26);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29$lambda$27$lambda$26(MutableState $isPasswordVisible$delegate) {
        LoginScreenContent$lambda$22($isPasswordVisible$delegate, !LoginScreenContent$lambda$21($isPasswordVisible$delegate));
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29$lambda$28(MutableState $isPasswordVisible$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C256@10888L286:LoginScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(216264740, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:256)");
            }
            IconKt.m2433Iconww6aTOc(LoginScreenContent$lambda$21($isPasswordVisible$delegate) ? VisibilityOffKt.getVisibilityOff(Icons.INSTANCE.getDefault()) : VisibilityKt.getVisibility(Icons.INSTANCE.getDefault()), LoginScreenContent$lambda$21($isPasswordVisible$delegate) ? "Ocultar contraseña" : "Mostrar contraseña", (Modifier) null, 0L, $composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$32(boolean $isLoggingIn, Typography $typography, ColorScheme $colors, RowScope Button, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C:LoginScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-182288861, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:290)");
            }
            if ($isLoggingIn) {
                $composer.startReplaceGroup(-1728736540);
                ComposerKt.sourceInformation($composer, "291@12645L619");
                Arrangement.Horizontal center = Arrangement.INSTANCE.getCenter();
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, centerVertically, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                int i = ((((432 << 3) & 112) << 6) & 896) | 6;
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
                Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                int i2 = (i >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i3 = ((432 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 863383262, "C295@12853L230,300@13112L39,301@13180L58:LoginScreen.kt#8o7o96");
                ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), $colors.getOnPrimary(), Dp.m7505constructorimpl(2), 0L, 0, $composer, 390, 24);
                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
                TextKt.m2976Text4IGK_g("Iniciando sesión...", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(-1728086470);
                ComposerKt.sourceInformation($composer, "304@13318L53");
                TextKt.m2976Text4IGK_g("Iniciar sesión", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit LoginScreenContent$lambda$36$lambda$35(Typography $typography, boolean $isLoggingIn, ColorScheme $colors, RowScope TextButton, Composer $composer, int $changed) {
        long jM4695copywmQWz5c;
        Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
        ComposerKt.sourceInformation($composer, "C314@13555L220:LoginScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1302790152, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous> (LoginScreen.kt:314)");
            }
            TextStyle bodyLarge = $typography.getBodyLarge();
            if ($isLoggingIn) {
                long onSurface = $colors.getOnSurface();
                jM4695copywmQWz5c = Color.m4695copywmQWz5c(onSurface, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurface) : 0.38f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurface) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurface) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurface) : 0.0f);
            } else {
                jM4695copywmQWz5c = $colors.getPrimary();
            }
            TextKt.m2976Text4IGK_g("¿No tienes cuenta? Regístrate", (Modifier) null, jM4695copywmQWz5c, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyLarge, $composer, 6, 0, 65530);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void LoginScreenPreview(Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(1983962532);
        ComposerKt.sourceInformation($composer2, "C(LoginScreenPreview)329@13975L635:LoginScreen.kt#8o7o96");
        if (!$composer2.shouldExecute($changed != 0, $changed & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1983962532, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenPreview (LoginScreen.kt:328)");
            }
            ThemeKt.ApplicationAmaniTheme(false, ComposableSingletons$LoginScreenKt.INSTANCE.getLambda$1163884097$app(), $composer2, 48, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return LoginScreenKt.LoginScreenPreview$lambda$38($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
