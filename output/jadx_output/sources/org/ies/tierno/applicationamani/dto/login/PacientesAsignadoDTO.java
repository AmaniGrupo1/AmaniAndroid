package org.ies.tierno.applicationamani.dto.login;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PacientesAsignadoDTO.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u001b"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;", "", "idPaciente", "", "nombre", "", "apellido", "email", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIdPaciente", "()J", "getNombre", "()Ljava/lang/String;", "getApellido", "getEmail", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PacientesAsignadoDTO {
    public static final int $stable = 0;
    private final String apellido;
    private final String email;
    private final long idPaciente;
    private final String nombre;

    public static /* synthetic */ PacientesAsignadoDTO copy$default(PacientesAsignadoDTO pacientesAsignadoDTO, long j, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            j = pacientesAsignadoDTO.idPaciente;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = pacientesAsignadoDTO.nombre;
        }
        String str4 = str;
        if ((i & 4) != 0) {
            str2 = pacientesAsignadoDTO.apellido;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = pacientesAsignadoDTO.email;
        }
        return pacientesAsignadoDTO.copy(j2, str4, str5, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getApellido() {
        return this.apellido;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    public final PacientesAsignadoDTO copy(long idPaciente, String nombre, String apellido, String email) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(apellido, "apellido");
        Intrinsics.checkNotNullParameter(email, "email");
        return new PacientesAsignadoDTO(idPaciente, nombre, apellido, email);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PacientesAsignadoDTO)) {
            return false;
        }
        PacientesAsignadoDTO pacientesAsignadoDTO = (PacientesAsignadoDTO) other;
        return this.idPaciente == pacientesAsignadoDTO.idPaciente && Intrinsics.areEqual(this.nombre, pacientesAsignadoDTO.nombre) && Intrinsics.areEqual(this.apellido, pacientesAsignadoDTO.apellido) && Intrinsics.areEqual(this.email, pacientesAsignadoDTO.email);
    }

    public int hashCode() {
        return (((((Long.hashCode(this.idPaciente) * 31) + this.nombre.hashCode()) * 31) + this.apellido.hashCode()) * 31) + this.email.hashCode();
    }

    public String toString() {
        return "PacientesAsignadoDTO(idPaciente=" + this.idPaciente + ", nombre=" + this.nombre + ", apellido=" + this.apellido + ", email=" + this.email + ")";
    }

    public PacientesAsignadoDTO(long idPaciente, String nombre, String apellido, String email) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(apellido, "apellido");
        Intrinsics.checkNotNullParameter(email, "email");
        this.idPaciente = idPaciente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
    }

    public final long getIdPaciente() {
        return this.idPaciente;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getApellido() {
        return this.apellido;
    }

    public final String getEmail() {
        return this.email;
    }
}
