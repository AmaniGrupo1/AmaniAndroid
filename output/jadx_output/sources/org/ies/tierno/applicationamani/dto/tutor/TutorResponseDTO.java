package org.ies.tierno.applicationamani.dto.tutor;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TutorResponseDTO.kt */
/* JADX INFO: loaded from: classes12.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006!"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;", "", "idTutor", "", "nombre", "", "telefono", "email", "dni", "tipo", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIdTutor", "()J", "getNombre", "()Ljava/lang/String;", "getTelefono", "getEmail", "getDni", "getTipo", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class TutorResponseDTO {
    public static final int $stable = 0;
    private final String dni;
    private final String email;
    private final long idTutor;
    private final String nombre;
    private final String telefono;
    private final String tipo;

    public static /* synthetic */ TutorResponseDTO copy$default(TutorResponseDTO tutorResponseDTO, long j, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            j = tutorResponseDTO.idTutor;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = tutorResponseDTO.nombre;
        }
        String str6 = str;
        if ((i & 4) != 0) {
            str2 = tutorResponseDTO.telefono;
        }
        String str7 = str2;
        if ((i & 8) != 0) {
            str3 = tutorResponseDTO.email;
        }
        String str8 = str3;
        if ((i & 16) != 0) {
            str4 = tutorResponseDTO.dni;
        }
        String str9 = str4;
        if ((i & 32) != 0) {
            str5 = tutorResponseDTO.tipo;
        }
        return tutorResponseDTO.copy(j2, str6, str7, str8, str9, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdTutor() {
        return this.idTutor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTelefono() {
        return this.telefono;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDni() {
        return this.dni;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTipo() {
        return this.tipo;
    }

    public final TutorResponseDTO copy(long idTutor, String nombre, String telefono, String email, String dni, String tipo) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(dni, "dni");
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        return new TutorResponseDTO(idTutor, nombre, telefono, email, dni, tipo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TutorResponseDTO)) {
            return false;
        }
        TutorResponseDTO tutorResponseDTO = (TutorResponseDTO) other;
        return this.idTutor == tutorResponseDTO.idTutor && Intrinsics.areEqual(this.nombre, tutorResponseDTO.nombre) && Intrinsics.areEqual(this.telefono, tutorResponseDTO.telefono) && Intrinsics.areEqual(this.email, tutorResponseDTO.email) && Intrinsics.areEqual(this.dni, tutorResponseDTO.dni) && Intrinsics.areEqual(this.tipo, tutorResponseDTO.tipo);
    }

    public int hashCode() {
        return (((((((((Long.hashCode(this.idTutor) * 31) + this.nombre.hashCode()) * 31) + this.telefono.hashCode()) * 31) + this.email.hashCode()) * 31) + this.dni.hashCode()) * 31) + this.tipo.hashCode();
    }

    public String toString() {
        return "TutorResponseDTO(idTutor=" + this.idTutor + ", nombre=" + this.nombre + ", telefono=" + this.telefono + ", email=" + this.email + ", dni=" + this.dni + ", tipo=" + this.tipo + ")";
    }

    public TutorResponseDTO(long idTutor, String nombre, String telefono, String email, String dni, String tipo) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(dni, "dni");
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        this.idTutor = idTutor;
        this.nombre = nombre;
        this.telefono = telefono;
        this.email = email;
        this.dni = dni;
        this.tipo = tipo;
    }

    public final long getIdTutor() {
        return this.idTutor;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getTelefono() {
        return this.telefono;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getDni() {
        return this.dni;
    }

    public final String getTipo() {
        return this.tipo;
    }
}
