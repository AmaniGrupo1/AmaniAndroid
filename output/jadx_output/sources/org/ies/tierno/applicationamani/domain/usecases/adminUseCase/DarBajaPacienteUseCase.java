package org.ies.tierno.applicationamani.domain.usecases.adminUseCase;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.AuthRepository;

/* JADX INFO: compiled from: DarBajaPacienteUseCase.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\fH\u0086B¢\u0006\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;", "", "repository", "Lorg/ies/tierno/applicationamani/data/AuthRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V", "getRepository", "()Lorg/ies/tierno/applicationamani/data/AuthRepository;", "invoke", "Lkotlin/Result;", "", TtmlNode.ATTR_ID, "", "invoke-gIAlu-s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DarBajaPacienteUseCase {
    public static final int $stable = 8;
    private final AuthRepository repository;

    public DarBajaPacienteUseCase(AuthRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    public final AuthRepository getRepository() {
        return this.repository;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: invoke-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10386invokegIAlus(long id, Continuation<? super Result<String>> continuation) {
        DarBajaPacienteUseCase$invoke$1 darBajaPacienteUseCase$invoke$1;
        if (continuation instanceof DarBajaPacienteUseCase$invoke$1) {
            darBajaPacienteUseCase$invoke$1 = (DarBajaPacienteUseCase$invoke$1) continuation;
            if ((darBajaPacienteUseCase$invoke$1.label & Integer.MIN_VALUE) != 0) {
                darBajaPacienteUseCase$invoke$1.label -= Integer.MIN_VALUE;
            } else {
                darBajaPacienteUseCase$invoke$1 = new DarBajaPacienteUseCase$invoke$1(this, continuation);
            }
        }
        Object $result = darBajaPacienteUseCase$invoke$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (darBajaPacienteUseCase$invoke$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                AuthRepository authRepository = this.repository;
                darBajaPacienteUseCase$invoke$1.J$0 = id;
                darBajaPacienteUseCase$invoke$1.label = 1;
                Object objM10328darBajaPacientegIAlus = authRepository.m10328darBajaPacientegIAlus(id, darBajaPacienteUseCase$invoke$1);
                if (objM10328darBajaPacientegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10328darBajaPacientegIAlus;
            case 1:
                long id2 = darBajaPacienteUseCase$invoke$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
