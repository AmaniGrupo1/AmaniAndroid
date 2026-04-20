package org.ies.tierno.applicationamani.domain.usecases;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import org.ies.tierno.applicationamani.data.SituacionRepository;
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO;

/* JADX INFO: compiled from: ListarSituacionUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007H\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;", "", "repository", "Lorg/ies/tierno/applicationamani/data/SituacionRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/SituacionRepository;)V", "invoke", "Lkotlinx/coroutines/flow/Flow;", "", "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ListarSituacionUseCase {
    public static final int $stable = 8;
    private final SituacionRepository repository;

    public ListarSituacionUseCase(SituacionRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    public final Flow<List<SituacionDTO>> invoke() {
        return this.repository.getSituaciones();
    }
}
