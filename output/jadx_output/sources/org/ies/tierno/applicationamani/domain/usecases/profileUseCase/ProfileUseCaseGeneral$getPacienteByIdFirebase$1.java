package org.ies.tierno.applicationamani.domain.usecases.profileUseCase;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ProfileUseCaseGeneral.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral", f = "ProfileUseCaseGeneral.kt", i = {0}, l = {30}, m = "getPacienteByIdFirebase-gIAlu-s", n = {"idPaciente"}, s = {"J$0"})
final class ProfileUseCaseGeneral$getPacienteByIdFirebase$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ProfileUseCaseGeneral this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProfileUseCaseGeneral$getPacienteByIdFirebase$1(ProfileUseCaseGeneral profileUseCaseGeneral, Continuation<? super ProfileUseCaseGeneral$getPacienteByIdFirebase$1> continuation) {
        super(continuation);
        this.this$0 = profileUseCaseGeneral;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10393getPacienteByIdFirebasegIAlus = this.this$0.m10393getPacienteByIdFirebasegIAlus(0L, this);
        return objM10393getPacienteByIdFirebasegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10393getPacienteByIdFirebasegIAlus : Result.m8541boximpl(objM10393getPacienteByIdFirebasegIAlus);
    }
}
