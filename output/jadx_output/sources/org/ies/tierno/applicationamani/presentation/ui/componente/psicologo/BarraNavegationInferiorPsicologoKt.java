package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.NavigationBarKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.AmaniPsicologoColors;

/* JADX INFO: compiled from: BarraNavegationInferiorPsicologo.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007H\u0007¢\u0006\u0002\u0010\b\u001aG\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\r2\u001e\b\u0002\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010\u0012¨\u0006\u0013"}, d2 = {"BarraNavegationInferiorPsicologo", "", "navController", "Landroidx/navigation/NavController;", "selectedItem", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;", "onItemSelected", "Lkotlin/Function1;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "MenuPsicologo", "title", "", "showBackButton", "", "actions", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Landroidx/navigation/NavController;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class BarraNavegationInferiorPsicologoKt {
    static final Unit BarraNavegationInferiorPsicologo$lambda$7(NavController navController, PsicologoNavItem psicologoNavItem, Function1 function1, int i, Composer composer, int i2) {
        BarraNavegationInferiorPsicologo(navController, psicologoNavItem, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit MenuPsicologo$lambda$12(String str, NavController navController, boolean z, Function3 function3, int i, int i2, Composer composer, int i3) {
        MenuPsicologo(str, navController, z, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    public static final void BarraNavegationInferiorPsicologo(final NavController navController, final PsicologoNavItem selectedItem, final Function1<? super PsicologoNavItem, Unit> onItemSelected, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(selectedItem, "selectedItem");
        Intrinsics.checkNotNullParameter(onItemSelected, "onItemSelected");
        Composer $composer2 = $composer.startRestartGroup(-351064956);
        ComposerKt.sourceInformation($composer2, "C(BarraNavegationInferiorPsicologo)N(navController,selectedItem,onItemSelected)47@1909L645,47@1895L659:BarraNavegationInferiorPsicologo.kt#d6dcan");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(selectedItem.ordinal()) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(onItemSelected) ? 256 : 128;
        }
        if ($composer2.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-351064956, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologo (BarraNavegationInferiorPsicologo.kt:46)");
            }
            NavigationBarKt.m2556NavigationBarHsRjFd4(null, 0L, 0L, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1009908099, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return BarraNavegationInferiorPsicologoKt.BarraNavegationInferiorPsicologo$lambda$6(selectedItem, onItemSelected, navController, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BarraNavegationInferiorPsicologoKt.BarraNavegationInferiorPsicologo$lambda$7(navController, selectedItem, onItemSelected, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit BarraNavegationInferiorPsicologo$lambda$6(PsicologoNavItem $selectedItem, final Function1 $onItemSelected, final NavController $navController, RowScope NavigationBar, Composer $composer, int $changed) {
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(NavigationBar, "$this$NavigationBar");
        ComposerKt.sourceInformation(composer, "C*51@2069L375,62@2504L20,49@1975L563:BarraNavegationInferiorPsicologo.kt#d6dcan");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= composer.changed(NavigationBar) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (!composer.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1009908099, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologo.<anonymous> (BarraNavegationInferiorPsicologo.kt:48)");
            }
            PsicologoNavItem[] psicologoNavItemArrValues = PsicologoNavItem.values();
            int i = 0;
            for (int length = psicologoNavItemArrValues.length; i < length; length = length) {
                final PsicologoNavItem psicologoNavItem = psicologoNavItemArrValues[i];
                PsicologoNavItem[] psicologoNavItemArr = psicologoNavItemArrValues;
                boolean z = $selectedItem == psicologoNavItem;
                ComposerKt.sourceInformationMarkerStart(composer, -409418756, "CC(remember):BarraNavegationInferiorPsicologo.kt#9igjgp");
                boolean zChanged = composer.changed($onItemSelected) | composer.changed(psicologoNavItem.ordinal()) | composer.changedInstance($navController);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BarraNavegationInferiorPsicologoKt.BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2($onItemSelected, psicologoNavItem, $navController);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                NavigationBarKt.NavigationBarItem(NavigationBar, z, (Function0) objRememberedValue, psicologoNavItem.getIcon(), null, false, ComposableLambdaKt.rememberComposableLambda(1356676871, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return BarraNavegationInferiorPsicologoKt.BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$4(psicologoNavItem, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), false, null, null, composer, ($dirty2 & 14) | 1572864, 472);
                i++;
                composer = $composer;
                psicologoNavItemArrValues = psicologoNavItemArr;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2(Function1 $onItemSelected, PsicologoNavItem $item, final NavController $navController) {
        $onItemSelected.invoke($item);
        $navController.navigate($item.getRoute(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BarraNavegationInferiorPsicologoKt.BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2$lambda$1($navController, (NavOptionsBuilder) obj);
            }
        });
        return Unit.INSTANCE;
    }

    static final Unit BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2$lambda$1(NavController $navController, NavOptionsBuilder navigate) {
        Intrinsics.checkNotNullParameter(navigate, "$this$navigate");
        navigate.popUpTo($navController.getGraph().getStartDestinationId(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BarraNavegationInferiorPsicologoKt.BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2$lambda$1$lambda$0((PopUpToBuilder) obj);
            }
        });
        navigate.setLaunchSingleTop(true);
        navigate.setRestoreState(true);
        return Unit.INSTANCE;
    }

    static final Unit BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2$lambda$1$lambda$0(PopUpToBuilder popUpTo) {
        Intrinsics.checkNotNullParameter(popUpTo, "$this$popUpTo");
        popUpTo.setSaveState(true);
        return Unit.INSTANCE;
    }

    static final Unit BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$4(PsicologoNavItem $item, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C62@2506L16:BarraNavegationInferiorPsicologo.kt#d6dcan");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1356676871, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologo.<anonymous>.<anonymous>.<anonymous> (BarraNavegationInferiorPsicologo.kt:62)");
            }
            TextKt.m2976Text4IGK_g($item.getLabel(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    public static final void MenuPsicologo(final String title, final NavController navController, boolean showBackButton, Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        boolean z;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32;
        Composer $composer2;
        final boolean showBackButton2;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function33;
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer3 = $composer.startRestartGroup(-1042860052);
        ComposerKt.sourceInformation($composer3, "C(MenuPsicologo)N(title,navController,showBackButton,actions)78@2835L15,79@2877L241,87@3182L233,77@2808L613:BarraNavegationInferiorPsicologo.kt#d6dcan");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(title) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(navController) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z = showBackButton;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = showBackButton;
            $dirty |= $composer3.changed(z) ? 256 : 128;
        } else {
            z = showBackButton;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty |= 3072;
            function32 = function3;
        } else if (($changed & 3072) == 0) {
            function32 = function3;
            $dirty |= $composer3.changedInstance(function32) ? 2048 : 1024;
        } else {
            function32 = function3;
        }
        if (!$composer3.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            showBackButton2 = z;
            function33 = function32;
        } else {
            if (i2 != 0) {
                showBackButton2 = true;
            } else {
                showBackButton2 = z;
            }
            Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3M10408getLambda$516782523$app = i3 != 0 ? ComposableSingletons$BarraNavegationInferiorPsicologoKt.INSTANCE.m10408getLambda$516782523$app() : function32;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1042860052, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuPsicologo (BarraNavegationInferiorPsicologo.kt:75)");
            }
            $composer2 = $composer3;
            function33 = function3M10408getLambda$516782523$app;
            AppBarKt.m2057TopAppBarGHTll3U(ComposableLambdaKt.rememberComposableLambda(-871093080, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BarraNavegationInferiorPsicologoKt.MenuPsicologo$lambda$8(title, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, ComposableLambdaKt.rememberComposableLambda(-1743503642, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BarraNavegationInferiorPsicologoKt.MenuPsicologo$lambda$11(showBackButton2, navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), function33, 0.0f, null, TopAppBarDefaults.INSTANCE.m3147topAppBarColorszjMxDiM(AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), 0L, Color.INSTANCE.m4734getWhite0d7_KjU(), Color.INSTANCE.m4734getWhite0d7_KjU(), Color.INSTANCE.m4734getWhite0d7_KjU(), $composer2, (TopAppBarDefaults.$stable << 15) | 28038, 2), null, $composer2, ($dirty & 7168) | 390, 178);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final boolean showBackButton3 = showBackButton2;
            final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function34 = function33;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BarraNavegationInferiorPsicologoKt.MenuPsicologo$lambda$12(title, navController, showBackButton3, function34, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit MenuPsicologo$lambda$8(String $title, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C78@2837L11:BarraNavegationInferiorPsicologo.kt#d6dcan");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-871093080, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuPsicologo.<anonymous> (BarraNavegationInferiorPsicologo.kt:78)");
            }
            TextKt.m2976Text4IGK_g($title, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuPsicologo$lambda$11(boolean $showBackButton, final NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C:BarraNavegationInferiorPsicologo.kt#d6dcan");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1743503642, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuPsicologo.<anonymous> (BarraNavegationInferiorPsicologo.kt:80)");
            }
            if ($showBackButton) {
                $composer.startReplaceGroup(-1677448457);
                ComposerKt.sourceInformation($composer, "81@2950L30,81@2929L165");
                ComposerKt.sourceInformationMarkerStart($composer, -469752156, "CC(remember):BarraNavegationInferiorPsicologo.kt#9igjgp");
                boolean zChangedInstance = $composer.changedInstance($navController);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BarraNavegationInferiorPsicologoKt.MenuPsicologo$lambda$11$lambda$10$lambda$9($navController);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$BarraNavegationInferiorPsicologoKt.INSTANCE.m10407getLambda$443681810$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            } else {
                $composer.startReplaceGroup(-1680343268);
            }
            $composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuPsicologo$lambda$11$lambda$10$lambda$9(NavController $navController) {
        $navController.navigateUp();
        return Unit.INSTANCE;
    }
}
