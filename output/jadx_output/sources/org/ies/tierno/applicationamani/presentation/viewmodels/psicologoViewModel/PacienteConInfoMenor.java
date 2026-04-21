package org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO;

/* JADX INFO: compiled from: ListarPacientesByPsicologoViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J-\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/PacienteConInfoMenor;", "", "paciente", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "esMenor", "", "datosTutor", "", "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;", "<init>", "(Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;ZLjava/util/List;)V", "getPaciente", "()Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "getEsMenor", "()Z", "getDatosTutor", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PacienteConInfoMenor {
    public static final int $stable = 8;
    private final List<TutorResponseDTO> datosTutor;
    private final boolean esMenor;
    private final PacientePsicologoResponseDTO paciente;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PacienteConInfoMenor copy$default(PacienteConInfoMenor pacienteConInfoMenor, PacientePsicologoResponseDTO pacientePsicologoResponseDTO, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            pacientePsicologoResponseDTO = pacienteConInfoMenor.paciente;
        }
        if ((i & 2) != 0) {
            z = pacienteConInfoMenor.esMenor;
        }
        if ((i & 4) != 0) {
            list = pacienteConInfoMenor.datosTutor;
        }
        return pacienteConInfoMenor.copy(pacientePsicologoResponseDTO, z, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PacientePsicologoResponseDTO getPaciente() {
        return this.paciente;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEsMenor() {
        return this.esMenor;
    }

    public final List<TutorResponseDTO> component3() {
        return this.datosTutor;
    }

    public final PacienteConInfoMenor copy(PacientePsicologoResponseDTO paciente, boolean esMenor, List<TutorResponseDTO> datosTutor) {
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Intrinsics.checkNotNullParameter(datosTutor, "datosTutor");
        return new PacienteConInfoMenor(paciente, esMenor, datosTutor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PacienteConInfoMenor)) {
            return false;
        }
        PacienteConInfoMenor pacienteConInfoMenor = (PacienteConInfoMenor) other;
        return Intrinsics.areEqual(this.paciente, pacienteConInfoMenor.paciente) && this.esMenor == pacienteConInfoMenor.esMenor && Intrinsics.areEqual(this.datosTutor, pacienteConInfoMenor.datosTutor);
    }

    public int hashCode() {
        return (((this.paciente.hashCode() * 31) + Boolean.hashCode(this.esMenor)) * 31) + this.datosTutor.hashCode();
    }

    public String toString() {
        return "PacienteConInfoMenor(paciente=" + this.paciente + ", esMenor=" + this.esMenor + ", datosTutor=" + this.datosTutor + ")";
    }

    public PacienteConInfoMenor(PacientePsicologoResponseDTO paciente, boolean esMenor, List<TutorResponseDTO> datosTutor) {
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Intrinsics.checkNotNullParameter(datosTutor, "datosTutor");
        this.paciente = paciente;
        this.esMenor = esMenor;
        this.datosTutor = datosTutor;
    }

    public final PacientePsicologoResponseDTO getPaciente() {
        return this.paciente;
    }

    public final boolean getEsMenor() {
        return this.esMenor;
    }

    public final List<TutorResponseDTO> getDatosTutor() {
        return this.datosTutor;
    }
}
