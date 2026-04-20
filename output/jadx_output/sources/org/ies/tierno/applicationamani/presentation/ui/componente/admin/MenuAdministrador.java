package org.ies.tierno.applicationamani.presentation.ui.componente.admin;

import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MenuAdministrador.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0012R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012¨\u0006!"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;", "", "title", "", "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "route", "isDanger", "", "dividerBefore", "dividerAfter", "<init>", "(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZ)V", "getTitle", "()Ljava/lang/String;", "getIcon", "()Landroidx/compose/ui/graphics/vector/ImageVector;", "getRoute", "()Z", "getDividerBefore", "getDividerAfter", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class MenuAdministrador {
    public static final int $stable = 0;
    private final boolean dividerAfter;
    private final boolean dividerBefore;
    private final ImageVector icon;
    private final boolean isDanger;
    private final String route;
    private final String title;

    public static /* synthetic */ MenuAdministrador copy$default(MenuAdministrador menuAdministrador, String str, ImageVector imageVector, String str2, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = menuAdministrador.title;
        }
        if ((i & 2) != 0) {
            imageVector = menuAdministrador.icon;
        }
        if ((i & 4) != 0) {
            str2 = menuAdministrador.route;
        }
        if ((i & 8) != 0) {
            z = menuAdministrador.isDanger;
        }
        if ((i & 16) != 0) {
            z2 = menuAdministrador.dividerBefore;
        }
        if ((i & 32) != 0) {
            z3 = menuAdministrador.dividerAfter;
        }
        boolean z4 = z2;
        boolean z5 = z3;
        return menuAdministrador.copy(str, imageVector, str2, z, z4, z5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ImageVector getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRoute() {
        return this.route;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsDanger() {
        return this.isDanger;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getDividerBefore() {
        return this.dividerBefore;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getDividerAfter() {
        return this.dividerAfter;
    }

    public final MenuAdministrador copy(String title, ImageVector icon, String route, boolean isDanger, boolean dividerBefore, boolean dividerAfter) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(route, "route");
        return new MenuAdministrador(title, icon, route, isDanger, dividerBefore, dividerAfter);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MenuAdministrador)) {
            return false;
        }
        MenuAdministrador menuAdministrador = (MenuAdministrador) other;
        return Intrinsics.areEqual(this.title, menuAdministrador.title) && Intrinsics.areEqual(this.icon, menuAdministrador.icon) && Intrinsics.areEqual(this.route, menuAdministrador.route) && this.isDanger == menuAdministrador.isDanger && this.dividerBefore == menuAdministrador.dividerBefore && this.dividerAfter == menuAdministrador.dividerAfter;
    }

    public int hashCode() {
        return (((((((((this.title.hashCode() * 31) + this.icon.hashCode()) * 31) + this.route.hashCode()) * 31) + Boolean.hashCode(this.isDanger)) * 31) + Boolean.hashCode(this.dividerBefore)) * 31) + Boolean.hashCode(this.dividerAfter);
    }

    public String toString() {
        return "MenuAdministrador(title=" + this.title + ", icon=" + this.icon + ", route=" + this.route + ", isDanger=" + this.isDanger + ", dividerBefore=" + this.dividerBefore + ", dividerAfter=" + this.dividerAfter + ")";
    }

    public MenuAdministrador(String title, ImageVector icon, String route, boolean isDanger, boolean dividerBefore, boolean dividerAfter) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(route, "route");
        this.title = title;
        this.icon = icon;
        this.route = route;
        this.isDanger = isDanger;
        this.dividerBefore = dividerBefore;
        this.dividerAfter = dividerAfter;
    }

    public /* synthetic */ MenuAdministrador(String str, ImageVector imageVector, String str2, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, imageVector, str2, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? false : z3);
    }

    public final String getTitle() {
        return this.title;
    }

    public final ImageVector getIcon() {
        return this.icon;
    }

    public final String getRoute() {
        return this.route;
    }

    public final boolean isDanger() {
        return this.isDanger;
    }

    public final boolean getDividerBefore() {
        return this.dividerBefore;
    }

    public final boolean getDividerAfter() {
        return this.dividerAfter;
    }
}
