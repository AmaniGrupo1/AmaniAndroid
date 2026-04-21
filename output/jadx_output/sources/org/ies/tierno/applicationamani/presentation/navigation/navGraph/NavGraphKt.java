package org.ies.tierno.applicationamani.presentation.navigation.navGraph;

import android.os.Bundle;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NamedNavArgument;
import androidx.navigation.NamedNavArgumentKt;
import androidx.navigation.NavArgumentBuilder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.NavType;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.NavHostKt;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;
import org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBarKt;
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministradorKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ViewPacientePrincipalScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt;
import org.ies.tierno.applicationamani.presentation.ui.screens.admin.ViewAdminPrincipalKt;
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: NavGraph.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006¨\u0006\u0007²\u0006\f\u0010\b\u001a\u0004\u0018\u00010\tX\u008a\u0084\u0002²\u0006\f\u0010\n\u001a\u0004\u0018\u00010\u000bX\u008a\u0084\u0002"}, d2 = {"NavGraph", "", "navController", "Landroidx/navigation/NavHostController;", "startDestination", "", "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V", "app", "session", "Lorg/ies/tierno/applicationamani/data/local/UserSession;", "currentBackStackEntry", "Landroidx/navigation/NavBackStackEntry;"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class NavGraphKt {
    static final Unit NavGraph$lambda$36(NavHostController navHostController, String str, int i, int i2, Composer composer, int i3) {
        NavGraph(navHostController, str, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void NavGraph(final NavHostController navController, String startDestination, Composer $composer, final int $changed, final int i) {
        final String startDestination2;
        Composer $composer2;
        int $dirty;
        final String startDestination3;
        ViewModelStoreOwner current;
        String string;
        final BottomBarConfig.Paciente bottomBarConfig;
        String rol;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer3 = $composer.startRestartGroup(-1067295443);
        ComposerKt.sourceInformation($composer3, "C(NavGraph)N(navController,startDestination)56@3517L15,58@3654L48,59@3750L30,68@4066L412,77@4485L4837,67@4036L5286:NavGraph.kt#cx1nnv");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                startDestination2 = startDestination;
                int i2 = $composer3.changed(startDestination2) ? 32 : 16;
                $dirty2 |= i2;
            } else {
                startDestination2 = startDestination;
            }
            $dirty2 |= i2;
        } else {
            startDestination2 = startDestination;
        }
        if ($composer3.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            $composer3.startDefaults();
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
            } else {
                if ((i & 2) != 0) {
                    $dirty = $dirty2 & (-113);
                    startDestination3 = Screens.principal.INSTANCE.getRoute();
                }
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1067295443, $dirty, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph (NavGraph.kt:55)");
                }
                ComposerKt.sourceInformationMarkerStart($composer3, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, LocalViewModelStoreOwner.$stable);
                if (current != null) {
                    throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                }
                ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(LoginViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer3, 0), null);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final LoginViewModel loginViewModel = (LoginViewModel) viewModelResolveViewModel;
                final UserSessionDataStore userSessionDataStore = (UserSessionDataStore) KoinJavaComponent.getKoin().getScopeRegistry().getRootScope().get(Reflection.getOrCreateKotlinClass(UserSessionDataStore.class), null, null);
                State session$delegate = FlowExtKt.collectAsStateWithLifecycle(userSessionDataStore.getSessionFlow(), (Object) null, (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer3, 48, 14);
                final State<NavBackStackEntry> stateCurrentBackStackEntryAsState = NavHostControllerKt.currentBackStackEntryAsState(navController, $composer3, $dirty & 14);
                UserSession userSessionNavGraph$lambda$0 = NavGraph$lambda$0(session$delegate);
                if (userSessionNavGraph$lambda$0 == null || (rol = userSessionNavGraph$lambda$0.getRol()) == null) {
                    string = null;
                    if (string == null) {
                        switch (string.hashCode()) {
                            case -652245315:
                                if (string.equals("administrador")) {
                                    bottomBarConfig = BottomBarConfig.Admin.INSTANCE;
                                } else {
                                    bottomBarConfig = BottomBarConfig.Paciente.INSTANCE;
                                }
                                break;
                            case -372981169:
                                if (string.equals("psicologa")) {
                                    bottomBarConfig = BottomBarConfig.Psicologo.INSTANCE;
                                    break;
                                }
                                break;
                            case -372981155:
                                if (!string.equals("psicologo")) {
                                }
                                break;
                            case -251076397:
                                if (!string.equals("psicóloga")) {
                                }
                                break;
                            case 92668751:
                                if (!string.equals("admin")) {
                                }
                                break;
                        }
                        $composer2 = $composer3;
                        String startDestination4 = startDestination3;
                        ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, ComposableLambdaKt.rememberComposableLambda(1041059272, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda29
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return NavGraphKt.NavGraph$lambda$2(navController, bottomBarConfig, stateCurrentBackStackEntryAsState, (Composer) obj, ((Integer) obj2).intValue());
                            }
                        }, $composer3, 54), null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(-1065288770, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda30
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj, Object obj2, Object obj3) {
                                return NavGraphKt.NavGraph$lambda$35(navController, startDestination3, loginViewModel, userSessionDataStore, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                            }
                        }, $composer3, 54), $composer2, 805306752, 507);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        startDestination2 = startDestination4;
                    }
                } else {
                    String lowerCase = rol.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (lowerCase != null) {
                        string = StringsKt.trim((CharSequence) lowerCase).toString();
                    }
                    if (string == null) {
                    }
                }
            }
            $dirty = $dirty2;
            startDestination3 = startDestination2;
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
            current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, LocalViewModelStoreOwner.$stable);
            if (current != null) {
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return NavGraphKt.NavGraph$lambda$36(navController, startDestination2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final UserSession NavGraph$lambda$0(State<UserSession> state) {
        return (UserSession) state.getValue();
    }

    private static final NavBackStackEntry NavGraph$lambda$1(State<NavBackStackEntry> state) {
        return (NavBackStackEntry) state.getValue();
    }

    static final Unit NavGraph$lambda$2(NavHostController $navController, BottomBarConfig $bottomBarConfig, State $currentBackStackEntry$delegate, Composer $composer, int $changed) {
        Composer $composer2;
        NavDestination destination;
        ComposerKt.sourceInformation($composer, "C:NavGraph.kt#cx1nnv");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1041059272, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous> (NavGraph.kt:69)");
            }
            NavBackStackEntry navBackStackEntryNavGraph$lambda$1 = NavGraph$lambda$1($currentBackStackEntry$delegate);
            String currentRoute = (navBackStackEntryNavGraph$lambda$1 == null || (destination = navBackStackEntryNavGraph$lambda$1.getDestination()) == null) ? null : destination.getRoute();
            boolean hideBottomBar = Intrinsics.areEqual(currentRoute, Screens.login.INSTANCE.getRoute()) || Intrinsics.areEqual(currentRoute, Screens.registro.INSTANCE.getRoute()) || Intrinsics.areEqual(currentRoute, Screens.principal.INSTANCE.getRoute());
            if (hideBottomBar) {
                $composer2 = $composer;
                $composer2.startReplaceGroup(233893274);
            } else {
                $composer.startReplaceGroup(238251564);
                ComposerKt.sourceInformation($composer, "74@4408L46");
                $composer2 = $composer;
                AmaniBottomBarKt.AmaniBottomBar($navController, $bottomBarConfig, null, $composer2, 0, 4);
            }
            $composer2.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35(final NavHostController $navController, String $startDestination, final LoginViewModel $loginViewModel, final UserSessionDataStore $userSessionDataStore, PaddingValues innerPadding, Composer $composer, int $changed) throws Throwable {
        Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
        ComposerKt.sourceInformation($composer, "CN(innerPadding)82@4676L4640,78@4511L4805:NavGraph.kt#cx1nnv");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(innerPadding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1065288770, $dirty, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous> (NavGraph.kt:78)");
            }
            Modifier modifierPadding = PaddingKt.padding(Modifier.INSTANCE, innerPadding);
            ComposerKt.sourceInformationMarkerStart($composer, -1540280770, "CC(remember):NavGraph.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($navController) | $composer.changedInstance($loginViewModel) | $composer.changedInstance($userSessionDataStore);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33($navController, $loginViewModel, $userSessionDataStore, (NavGraphBuilder) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            NavHostKt.NavHost($navController, $startDestination, modifierPadding, null, null, null, null, null, null, null, (Function1) objRememberedValue, $composer, 0, 0, 1016);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33(final NavHostController $navController, final LoginViewModel $loginViewModel, final UserSessionDataStore $userSessionDataStore, NavGraphBuilder NavHost) {
        Intrinsics.checkNotNullParameter(NavHost, "$this$NavHost");
        NavGraphBuilderKt.composable$default(NavHost, Screens.principal.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-1935673311, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$3($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.login.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(479946200, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$4($navController, $loginViewModel, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.psicologoHome.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-356848743, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$5($userSessionDataStore, $navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.registro.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-1193643686, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$6($navController, $loginViewModel, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.questionnaire.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-2030438629, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$7($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.principalCliente.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(1427733724, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$8($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.settingsCliente.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(590938781, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$9($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.agregarPsicologo.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-245856162, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$10($navController, $loginViewModel, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.test.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-1082651105, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$11($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.listarPsicologo.INSTANCE.getRoute(), CollectionsKt.listOf(NamedNavArgumentKt.navArgument("pacienteId", new Function1() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$12((NavArgumentBuilder) obj);
            }
        })), (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-1919446048, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$13($navController, $loginViewModel, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 252, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.pacientes.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-581975860, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$14($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.agregarAdmin.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-1418770803, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$15($navController, $loginViewModel, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.agregarPacienteAdmin.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(2039401550, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$16($navController, $loginViewModel, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.adminHome.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(1202606607, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$17($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.psicologoAgenda.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(365811664, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$18($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.citas.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-470983279, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$19($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.calendario.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableSingletons$NavGraphKt.INSTANCE.m10398getLambda$1307778222$app(), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.perfilPsicologo.INSTANCE.getRoute(), CollectionsKt.listOf(NamedNavArgumentKt.navArgument("psicologoId", new Function1() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$20((NavArgumentBuilder) obj);
            }
        })), (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-2144573165, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$21($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 252, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.pacienteHome.INSTANCE.getRoute(), CollectionsKt.listOf(NamedNavArgumentKt.navArgument("idPaciente", new Function1() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$22((NavArgumentBuilder) obj);
            }
        })), (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(1313599188, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$23($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 252, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.chatList.INSTANCE.getRoute(), (List) null, (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(476804245, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$24($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 254, (Object) null);
        NavGraphBuilderKt.composable$default(NavHost, Screens.chat.INSTANCE.getRoute(), CollectionsKt.listOf((Object[]) new NamedNavArgument[]{NamedNavArgumentKt.navArgument("currentUserId", new Function1() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$25((NavArgumentBuilder) obj);
            }
        }), NamedNavArgumentKt.navArgument("otherUserId", new Function1() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$26((NavArgumentBuilder) obj);
            }
        }), NamedNavArgumentKt.navArgument("otherUserName", new Function1() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$27((NavArgumentBuilder) obj);
            }
        })}), (List) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, ComposableLambdaKt.composableLambdaInstance(-752815317, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$32($navController, (AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
            }
        }), 252, (Object) null);
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$3(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)84@4744L24:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1935673311, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:84)");
        }
        PrincipalKt.Principal($navController, $composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$4(NavHostController $navController, LoginViewModel $loginViewModel, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)87@4845L42:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(479946200, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:87)");
        }
        LoginScreenKt.LoginScreen($navController, $loginViewModel, $composer, 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$5(UserSessionDataStore $userSessionDataStore, NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)91@4973L58:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-356848743, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:91)");
        }
        ViewPsicologoPrincipalKt.ViewPsicologoPrincipal($userSessionDataStore, $navController, null, null, $composer, 0, 12);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$6(NavHostController $navController, LoginViewModel $loginViewModel, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)94@5111L45:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1193643686, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:94)");
        }
        RegisterScreenKt.RegisterScreen($navController, $loginViewModel, null, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$7(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)97@5241L34:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2030438629, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:97)");
        }
        QuestionnaireScreenKt.QuestionnaireScreen($navController, null, $composer, 0, 2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$8(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)100@5363L37:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1427733724, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:100)");
        }
        PrincipalClienteScreenKt.PrincipalClienteScreen($navController, null, $composer, 0, 2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$9(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)103@5487L36:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(590938781, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:103)");
        }
        SettingsClienteScreenKt.SettingsClienteScreen($navController, null, $composer, 0, 2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$10(NavHostController $navController, LoginViewModel $loginViewModel, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)106@5611L52:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-245856162, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:106)");
        }
        AgregaPsicologoScreenKt.AgregaPsicologoScreen($navController, $loginViewModel, $composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$11(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)109@5739L25:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1082651105, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:109)");
        }
        TestScreenKt.TestScreen($navController, null, $composer, 0, 2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$12(NavArgumentBuilder navArgument) {
        Intrinsics.checkNotNullParameter(navArgument, "$this$navArgument");
        navArgument.setType(NavType.LongType);
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$13(NavHostController $navController, LoginViewModel $loginViewModel, AnimatedContentScope composable, NavBackStackEntry backStackEntry, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        ComposerKt.sourceInformation($composer, "CN(backStackEntry)120@6131L174:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1919446048, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:119)");
        }
        Bundle arguments = backStackEntry.getArguments();
        long idPaciente = arguments != null ? arguments.getLong("pacienteId") : 0L;
        ListadoPsicologosScreenKt.ListadoPsicologosScreen($navController, $loginViewModel, idPaciente, null, $composer, 0, 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$14(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)127@6382L37:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-581975860, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:127)");
        }
        ListadoPacientesScreenKt.ListadoPacientesScreen($navController, null, $composer, 0, 2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$15(NavHostController $navController, LoginViewModel $loginViewModel, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)130@6503L51:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1418770803, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:130)");
        }
        AgregarAdministradorKt.AgregarAdministrador($navController, $loginViewModel, $composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$16(NavHostController $navController, LoginViewModel $loginViewModel, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)133@6646L64:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2039401550, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:133)");
        }
        RegistrarPacienteDesdeAdminScreenKt.RegistrarPacienteDesdeAdminScreen($navController, $loginViewModel, $composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$17(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)136@6791L33:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1202606607, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:136)");
        }
        ViewAdminPrincipalKt.ViewAdminPrincipal($navController, null, $composer, 0, 2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$18(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) throws Throwable {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)139@6911L36:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(365811664, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:139)");
        }
        PsicologoAgendaScreenKt.PsicologoAgendaScreen($navController, null, null, $composer, 0, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$19(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)142@7024L26:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-470983279, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:142)");
        }
        CitasScreenKt.CitasScreen($navController, null, $composer, 0, 2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$20(NavArgumentBuilder navArgument) {
        Intrinsics.checkNotNullParameter(navArgument, "$this$navArgument");
        navArgument.setType(NavType.LongType);
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$21(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry backStackEntry, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        ComposerKt.sourceInformation($composer, "CN(backStackEntry)156@7518L50:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2144573165, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:155)");
        }
        Bundle arguments = backStackEntry.getArguments();
        long idPsicologo = arguments != null ? arguments.getLong("psicologoId") : 0L;
        PsicologoProfileScreenKt.PsicologoProfileScreen(idPsicologo, $navController, null, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$22(NavArgumentBuilder navArgument) {
        Intrinsics.checkNotNullParameter(navArgument, "$this$navArgument");
        navArgument.setType(NavType.LongType);
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$23(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry backStackEntry, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        ComposerKt.sourceInformation($composer, "CN(backStackEntry)169@7930L53:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1313599188, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:168)");
        }
        Bundle arguments = backStackEntry.getArguments();
        long idPaciente = arguments != null ? arguments.getLong("idPaciente") : 0L;
        ViewPacientePrincipalScreenKt.ViewPacientePrincipalScreen($navController, idPaciente, null, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$24(NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)173@8095L15,174@8127L68:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(476804245, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:173)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
        ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer, LocalViewModelStoreOwner.$stable);
        if (current == null) {
            throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
        }
        ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ChatListViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer, 0), null);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ChatListViewModel viewModel = (ChatListViewModel) viewModelResolveViewModel;
        ChatListScreenKt.ChatListScreen($navController, viewModel, $composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$25(NavArgumentBuilder navArgument) {
        Intrinsics.checkNotNullParameter(navArgument, "$this$navArgument");
        navArgument.setType(NavType.LongType);
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$26(NavArgumentBuilder navArgument) {
        Intrinsics.checkNotNullParameter(navArgument, "$this$navArgument");
        navArgument.setType(NavType.LongType);
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$27(NavArgumentBuilder navArgument) {
        Intrinsics.checkNotNullParameter(navArgument, "$this$navArgument");
        navArgument.setType(NavType.StringType);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$32(final NavHostController $navController, AnimatedContentScope composable, NavBackStackEntry backStackEntry, Composer $composer, int $changed) {
        String string;
        ChatViewModel viewModel;
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        ComposerKt.sourceInformation($composer, "CN(backStackEntry)195@9036L44,195@9009L72,199@9191L32,197@9099L193:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-752815317, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:191)");
        }
        Bundle arguments = backStackEntry.getArguments();
        final long currentUserId = arguments != null ? arguments.getLong("currentUserId") : 0L;
        Bundle arguments2 = backStackEntry.getArguments();
        final long otherUserId = arguments2 != null ? arguments2.getLong("otherUserId") : 0L;
        Bundle arguments3 = backStackEntry.getArguments();
        if (arguments3 == null || (string = arguments3.getString("otherUserName")) == null) {
            string = "";
        }
        String otherUserName = string;
        ComposerKt.sourceInformationMarkerStart($composer, -1901001961, "CC(remember):NavGraph.kt#9igjgp");
        boolean zChanged = $composer.changed(currentUserId) | $composer.changed(otherUserId);
        Object objRememberedValue = $composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
            Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ParametersHolderKt.parametersOf(Long.valueOf(currentUserId), Long.valueOf(otherUserId));
                }
            };
            $composer.updateRememberedValue(obj);
            objRememberedValue = obj;
        }
        Function0 function0 = (Function0) objRememberedValue;
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerStart($composer, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
        ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer, LocalViewModelStoreOwner.$stable);
        if (current == null) {
            throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
        }
        ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ChatViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer, 0), function0);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ChatViewModel viewModel2 = (ChatViewModel) viewModelResolveViewModel;
        ComposerKt.sourceInformationMarkerStart($composer, -1900997013, "CC(remember):NavGraph.kt#9igjgp");
        boolean zChangedInstance = $composer.changedInstance($navController);
        Object objRememberedValue2 = $composer.rememberedValue();
        if (!zChangedInstance) {
            viewModel = viewModel2;
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ChatScreenKt.ChatScreen(viewModel, (Function0) objRememberedValue2, otherUserName, $composer, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return Unit.INSTANCE;
        }
        viewModel = viewModel2;
        Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return NavGraphKt.NavGraph$lambda$35$lambda$34$lambda$33$lambda$32$lambda$31$lambda$30($navController);
            }
        };
        $composer.updateRememberedValue(obj2);
        objRememberedValue2 = obj2;
        ComposerKt.sourceInformationMarkerEnd($composer);
        ChatScreenKt.ChatScreen(viewModel, (Function0) objRememberedValue2, otherUserName, $composer, 0, 0);
        if (ComposerKt.isTraceInProgress()) {
        }
        return Unit.INSTANCE;
    }

    static final Unit NavGraph$lambda$35$lambda$34$lambda$33$lambda$32$lambda$31$lambda$30(NavHostController $navController) {
        $navController.popBackStack();
        return Unit.INSTANCE;
    }
}
