package org.ies.tierno.applicationamani.domain.models.login;

import androidx.autofill.HintConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RegistryPacienteDTO.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;", "", "nombre", "", "apellido", "email", HintConstants.AUTOFILL_HINT_PASSWORD, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNombre", "()Ljava/lang/String;", "getApellido", "getEmail", "getPassword", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class RegistryPacienteDTO {
    public static final int $stable = 0;
    private final String apellido;
    private final String email;
    private final String nombre;
    private final String password;

    public static /* synthetic */ RegistryPacienteDTO copy$default(RegistryPacienteDTO registryPacienteDTO, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = registryPacienteDTO.nombre;
        }
        if ((i & 2) != 0) {
            str2 = registryPacienteDTO.apellido;
        }
        if ((i & 4) != 0) {
            str3 = registryPacienteDTO.email;
        }
        if ((i & 8) != 0) {
            str4 = registryPacienteDTO.password;
        }
        return registryPacienteDTO.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApellido() {
        return this.apellido;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    public final RegistryPacienteDTO copy(String nombre, String apellido, String email, String password) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(apellido, "apellido");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        return new RegistryPacienteDTO(nombre, apellido, email, password);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RegistryPacienteDTO)) {
            return false;
        }
        RegistryPacienteDTO registryPacienteDTO = (RegistryPacienteDTO) other;
        return Intrinsics.areEqual(this.nombre, registryPacienteDTO.nombre) && Intrinsics.areEqual(this.apellido, registryPacienteDTO.apellido) && Intrinsics.areEqual(this.email, registryPacienteDTO.email) && Intrinsics.areEqual(this.password, registryPacienteDTO.password);
    }

    public int hashCode() {
        return (((((this.nombre.hashCode() * 31) + this.apellido.hashCode()) * 31) + this.email.hashCode()) * 31) + this.password.hashCode();
    }

    public String toString() {
        return "RegistryPacienteDTO(nombre=" + this.nombre + ", apellido=" + this.apellido + ", email=" + this.email + ", password=" + this.password + ")";
    }

    public RegistryPacienteDTO(String nombre, String apellido, String email, String password) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(apellido, "apellido");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.password = password;
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

    public final String getPassword() {
        return this.password;
    }
}
