package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.MenuKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;

/* JADX INFO: compiled from: MenuSetting.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0002\u0010\u0006¨\u0006\u0007²\u0006\n\u0010\b\u001a\u00020\tX\u008a\u008e\u0002"}, d2 = {"MenuSetting", "", "navController", "Landroidx/navigation/NavController;", "idPsicologo", "", "(Landroidx/navigation/NavController;Ljava/lang/Long;Landroidx/compose/runtime/Composer;I)V", "app", "expanded", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class MenuSettingKt {
    static final Unit MenuSetting$lambda$17(NavController navController, Long l, int i, Composer composer, int i2) {
        MenuSetting(navController, l, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void MenuSetting(final NavController navController, final Long idPsicologo, Composer $composer, final int $changed) {
        boolean z;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(353377114);
        ComposerKt.sourceInformation($composer2, "C(MenuSetting)N(navController,idPsicologo)36@1468L65,36@1440L93,40@1555L34,41@1621L11,42@1668L10,46@1784L120,58@2183L1110,44@1684L1615:MenuSetting.kt#d6dcan");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(idPsicologo) ? 32 : 16;
        }
        if ($composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(353377114, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting (MenuSetting.kt:34)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 292996763, "CC(remember):MenuSetting.kt#9igjgp");
            boolean z2 = ($dirty & 112) == 32;
            Object objRememberedValue = $composer2.rememberedValue();
            if (z2 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                z = false;
                Object obj = (Function2) new MenuSettingKt$MenuSetting$1$1(idPsicologo, null);
                $composer2.updateRememberedValue(obj);
                objRememberedValue = obj;
            } else {
                z = false;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(idPsicologo, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer2, ($dirty >> 3) & 14);
            ComposerKt.sourceInformationMarkerStart($composer2, 292999516, "CC(remember):MenuSetting.kt#9igjgp");
            Object objRememberedValue2 = $composer2.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue2 = objMutableStateOf$default;
            }
            final MutableState expanded$delegate = (MutableState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            final Typography typography = MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable);
            Modifier modifierM4295shadows4CzXII$default = ShadowKt.m4295shadows4CzXII$default(Modifier.INSTANCE, Dp.m7505constructorimpl(8), null, false, 0L, 0L, 30, null);
            TopAppBarColors topAppBarColorsM3147topAppBarColorszjMxDiM = TopAppBarDefaults.INSTANCE.m3147topAppBarColorszjMxDiM(colors.getPrimary(), 0L, 0L, colors.getOnPrimary(), 0L, $composer2, TopAppBarDefaults.$stable << 15, 22);
            $composer2 = $composer2;
            AppBarKt.m2057TopAppBarGHTll3U(ComposableSingletons$MenuSettingKt.INSTANCE.m10411getLambda$1908917986$app(), modifierM4295shadows4CzXII$default, ComposableSingletons$MenuSettingKt.INSTANCE.m10410getLambda$1523055584$app(), ComposableLambdaKt.rememberComposableLambda(-223657655, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return MenuSettingKt.MenuSetting$lambda$16(expanded$delegate, colors, idPsicologo, navController, typography, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer2, 54), 0.0f, null, topAppBarColorsM3147topAppBarColorszjMxDiM, null, $composer2, 3510, 176);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return MenuSettingKt.MenuSetting$lambda$17(navController, idPsicologo, $changed, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    private static final boolean MenuSetting$lambda$2(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void MenuSetting$lambda$3(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit MenuSetting$lambda$16(final MutableState $expanded$delegate, final ColorScheme $colors, final Long $idPsicologo, final NavController $navController, final Typography $typography, RowScope TopAppBar, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(TopAppBar, "$this$TopAppBar");
        ComposerKt.sourceInformation($composer, "C59@2218L24,59@2244L188,59@2197L235,69@2532L20,70@2567L716,67@2446L837:MenuSetting.kt#d6dcan");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-223657655, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous> (MenuSetting.kt:59)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -186640511, "CC(remember):MenuSetting.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuSettingKt.MenuSetting$lambda$16$lambda$5$lambda$4($expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableLambdaKt.rememberComposableLambda(151647308, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return MenuSettingKt.MenuSetting$lambda$16$lambda$6($colors, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 30);
            boolean zMenuSetting$lambda$2 = MenuSetting$lambda$2($expanded$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -186630467, "CC(remember):MenuSetting.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuSettingKt.MenuSetting$lambda$16$lambda$8$lambda$7($expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.m2048DropdownMenuIlH_yew(zMenuSetting$lambda$2, (Function0) objRememberedValue2, null, 0L, null, null, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1498974844, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return MenuSettingKt.MenuSetting$lambda$16$lambda$15($idPsicologo, $navController, $typography, $expanded$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer, 54), $composer, 48, 48, 2044);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuSetting$lambda$16$lambda$5$lambda$4(MutableState $expanded$delegate) {
        MenuSetting$lambda$3($expanded$delegate, !MenuSetting$lambda$2($expanded$delegate));
        return Unit.INSTANCE;
    }

    static final Unit MenuSetting$lambda$16$lambda$6(ColorScheme $colors, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C60@2262L156:MenuSetting.kt#d6dcan");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(151647308, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous>.<anonymous> (MenuSetting.kt:60)");
            }
            IconKt.m2433Iconww6aTOc(MenuKt.getMenu(Icons.INSTANCE.getDefault()), "Menu", (Modifier) null, $colors.getOnPrimary(), $composer, 48, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuSetting$lambda$16$lambda$8$lambda$7(MutableState $expanded$delegate) {
        MenuSetting$lambda$3($expanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit MenuSetting$lambda$16$lambda$15(final Long $idPsicologo, final NavController $navController, final Typography $typography, final MutableState $expanded$delegate, ColumnScope DropdownMenu, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(DropdownMenu, "$this$DropdownMenu");
        ComposerKt.sourceInformation($composer, "C72@2630L49,73@2711L244,71@2585L388,81@3036L51,82@3119L132,80@2991L278:MenuSetting.kt#d6dcan");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1498974844, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous>.<anonymous> (MenuSetting.kt:71)");
            }
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1299222868, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuSettingKt.MenuSetting$lambda$16$lambda$15$lambda$9($typography, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54);
            ComposerKt.sourceInformationMarkerStart($composer, -1700776072, "CC(remember):MenuSetting.kt#9igjgp");
            boolean zChanged = $composer.changed($idPsicologo) | $composer.changedInstance($navController);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuSettingKt.MenuSetting$lambda$16$lambda$15$lambda$11$lambda$10($idPsicologo, $navController, $expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue, null, null, null, false, null, null, null, $composer, 6, 508);
            ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-89786549, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return MenuSettingKt.MenuSetting$lambda$16$lambda$15$lambda$12($typography, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54);
            ComposerKt.sourceInformationMarkerStart($composer, -1700763128, "CC(remember):MenuSetting.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($navController);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuSettingKt.MenuSetting$lambda$16$lambda$15$lambda$14$lambda$13($navController, $expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda2, (Function0) objRememberedValue2, null, null, null, false, null, null, null, $composer, 6, 508);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuSetting$lambda$16$lambda$15$lambda$9(Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C72@2632L45:MenuSetting.kt#d6dcan");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1299222868, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous>.<anonymous>.<anonymous> (MenuSetting.kt:72)");
            }
            TextKt.m2976Text4IGK_g("Perfil", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuSetting$lambda$16$lambda$15$lambda$11$lambda$10(Long $idPsicologo, NavController $navController, MutableState $expanded$delegate) {
        MenuSetting$lambda$3($expanded$delegate, false);
        System.out.print((Object) ("idPsicologo en MenuSetting: " + $idPsicologo));
        NavController.navigate$default($navController, Screens.perfilPsicologo.INSTANCE.createRoute($idPsicologo), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    static final Unit MenuSetting$lambda$16$lambda$15$lambda$12(Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C81@3038L47:MenuSetting.kt#d6dcan");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-89786549, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous>.<anonymous>.<anonymous> (MenuSetting.kt:81)");
            }
            TextKt.m2976Text4IGK_g("Sign out", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuSetting$lambda$16$lambda$15$lambda$14$lambda$13(NavController $navController, MutableState $expanded$delegate) {
        MenuSetting$lambda$3($expanded$delegate, false);
        NavController.navigate$default($navController, Screens.login.INSTANCE.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }
}
