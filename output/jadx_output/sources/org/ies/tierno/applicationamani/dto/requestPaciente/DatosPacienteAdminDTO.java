package org.ies.tierno.applicationamani.dto.requestPaciente;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO;
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO;

/* JADX INFO: compiled from: DatosPacienteAdminDTO.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0012\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0005HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\t\u00101\u001a\u00020\u0005HÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\t\u00104\u001a\u00020\u0005HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\t\u00106\u001a\u00020\u000eHÆ\u0003J\t\u00107\u001a\u00020\u0005HÆ\u0003J\t\u00108\u001a\u00020\u0005HÆ\u0003J\u000f\u00109\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012HÆ\u0003J\u000f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00150\u0012HÆ\u0003J\u000f\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012HÆ\u0003J±\u0001\u0010<\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00122\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012HÆ\u0001J\u0013\u0010=\u001a\u00020\u000e2\b\u0010>\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010?\u001a\u00020@HÖ\u0001J\t\u0010A\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001dR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001dR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001dR\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001dR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u000f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001dR\u0011\u0010\u0010\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001dR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0012¢\u0006\b\n\u0000\u001a\u0004\b+\u0010*R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012¢\u0006\b\n\u0000\u001a\u0004\b,\u0010*¨\u0006B"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;", "", "idPaciente", "", "nombreUsuario", "", "apellidoUsuario", "emailUsuario", "fechaNacimiento", "genero", "telefono", "createdAt", "updatedAt", "activo", "", "metodoPago", "estadoPago", "situaciones", "", "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;", "tutores", "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;", "direccion", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getIdPaciente", "()J", "getNombreUsuario", "()Ljava/lang/String;", "getApellidoUsuario", "getEmailUsuario", "getFechaNacimiento", "getGenero", "getTelefono", "getCreatedAt", "getUpdatedAt", "getActivo", "()Z", "getMetodoPago", "getEstadoPago", "getSituaciones", "()Ljava/util/List;", "getTutores", "getDireccion", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class DatosPacienteAdminDTO {
    public static final int $stable = 8;
    private final boolean activo;
    private final String apellidoUsuario;
    private final String createdAt;
    private final List<DireccionResponseDTO> direccion;
    private final String emailUsuario;
    private final String estadoPago;
    private final String fechaNacimiento;
    private final String genero;
    private final long idPaciente;
    private final String metodoPago;
    private final String nombreUsuario;
    private final List<SituacionDTO> situaciones;
    private final String telefono;
    private final List<TutorResponseDTO> tutores;
    private final String updatedAt;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DatosPacienteAdminDTO copy$default(DatosPacienteAdminDTO datosPacienteAdminDTO, long j, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, String str9, String str10, List list, List list2, List list3, int i, Object obj) {
        long j2 = (i & 1) != 0 ? datosPacienteAdminDTO.idPaciente : j;
        return datosPacienteAdminDTO.copy(j2, (i & 2) != 0 ? datosPacienteAdminDTO.nombreUsuario : str, (i & 4) != 0 ? datosPacienteAdminDTO.apellidoUsuario : str2, (i & 8) != 0 ? datosPacienteAdminDTO.emailUsuario : str3, (i & 16) != 0 ? datosPacienteAdminDTO.fechaNacimiento : str4, (i & 32) != 0 ? datosPacienteAdminDTO.genero : str5, (i & 64) != 0 ? datosPacienteAdminDTO.telefono : str6, (i & 128) != 0 ? datosPacienteAdminDTO.createdAt : str7, (i & 256) != 0 ? datosPacienteAdminDTO.updatedAt : str8, (i & 512) != 0 ? datosPacienteAdminDTO.activo : z, (i & 1024) != 0 ? datosPacienteAdminDTO.metodoPago : str9, (i & 2048) != 0 ? datosPacienteAdminDTO.estadoPago : str10, (i & 4096) != 0 ? datosPacienteAdminDTO.situaciones : list, (i & 8192) != 0 ? datosPacienteAdminDTO.tutores : list2, (i & 16384) != 0 ? datosPacienteAdminDTO.direccion : list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getActivo() {
        return this.activo;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getMetodoPago() {
        return this.metodoPago;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getEstadoPago() {
        return this.estadoPago;
    }

    public final List<SituacionDTO> component13() {
        return this.situaciones;
    }

    public final List<TutorResponseDTO> component14() {
        return this.tutores;
    }

    public final List<DireccionResponseDTO> component15() {
        return this.direccion;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombreUsuario() {
        return this.nombreUsuario;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getApellidoUsuario() {
        return this.apellidoUsuario;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEmailUsuario() {
        return this.emailUsuario;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getGenero() {
        return this.genero;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getTelefono() {
        return this.telefono;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getCreatedAt() {
        return this.createdAt;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getUpdatedAt() {
        return this.updatedAt;
    }

    public final DatosPacienteAdminDTO copy(long idPaciente, String nombreUsuario, String apellidoUsuario, String emailUsuario, String fechaNacimiento, String genero, String telefono, String createdAt, String updatedAt, boolean activo, String metodoPago, String estadoPago, List<SituacionDTO> situaciones, List<TutorResponseDTO> tutores, List<DireccionResponseDTO> direccion) {
        Intrinsics.checkNotNullParameter(nombreUsuario, "nombreUsuario");
        Intrinsics.checkNotNullParameter(apellidoUsuario, "apellidoUsuario");
        Intrinsics.checkNotNullParameter(emailUsuario, "emailUsuario");
        Intrinsics.checkNotNullParameter(fechaNacimiento, "fechaNacimiento");
        Intrinsics.checkNotNullParameter(genero, "genero");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
        Intrinsics.checkNotNullParameter(metodoPago, "metodoPago");
        Intrinsics.checkNotNullParameter(estadoPago, "estadoPago");
        Intrinsics.checkNotNullParameter(situaciones, "situaciones");
        Intrinsics.checkNotNullParameter(tutores, "tutores");
        Intrinsics.checkNotNullParameter(direccion, "direccion");
        return new DatosPacienteAdminDTO(idPaciente, nombreUsuario, apellidoUsuario, emailUsuario, fechaNacimiento, genero, telefono, createdAt, updatedAt, activo, metodoPago, estadoPago, situaciones, tutores, direccion);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DatosPacienteAdminDTO)) {
            return false;
        }
        DatosPacienteAdminDTO datosPacienteAdminDTO = (DatosPacienteAdminDTO) other;
        return this.idPaciente == datosPacienteAdminDTO.idPaciente && Intrinsics.areEqual(this.nombreUsuario, datosPacienteAdminDTO.nombreUsuario) && Intrinsics.areEqual(this.apellidoUsuario, datosPacienteAdminDTO.apellidoUsuario) && Intrinsics.areEqual(this.emailUsuario, datosPacienteAdminDTO.emailUsuario) && Intrinsics.areEqual(this.fechaNacimiento, datosPacienteAdminDTO.fechaNacimiento) && Intrinsics.areEqual(this.genero, datosPacienteAdminDTO.genero) && Intrinsics.areEqual(this.telefono, datosPacienteAdminDTO.telefono) && Intrinsics.areEqual(this.createdAt, datosPacienteAdminDTO.createdAt) && Intrinsics.areEqual(this.updatedAt, datosPacienteAdminDTO.updatedAt) && this.activo == datosPacienteAdminDTO.activo && Intrinsics.areEqual(this.metodoPago, datosPacienteAdminDTO.metodoPago) && Intrinsics.areEqual(this.estadoPago, datosPacienteAdminDTO.estadoPago) && Intrinsics.areEqual(this.situaciones, datosPacienteAdminDTO.situaciones) && Intrinsics.areEqual(this.tutores, datosPacienteAdminDTO.tutores) && Intrinsics.areEqual(this.direccion, datosPacienteAdminDTO.direccion);
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((Long.hashCode(this.idPaciente) * 31) + this.nombreUsuario.hashCode()) * 31) + this.apellidoUsuario.hashCode()) * 31) + this.emailUsuario.hashCode()) * 31) + this.fechaNacimiento.hashCode()) * 31) + this.genero.hashCode()) * 31) + this.telefono.hashCode()) * 31) + this.createdAt.hashCode()) * 31) + this.updatedAt.hashCode()) * 31) + Boolean.hashCode(this.activo)) * 31) + this.metodoPago.hashCode()) * 31) + this.estadoPago.hashCode()) * 31) + this.situaciones.hashCode()) * 31) + this.tutores.hashCode()) * 31) + this.direccion.hashCode();
    }

    public String toString() {
        return "DatosPacienteAdminDTO(idPaciente=" + this.idPaciente + ", nombreUsuario=" + this.nombreUsuario + ", apellidoUsuario=" + this.apellidoUsuario + ", emailUsuario=" + this.emailUsuario + ", fechaNacimiento=" + this.fechaNacimiento + ", genero=" + this.genero + ", telefono=" + this.telefono + ", createdAt=" + this.createdAt + ", updatedAt=" + this.updatedAt + ", activo=" + this.activo + ", metodoPago=" + this.metodoPago + ", estadoPago=" + this.estadoPago + ", situaciones=" + this.situaciones + ", tutores=" + this.tutores + ", direccion=" + this.direccion + ")";
    }

    public DatosPacienteAdminDTO(long idPaciente, String nombreUsuario, String apellidoUsuario, String emailUsuario, String fechaNacimiento, String genero, String telefono, String createdAt, String updatedAt, boolean activo, String metodoPago, String estadoPago, List<SituacionDTO> situaciones, List<TutorResponseDTO> tutores, List<DireccionResponseDTO> direccion) {
        Intrinsics.checkNotNullParameter(nombreUsuario, "nombreUsuario");
        Intrinsics.checkNotNullParameter(apellidoUsuario, "apellidoUsuario");
        Intrinsics.checkNotNullParameter(emailUsuario, "emailUsuario");
        Intrinsics.checkNotNullParameter(fechaNacimiento, "fechaNacimiento");
        Intrinsics.checkNotNullParameter(genero, "genero");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
        Intrinsics.checkNotNullParameter(metodoPago, "metodoPago");
        Intrinsics.checkNotNullParameter(estadoPago, "estadoPago");
        Intrinsics.checkNotNullParameter(situaciones, "situaciones");
        Intrinsics.checkNotNullParameter(tutores, "tutores");
        Intrinsics.checkNotNullParameter(direccion, "direccion");
        this.idPaciente = idPaciente;
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.emailUsuario = emailUsuario;
        this.fechaNacimiento = fechaNacimiento;
        this.genero = genero;
        this.telefono = telefono;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.activo = activo;
        this.metodoPago = metodoPago;
        this.estadoPago = estadoPago;
        this.situaciones = situaciones;
        this.tutores = tutores;
        this.direccion = direccion;
    }

    public final long getIdPaciente() {
        return this.idPaciente;
    }

    public final String getNombreUsuario() {
        return this.nombreUsuario;
    }

    public final String getApellidoUsuario() {
        return this.apellidoUsuario;
    }

    public final String getEmailUsuario() {
        return this.emailUsuario;
    }

    public final String getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    public final String getGenero() {
        return this.genero;
    }

    public final String getTelefono() {
        return this.telefono;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final String getUpdatedAt() {
        return this.updatedAt;
    }

    public final boolean getActivo() {
        return this.activo;
    }

    public final String getMetodoPago() {
        return this.metodoPago;
    }

    public final String getEstadoPago() {
        return this.estadoPago;
    }

    public final List<SituacionDTO> getSituaciones() {
        return this.situaciones;
    }

    public final List<TutorResponseDTO> getTutores() {
        return this.tutores;
    }

    public final List<DireccionResponseDTO> getDireccion() {
        return this.direccion;
    }
}
