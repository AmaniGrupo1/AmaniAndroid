package org.ies.tierno.applicationamani.presentation.ui.componente;

import kotlin.Metadata;

/* JADX INFO: compiled from: AmaniBottomBar.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;", "", "Paciente", "Admin", "Psicologo", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Admin;", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Paciente;", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Psicologo;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface BottomBarConfig {

    /* JADX INFO: compiled from: AmaniBottomBar.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Paciente;", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Paciente implements BottomBarConfig {
        public static final int $stable = 0;
        public static final Paciente INSTANCE = new Paciente();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Paciente)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 43129137;
        }

        public String toString() {
            return "Paciente";
        }

        private Paciente() {
        }
    }

    /* JADX INFO: compiled from: AmaniBottomBar.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Admin;", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Admin implements BottomBarConfig {
        public static final int $stable = 0;
        public static final Admin INSTANCE = new Admin();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Admin)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -298920561;
        }

        public String toString() {
            return "Admin";
        }

        private Admin() {
        }
    }

    /* JADX INFO: compiled from: AmaniBottomBar.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Psicologo;", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Psicologo implements BottomBarConfig {
        public static final int $stable = 0;
        public static final Psicologo INSTANCE = new Psicologo();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Psicologo)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -784698211;
        }

        public String toString() {
            return "Psicologo";
        }

        private Psicologo() {
        }
    }
}
