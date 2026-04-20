package org.ies.tierno.applicationamani.dto.psicologo;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago;
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO;
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO;

/* JADX INFO: compiled from: PacientePsicologoResponseDTO.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010.\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u00109\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014HÆ\u0003J¼\u0001\u0010:\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014HÆ\u0001¢\u0006\u0002\u0010;J\u0013\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010?\u001a\u00020@HÖ\u0001J\t\u0010A\u001a\u00020\u0006HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001dR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001dR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001dR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001dR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001dR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001dR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001dR\u0019\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u0006B"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "", "idPaciente", "", "idUsuario", "nombre", "", "apellido", "dni", "fechaNacimiento", "email", "genero", "telefono", "direccion", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;", "estadoPago", "Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoPago;", "horaInicio", "horaFin", "tutor", "", "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;", "<init>", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoPago;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getIdPaciente", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getIdUsuario", "getNombre", "()Ljava/lang/String;", "getApellido", "getDni", "getFechaNacimiento", "getEmail", "getGenero", "getTelefono", "getDireccion", "()Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;", "getEstadoPago", "()Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoPago;", "getHoraInicio", "getHoraFin", "getTutor", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoPago;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PacientePsicologoResponseDTO {
    public static final int $stable = 8;
    private final String apellido;
    private final DireccionResponseDTO direccion;
    private final String dni;
    private final String email;
    private final EstadoPago estadoPago;
    private final String fechaNacimiento;
    private final String genero;
    private final String horaFin;
    private final String horaInicio;
    private final Long idPaciente;
    private final Long idUsuario;
    private final String nombre;
    private final String telefono;
    private final List<TutorResponseDTO> tutor;

    public PacientePsicologoResponseDTO() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final DireccionResponseDTO getDireccion() {
        return this.direccion;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final EstadoPago getEstadoPago() {
        return this.estadoPago;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getHoraInicio() {
        return this.horaInicio;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getHoraFin() {
        return this.horaFin;
    }

    public final List<TutorResponseDTO> component14() {
        return this.tutor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getIdUsuario() {
        return this.idUsuario;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getApellido() {
        return this.apellido;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDni() {
        return this.dni;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getGenero() {
        return this.genero;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getTelefono() {
        return this.telefono;
    }

    public final PacientePsicologoResponseDTO copy(Long idPaciente, Long idUsuario, String nombre, String apellido, String dni, String fechaNacimiento, String email, String genero, String telefono, DireccionResponseDTO direccion, EstadoPago estadoPago, String horaInicio, String horaFin, List<TutorResponseDTO> tutor) {
        return new PacientePsicologoResponseDTO(idPaciente, idUsuario, nombre, apellido, dni, fechaNacimiento, email, genero, telefono, direccion, estadoPago, horaInicio, horaFin, tutor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PacientePsicologoResponseDTO)) {
            return false;
        }
        PacientePsicologoResponseDTO pacientePsicologoResponseDTO = (PacientePsicologoResponseDTO) other;
        return Intrinsics.areEqual(this.idPaciente, pacientePsicologoResponseDTO.idPaciente) && Intrinsics.areEqual(this.idUsuario, pacientePsicologoResponseDTO.idUsuario) && Intrinsics.areEqual(this.nombre, pacientePsicologoResponseDTO.nombre) && Intrinsics.areEqual(this.apellido, pacientePsicologoResponseDTO.apellido) && Intrinsics.areEqual(this.dni, pacientePsicologoResponseDTO.dni) && Intrinsics.areEqual(this.fechaNacimiento, pacientePsicologoResponseDTO.fechaNacimiento) && Intrinsics.areEqual(this.email, pacientePsicologoResponseDTO.email) && Intrinsics.areEqual(this.genero, pacientePsicologoResponseDTO.genero) && Intrinsics.areEqual(this.telefono, pacientePsicologoResponseDTO.telefono) && Intrinsics.areEqual(this.direccion, pacientePsicologoResponseDTO.direccion) && this.estadoPago == pacientePsicologoResponseDTO.estadoPago && Intrinsics.areEqual(this.horaInicio, pacientePsicologoResponseDTO.horaInicio) && Intrinsics.areEqual(this.horaFin, pacientePsicologoResponseDTO.horaFin) && Intrinsics.areEqual(this.tutor, pacientePsicologoResponseDTO.tutor);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((this.idPaciente == null ? 0 : this.idPaciente.hashCode()) * 31) + (this.idUsuario == null ? 0 : this.idUsuario.hashCode())) * 31) + (this.nombre == null ? 0 : this.nombre.hashCode())) * 31) + (this.apellido == null ? 0 : this.apellido.hashCode())) * 31) + (this.dni == null ? 0 : this.dni.hashCode())) * 31) + (this.fechaNacimiento == null ? 0 : this.fechaNacimiento.hashCode())) * 31) + (this.email == null ? 0 : this.email.hashCode())) * 31) + (this.genero == null ? 0 : this.genero.hashCode())) * 31) + (this.telefono == null ? 0 : this.telefono.hashCode())) * 31) + (this.direccion == null ? 0 : this.direccion.hashCode())) * 31) + (this.estadoPago == null ? 0 : this.estadoPago.hashCode())) * 31) + (this.horaInicio == null ? 0 : this.horaInicio.hashCode())) * 31) + (this.horaFin == null ? 0 : this.horaFin.hashCode())) * 31) + (this.tutor != null ? this.tutor.hashCode() : 0);
    }

    public String toString() {
        return "PacientePsicologoResponseDTO(idPaciente=" + this.idPaciente + ", idUsuario=" + this.idUsuario + ", nombre=" + this.nombre + ", apellido=" + this.apellido + ", dni=" + this.dni + ", fechaNacimiento=" + this.fechaNacimiento + ", email=" + this.email + ", genero=" + this.genero + ", telefono=" + this.telefono + ", direccion=" + this.direccion + ", estadoPago=" + this.estadoPago + ", horaInicio=" + this.horaInicio + ", horaFin=" + this.horaFin + ", tutor=" + this.tutor + ")";
    }

    public PacientePsicologoResponseDTO(Long idPaciente, Long idUsuario, String nombre, String apellido, String dni, String fechaNacimiento, String email, String genero, String telefono, DireccionResponseDTO direccion, EstadoPago estadoPago, String horaInicio, String horaFin, List<TutorResponseDTO> list) {
        this.idPaciente = idPaciente;
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.fechaNacimiento = fechaNacimiento;
        this.email = email;
        this.genero = genero;
        this.telefono = telefono;
        this.direccion = direccion;
        this.estadoPago = estadoPago;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.tutor = list;
    }

    public /* synthetic */ PacientePsicologoResponseDTO(Long l, Long l2, String str, String str2, String str3, String str4, String str5, String str6, String str7, DireccionResponseDTO direccionResponseDTO, EstadoPago estadoPago, String str8, String str9, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : l2, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : str7, (i & 512) != 0 ? null : direccionResponseDTO, (i & 1024) != 0 ? null : estadoPago, (i & 2048) != 0 ? null : str8, (i & 4096) == 0 ? str9 : null, (i & 8192) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final Long getIdPaciente() {
        return this.idPaciente;
    }

    public final Long getIdUsuario() {
        return this.idUsuario;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getApellido() {
        return this.apellido;
    }

    public final String getDni() {
        return this.dni;
    }

    public final String getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getGenero() {
        return this.genero;
    }

    public final String getTelefono() {
        return this.telefono;
    }

    public final DireccionResponseDTO getDireccion() {
        return this.direccion;
    }

    public final EstadoPago getEstadoPago() {
        return this.estadoPago;
    }

    public final String getHoraInicio() {
        return this.horaInicio;
    }

    public final String getHoraFin() {
        return this.horaFin;
    }

    public final List<TutorResponseDTO> getTutor() {
        return this.tutor;
    }
}
