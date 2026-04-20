package org.ies.tierno.applicationamani.domain.usecases.adminUseCase;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import org.ies.tierno.applicationamani.data.AuthRepository;
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo;

/* JADX INFO: compiled from: GetAllClientAndPsicologoUseCase.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0086\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;", "", "repository", "Lorg/ies/tierno/applicationamani/data/AuthRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V", "getRepository", "()Lorg/ies/tierno/applicationamani/data/AuthRepository;", "invoke", "Lkotlinx/coroutines/flow/Flow;", "", "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class GetAllClientAndPsicologoUseCase {
    public static final int $stable = 8;
    private final AuthRepository repository;

    public GetAllClientAndPsicologoUseCase(AuthRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    public final AuthRepository getRepository() {
        return this.repository;
    }

    public final Flow<List<ListaPacientesAndPsicologo>> invoke() {
        return this.repository.getPacientesConPsicologo();
    }
}
