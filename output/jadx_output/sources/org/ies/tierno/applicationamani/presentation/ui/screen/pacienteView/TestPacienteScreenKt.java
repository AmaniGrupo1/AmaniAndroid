package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.core.app.FrameMetricsAggregator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: TestPacienteScreen.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"TestPacienteScreen", "", "(Landroidx/compose/runtime/Composer;I)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class TestPacienteScreenKt {
    static final Unit TestPacienteScreen$lambda$0(int i, Composer composer, int i2) {
        TestPacienteScreen(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void TestPacienteScreen(Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(-2100593050);
        ComposerKt.sourceInformation($composer2, "C(TestPacienteScreen)21@639L226:TestPacienteScreen.kt#yd4c32");
        if (!$composer2.shouldExecute($changed != 0, $changed & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2100593050, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.TestPacienteScreen (TestPacienteScreen.kt:20)");
            }
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, null, null, 0, 0L, 0L, null, ComposableSingletons$TestPacienteScreenKt.INSTANCE.getLambda$1778796981$app(), $composer2, 805306368, FrameMetricsAggregator.EVERY_DURATION);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.TestPacienteScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TestPacienteScreenKt.TestPacienteScreen$lambda$0($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
