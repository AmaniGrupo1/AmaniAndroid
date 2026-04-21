package org.ies.tierno.applicationamani.presentation.ui.componente;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.material.icons.filled.ArrowDropUpKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.media3.extractor.WavUtil;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;

/* JADX INFO: compiled from: MenuPrincipal.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0004\u001a\r\u0010\u0005\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0006¨\u0006\u0007²\u0006\n\u0010\b\u001a\u00020\tX\u008a\u008e\u0002"}, d2 = {"MenuPrincipal", "", "navController", "Landroidx/navigation/NavController;", "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V", "MenuPrincipalPreview", "(Landroidx/compose/runtime/Composer;I)V", "app", "expanded", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class MenuPrincipalKt {
    static final Unit MenuPrincipal$lambda$19(NavController navController, int i, Composer composer, int i2) {
        MenuPrincipal(navController, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipalPreview$lambda$20(int i, Composer composer, int i2) {
        MenuPrincipalPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void MenuPrincipal(final NavController navController, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(1391672407);
        ComposerKt.sourceInformation($composer2, "C(MenuPrincipal)N(navController)52@2115L34,54@2182L11,55@2229L10,60@2346L120,76@2815L2148,57@2245L2724:MenuPrincipal.kt#ef1jou");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if ($composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1391672407, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal (MenuPrincipal.kt:50)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 1662358041, "CC(remember):MenuPrincipal.kt#9igjgp");
            Object objRememberedValue = $composer2.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            }
            final MutableState expanded$delegate = (MutableState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            final Typography typography = MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable);
            AppBarKt.m2057TopAppBarGHTll3U(ComposableSingletons$MenuPrincipalKt.INSTANCE.m10403getLambda$1254878957$app(), ShadowKt.m4295shadows4CzXII$default(Modifier.INSTANCE, Dp.m7505constructorimpl(8), null, false, 0L, 0L, 30, null), ComposableSingletons$MenuPrincipalKt.INSTANCE.getLambda$904205137$app(), ComposableLambdaKt.rememberComposableLambda(770995656, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return MenuPrincipalKt.MenuPrincipal$lambda$18(expanded$delegate, colors, navController, typography, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), 0.0f, null, TopAppBarDefaults.INSTANCE.m3147topAppBarColorszjMxDiM(colors.getPrimary(), 0L, 0L, colors.getOnPrimary(), 0L, $composer2, TopAppBarDefaults.$stable << 15, 22), null, $composer2, 3510, 176);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuPrincipalKt.MenuPrincipal$lambda$19(navController, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final boolean MenuPrincipal$lambda$1(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void MenuPrincipal$lambda$2(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit MenuPrincipal$lambda$18(final MutableState $expanded$delegate, final ColorScheme $colors, final NavController $navController, final Typography $typography, RowScope TopAppBar, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(TopAppBar, "$this$TopAppBar");
        ComposerKt.sourceInformation($composer, "C79@2868L24,80@2907L243,78@2830L320,89@3250L20,90@3285L1668,87@3164L1789:MenuPrincipal.kt#ef1jou");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(770995656, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous> (MenuPrincipal.kt:78)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -2102515072, "CC(remember):MenuPrincipal.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$4$lambda$3($expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableLambdaKt.rememberComposableLambda(-530086235, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$5($colors, $expanded$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 30);
            boolean zMenuPrincipal$lambda$1 = MenuPrincipal$lambda$1($expanded$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -2102502852, "CC(remember):MenuPrincipal.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$7$lambda$6($expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.m2048DropdownMenuIlH_yew(zMenuPrincipal$lambda$1, (Function0) objRememberedValue2, null, 0L, null, null, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-550594451, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$17($navController, $typography, $expanded$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer, 54), $composer, 48, 48, 2044);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$4$lambda$3(MutableState $expanded$delegate) {
        MenuPrincipal$lambda$2($expanded$delegate, !MenuPrincipal$lambda$1($expanded$delegate));
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$5(ColorScheme $colors, MutableState $expanded$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C82@3027L109:MenuPrincipal.kt#ef1jou");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-530086235, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous> (MenuPrincipal.kt:81)");
            }
            ImageVector imagen = MenuPrincipal$lambda$1($expanded$delegate) ? ArrowDropDownKt.getArrowDropDown(Icons.INSTANCE.getDefault()) : ArrowDropUpKt.getArrowDropUp(Icons.INSTANCE.getDefault());
            IconKt.m2433Iconww6aTOc(imagen, "Desplegue", (Modifier) null, $colors.getOnPrimary(), $composer, 48, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$7$lambda$6(MutableState $expanded$delegate) {
        MenuPrincipal$lambda$2($expanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$17(final NavController $navController, final Typography $typography, final MutableState $expanded$delegate, ColumnScope DropdownMenu, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(DropdownMenu, "$this$DropdownMenu");
        ComposerKt.sourceInformation($composer, "C93@3349L80,95@3461L132,92@3304L307,102@3674L77,104@3783L135,101@3629L307,129@4665L88,131@4785L136,128@4620L319:MenuPrincipal.kt#ef1jou");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-550594451, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous> (MenuPrincipal.kt:92)");
            }
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(285261469, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$17$lambda$8($typography, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54);
            ComposerKt.sourceInformationMarkerStart($composer, -840284239, "CC(remember):MenuPrincipal.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($navController);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$17$lambda$10$lambda$9($navController, $expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue, null, null, null, false, null, null, null, $composer, 6, 508);
            ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(760179974, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$17$lambda$11($typography, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54);
            ComposerKt.sourceInformationMarkerStart($composer, -840273932, "CC(remember):MenuPrincipal.kt#9igjgp");
            boolean zChangedInstance2 = $composer.changedInstance($navController);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$17$lambda$13$lambda$12($navController, $expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda2, (Function0) objRememberedValue2, null, null, null, false, null, null, null, $composer, 6, 508);
            ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(1712011813, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$17$lambda$14($typography, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54);
            ComposerKt.sourceInformationMarkerStart($composer, -840241867, "CC(remember):MenuPrincipal.kt#9igjgp");
            boolean zChangedInstance3 = $composer.changedInstance($navController);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuPrincipalKt.MenuPrincipal$lambda$18$lambda$17$lambda$16$lambda$15($navController, $expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda3, (Function0) objRememberedValue3, null, null, null, false, null, null, null, $composer, 6, 508);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$17$lambda$8(Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C93@3351L76:MenuPrincipal.kt#ef1jou");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(285261469, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous>.<anonymous> (MenuPrincipal.kt:93)");
            }
            TextKt.m2976Text4IGK_g("Inicia sesión", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$17$lambda$10$lambda$9(NavController $navController, MutableState $expanded$delegate) {
        MenuPrincipal$lambda$2($expanded$delegate, false);
        NavController.navigate$default($navController, Screens.login.INSTANCE.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$17$lambda$11(Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C102@3676L73:MenuPrincipal.kt#ef1jou");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(760179974, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous>.<anonymous> (MenuPrincipal.kt:102)");
            }
            TextKt.m2976Text4IGK_g("Regístrate", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$17$lambda$13$lambda$12(NavController $navController, MutableState $expanded$delegate) {
        MenuPrincipal$lambda$2($expanded$delegate, false);
        NavController.navigate$default($navController, Screens.registro.INSTANCE.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$17$lambda$14(Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C129@4667L84:MenuPrincipal.kt#ef1jou");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1712011813, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous>.<anonymous> (MenuPrincipal.kt:129)");
            }
            TextKt.m2976Text4IGK_g("Volver a la principal", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuPrincipal$lambda$18$lambda$17$lambda$16$lambda$15(NavController $navController, MutableState $expanded$delegate) {
        MenuPrincipal$lambda$2($expanded$delegate, false);
        NavController.navigate$default($navController, Screens.principal.INSTANCE.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    public static final void MenuPrincipalPreview(Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(-1201586304);
        ComposerKt.sourceInformation($composer2, "C(MenuPrincipalPreview)147@5150L23,147@5136L38:MenuPrincipal.kt#ef1jou");
        if (!$composer2.shouldExecute($changed != 0, $changed & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1201586304, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalPreview (MenuPrincipal.kt:146)");
            }
            MenuPrincipal(NavHostControllerKt.rememberNavController(new Navigator[0], $composer2, 0), $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuPrincipalKt.MenuPrincipalPreview$lambda$20($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
