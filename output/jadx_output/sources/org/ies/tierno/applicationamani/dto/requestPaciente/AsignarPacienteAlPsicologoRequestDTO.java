package org.ies.tierno.applicationamani.dto.requestPaciente;

import kotlin.Metadata;

/* JADX INFO: compiled from: AsignarPacienteAlPsicologoRequestDTO.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;", "", "idPaciente", "", "idPsicologo", "<init>", "(JJ)V", "getIdPaciente", "()J", "getIdPsicologo", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class AsignarPacienteAlPsicologoRequestDTO {
    public static final int $stable = 0;
    private final long idPaciente;
    private final long idPsicologo;

    public static /* synthetic */ AsignarPacienteAlPsicologoRequestDTO copy$default(AsignarPacienteAlPsicologoRequestDTO asignarPacienteAlPsicologoRequestDTO, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = asignarPacienteAlPsicologoRequestDTO.idPaciente;
        }
        if ((i & 2) != 0) {
            j2 = asignarPacienteAlPsicologoRequestDTO.idPsicologo;
        }
        return asignarPacienteAlPsicologoRequestDTO.copy(j, j2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getIdPsicologo() {
        return this.idPsicologo;
    }

    public final AsignarPacienteAlPsicologoRequestDTO copy(long idPaciente, long idPsicologo) {
        return new AsignarPacienteAlPsicologoRequestDTO(idPaciente, idPsicologo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AsignarPacienteAlPsicologoRequestDTO)) {
            return false;
        }
        AsignarPacienteAlPsicologoRequestDTO asignarPacienteAlPsicologoRequestDTO = (AsignarPacienteAlPsicologoRequestDTO) other;
        return this.idPaciente == asignarPacienteAlPsicologoRequestDTO.idPaciente && this.idPsicologo == asignarPacienteAlPsicologoRequestDTO.idPsicologo;
    }

    public int hashCode() {
        return (Long.hashCode(this.idPaciente) * 31) + Long.hashCode(this.idPsicologo);
    }

    public String toString() {
        return "AsignarPacienteAlPsicologoRequestDTO(idPaciente=" + this.idPaciente + ", idPsicologo=" + this.idPsicologo + ")";
    }

    public AsignarPacienteAlPsicologoRequestDTO(long idPaciente, long idPsicologo) {
        this.idPaciente = idPaciente;
        this.idPsicologo = idPsicologo;
    }

    public final long getIdPaciente() {
        return this.idPaciente;
    }

    public final long getIdPsicologo() {
        return this.idPsicologo;
    }
}
