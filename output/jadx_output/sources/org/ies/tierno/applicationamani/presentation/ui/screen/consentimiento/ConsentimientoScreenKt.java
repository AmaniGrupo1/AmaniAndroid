package org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.core.app.FrameMetricsAggregator;
import androidx.navigation.NavController;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;

/* JADX INFO: compiled from: ConsentimientoScreen.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006¨\u0006\u0007²\u0006\n\u0010\b\u001a\u00020\tX\u008a\u008e\u0002²\u0006\n\u0010\n\u001a\u00020\tX\u008a\u008e\u0002"}, d2 = {"ConsentimientoScreen", "", "navController", "Landroidx/navigation/NavController;", "loginViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V", "app", "aceptaVideo", "", "aceptaComunicacion"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class ConsentimientoScreenKt {
    static final Unit ConsentimientoScreen$lambda$6(NavController navController, LoginViewModel loginViewModel, int i, Composer composer, int i2) {
        ConsentimientoScreen(navController, loginViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void ConsentimientoScreen(final NavController navController, final LoginViewModel loginViewModel, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(loginViewModel, "loginViewModel");
        Composer $composer3 = $composer.startRestartGroup(-1447562467);
        ComposerKt.sourceInformation($composer3, "C(ConsentimientoScreen)N(navController,loginViewModel)29@1150L34,30@1215L34,32@1255L1689:ConsentimientoScreen.kt#qemjsp");
        if ($composer3.shouldExecute(($changed & 1) != 0, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1447562467, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ConsentimientoScreen (ConsentimientoScreen.kt:27)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 461877503, "CC(remember):ConsentimientoScreen.kt#9igjgp");
            Object objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer3.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 461879583, "CC(remember):ConsentimientoScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer3.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer3.updateRememberedValue(objMutableStateOf$default2);
                objRememberedValue2 = objMutableStateOf$default2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, null, null, 0, 0L, 0L, null, ComposableSingletons$ConsentimientoScreenKt.INSTANCE.m10434getLambda$547149140$app(), $composer2, 805306368, FrameMetricsAggregator.EVERY_DURATION);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ConsentimientoScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ConsentimientoScreenKt.ConsentimientoScreen$lambda$6(navController, loginViewModel, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
