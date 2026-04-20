package org.ies.tierno.applicationamani.domain.usecases.adminUseCase;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.AuthRepository;

/* JADX INFO: compiled from: AsignarPacienteAlPsicologoUseCase.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0086B¢\u0006\u0004\b\f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;", "", "repository", "Lorg/ies/tierno/applicationamani/data/AuthRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V", "invoke", "Lkotlin/Result;", "", "idPaciente", "", "idPsicologo", "invoke-0E7RQCE", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AsignarPacienteAlPsicologoUseCase {
    public static final int $stable = 8;
    private final AuthRepository repository;

    public AsignarPacienteAlPsicologoUseCase(AuthRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: invoke-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10385invoke0E7RQCE(long idPaciente, long idPsicologo, Continuation<? super Result<Boolean>> continuation) {
        AsignarPacienteAlPsicologoUseCase$invoke$1 asignarPacienteAlPsicologoUseCase$invoke$1;
        if (continuation instanceof AsignarPacienteAlPsicologoUseCase$invoke$1) {
            asignarPacienteAlPsicologoUseCase$invoke$1 = (AsignarPacienteAlPsicologoUseCase$invoke$1) continuation;
            if ((asignarPacienteAlPsicologoUseCase$invoke$1.label & Integer.MIN_VALUE) != 0) {
                asignarPacienteAlPsicologoUseCase$invoke$1.label -= Integer.MIN_VALUE;
            } else {
                asignarPacienteAlPsicologoUseCase$invoke$1 = new AsignarPacienteAlPsicologoUseCase$invoke$1(this, continuation);
            }
        }
        AsignarPacienteAlPsicologoUseCase$invoke$1 asignarPacienteAlPsicologoUseCase$invoke$12 = asignarPacienteAlPsicologoUseCase$invoke$1;
        Object $result = asignarPacienteAlPsicologoUseCase$invoke$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (asignarPacienteAlPsicologoUseCase$invoke$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                AuthRepository authRepository = this.repository;
                asignarPacienteAlPsicologoUseCase$invoke$12.J$0 = idPaciente;
                asignarPacienteAlPsicologoUseCase$invoke$12.J$1 = idPsicologo;
                asignarPacienteAlPsicologoUseCase$invoke$12.label = 1;
                Object objM10327asignarPsicologo0E7RQCE = authRepository.m10327asignarPsicologo0E7RQCE(idPaciente, idPsicologo, asignarPacienteAlPsicologoUseCase$invoke$12);
                return objM10327asignarPsicologo0E7RQCE == coroutine_suspended ? coroutine_suspended : objM10327asignarPsicologo0E7RQCE;
            case 1:
                long idPsicologo2 = asignarPacienteAlPsicologoUseCase$invoke$12.J$1;
                long idPaciente2 = asignarPacienteAlPsicologoUseCase$invoke$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
