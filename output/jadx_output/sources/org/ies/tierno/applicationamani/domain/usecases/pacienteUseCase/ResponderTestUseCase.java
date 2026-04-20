package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi;
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO;

/* JADX INFO: compiled from: ResponderTestUseCase.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0086B¢\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ResponderTestUseCase;", "", "repository", "Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;)V", "invoke", "", "idPaciente", "", "respuestas", "", "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;", "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ResponderTestUseCase {
    public static final int $stable = 8;
    private final TestRepositoryApi repository;

    public ResponderTestUseCase(TestRepositoryApi repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    public final Object invoke(long idPaciente, List<RespuestasRequestDTO> list, Continuation<? super Boolean> continuation) {
        return this.repository.responderTest(idPaciente, list, continuation);
    }
}
