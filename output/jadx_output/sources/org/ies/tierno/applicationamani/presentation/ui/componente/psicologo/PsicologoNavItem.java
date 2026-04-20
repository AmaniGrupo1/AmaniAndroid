package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo;

import androidx.compose.runtime.Composer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;

/* JADX INFO: compiled from: BarraNavegationInferiorPsicologo.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B,\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fj\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;", "", "route", "", "icon", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "label", "<init>", "(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V", "getRoute", "()Ljava/lang/String;", "getIcon", "()Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function2;", "getLabel", "MIS_PACIENTES", "AGENDA", "PERFIL", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public enum PsicologoNavItem {
    MIS_PACIENTES(Screens.psicologoHome.INSTANCE.getRoute(), ComposableSingletons$BarraNavegationInferiorPsicologoKt.INSTANCE.m10409getLambda$827975433$app(), "Pacientes"),
    AGENDA(Screens.psicologoAgenda.INSTANCE.getRoute(), ComposableSingletons$BarraNavegationInferiorPsicologoKt.INSTANCE.m10406getLambda$1847790965$app(), "Agenda"),
    PERFIL(Screens.perfilPsicologo.INSTANCE.getRoute(), ComposableSingletons$BarraNavegationInferiorPsicologoKt.INSTANCE.getLambda$198319307$app(), "Perfil");

    private final Function2<Composer, Integer, Unit> icon;
    private final String label;
    private final String route;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

    public static EnumEntries<PsicologoNavItem> getEntries() {
        return $ENTRIES;
    }

    PsicologoNavItem(String route, Function2 icon, String label) {
        this.route = route;
        this.icon = icon;
        this.label = label;
    }

    public final Function2<Composer, Integer, Unit> getIcon() {
        return this.icon;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getRoute() {
        return this.route;
    }
}
