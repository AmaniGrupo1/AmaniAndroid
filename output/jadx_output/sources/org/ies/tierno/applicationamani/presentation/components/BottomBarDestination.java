package org.ies.tierno.applicationamani.presentation.components;

import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BottomBar.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;", "", "route", "", "label", "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V", "getRoute", "()Ljava/lang/String;", "getLabel", "getIcon", "()Landroidx/compose/ui/graphics/vector/ImageVector;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
final /* data */ class BottomBarDestination {
    private final ImageVector icon;
    private final String label;
    private final String route;

    public static /* synthetic */ BottomBarDestination copy$default(BottomBarDestination bottomBarDestination, String str, String str2, ImageVector imageVector, int i, Object obj) {
        if ((i & 1) != 0) {
            str = bottomBarDestination.route;
        }
        if ((i & 2) != 0) {
            str2 = bottomBarDestination.label;
        }
        if ((i & 4) != 0) {
            imageVector = bottomBarDestination.icon;
        }
        return bottomBarDestination.copy(str, str2, imageVector);
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
    public final ImageVector getIcon() {
        return this.icon;
    }

    public final BottomBarDestination copy(String route, String label, ImageVector icon) {
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(icon, "icon");
        return new BottomBarDestination(route, label, icon);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BottomBarDestination)) {
            return false;
        }
        BottomBarDestination bottomBarDestination = (BottomBarDestination) other;
        return Intrinsics.areEqual(this.route, bottomBarDestination.route) && Intrinsics.areEqual(this.label, bottomBarDestination.label) && Intrinsics.areEqual(this.icon, bottomBarDestination.icon);
    }

    public int hashCode() {
        return (((this.route.hashCode() * 31) + this.label.hashCode()) * 31) + this.icon.hashCode();
    }

    public String toString() {
        return "BottomBarDestination(route=" + this.route + ", label=" + this.label + ", icon=" + this.icon + ")";
    }

    public BottomBarDestination(String route, String label, ImageVector icon) {
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(icon, "icon");
        this.route = route;
        this.label = label;
        this.icon = icon;
    }

    public final String getRoute() {
        return this.route;
    }

    public final String getLabel() {
        return this.label;
    }

    public final ImageVector getIcon() {
        return this.icon;
    }
}
