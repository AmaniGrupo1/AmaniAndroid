package org.ies.tierno.applicationamani.presentation.components;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ChatKt;
import androidx.compose.material.icons.filled.BookKt;
import androidx.compose.material.icons.filled.DateRangeKt;
import androidx.compose.material.icons.filled.HomeKt;
import androidx.compose.material.icons.filled.SettingsKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.NavigationBarItemColors;
import androidx.compose.material3.NavigationBarItemDefaults;
import androidx.compose.material3.NavigationBarKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.profileinstaller.ProfileVerifier;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BottomBar.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0004¨\u0006\u0005²\u0006\f\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u008a\u0084\u0002"}, d2 = {"BottomBar", "", "navController", "Landroidx/navigation/NavController;", "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V", "app", "currentRoute", "Landroidx/navigation/NavBackStackEntry;"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class BottomBarKt {
    static final Unit BottomBar$lambda$9(NavController navController, int i, Composer composer, int i2) {
        BottomBar(navController, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void BottomBar(final NavController navController, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(513653731);
        ComposerKt.sourceInformation($composer2, "C(BottomBar)N(navController)56@2070L30,66@2548L1195,66@2534L1209:BottomBar.kt#ww28gq");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if ($composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(513653731, $dirty, -1, "org.ies.tierno.applicationamani.presentation.components.BottomBar (BottomBar.kt:55)");
            }
            final State<NavBackStackEntry> stateCurrentBackStackEntryAsState = NavHostControllerKt.currentBackStackEntryAsState(navController, $composer2, $dirty & 14);
            final List destinations = CollectionsKt.listOf((Object[]) new BottomBarDestination[]{new BottomBarDestination(Routes.HOME, "Inicio", HomeKt.getHome(Icons.INSTANCE.getDefault())), new BottomBarDestination(Routes.CHAT, "Chat", ChatKt.getChat(Icons.AutoMirrored.Filled.INSTANCE)), new BottomBarDestination(Routes.CITAS, "Citas", DateRangeKt.getDateRange(Icons.INSTANCE.getDefault())), new BottomBarDestination(Routes.DIARIO, "Diario", BookKt.getBook(Icons.INSTANCE.getDefault())), new BottomBarDestination(Routes.SETTINGS, "Ajustes", SettingsKt.getSettings(Icons.INSTANCE.getDefault()))});
            NavigationBarKt.m2556NavigationBarHsRjFd4(null, 0L, 0L, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-41771364, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.components.BottomBarKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return BottomBarKt.BottomBar$lambda$8(destinations, navController, stateCurrentBackStackEntryAsState, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.components.BottomBarKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BottomBarKt.BottomBar$lambda$9(navController, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final NavBackStackEntry BottomBar$lambda$0(State<NavBackStackEntry> state) {
        return (NavBackStackEntry) state.getValue();
    }

    static final Unit BottomBar$lambda$8(List $destinations, final NavController $navController, State $currentRoute$delegate, RowScope NavigationBar, Composer $composer, int $changed) {
        NavDestination destination;
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(NavigationBar, "$this$NavigationBar");
        ComposerKt.sourceInformation(composer, "C*82@3332L11,83@3416L11,84@3504L11,85@3588L11,86@3667L11,81@3273L440,72@2879L341,69@2650L66,70@2742L27,68@2608L1119:BottomBar.kt#ww28gq");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= composer.changed(NavigationBar) ? 4 : 2;
        }
        if (composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-41771364, $dirty, -1, "org.ies.tierno.applicationamani.presentation.components.BottomBar.<anonymous> (BottomBar.kt:67)");
            }
            Iterator it = $destinations.iterator();
            while (it.hasNext()) {
                final BottomBarDestination bottomBarDestination = (BottomBarDestination) it.next();
                NavBackStackEntry navBackStackEntryBottomBar$lambda$0 = BottomBar$lambda$0($currentRoute$delegate);
                boolean zAreEqual = Intrinsics.areEqual((navBackStackEntryBottomBar$lambda$0 == null || (destination = navBackStackEntryBottomBar$lambda$0.getDestination()) == null) ? null : destination.getRoute(), bottomBarDestination.getRoute());
                int $dirty2 = $dirty;
                Composer composer2 = composer;
                NavigationBarItemColors navigationBarItemColorsM2554colors69fazGs = NavigationBarItemDefaults.INSTANCE.m2554colors69fazGs(MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnPrimaryContainer(), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurface(), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimaryContainer(), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant(), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, 0L, composer2, NavigationBarItemDefaults.$stable << 21, 96);
                ComposerKt.sourceInformationMarkerStart(composer2, -1875087092, "CC(remember):BottomBar.kt#9igjgp");
                boolean zChangedInstance = composer2.changedInstance($navController) | composer2.changed(bottomBarDestination);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.components.BottomBarKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BottomBarKt.BottomBar$lambda$8$lambda$7$lambda$4$lambda$3($navController, bottomBarDestination);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer2);
                NavigationBarKt.NavigationBarItem(NavigationBar, zAreEqual, (Function0) objRememberedValue, ComposableLambdaKt.rememberComposableLambda(-1669338084, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.components.BottomBarKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return BottomBarKt.BottomBar$lambda$8$lambda$7$lambda$5(bottomBarDestination, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer2, 54), null, false, ComposableLambdaKt.rememberComposableLambda(-2077419975, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.components.BottomBarKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return BottomBarKt.BottomBar$lambda$8$lambda$7$lambda$6(bottomBarDestination, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer2, 54), false, navigationBarItemColorsM2554colors69fazGs, null, composer2, ($dirty2 & 14) | 1575936, 344);
                composer = $composer;
                $dirty = $dirty2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit BottomBar$lambda$8$lambda$7$lambda$5(BottomBarDestination $destination, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C69@2652L62:BottomBar.kt#ww28gq");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1669338084, $changed, -1, "org.ies.tierno.applicationamani.presentation.components.BottomBar.<anonymous>.<anonymous>.<anonymous> (BottomBar.kt:69)");
            }
            IconKt.m2433Iconww6aTOc($destination.getIcon(), $destination.getLabel(), (Modifier) null, 0L, $composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit BottomBar$lambda$8$lambda$7$lambda$6(BottomBarDestination $destination, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C70@2744L23:BottomBar.kt#ww28gq");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2077419975, $changed, -1, "org.ies.tierno.applicationamani.presentation.components.BottomBar.<anonymous>.<anonymous>.<anonymous> (BottomBar.kt:70)");
            }
            TextKt.m2976Text4IGK_g($destination.getLabel(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit BottomBar$lambda$8$lambda$7$lambda$4$lambda$3(final NavController $navController, BottomBarDestination $destination) {
        $navController.navigate($destination.getRoute(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.components.BottomBarKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BottomBarKt.BottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2($navController, (NavOptionsBuilder) obj);
            }
        });
        return Unit.INSTANCE;
    }

    static final Unit BottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2(NavController $navController, NavOptionsBuilder navigate) {
        Intrinsics.checkNotNullParameter(navigate, "$this$navigate");
        navigate.popUpTo($navController.getGraph().getStartDestinationId(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.components.BottomBarKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BottomBarKt.BottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2$lambda$1((PopUpToBuilder) obj);
            }
        });
        navigate.setLaunchSingleTop(true);
        navigate.setRestoreState(true);
        return Unit.INSTANCE;
    }

    static final Unit BottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2$lambda$1(PopUpToBuilder popUpTo) {
        Intrinsics.checkNotNullParameter(popUpTo, "$this$popUpTo");
        popUpTo.setSaveState(true);
        return Unit.INSTANCE;
    }
}
