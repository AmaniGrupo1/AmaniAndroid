package org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import org.ies.tierno.applicationamani.data.AuthRepository;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;

/* JADX INFO: compiled from: ListarPacientesByPsicologo.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0086\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;", "", "auth", "Lorg/ies/tierno/applicationamani/data/AuthRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V", "getAuth", "()Lorg/ies/tierno/applicationamani/data/AuthRepository;", "invoke", "Lkotlinx/coroutines/flow/Flow;", "", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ListarPacientesByPsicologo {
    public static final int $stable = 8;
    private final AuthRepository auth;

    public ListarPacientesByPsicologo(AuthRepository auth) {
        Intrinsics.checkNotNullParameter(auth, "auth");
        this.auth = auth;
    }

    public final AuthRepository getAuth() {
        return this.auth;
    }

    public final Flow<List<PacientePsicologoResponseDTO>> invoke() {
        return this.auth.getPacientesByPsicologo();
    }
}
