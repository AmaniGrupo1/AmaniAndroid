package org.ies.tierno.applicationamani.presentation.viewmodels;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: CitasViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel", f = "CitasViewModel.kt", i = {0, 0, 0, 0, 0, 0, 0, 0}, l = {146}, m = "reservarCita-yxL6bBk", n = {"fecha", "hora", "motivo", "session", "request", "duracionMinutos", "idPsicologo", "idPaciente"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "J$0", "J$1"})
final class CitasViewModel$reservarCita$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CitasViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasViewModel$reservarCita$1(CitasViewModel citasViewModel, Continuation<? super CitasViewModel$reservarCita$1> continuation) {
        super(continuation);
        this.this$0 = citasViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10485reservarCitayxL6bBk = this.this$0.m10485reservarCitayxL6bBk(null, null, null, 0, this);
        return objM10485reservarCitayxL6bBk == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10485reservarCitayxL6bBk : Result.m8541boximpl(objM10485reservarCitayxL6bBk);
    }
}
