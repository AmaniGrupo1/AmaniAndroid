package org.ies.tierno.applicationamani.presentation.ui.componente.admin;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.AdminPanelSettingsKt;
import androidx.compose.material.icons.filled.EditKt;
import androidx.compose.material.icons.filled.HomeKt;
import androidx.compose.material.icons.filled.LogoutKt;
import androidx.compose.material.icons.filled.MenuKt;
import androidx.compose.material.icons.filled.NotificationsKt;
import androidx.compose.material.icons.filled.PeopleKt;
import androidx.compose.material.icons.filled.PsychologyKt;
import androidx.compose.material.icons.filled.QuizKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.DividerDefaults;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.NavigationDrawerItemColors;
import androidx.compose.material3.NavigationDrawerItemDefaults;
import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.Navigator;
import androidx.navigation.PopUpToBuilder;
import androidx.profileinstaller.ProfileVerifier;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.R;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;

/* JADX INFO: compiled from: MenuAdministrador.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001ac\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\n2\u001e\b\u0002\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\u000e¢\u0006\u0002\b\u000fH\u0007¢\u0006\u0002\u0010\u0010\u001aC\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\nH\u0007¢\u0006\u0002\u0010\u0013\u001a+\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u0015\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0016¨\u0006\u0017²\u0006\n\u0010\u0018\u001a\u00020\u0007X\u008a\u008e\u0002"}, d2 = {"MenuAdministrador", "", "title", "", "navController", "Landroidx/navigation/NavController;", "showBackButton", "", "showLogo", "onLogout", "Lkotlin/Function0;", "actions", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Landroidx/navigation/NavController;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "MenuAdministradorSimple", "onActionClick", "(Ljava/lang/String;Landroidx/navigation/NavController;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "MenuLateralAdministrador", "currentRoute", "(Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "app", "expanded"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class MenuAdministradorKt {
    static final Unit MenuAdministrador$lambda$32(String str, NavController navController, boolean z, boolean z2, Function0 function0, Function3 function3, int i, int i2, Composer composer, int i3) {
        MenuAdministrador(str, navController, z, z2, function0, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministradorSimple$lambda$40(String str, NavController navController, boolean z, boolean z2, Function0 function0, int i, int i2, Composer composer, int i3) {
        MenuAdministradorSimple(str, navController, z, z2, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit MenuLateralAdministrador$lambda$52(NavController navController, Function0 function0, String str, int i, Composer composer, int i2) {
        MenuLateralAdministrador(navController, function0, str, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void MenuAdministrador(final String title, final NavController navController, boolean showBackButton, boolean showLogo, Function0<Unit> function0, Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        boolean z;
        boolean z2;
        Function0<Unit> function02;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32;
        final boolean showBackButton2;
        final boolean showLogo2;
        final Function0<Unit> function03;
        final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function33;
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(1529199889);
        ComposerKt.sourceInformation($composer2, "C(MenuAdministrador)N(title,navController,showBackButton,showLogo,onLogout,actions)108@4732L34,109@4798L11,112@4867L1971,172@7023L234,192@7787L1552,178@7284L485,231@9359L5132,169@6844L7653:MenuAdministrador.kt#a8gqcz");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(title) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z = showBackButton;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = showBackButton;
            $dirty |= $composer2.changed(z) ? 256 : 128;
        } else {
            z = showBackButton;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty |= 3072;
            z2 = showLogo;
        } else if (($changed & 3072) == 0) {
            z2 = showLogo;
            $dirty |= $composer2.changed(z2) ? 2048 : 1024;
        } else {
            z2 = showLogo;
        }
        int i4 = i & 16;
        if (i4 != 0) {
            $dirty |= 24576;
            function02 = function0;
        } else if (($changed & 24576) == 0) {
            function02 = function0;
            $dirty |= $composer2.changedInstance(function02) ? 16384 : 8192;
        } else {
            function02 = function0;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function32 = function3;
        } else if ((196608 & $changed) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 131072 : 65536;
        } else {
            function32 = function3;
        }
        if ($composer2.shouldExecute(($dirty & 74899) != 74898, $dirty & 1)) {
            final boolean showBackButton3 = i2 != 0 ? false : z;
            final boolean showLogo3 = i3 != 0 ? false : z2;
            final Function0<Unit> function04 = i4 != 0 ? null : function02;
            Function3<? super RowScope, ? super Composer, ? super Integer, Unit> lambda$1569203224$app = i5 != 0 ? ComposableSingletons$MenuAdministradorKt.INSTANCE.getLambda$1569203224$app() : function32;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1529199889, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador (MenuAdministrador.kt:107)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 682288979, "CC(remember):MenuAdministrador.kt#9igjgp");
            Object objRememberedValue = $composer2.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            }
            final MutableState expanded$delegate = (MutableState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            ComposerKt.sourceInformationMarkerStart($composer2, 682295236, "CC(remember):MenuAdministrador.kt#9igjgp");
            Object objRememberedValue2 = $composer2.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object objListOf = CollectionsKt.listOf((Object[]) new MenuAdministrador[]{new MenuAdministrador("Registrar psicólogo", PsychologyKt.getPsychology(Icons.INSTANCE.getDefault()), Screens.agregarPsicologo.INSTANCE.getRoute(), false, false, true, 24, null), new MenuAdministrador("Crear test", QuizKt.getQuiz(Icons.INSTANCE.getDefault()), Screens.test.INSTANCE.getRoute(), false, false, false, 56, null), new MenuAdministrador("Crear preguntas", EditKt.getEdit(Icons.INSTANCE.getDefault()), Screens.test.INSTANCE.getRoute(), false, false, true, 24, null), new MenuAdministrador("Listar pacientes", PeopleKt.getPeople(Icons.INSTANCE.getDefault()), Screens.pacientes.INSTANCE.getRoute(), false, false, false, 56, null), new MenuAdministrador("Listar psicólogos", PsychologyKt.getPsychology(Icons.INSTANCE.getDefault()), Screens.listarPsicologo.INSTANCE.getRoute(), false, false, true, 24, null), new MenuAdministrador("Registrar administrador", AdminPanelSettingsKt.getAdminPanelSettings(Icons.INSTANCE.getDefault()), Screens.agregarAdmin.INSTANCE.getRoute(), false, false, true, 24, null), new MenuAdministrador("Citas", AdminPanelSettingsKt.getAdminPanelSettings(Icons.INSTANCE.getDefault()), Screens.citas.INSTANCE.getRoute(), false, false, true, 24, null), new MenuAdministrador("Calendario", AdminPanelSettingsKt.getAdminPanelSettings(Icons.INSTANCE.getDefault()), Screens.psicologoAgenda.INSTANCE.getRoute(), false, false, true, 24, null), new MenuAdministrador("Cerrar sesión", LogoutKt.getLogout(Icons.INSTANCE.getDefault()), Screens.login.INSTANCE.getRoute(), true, false, false, 48, null)});
                $composer2.updateRememberedValue(objListOf);
                objRememberedValue2 = objListOf;
            }
            final List menuItems = (List) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Modifier modifierM4295shadows4CzXII$default = ShadowKt.m4295shadows4CzXII$default(Modifier.INSTANCE, Dp.m7505constructorimpl(4), RoundedCornerShapeKt.m1128RoundedCornerShapea9UjIt4$default(0.0f, 0.0f, Dp.m7505constructorimpl(0), Dp.m7505constructorimpl(0), 3, null), false, 0L, 0L, 28, null);
            TopAppBarColors topAppBarColorsM3147topAppBarColorszjMxDiM = TopAppBarDefaults.INSTANCE.m3147topAppBarColorszjMxDiM(colors.getPrimary(), 0L, colors.getOnPrimary(), colors.getOnPrimary(), colors.getOnPrimary(), $composer2, TopAppBarDefaults.$stable << 15, 2);
            $composer2 = $composer2;
            boolean showBackButton4 = showBackButton3;
            final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function34 = lambda$1569203224$app;
            boolean showBackButton5 = showLogo3;
            Function0<Unit> function05 = function04;
            AppBarKt.m2057TopAppBarGHTll3U(ComposableLambdaKt.rememberComposableLambda(-961954091, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda26
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$8(showLogo3, title, colors, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), modifierM4295shadows4CzXII$default, ComposableLambdaKt.rememberComposableLambda(-2097898537, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$12(showBackButton3, navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), ComposableLambdaKt.rememberComposableLambda(641878528, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda28
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$31(function34, colors, expanded$delegate, menuItems, function04, navController, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), 0.0f, null, topAppBarColorsM3147topAppBarColorszjMxDiM, null, $composer2, 3462, 176);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            showLogo2 = showBackButton5;
            showBackButton2 = showBackButton4;
            function33 = function34;
            function03 = function05;
        } else {
            $composer2.skipToGroupEnd();
            showBackButton2 = z;
            showLogo2 = z2;
            function03 = function02;
            function33 = function32;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$32(title, navController, showBackButton2, showLogo2, function03, function33, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final boolean MenuAdministrador$lambda$1(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void MenuAdministrador$lambda$2(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit MenuAdministrador$lambda$12(boolean $showBackButton, final NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C183@7490L269,179@7298L461:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2097898537, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous> (MenuAdministrador.kt:179)");
            }
            AnimatedVisibilityKt.AnimatedVisibility($showBackButton, (Modifier) null, EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.slideInHorizontally$default(null, null, 3, null)), EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.slideOutHorizontally$default(null, null, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(-406544721, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$12$lambda$11($navController, (AnimatedVisibilityScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 200064, 18);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$12$lambda$11(final NavController $navController, AnimatedVisibilityScope AnimatedVisibility, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
        ComposerKt.sourceInformation($composer, "C184@7529L30,184@7508L237:MenuAdministrador.kt#a8gqcz");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-406544721, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous>.<anonymous> (MenuAdministrador.kt:184)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, 152548333, "CC(remember):MenuAdministrador.kt#9igjgp");
        boolean zChangedInstance = $composer.changedInstance($navController);
        Object objRememberedValue = $composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
            Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MenuAdministradorKt.MenuAdministrador$lambda$12$lambda$11$lambda$10$lambda$9($navController);
                }
            };
            $composer.updateRememberedValue(obj);
            objRememberedValue = obj;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$MenuAdministradorKt.INSTANCE.getLambda$413009356$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$12$lambda$11$lambda$10$lambda$9(NavController $navController) {
        $navController.navigateUp();
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$8(boolean $showLogo, String $title, final ColorScheme $colors, Composer $composer, int $changed) throws Throwable {
        ComposerKt.sourceInformation($composer, "C195@7900L63,198@7978L1351,193@7801L1528:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-961954091, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous> (MenuAdministrador.kt:193)");
            }
            Pair pair = TuplesKt.to(Boolean.valueOf($showLogo), $title);
            ComposerKt.sourceInformationMarkerStart($composer, -1019909132, "CC(remember):MenuAdministrador.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda22
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return MenuAdministradorKt.MenuAdministrador$lambda$8$lambda$5$lambda$4((AnimatedContentTransitionScope) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AnimatedContentKt.AnimatedContent(pair, null, (Function1) objRememberedValue, null, null, null, ComposableLambdaKt.rememberComposableLambda(2128243720, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$8$lambda$7($colors, (AnimatedContentScope) obj2, (Pair) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer, 54), $composer, 1573248, 58);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final ContentTransform MenuAdministrador$lambda$8$lambda$5$lambda$4(AnimatedContentTransitionScope AnimatedContent) {
        Intrinsics.checkNotNullParameter(AnimatedContent, "$this$AnimatedContent");
        return AnimatedContentKt.with(EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null), EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null));
    }

    static final Unit MenuAdministrador$lambda$8$lambda$7(ColorScheme $colors, AnimatedContentScope AnimatedContent, Pair destruct$, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(AnimatedContent, "$this$AnimatedContent");
        Intrinsics.checkNotNullParameter(destruct$, "$destruct$");
        ComposerKt.sourceInformation($composer, "C:MenuAdministrador.kt#a8gqcz");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2128243720, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous>.<anonymous> (MenuAdministrador.kt:199)");
        }
        boolean showLogoValue = ((Boolean) destruct$.component1()).booleanValue();
        String titleValue = (String) destruct$.component2();
        if (showLogoValue) {
            $composer.startReplaceGroup(201534574);
            ComposerKt.sourceInformation($composer, "200@8068L868");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal center = Arrangement.INSTANCE.getCenter();
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
            ComposerKt.sourceInformationMarkerStart($composer, 2084069710, "C205@8304L46,204@8260L288,210@8573L39,211@8637L277:MenuAdministrador.kt#a8gqcz");
            IconKt.m2432Iconww6aTOc(PainterResources_androidKt.painterResource(R.drawable.logo_original, $composer, 0), "Logo", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(32)), Color.INSTANCE.m4733getUnspecified0d7_KjU(), $composer, Painter.$stable | 3504, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g(titleValue, (Modifier) null, $colors.getOnPrimary(), TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 1, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199680, 3072, 122834);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endReplaceGroup();
        } else {
            $composer.startReplaceGroup(202424119);
            ComposerKt.sourceInformation($composer, "220@8982L315");
            TextKt.m2976Text4IGK_g(titleValue, (Modifier) null, $colors.getOnPrimary(), TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m7416getEllipsisgIe3tQ8(), false, 1, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199680, 3120, 120786);
            $composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31(Function3 $actions, final ColorScheme $colors, final MutableState $expanded$delegate, final List $menuItems, final Function0 $onLogout, final NavController $navController, RowScope TopAppBar, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(TopAppBar, "$this$TopAppBar");
        ComposerKt.sourceInformation($composer, "C233@9412L9,237@9522L34,238@9571L451,236@9484L538,254@10103L19,255@10137L216,253@10065L288,266@10485L20,272@10742L3739,264@10399L4082:MenuAdministrador.kt#a8gqcz");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(TopAppBar) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if ($composer.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(641878528, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous> (MenuAdministrador.kt:233)");
            }
            $actions.invoke(TopAppBar, $composer, Integer.valueOf($dirty2 & 14));
            ComposerKt.sourceInformationMarkerStart($composer, -1630019966, "CC(remember):MenuAdministrador.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableLambdaKt.rememberComposableLambda(2108168195, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$15($colors, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 30);
            ComposerKt.sourceInformationMarkerStart($composer, -1630001389, "CC(remember):MenuAdministrador.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$17$lambda$16($expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue2, null, false, null, null, ComposableLambdaKt.rememberComposableLambda(1101243564, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$18($colors, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 196614, 30);
            boolean zMenuAdministrador$lambda$1 = MenuAdministrador$lambda$1($expanded$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1629989164, "CC(remember):MenuAdministrador.kt#9igjgp");
            Object objRememberedValue3 = $composer.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$20$lambda$19($expanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.m2048DropdownMenuIlH_yew(zMenuAdministrador$lambda$1, (Function0) objRememberedValue3, SizeKt.m869width3ABfNKs(ClipKt.clip(ShadowKt.m4295shadows4CzXII$default(Modifier.INSTANCE, Dp.m7505constructorimpl(8), null, false, 0L, 0L, 30, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12))), Dp.m7505constructorimpl(280)), 0L, null, null, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1899008315, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj4, Object obj5, Object obj6) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$30($menuItems, $onLogout, $navController, $expanded$delegate, (ColumnScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, $composer, 54), $composer, 48, 48, 1976);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31$lambda$15(ColorScheme $colors, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C239@9589L213,245@9819L189:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2108168195, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous>.<anonymous> (MenuAdministrador.kt:239)");
            }
            BadgeKt.m2072BadgeeopBjH0(OffsetKt.m777offsetVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(-4), Dp.m7505constructorimpl(4)), $colors.getError(), 0L, ComposableSingletons$MenuAdministradorKt.INSTANCE.getLambda$862150198$app(), $composer, 3078, 4);
            IconKt.m2433Iconww6aTOc(NotificationsKt.getNotifications(Icons.INSTANCE.getDefault()), "Notificaciones", (Modifier) null, $colors.getOnPrimary(), $composer, 48, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31$lambda$17$lambda$16(MutableState $expanded$delegate) {
        MenuAdministrador$lambda$2($expanded$delegate, true);
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31$lambda$18(ColorScheme $colors, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C256@10155L184:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1101243564, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous>.<anonymous> (MenuAdministrador.kt:256)");
            }
            IconKt.m2433Iconww6aTOc(MenuKt.getMenu(Icons.INSTANCE.getDefault()), "Menú de navegación", (Modifier) null, $colors.getOnPrimary(), $composer, 48, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31$lambda$20$lambda$19(MutableState $expanded$delegate) {
        MenuAdministrador$lambda$2($expanded$delegate, false);
        return Unit.INSTANCE;
    }

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
    static final Unit MenuAdministrador$lambda$31$lambda$30(List $menuItems, final Function0 $onLogout, final NavController $navController, final MutableState $expanded$delegate, ColumnScope DropdownMenu, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(DropdownMenu, "$this$DropdownMenu");
        ComposerKt.sourceInformation($composer, "C295@11754L11,292@11622L3,274@10795L1062,299@11946L5,299@11875L77,*311@12348L1301,336@13685L574,310@12299L2048:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1899008315, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous>.<anonymous> (MenuAdministrador.kt:274)");
            }
            Modifier modifierClip = ClipKt.clip(BackgroundKt.m264backgroundbw27NRU$default(Modifier.INSTANCE, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimaryContainer(), null, 2, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8)));
            Function2<Composer, Integer, Unit> lambda$1312029963$app = ComposableSingletons$MenuAdministradorKt.INSTANCE.getLambda$1312029963$app();
            ComposerKt.sourceInformationMarkerStart($composer, -414081922, "CC(remember):MenuAdministrador.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            boolean z = true;
            AndroidMenu_androidKt.DropdownMenuItem(lambda$1312029963$app, (Function0) objRememberedValue, modifierClip, null, null, false, null, null, null, $composer, 196662, 472);
            Composer composer = $composer;
            DividerKt.m2355HorizontalDivider9IZ8Weo(Modifier.INSTANCE, DividerDefaults.INSTANCE.m2353getThicknessD9Ej5fM(), DividerDefaults.INSTANCE.getColor(composer, DividerDefaults.$stable), composer, 6, 0);
            Iterator it = $menuItems.iterator();
            while (it.hasNext()) {
                final MenuAdministrador menuAdministrador = (MenuAdministrador) it.next();
                if (menuAdministrador.getDividerBefore()) {
                    composer.startReplaceGroup(-519422795);
                    ComposerKt.sourceInformation(composer, "306@12224L5,303@12068L187");
                    DividerKt.m2355HorizontalDivider9IZ8Weo(Modifier.INSTANCE, DividerDefaults.INSTANCE.m2353getThicknessD9Ej5fM(), DividerDefaults.INSTANCE.getColor(composer, DividerDefaults.$stable), composer, 6, 0);
                } else {
                    composer.startReplaceGroup(-531376736);
                }
                composer.endReplaceGroup();
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(713640338, z, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$30$lambda$29$lambda$24(menuAdministrador, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -986533984, "CC(remember):MenuAdministrador.kt#9igjgp");
                boolean zChanged = composer.changed(menuAdministrador) | composer.changed($onLogout) | composer.changedInstance($navController);
                Object objRememberedValue2 = $composer.rememberedValue();
                if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$30$lambda$29$lambda$28$lambda$27(menuAdministrador, $onLogout, $navController, $expanded$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue2 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue2, AnimationModifierKt.animateContentSize$default(Modifier.INSTANCE, null, null, 3, null), null, null, false, null, null, null, $composer, 6, 504);
                composer = $composer;
                if (menuAdministrador.getDividerAfter()) {
                    composer.startReplaceGroup(-517097113);
                    ComposerKt.sourceInformation(composer, "352@14418L9");
                    DividerKt.m2354Divider9IZ8Weo(null, 0.0f, 0L, composer, 0, 7);
                } else {
                    composer.startReplaceGroup(-531376736);
                }
                composer.endReplaceGroup();
                z = true;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31$lambda$30$lambda$29$lambda$24(MenuAdministrador $item, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        long j;
        long j2;
        ComposerKt.sourceInformation($composer, "C312@12378L1245:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(713640338, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MenuAdministrador.kt:312)");
            }
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, centerVertically, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
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
            ComposerKt.sourceInformationMarkerStart($composer, 1380324343, "C316@12611L481,325@13125L468:MenuAdministrador.kt#a8gqcz");
            ImageVector icon = $item.getIcon();
            Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20));
            if ($item.isDanger()) {
                $composer.startReplaceGroup(460178075);
                ComposerKt.sourceInformation($composer, "321@12926L11");
                long error = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError();
                $composer.endReplaceGroup();
                j = error;
            } else {
                $composer.startReplaceGroup(460181693);
                ComposerKt.sourceInformation($composer, "323@13039L11");
                long primary = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary();
                $composer.endReplaceGroup();
                j = primary;
            }
            IconKt.m2433Iconww6aTOc(icon, (String) null, modifierM864size3ABfNKs, j, $composer, 432, 0);
            String title = $item.getTitle();
            long sp = TextUnitKt.getSp(14);
            FontWeight medium = FontWeight.INSTANCE.getMedium();
            if ($item.isDanger()) {
                $composer.startReplaceGroup(460194043);
                ComposerKt.sourceInformation($composer, "330@13425L11");
                long error2 = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError();
                $composer.endReplaceGroup();
                j2 = error2;
            } else {
                $composer.startReplaceGroup(460197663);
                ComposerKt.sourceInformation($composer, "332@13538L11");
                long onSurface = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurface();
                $composer.endReplaceGroup();
                j2 = onSurface;
            }
            TextKt.m2976Text4IGK_g(title, (Modifier) null, j2, sp, (FontStyle) null, medium, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199680, 0, 131026);
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
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31$lambda$30$lambda$29$lambda$28$lambda$27(MenuAdministrador $item, Function0 $onLogout, NavController $navController, MutableState $expanded$delegate) {
        MenuAdministrador$lambda$2($expanded$delegate, false);
        if (Intrinsics.areEqual($item.getTitle(), "Cerrar sesión")) {
            if ($onLogout != null) {
                $onLogout.invoke();
            }
            $navController.navigate($item.getRoute(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$30$lambda$29$lambda$28$lambda$27$lambda$26((NavOptionsBuilder) obj);
                }
            });
        } else {
            NavController.navigate$default($navController, $item.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31$lambda$30$lambda$29$lambda$28$lambda$27$lambda$26(NavOptionsBuilder navigate) {
        Intrinsics.checkNotNullParameter(navigate, "$this$navigate");
        navigate.popUpTo(Screens.adminHome.INSTANCE.getRoute(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MenuAdministradorKt.MenuAdministrador$lambda$31$lambda$30$lambda$29$lambda$28$lambda$27$lambda$26$lambda$25((PopUpToBuilder) obj);
            }
        });
        navigate.setLaunchSingleTop(true);
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministrador$lambda$31$lambda$30$lambda$29$lambda$28$lambda$27$lambda$26$lambda$25(PopUpToBuilder popUpTo) {
        Intrinsics.checkNotNullParameter(popUpTo, "$this$popUpTo");
        popUpTo.setInclusive(true);
        return Unit.INSTANCE;
    }

    public static final void MenuAdministradorSimple(final String title, final NavController navController, boolean showBackButton, boolean showLogo, Function0<Unit> function0, Composer $composer, final int $changed, final int i) {
        boolean z;
        boolean z2;
        Function0<Unit> function02;
        final boolean showBackButton2;
        final boolean showBackButton3;
        final Function0<Unit> function03;
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(1612828927);
        ComposerKt.sourceInformation($composer2, "C(MenuAdministradorSimple)N(title,navController,showBackButton,showLogo,onActionClick)372@14855L11,376@14972L234,392@15564L1079,382@15233L313,422@16663L289,374@14872L2086:MenuAdministrador.kt#a8gqcz");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(title) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z = showBackButton;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = showBackButton;
            $dirty |= $composer2.changed(z) ? 256 : 128;
        } else {
            z = showBackButton;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty |= 3072;
            z2 = showLogo;
        } else if (($changed & 3072) == 0) {
            z2 = showLogo;
            $dirty |= $composer2.changed(z2) ? 2048 : 1024;
        } else {
            z2 = showLogo;
        }
        int i4 = i & 16;
        if (i4 != 0) {
            $dirty |= 24576;
            function02 = function0;
        } else if (($changed & 24576) == 0) {
            function02 = function0;
            $dirty |= $composer2.changedInstance(function02) ? 16384 : 8192;
        } else {
            function02 = function0;
        }
        if ($composer2.shouldExecute(($dirty & 9363) != 9362, $dirty & 1)) {
            final boolean showBackButton4 = i2 != 0 ? false : z;
            final boolean showLogo2 = i3 != 0 ? false : z2;
            if (i4 != 0) {
                function02 = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1612828927, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorSimple (MenuAdministrador.kt:371)");
            }
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            Modifier modifierM4295shadows4CzXII$default = ShadowKt.m4295shadows4CzXII$default(Modifier.INSTANCE, Dp.m7505constructorimpl(4), null, false, 0L, 0L, 30, null);
            final Function0<Unit> function04 = function02;
            TopAppBarColors topAppBarColorsM3147topAppBarColorszjMxDiM = TopAppBarDefaults.INSTANCE.m3147topAppBarColorszjMxDiM(colors.getPrimary(), 0L, colors.getOnPrimary(), colors.getOnPrimary(), colors.getOnPrimary(), $composer2, TopAppBarDefaults.$stable << 15, 2);
            $composer2 = $composer2;
            AppBarKt.m2057TopAppBarGHTll3U(ComposableLambdaKt.rememberComposableLambda(-689014333, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuAdministradorKt.MenuAdministradorSimple$lambda$34(showLogo2, colors, title, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), modifierM4295shadows4CzXII$default, ComposableLambdaKt.rememberComposableLambda(1820549701, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuAdministradorKt.MenuAdministradorSimple$lambda$37(showBackButton4, navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), ComposableLambdaKt.rememberComposableLambda(-1995105234, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return MenuAdministradorKt.MenuAdministradorSimple$lambda$39(function04, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), 0.0f, null, topAppBarColorsM3147topAppBarColorszjMxDiM, null, $composer2, 3510, 176);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            boolean z3 = showLogo2;
            function03 = function04;
            showBackButton2 = showBackButton4;
            showBackButton3 = z3;
        } else {
            $composer2.skipToGroupEnd();
            showBackButton2 = z;
            showBackButton3 = z2;
            function03 = function02;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuAdministradorKt.MenuAdministradorSimple$lambda$40(title, navController, showBackButton2, showBackButton3, function03, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit MenuAdministradorSimple$lambda$37(boolean $showBackButton, final NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1820549701, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorSimple.<anonymous> (MenuAdministrador.kt:383)");
            }
            if ($showBackButton) {
                $composer.startReplaceGroup(-850829328);
                ComposerKt.sourceInformation($composer, "384@15306L30,384@15285L237");
                ComposerKt.sourceInformationMarkerStart($composer, 1496575555, "CC(remember):MenuAdministrador.kt#9igjgp");
                boolean zChangedInstance = $composer.changedInstance($navController);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda30
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return MenuAdministradorKt.MenuAdministradorSimple$lambda$37$lambda$36$lambda$35($navController);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$MenuAdministradorKt.INSTANCE.m10405getLambda$2130148803$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            } else {
                $composer.startReplaceGroup(-865983523);
            }
            $composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministradorSimple$lambda$37$lambda$36$lambda$35(NavController $navController) {
        $navController.navigateUp();
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministradorSimple$lambda$34(boolean $showLogo, ColorScheme $colors, String $title, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-689014333, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorSimple.<anonymous> (MenuAdministrador.kt:393)");
            }
            if ($showLogo) {
                $composer.startReplaceGroup(-777236628);
                ComposerKt.sourceInformation($composer, "394@15610L691");
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
                int i = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
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
                Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                int i3 = (i2 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i4 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -1784973840, "C398@15762L46,397@15722L268,403@16011L39,404@16071L212:MenuAdministrador.kt#a8gqcz");
                IconKt.m2432Iconww6aTOc(PainterResources_androidKt.painterResource(R.drawable.logo_original, $composer, 0), "Logo", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(32)), Color.INSTANCE.m4733getUnspecified0d7_KjU(), $composer, Painter.$stable | 3504, 0);
                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
                TextKt.m2976Text4IGK_g($title, (Modifier) null, $colors.getOnPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199680, 0, 131026);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(-776526201);
                ComposerKt.sourceInformation($composer, "412@16339L280");
                TextKt.m2976Text4IGK_g($title, (Modifier) null, $colors.getOnPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m7416getEllipsisgIe3tQ8(), false, 1, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199680, 3120, 120786);
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuAdministradorSimple$lambda$39(Function0 $onActionClick, RowScope TopAppBar, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(TopAppBar, "$this$TopAppBar");
        ComposerKt.sourceInformation($composer, "C:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1995105234, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorSimple.<anonymous> (MenuAdministrador.kt:423)");
            }
            if ($onActionClick == null) {
                $composer.startReplaceGroup(1872419769);
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(1872419770);
                ComposerKt.sourceInformation($composer, "*424@16714L214");
                IconButtonKt.IconButton($onActionClick, null, false, null, null, ComposableSingletons$MenuAdministradorKt.INSTANCE.getLambda$1184157534$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void MenuLateralAdministrador(final NavController navController, final Function0<Unit> onLogout, final String currentRoute, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(onLogout, "onLogout");
        Intrinsics.checkNotNullParameter(currentRoute, "currentRoute");
        Composer $composer2 = $composer.startRestartGroup(-1148667112);
        ComposerKt.sourceInformation($composer2, "C(MenuLateralAdministrador)N(navController,onLogout,currentRoute)455@17786L3166,454@17739L3305:MenuAdministrador.kt#a8gqcz");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(onLogout) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changed(currentRoute) ? 256 : 128;
        }
        if ($composer2.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1148667112, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuLateralAdministrador (MenuAdministrador.kt:443)");
            }
            final List menuItems = CollectionsKt.listOf((Object[]) new Triple[]{new Triple(HomeKt.getHome(Icons.INSTANCE.getDefault()), "Inicio", Screens.adminHome.INSTANCE.getRoute()), new Triple(PeopleKt.getPeople(Icons.INSTANCE.getDefault()), "Pacientes", Screens.pacientes.INSTANCE.getRoute()), new Triple(PsychologyKt.getPsychology(Icons.INSTANCE.getDefault()), "Psicólogos", Screens.listarPsicologo.INSTANCE.getRoute()), new Triple(QuizKt.getQuiz(Icons.INSTANCE.getDefault()), "Tests", Screens.test.INSTANCE.getRoute()), new Triple(EditKt.getEdit(Icons.INSTANCE.getDefault()), "Crear preguntas", Screens.test.INSTANCE.getRoute()), new Triple(AdminPanelSettingsKt.getAdminPanelSettings(Icons.INSTANCE.getDefault()), "Registrar admin", Screens.agregarAdmin.INSTANCE.getRoute()), new Triple(androidx.compose.material.icons.automirrored.filled.LogoutKt.getLogout(Icons.AutoMirrored.Filled.INSTANCE), "Cerrar sesión", Screens.login.INSTANCE.getRoute())});
            NavigationDrawerKt.m2568ModalNavigationDrawerFHprtrg(ComposableLambdaKt.rememberComposableLambda(1400914399, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuAdministradorKt.MenuLateralAdministrador$lambda$51(menuItems, currentRoute, onLogout, navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), null, null, false, 0L, ComposableSingletons$MenuAdministradorKt.INSTANCE.getLambda$510298810$app(), $composer2, 196614, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MenuAdministradorKt.MenuLateralAdministrador$lambda$52(navController, onLogout, currentRoute, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit MenuLateralAdministrador$lambda$51(final List $menuItems, final String $currentRoute, final Function0 $onLogout, final NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C457@17871L11,458@17914L3028,456@17800L3142:MenuAdministrador.kt#a8gqcz");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1400914399, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuLateralAdministrador.<anonymous> (MenuAdministrador.kt:456)");
            }
            NavigationDrawerKt.m2567ModalDrawerSheetafqeVBk(null, null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimaryContainer(), 0L, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-659583813, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return MenuAdministradorKt.MenuLateralAdministrador$lambda$51$lambda$50($menuItems, $currentRoute, $onLogout, $navController, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 1572864, 59);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

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
    static final Unit MenuLateralAdministrador$lambda$51$lambda$50(List $menuItems, final String $currentRoute, final Function0 $onLogout, final NavController $navController, ColumnScope ModalDrawerSheet, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(ModalDrawerSheet, "$this$ModalDrawerSheet");
        ComposerKt.sourceInformation(composer, "C463@18104L11,460@17969L1195,*518@20670L11,517@20595L203,498@19633L298,506@20025L506,491@19333L266,490@19280L1630:MenuAdministrador.kt#a8gqcz");
        if (composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-659583813, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuLateralAdministrador.<anonymous>.<anonymous> (MenuAdministrador.kt:460)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimary(), null, 2, null), Dp.m7505constructorimpl(24));
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1840565471, "C466@18205L941:MenuAdministrador.kt#a8gqcz");
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((0 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1387060334, "C468@18282L46,467@18238L288,473@18551L40,476@18722L11,474@18616L257,482@19012L11,480@18898L226:MenuAdministrador.kt#a8gqcz");
            IconKt.m2432Iconww6aTOc(PainterResources_androidKt.painterResource(R.drawable.logo_original, $composer, 0), "Logo", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(48)), Color.INSTANCE.m4733getUnspecified0d7_KjU(), $composer, Painter.$stable | 3504, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Panel Admin", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199686, 0, 131026);
            long onPrimary = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnPrimary();
            TextKt.m2976Text4IGK_g("Gestión de usuarios", (Modifier) null, Color.m4695copywmQWz5c(onPrimary, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onPrimary) : 0.8f, (14 & 2) != 0 ? Color.m4703getRedimpl(onPrimary) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onPrimary) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onPrimary) : 0.0f), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3078, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd($composer);
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
            Iterator it = $menuItems.iterator();
            while (it.hasNext()) {
                Triple triple = (Triple) it.next();
                final ImageVector imageVector = (ImageVector) triple.component1();
                final String str = (String) triple.component2();
                final String str2 = (String) triple.component3();
                boolean zAreEqual = Intrinsics.areEqual($currentRoute, str2);
                NavigationDrawerItemColors navigationDrawerItemColorsM2562colorsoq7We08 = NavigationDrawerItemDefaults.INSTANCE.m2562colorsoq7We08(MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimaryContainer(), Color.INSTANCE.m4732getTransparent0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, $composer, (NavigationDrawerItemDefaults.$stable << 24) | 48, 252);
                Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(4));
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(52755235, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return MenuAdministradorKt.MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$43(str, $currentRoute, str2, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54);
                ComposerKt.sourceInformationMarkerStart($composer, 1384166552, "CC(remember):MenuAdministrador.kt#9igjgp");
                boolean zChanged = $composer.changed(str) | $composer.changed($onLogout) | $composer.changedInstance($navController) | $composer.changed(str2);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return MenuAdministradorKt.MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$47$lambda$46(str, $onLogout, $navController, str2);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                NavigationDrawerKt.NavigationDrawerItem(composableLambdaRememberComposableLambda, zAreEqual, (Function0) objRememberedValue, modifierM819paddingVpY3zN4, ComposableLambdaKt.rememberComposableLambda(-1542095833, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda20
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return MenuAdministradorKt.MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$48(imageVector, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), null, null, navigationDrawerItemColorsM2562colorsoq7We08, null, $composer, 27654, 352);
                composer = $composer;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$48(ImageVector $icon, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C492@19363L210:MenuAdministrador.kt#a8gqcz");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1542095833, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuLateralAdministrador.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MenuAdministrador.kt:492)");
            }
            IconKt.m2433Iconww6aTOc($icon, (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), 0L, $composer, 432, 8);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$43(String $title, String $currentRoute, String $route, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C499@19663L242:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(52755235, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuLateralAdministrador.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MenuAdministrador.kt:499)");
            }
            TextKt.m2976Text4IGK_g($title, (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, Intrinsics.areEqual($currentRoute, $route) ? FontWeight.INSTANCE.getBold() : FontWeight.INSTANCE.getNormal(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3072, 0, 131030);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$47$lambda$46(String $title, Function0 $onLogout, NavController $navController, String $route) {
        if (Intrinsics.areEqual($title, "Cerrar sesión")) {
            $onLogout.invoke();
            $navController.navigate($route, new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MenuAdministradorKt.MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$47$lambda$46$lambda$45((NavOptionsBuilder) obj);
                }
            });
        } else {
            NavController.navigate$default($navController, $route, (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        }
        return Unit.INSTANCE;
    }

    static final Unit MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$47$lambda$46$lambda$45(NavOptionsBuilder navigate) {
        Intrinsics.checkNotNullParameter(navigate, "$this$navigate");
        navigate.popUpTo(Screens.adminHome.INSTANCE.getRoute(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MenuAdministradorKt.MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$47$lambda$46$lambda$45$lambda$44((PopUpToBuilder) obj);
            }
        });
        navigate.setLaunchSingleTop(true);
        return Unit.INSTANCE;
    }

    static final Unit MenuLateralAdministrador$lambda$51$lambda$50$lambda$49$lambda$47$lambda$46$lambda$45$lambda$44(PopUpToBuilder popUpTo) {
        Intrinsics.checkNotNullParameter(popUpTo, "$this$popUpTo");
        popUpTo.setInclusive(true);
        return Unit.INSTANCE;
    }
}
