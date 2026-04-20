package org.ies.tierno.applicationamani.presentation.ui.componente;

import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AmaniBottomBar.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J3\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u001b"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;", "", "route", "", "label", "selectedIcon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "unselectedIcon", "<init>", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V", "getRoute", "()Ljava/lang/String;", "getLabel", "getSelectedIcon", "()Landroidx/compose/ui/graphics/vector/ImageVector;", "getUnselectedIcon", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class AmaniBottomBarItem {
    public static final int $stable = 0;
    private final String label;
    private final String route;
    private final ImageVector selectedIcon;
    private final ImageVector unselectedIcon;

    public static /* synthetic */ AmaniBottomBarItem copy$default(AmaniBottomBarItem amaniBottomBarItem, String str, String str2, ImageVector imageVector, ImageVector imageVector2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = amaniBottomBarItem.route;
        }
        if ((i & 2) != 0) {
            str2 = amaniBottomBarItem.label;
        }
        if ((i & 4) != 0) {
            imageVector = amaniBottomBarItem.selectedIcon;
        }
        if ((i & 8) != 0) {
            imageVector2 = amaniBottomBarItem.unselectedIcon;
        }
        return amaniBottomBarItem.copy(str, str2, imageVector, imageVector2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getRoute() {
        return this.route;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ImageVector getSelectedIcon() {
        return this.selectedIcon;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ImageVector getUnselectedIcon() {
        return this.unselectedIcon;
    }

    public final AmaniBottomBarItem copy(String route, String label, ImageVector selectedIcon, ImageVector unselectedIcon) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(selectedIcon, "selectedIcon");
        Intrinsics.checkNotNullParameter(unselectedIcon, "unselectedIcon");
        return new AmaniBottomBarItem(route, label, selectedIcon, unselectedIcon);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AmaniBottomBarItem)) {
            return false;
        }
        AmaniBottomBarItem amaniBottomBarItem = (AmaniBottomBarItem) other;
        return Intrinsics.areEqual(this.route, amaniBottomBarItem.route) && Intrinsics.areEqual(this.label, amaniBottomBarItem.label) && Intrinsics.areEqual(this.selectedIcon, amaniBottomBarItem.selectedIcon) && Intrinsics.areEqual(this.unselectedIcon, amaniBottomBarItem.unselectedIcon);
    }

    public int hashCode() {
        return ((((((this.route == null ? 0 : this.route.hashCode()) * 31) + this.label.hashCode()) * 31) + this.selectedIcon.hashCode()) * 31) + this.unselectedIcon.hashCode();
    }

    public String toString() {
        return "AmaniBottomBarItem(route=" + this.route + ", label=" + this.label + ", selectedIcon=" + this.selectedIcon + ", unselectedIcon=" + this.unselectedIcon + ")";
    }

    public AmaniBottomBarItem(String route, String label, ImageVector selectedIcon, ImageVector unselectedIcon) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(selectedIcon, "selectedIcon");
        Intrinsics.checkNotNullParameter(unselectedIcon, "unselectedIcon");
        this.route = route;
        this.label = label;
        this.selectedIcon = selectedIcon;
        this.unselectedIcon = unselectedIcon;
    }

    public /* synthetic */ AmaniBottomBarItem(String str, String str2, ImageVector imageVector, ImageVector imageVector2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, imageVector, (i & 8) != 0 ? imageVector : imageVector2);
    }

    public final String getRoute() {
        return this.route;
    }

    public final String getLabel() {
        return this.label;
    }

    public final ImageVector getSelectedIcon() {
        return this.selectedIcon;
    }

    public final ImageVector getUnselectedIcon() {
        return this.unselectedIcon;
    }
}
