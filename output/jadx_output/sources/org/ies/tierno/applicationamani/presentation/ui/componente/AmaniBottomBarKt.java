package org.ies.tierno.applicationamani.presentation.ui.componente;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ChatKt;
import androidx.compose.material.icons.filled.BookKt;
import androidx.compose.material.icons.filled.CalendarMonthKt;
import androidx.compose.material.icons.filled.DateRangeKt;
import androidx.compose.material.icons.filled.HomeKt;
import androidx.compose.material.icons.filled.MoreVertKt;
import androidx.compose.material.icons.filled.PeopleKt;
import androidx.compose.material.icons.filled.PsychologyKt;
import androidx.compose.material.icons.filled.QuizKt;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import androidx.navigation.compose.NavHostControllerKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig;

/* JADX INFO: compiled from: AmaniBottomBar.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u001a\u000e\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a'\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007¢\u0006\u0002\u0010\r¨\u0006\u000e²\u0006\f\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u008a\u0084\u0002"}, d2 = {"pacienteItems", "", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;", "adminItems", "psicologoItems", "AmaniBottomBar", "", "navController", "Landroidx/navigation/NavController;", "config", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "app", "backStackEntry", "Landroidx/navigation/NavBackStackEntry;"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class AmaniBottomBarKt {
    static final Unit AmaniBottomBar$lambda$9(NavController navController, BottomBarConfig bottomBarConfig, Modifier modifier, int i, int i2, Composer composer, int i3) {
        AmaniBottomBar(navController, bottomBarConfig, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    private static final List<AmaniBottomBarItem> pacienteItems() {
        return CollectionsKt.listOf((Object[]) new AmaniBottomBarItem[]{new AmaniBottomBarItem(Screens.principalCliente.INSTANCE.getRoute(), "Inicio", HomeKt.getHome(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.HomeKt.getHome(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(Screens.citas.INSTANCE.getRoute(), "Citas", DateRangeKt.getDateRange(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.DateRangeKt.getDateRange(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(Screens.chatList.INSTANCE.getRoute(), "Chat", ChatKt.getChat(Icons.AutoMirrored.Filled.INSTANCE), null, 8, null), new AmaniBottomBarItem(null, "Diario", BookKt.getBook(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.BookKt.getBook(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(Screens.settingsCliente.INSTANCE.getRoute(), "Ajustes", SettingsKt.getSettings(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.SettingsKt.getSettings(Icons.Outlined.INSTANCE))});
    }

    private static final List<AmaniBottomBarItem> adminItems() {
        return CollectionsKt.listOf((Object[]) new AmaniBottomBarItem[]{new AmaniBottomBarItem(Screens.adminHome.INSTANCE.getRoute(), "Inicio", HomeKt.getHome(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.HomeKt.getHome(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(Screens.pacientes.INSTANCE.getRoute(), "Pacientes", PeopleKt.getPeople(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.PeopleKt.getPeople(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(Screens.agregarPsicologo.INSTANCE.getRoute(), "Psicólogos", PsychologyKt.getPsychology(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.PsychologyKt.getPsychology(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(Screens.test.INSTANCE.getRoute(), "Tests", QuizKt.getQuiz(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.QuizKt.getQuiz(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(null, "Más", MoreVertKt.getMoreVert(Icons.Filled.INSTANCE), null, 8, null)});
    }

    private static final List<AmaniBottomBarItem> psicologoItems() {
        return CollectionsKt.listOf((Object[]) new AmaniBottomBarItem[]{new AmaniBottomBarItem(Screens.psicologoAgenda.INSTANCE.getRoute(), "Agenda", CalendarMonthKt.getCalendarMonth(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.CalendarMonthKt.getCalendarMonth(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(Screens.psicologoHome.INSTANCE.getRoute(), "Pacientes", PeopleKt.getPeople(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.PeopleKt.getPeople(Icons.Outlined.INSTANCE)), new AmaniBottomBarItem(Screens.chatList.INSTANCE.getRoute(), "Chat", ChatKt.getChat(Icons.AutoMirrored.Filled.INSTANCE), null, 8, null), new AmaniBottomBarItem(Screens.settingsCliente.INSTANCE.getRoute(), "Ajustes", SettingsKt.getSettings(Icons.Filled.INSTANCE), androidx.compose.material.icons.outlined.SettingsKt.getSettings(Icons.Outlined.INSTANCE))});
    }

    public static final void AmaniBottomBar(final NavController navController, final BottomBarConfig config, Modifier modifier, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Modifier modifier3;
        final List<AmaniBottomBarItem> listPsicologoItems;
        NavDestination destination;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(config, "config");
        Composer $composer2 = $composer.startRestartGroup(-551285248);
        ComposerKt.sourceInformation($composer2, "C(AmaniBottomBar)N(navController,config,modifier)183@6551L30,194@6946L11,196@7003L2035,192@6839L2199:AmaniBottomBar.kt#ef1jou");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= ($changed & 64) == 0 ? $composer2.changed(config) : $composer2.changedInstance(config) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        if (!$composer2.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        } else {
            if (i2 != 0) {
                modifier3 = Modifier.INSTANCE;
            } else {
                modifier3 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-551285248, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar (AmaniBottomBar.kt:182)");
            }
            NavBackStackEntry navBackStackEntryAmaniBottomBar$lambda$0 = AmaniBottomBar$lambda$0(NavHostControllerKt.currentBackStackEntryAsState(navController, $composer2, $dirty & 14));
            final String currentRoute = (navBackStackEntryAmaniBottomBar$lambda$0 == null || (destination = navBackStackEntryAmaniBottomBar$lambda$0.getDestination()) == null) ? null : destination.getRoute();
            if (Intrinsics.areEqual(config, BottomBarConfig.Paciente.INSTANCE)) {
                listPsicologoItems = pacienteItems();
            } else if (Intrinsics.areEqual(config, BottomBarConfig.Admin.INSTANCE)) {
                listPsicologoItems = adminItems();
            } else {
                if (!Intrinsics.areEqual(config, BottomBarConfig.Psicologo.INSTANCE)) {
                    throw new NoWhenBranchMatchedException();
                }
                listPsicologoItems = psicologoItems();
            }
            NavigationBarKt.m2556NavigationBarHsRjFd4(WindowInsetsPadding_androidKt.navigationBarsPadding(modifier3), MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSurface(), 0L, Dp.m7505constructorimpl(0), null, ComposableLambdaKt.rememberComposableLambda(-1895686663, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBarKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return AmaniBottomBarKt.AmaniBottomBar$lambda$8(listPsicologoItems, currentRoute, navController, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, 199680, 20);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBarKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AmaniBottomBarKt.AmaniBottomBar$lambda$9(navController, config, modifier4, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final NavBackStackEntry AmaniBottomBar$lambda$0(State<NavBackStackEntry> state) {
        return (NavBackStackEntry) state.getValue();
    }

    static final Unit AmaniBottomBar$lambda$8(List $items, final String $currentRoute, final NavController $navController, RowScope NavigationBar, Composer $composer, int $changed) {
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(NavigationBar, "$this$NavigationBar");
        ComposerKt.sourceInformation(composer, "C*230@8432L11,231@8519L11,232@8597L11,233@8675L11,234@8762L11,235@8849L11,236@8949L11,229@8367L641,204@7296L472,215@7793L221,221@8040L274,201@7175L1847:AmaniBottomBar.kt#ef1jou");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= composer.changed(NavigationBar) ? 4 : 2;
        }
        if (composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1895686663, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar.<anonymous> (AmaniBottomBar.kt:197)");
            }
            Iterator it = $items.iterator();
            while (it.hasNext()) {
                final AmaniBottomBarItem amaniBottomBarItem = (AmaniBottomBarItem) it.next();
                boolean z = amaniBottomBarItem.getRoute() != null && Intrinsics.areEqual($currentRoute, amaniBottomBarItem.getRoute());
                boolean z2 = amaniBottomBarItem.getRoute() != null;
                int $dirty2 = $dirty;
                NavigationBarItemDefaults navigationBarItemDefaults = NavigationBarItemDefaults.INSTANCE;
                long primaryContainer = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimaryContainer();
                long primary = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimary();
                long primary2 = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimary();
                long onSurfaceVariant = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant();
                long onSurfaceVariant2 = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant();
                long onSurface = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurface();
                long jM4695copywmQWz5c = Color.m4695copywmQWz5c(onSurface, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurface) : 0.38f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurface) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurface) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurface) : 0.0f);
                long onSurface2 = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurface();
                final boolean z3 = z;
                NavigationBarItemColors navigationBarItemColorsM2554colors69fazGs = navigationBarItemDefaults.m2554colors69fazGs(primary, primary2, primaryContainer, onSurfaceVariant, onSurfaceVariant2, jM4695copywmQWz5c, Color.m4695copywmQWz5c(onSurface2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurface2) : 0.38f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurface2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurface2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurface2) : 0.0f), $composer, NavigationBarItemDefaults.$stable << 21, 0);
                ComposerKt.sourceInformationMarkerStart($composer, -1632126105, "CC(remember):AmaniBottomBar.kt#9igjgp");
                boolean zChanged = $composer.changed(amaniBottomBarItem) | $composer.changed($currentRoute) | $composer.changedInstance($navController);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBarKt$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return AmaniBottomBarKt.AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3(amaniBottomBarItem, $currentRoute, $navController);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                NavigationBarKt.NavigationBarItem(NavigationBar, z3, (Function0) objRememberedValue, ComposableLambdaKt.rememberComposableLambda(728029524, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBarKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return AmaniBottomBarKt.AmaniBottomBar$lambda$8$lambda$7$lambda$5(z3, amaniBottomBarItem, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), null, z2, ComposableLambdaKt.rememberComposableLambda(1128790257, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBarKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return AmaniBottomBarKt.AmaniBottomBar$lambda$8$lambda$7$lambda$6(amaniBottomBarItem, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), false, navigationBarItemColorsM2554colors69fazGs, null, $composer, ($dirty2 & 14) | 1575936, 328);
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

    static final Unit AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3(AmaniBottomBarItem $item, String $currentRoute, final NavController $navController) {
        String route = $item.getRoute();
        if (route != null && !Intrinsics.areEqual($currentRoute, route)) {
            $navController.navigate(route, new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBarKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AmaniBottomBarKt.AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2($navController, (NavOptionsBuilder) obj);
                }
            });
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    static final Unit AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2(NavController $navController, NavOptionsBuilder navigate) {
        Intrinsics.checkNotNullParameter(navigate, "$this$navigate");
        navigate.popUpTo($navController.getGraph().getStartDestinationId(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBarKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AmaniBottomBarKt.AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2$lambda$1((PopUpToBuilder) obj);
            }
        });
        navigate.setLaunchSingleTop(true);
        navigate.setRestoreState(true);
        return Unit.INSTANCE;
    }

    static final Unit AmaniBottomBar$lambda$8$lambda$7$lambda$4$lambda$3$lambda$2$lambda$1(PopUpToBuilder popUpTo) {
        Intrinsics.checkNotNullParameter(popUpTo, "$this$popUpTo");
        popUpTo.setSaveState(true);
        return Unit.INSTANCE;
    }

    static final Unit AmaniBottomBar$lambda$8$lambda$7$lambda$5(boolean $isSelected, AmaniBottomBarItem $item, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C216@7815L181:AmaniBottomBar.kt#ef1jou");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(728029524, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar.<anonymous>.<anonymous>.<anonymous> (AmaniBottomBar.kt:216)");
            }
            IconKt.m2433Iconww6aTOc($isSelected ? $item.getSelectedIcon() : $item.getUnselectedIcon(), $item.getLabel(), (Modifier) null, 0L, $composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit AmaniBottomBar$lambda$8$lambda$7$lambda$6(AmaniBottomBarItem $item, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C226@8253L10,222@8062L234:AmaniBottomBar.kt#ef1jou");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1128790257, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar.<anonymous>.<anonymous>.<anonymous> (AmaniBottomBar.kt:222)");
            }
            TextKt.m2976Text4IGK_g($item.getLabel(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m7416getEllipsisgIe3tQ8(), false, 1, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelSmall(), $composer, 0, 3120, 55294);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
