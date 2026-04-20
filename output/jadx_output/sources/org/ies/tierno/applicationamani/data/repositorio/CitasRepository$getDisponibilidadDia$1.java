package org.ies.tierno.applicationamani.data.repositorio;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: CitasRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.CitasRepository", f = "CitasRepository.kt", i = {0, 0, 0, 0, 0}, l = {48}, m = "getDisponibilidadDia-BWLJW6A", n = {"fecha", "$this$getDisponibilidadDia_BWLJW6A_u24lambda_u243\\1", "idPsicologo", "duracionMinutos", "$i$a$-runCatching-CitasRepository$getDisponibilidadDia$2\\1\\47\\0"}, s = {"L$0", "L$1", "J$0", "I$0", "I$1"})
final class CitasRepository$getDisponibilidadDia$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CitasRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasRepository$getDisponibilidadDia$1(CitasRepository citasRepository, Continuation<? super CitasRepository$getDisponibilidadDia$1> continuation) {
        super(continuation);
        this.this$0 = citasRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10366getDisponibilidadDiaBWLJW6A = this.this$0.m10366getDisponibilidadDiaBWLJW6A(0L, null, 0, this);
        return objM10366getDisponibilidadDiaBWLJW6A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10366getDisponibilidadDiaBWLJW6A : Result.m8541boximpl(objM10366getDisponibilidadDiaBWLJW6A);
    }
}
