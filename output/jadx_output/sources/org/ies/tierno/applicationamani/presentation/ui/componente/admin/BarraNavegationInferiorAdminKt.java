package org.ies.tierno.applicationamani.presentation.ui.componente.admin;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.outlined.ShowChartKt;
import androidx.compose.material.icons.outlined.CalendarTodayKt;
import androidx.compose.material.icons.outlined.ChatBubbleOutlineKt;
import androidx.compose.material.icons.outlined.DescriptionKt;
import androidx.compose.material.icons.outlined.SettingsKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.NavigationBarItemDefaults;
import androidx.compose.material3.NavigationBarKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;

/* JADX INFO: compiled from: BarraNavegationInferiorAdmin.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"BarraNavegationInferiorAdmin", "", "navController", "Landroidx/navigation/NavController;", "selectedItem", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;", "onItemSelected", "Lkotlin/Function1;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class BarraNavegationInferiorAdminKt {
    static final Unit BarraNavegationInferiorAdmin$lambda$7(NavController navController, AdminNavItem adminNavItem, Function1 function1, int i, Composer composer, int i2) {
        BarraNavegationInferiorAdmin(navController, adminNavItem, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: compiled from: BarraNavegationInferiorAdmin.kt */
    @Metadata(d1 = {"\u0000/\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\u008a\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J8\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u001e"}, d2 = {"org/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest", "", "item", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;", "label", "", "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "route", "<init>", "(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V", "getItem", "()Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;", "getLabel", "()Ljava/lang/String;", "getIcon", "()Landroidx/compose/ui/graphics/vector/ImageVector;", "getRoute", "component1", "component2", "component3", "component4", "copy", "(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/BarraNavegationInferiorAdminKt$BarraNavegationInferiorAdmin$NavDest;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class NavDest {
        private final ImageVector icon;
        private final AdminNavItem item;
        private final String label;
        private final String route;

        public static /* synthetic */ NavDest copy$default(NavDest navDest, AdminNavItem adminNavItem, String str, ImageVector imageVector, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                adminNavItem = navDest.item;
            }
            if ((i & 2) != 0) {
                str = navDest.label;
            }
            if ((i & 4) != 0) {
                imageVector = navDest.icon;
            }
            if ((i & 8) != 0) {
                str2 = navDest.route;
            }
            return navDest.copy(adminNavItem, str, imageVector, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AdminNavItem getItem() {
            return this.item;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getLabel() {
            return this.label;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final ImageVector getIcon() {
            return this.icon;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getRoute() {
            return this.route;
        }

        public final NavDest copy(AdminNavItem item, String label, ImageVector icon, String route) {
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(icon, "icon");
            return new NavDest(item, label, icon, route);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof NavDest)) {
                return false;
            }
            NavDest navDest = (NavDest) other;
            return this.item == navDest.item && Intrinsics.areEqual(this.label, navDest.label) && Intrinsics.areEqual(this.icon, navDest.icon) && Intrinsics.areEqual(this.route, navDest.route);
        }

        public int hashCode() {
            return (((((this.item.hashCode() * 31) + this.label.hashCode()) * 31) + this.icon.hashCode()) * 31) + (this.route == null ? 0 : this.route.hashCode());
        }

        public String toString() {
            return "NavDest(item=" + this.item + ", label=" + this.label + ", icon=" + this.icon + ", route=" + this.route + ")";
        }

        public NavDest(AdminNavItem item, String label, ImageVector icon, String route) {
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(icon, "icon");
            this.item = item;
            this.label = label;
            this.icon = icon;
            this.route = route;
        }

        public /* synthetic */ NavDest(AdminNavItem adminNavItem, String str, ImageVector imageVector, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(adminNavItem, str, imageVector, (i & 8) != 0 ? null : str2);
        }

        public final AdminNavItem getItem() {
            return this.item;
        }

        public final String getLabel() {
            return this.label;
        }

        public final ImageVector getIcon() {
            return this.icon;
        }

        public final String getRoute() {
            return this.route;
        }
    }

    public static final void BarraNavegationInferiorAdmin(final NavController navController, final AdminNavItem selectedItem, final Function1<? super AdminNavItem, Unit> onItemSelected, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(selectedItem, "selectedItem");
        Intrinsics.checkNotNullParameter(onItemSelected, "onItemSelected");
        Composer $composer2 = $composer.startRestartGroup(1846177028);
        ComposerKt.sourceInformation($composer2, "C(BarraNavegationInferiorAdmin)N(navController,selectedItem,onItemSelected)62@2180L11,63@2206L1012,60@2095L1123:BarraNavegationInferiorAdmin.kt#a8gqcz");
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
                ComposerKt.traceEventStart(1846177028, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdmin (BarraNavegationInferiorAdmin.kt:34)");
            }
            DefaultConstructorMarker defaultConstructorMarker = null;
            final List destinations = CollectionsKt.listOf((Object[]) new NavDest[]{new NavDest(AdminNavItem.DOCUMENTOS, "Inicio", DescriptionKt.getDescription(Icons.Outlined.INSTANCE), Screens.adminHome.INSTANCE.getRoute()), new NavDest(AdminNavItem.MENSAJES, "Mensajes", ChatBubbleOutlineKt.getChatBubbleOutline(Icons.Outlined.INSTANCE), null, 8, defaultConstructorMarker), new NavDest(AdminNavItem.CALENDARIO, "Calendario", CalendarTodayKt.getCalendarToday(Icons.Outlined.INSTANCE), Screens.psicologoAgenda.INSTANCE.getRoute()), new NavDest(AdminNavItem.ESTADISTICAS, "Estadísticas", ShowChartKt.getShowChart(Icons.AutoMirrored.Outlined.INSTANCE), null, 8, null), new NavDest(AdminNavItem.CONFIGURACION, "Ajustes", SettingsKt.getSettings(Icons.Outlined.INSTANCE), null, 8, defaultConstructorMarker)});
            NavigationBarKt.m2556NavigationBarHsRjFd4(null, MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSurface(), 0L, Dp.m7505constructorimpl(3), null, ComposableLambdaKt.rememberComposableLambda(818043133, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return BarraNavegationInferiorAdminKt.BarraNavegationInferiorAdmin$lambda$6(destinations, selectedItem, onItemSelected, navController, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, 199680, 21);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BarraNavegationInferiorAdminKt.BarraNavegationInferiorAdmin$lambda$7(navController, selectedItem, onItemSelected, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit BarraNavegationInferiorAdmin$lambda$6(List $destinations, AdminNavItem $selectedItem, final Function1 $onItemSelected, final NavController $navController, RowScope $this$NavigationBar, Composer $composer, int $changed) {
        RowScope NavigationBar = $this$NavigationBar;
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(NavigationBar, "$this$NavigationBar");
        ComposerKt.sourceInformation(composer, "C*67@2358L132,71@2515L52,72@2593L104,76@2809L11,77@2893L11,78@2979L11,79@3056L11,80@3142L11,75@2750L438,65@2259L943:BarraNavegationInferiorAdmin.kt#a8gqcz");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= composer.changed(NavigationBar) ? 4 : 2;
        }
        boolean z = true;
        if (composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(818043133, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdmin.<anonymous> (BarraNavegationInferiorAdmin.kt:64)");
            }
            Iterator it = $destinations.iterator();
            while (it.hasNext()) {
                final NavDest navDest = (NavDest) it.next();
                boolean z2 = $selectedItem == navDest.getItem() ? z : false;
                ComposerKt.sourceInformationMarkerStart(composer, 1036858515, "CC(remember):BarraNavegationInferiorAdmin.kt#9igjgp");
                boolean zChanged = composer.changed($onItemSelected) | composer.changed(navDest) | composer.changedInstance($navController);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BarraNavegationInferiorAdminKt.BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$2$lambda$1($onItemSelected, navDest, $navController);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                int $dirty2 = $dirty;
                composer = $composer;
                NavigationBarKt.NavigationBarItem(NavigationBar, z2, (Function0) objRememberedValue, ComposableLambdaKt.rememberComposableLambda(471559210, z, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return BarraNavegationInferiorAdminKt.BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$3(navDest, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), null, false, ComposableLambdaKt.rememberComposableLambda(-1850400595, z, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdminKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return BarraNavegationInferiorAdminKt.BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$4(navDest, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), false, NavigationBarItemDefaults.INSTANCE.m2554colors69fazGs(MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnPrimaryContainer(), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimary(), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimaryContainer(), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant(), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, 0L, $composer, NavigationBarItemDefaults.$stable << 21, 96), null, composer, ($dirty2 & 14) | 1575936, 344);
                NavigationBar = $this$NavigationBar;
                $dirty = $dirty2;
                z = true;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$2$lambda$1(Function1 $onItemSelected, NavDest $dest, NavController $navController) {
        $onItemSelected.invoke($dest.getItem());
        String route = $dest.getRoute();
        if (route != null) {
            NavController.navigate$default($navController, route, (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        }
        return Unit.INSTANCE;
    }

    static final Unit BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$3(NavDest $dest, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C71@2517L48:BarraNavegationInferiorAdmin.kt#a8gqcz");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(471559210, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdmin.<anonymous>.<anonymous>.<anonymous> (BarraNavegationInferiorAdmin.kt:71)");
            }
            IconKt.m2433Iconww6aTOc($dest.getIcon(), $dest.getLabel(), (Modifier) null, 0L, $composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit BarraNavegationInferiorAdmin$lambda$6$lambda$5$lambda$4(NavDest $dest, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C73@2615L64:BarraNavegationInferiorAdmin.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1850400595, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.BarraNavegationInferiorAdmin.<anonymous>.<anonymous>.<anonymous> (BarraNavegationInferiorAdmin.kt:73)");
            }
            TextKt.m2976Text4IGK_g($dest.getLabel(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m7416getEllipsisgIe3tQ8(), false, 1, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 3120, 120830);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
