package org.ies.tierno.applicationamani.data.local;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserSessionDataStore.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011JF\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011¨\u0006!"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/UserSession;", "", "idUsuario", "", "nombre", "", "rol", "idPsicologo", "idPaciente", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V", "getIdUsuario", "()J", "getNombre", "()Ljava/lang/String;", "getRol", "getIdPsicologo", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getIdPaciente", "component1", "component2", "component3", "component4", "component5", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/data/local/UserSession;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class UserSession {
    public static final int $stable = 0;
    private final Long idPaciente;
    private final Long idPsicologo;
    private final long idUsuario;
    private final String nombre;
    private final String rol;

    public static /* synthetic */ UserSession copy$default(UserSession userSession, long j, String str, String str2, Long l, Long l2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = userSession.idUsuario;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = userSession.nombre;
        }
        String str3 = str;
        if ((i & 4) != 0) {
            str2 = userSession.rol;
        }
        String str4 = str2;
        if ((i & 8) != 0) {
            l = userSession.idPsicologo;
        }
        Long l3 = l;
        if ((i & 16) != 0) {
            l2 = userSession.idPaciente;
        }
        return userSession.copy(j2, str3, str4, l3, l2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdUsuario() {
        return this.idUsuario;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRol() {
        return this.rol;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getIdPsicologo() {
        return this.idPsicologo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getIdPaciente() {
        return this.idPaciente;
    }

    public final UserSession copy(long idUsuario, String nombre, String rol, Long idPsicologo, Long idPaciente) {
        Intrinsics.checkNotNullParameter(rol, "rol");
        return new UserSession(idUsuario, nombre, rol, idPsicologo, idPaciente);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserSession)) {
            return false;
        }
        UserSession userSession = (UserSession) other;
        return this.idUsuario == userSession.idUsuario && Intrinsics.areEqual(this.nombre, userSession.nombre) && Intrinsics.areEqual(this.rol, userSession.rol) && Intrinsics.areEqual(this.idPsicologo, userSession.idPsicologo) && Intrinsics.areEqual(this.idPaciente, userSession.idPaciente);
    }

    public int hashCode() {
        return (((((((Long.hashCode(this.idUsuario) * 31) + (this.nombre == null ? 0 : this.nombre.hashCode())) * 31) + this.rol.hashCode()) * 31) + (this.idPsicologo == null ? 0 : this.idPsicologo.hashCode())) * 31) + (this.idPaciente != null ? this.idPaciente.hashCode() : 0);
    }

    public String toString() {
        return "UserSession(idUsuario=" + this.idUsuario + ", nombre=" + this.nombre + ", rol=" + this.rol + ", idPsicologo=" + this.idPsicologo + ", idPaciente=" + this.idPaciente + ")";
    }

    public UserSession(long idUsuario, String nombre, String rol, Long idPsicologo, Long idPaciente) {
        Intrinsics.checkNotNullParameter(rol, "rol");
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.rol = rol;
        this.idPsicologo = idPsicologo;
        this.idPaciente = idPaciente;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ UserSession(long j, String str, String str2, Long l, Long l2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Long l3;
        l = (i & 8) != 0 ? null : l;
        if ((i & 16) == 0) {
            l3 = l2;
        } else {
            l3 = null;
        }
        this(j, str, str2, l, l3);
    }

    public final long getIdUsuario() {
        return this.idUsuario;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getRol() {
        return this.rol;
    }

    public final Long getIdPsicologo() {
        return this.idPsicologo;
    }

    public final Long getIdPaciente() {
        return this.idPaciente;
    }
}
