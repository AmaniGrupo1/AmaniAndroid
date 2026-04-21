package org.ies.tierno.applicationamani.domain.usecases.adminUseCase;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest;

/* JADX INFO: compiled from: CrearPreguntaUseCase.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086B¢\u0006\u0002\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;", "", "repository", "Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;)V", "getRepository", "()Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;", "invoke", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;", "pregunta", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;", "(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CrearPreguntaUseCase {
    public static final int $stable = 8;
    private final TestRepositoryApi repository;

    public CrearPreguntaUseCase(TestRepositoryApi repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    public final TestRepositoryApi getRepository() {
        return this.repository;
    }

    public final Object invoke(PreguntaRequest pregunta, Continuation<? super OpcionAdminDTO> continuation) {
        return this.repository.createPregunta(pregunta, continuation);
    }
}
